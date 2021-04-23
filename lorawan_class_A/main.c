 /******************************************************************************
 * @file    main.c
 * @author  Insight SiP
 * @brief   LoRaMac classA project main file.
 *          This file contains initialization for starting device in LoRaMac classA 
 *
 * @attention
 *	THIS SOFTWARE IS PROVIDED BY INSIGHT SIP "AS IS" AND ANY EXPRESS
 *	OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 *	OF MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE ARE
 *	DISCLAIMED. IN NO EVENT SHALL INSIGHT SIP OR CONTRIBUTORS BE
 *	LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *	CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *	GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 *	HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *	LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 *	OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *****************************************************************************/
//#define DO_TIMER_XMTS
#define DO_UART_XMTS


 /* DON'T USE GPIO 11,19,23,24,25,26,27  per Eval Kit App.Note */

// Standards
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

// nRF
#include "nordic_common.h"
#include "nrf.h"
#include "app_error.h"
#include "app_timer.h"
#include "app_scheduler.h"
#include "nrf_delay.h"
#include "nrf_drv_clock.h"
#include "nrf_pwr_mgmt.h"

#include "app_uart.h"//uncomment after Apr.2
#ifdef DO_UART_XMTS
#include "nrf_uart.h"
#include "nrf_uarte.h"//uncomment after Apr.2
#endif


// LoRa
#include "board.h"

//logs
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"

// LoRaMac
#include "loramachelper.h"

#define SCHED_MAX_EVENT_DATA_SIZE   APP_TIMER_SCHED_EVENT_DATA_SIZE /**< Maximum size of scheduler events. */
#define SCHED_QUEUE_SIZE            60                              /**< Maximum number of events in the scheduler queue. */

#define LORAWAN_APP_PORT            1       /**< LoRaWAN application port, do not use 224. It is reserved for certification *///return to 1 after Apr.2
#define LORAWAN_APP_DATA_BUFF_SIZE  256      /**< Size of the data buffer. GNP_MAN: original was 64*/  
#define LORAWAN_APP_TX_DUTYCYCLE    10000   /**< Defines the application data transmission duty cycle. 10s, value in [ms]. */  


// Foward declaration
static void lmh_rx_data_handler(lmh_app_rx_data_t *app_data);
static void lmh_evt_handler(lmh_evt_type_t type, void *data);

APP_TIMER_DEF(lora_tx_timer_id);                                                    ///< LoRa tx timer instance.
static uint8_t m_lora_rx_data_buffer[LORAWAN_APP_DATA_BUFF_SIZE];                   ///< LoRa user application rx data buffer.
static lmh_app_rx_data_t m_lora_rx_data = {m_lora_rx_data_buffer, 0 ,0, 0, 0};      ///< LoRa user application rx data structure.
static uint8_t m_lora_tx_data_buffer[LORAWAN_APP_DATA_BUFF_SIZE];                   ///< LoRa user application tx data buffer.
static lmh_app_tx_data_t m_lora_tx_data = {m_lora_tx_data_buffer, 0 ,0, 0, 0};      ///< LoRa user application tx data structure.

/** GNP_MAN **/
#define WAKEUP_PIN 2
void redBlink (char);
static void wakeupPin_Init(void);
void in_pin_handler(nrf_drv_gpiote_pin_t, nrf_gpiote_polarity_t);
#define MAX_TEST_DATA_BYTES     (15U)                /**< max number of test bytes to be used for tx and rx. */
#define UART_TX_BUF_SIZE 256                         /**< UART TX buffer size. */
#define UART_RX_BUF_SIZE 256                         /**< UART RX buffer size. */
static int g_ctr=0;
uint16_t calcCRC(uint8_t*, uint32_t);
uint8_t txTimerFlag = 0;
/*************************************************************
*   UART ERROR HANDLER from NRF_SDK UART example  
*************************************************************/
void uart_error_handle(app_uart_evt_t * p_event)
{
  uint32_t err_code;
  static uint8_t data_array[256];
  static uint8_t index = 0;
  static uint8_t start_index = 0;

    if (p_event->evt_type == APP_UART_COMMUNICATION_ERROR)
    {
        printf("APP_UART_COMMUNICATION_ERROR error\r\n");
        APP_ERROR_HANDLER(p_event->data.error_communication);
    }
    else if (p_event->evt_type == APP_UART_FIFO_ERROR)
    {
        printf("APP_UART_FIFO_ERROR error\r\n");
        APP_ERROR_HANDLER(p_event->data.error_code);
    }
    //else if (p_event->evt_type == APP_UART_TX_EMPTY)
    //{
    //    printf("APP_UART_TX_EMPTY error\r\n");
    //    APP_ERROR_HANDLER(p_event->data.error_code);
    //}
    else if (p_event->evt_type == APP_UART_DATA)
    {
        printf("APP_UART_DATA with no FIFO error\r\n");
        APP_ERROR_HANDLER(p_event->data.error_code);
    }

    if (p_event->evt_type == APP_UART_DATA_READY)
    {
        err_code = app_uart_get(&m_lora_tx_data_buffer[index]);
                   index++;
                   /* TODO: Substitute '\n' in the statement below with the Modbus escape character, if 
                       applicable */
                   if (index >= 106)
                   {

                      while(((m_lora_tx_data_buffer[start_index]!=0x46)||(m_lora_tx_data_buffer[start_index+1]!=0x44))&&(start_index<index))start_index++;//step forward in buffer until see the start chars.

                      if(index >= start_index + 106){//if we captured a truncated packet, wait until we've received start chars + 104 good chars.

                          uart_callback(&m_lora_tx_data_buffer[start_index], 107);

                          if (err_code != NRF_ERROR_INVALID_STATE)
                          {
                              APP_ERROR_CHECK(err_code);
                          }

                          index = 0;
                        }
                    }
                    if(index>250)index=0;

               }

}
/*************************************************************
*   UART CALLBACK 
*************************************************************/
void uart_callback(uint8_t * p_data, uint8_t length)
    {
    uint32_t iters;
    unsigned short crcrc,crcrc2;
    uint8_t crcErr = 0;

     for (iters=0;iters<length;iters++){
      printf("%x ",p_data[iters]);
      }

    crcrc=calcCRC(&p_data[3],49);
    crcrc2=calcCRC(&p_data[54],49);

    if(((crcrc>>8)!=p_data[52])||((crcrc&0x00FF)!=p_data[53])){printf("\r\nCRC ERROR IN FIRST PACKET  \r\n");crcErr=1;}
    if(((crcrc2>>8)!=p_data[103])||((crcrc2&0x00FF)!=p_data[104])){printf("\r\nCRC ERROR IN SECOND PACKET  \r\n");crcErr=2;}
    if(!crcErr){
        if(p_data[2]>29)p_data[2]=13;//Reality check of XMT Delay
         app_timer_start(lora_tx_timer_id, APP_TIMER_TICKS(1000*p_data[2]), NULL);//Start a timer. The timer will trigger an XMT.
         txTimerFlag=1;
         printf("\r\nBoth CRCs are GOOD. XMT Timer = %d seconds.\r\n\r\n",p_data[2]);
         }else txTimerFlag=0;
  }
/*************************************************************
*    @brief Structure containing LoRaWan callback functions, needed for lmh_init()
*************************************************************/
static lmh_callback_t lora_callbacks = {    BoardGetBatteryLevel, BoardGetUniqueId, BoardGetRandomSeed,
                                            lmh_rx_data_handler, lmh_evt_handler};

/*************************************************************
*   Handle PWRC pin from Host  
*************************************************************/
void in_pin_handler(nrf_drv_gpiote_pin_t pin, nrf_gpiote_polarity_t action)
{
         uint32_t err_code;

    uint8_t * tx_data = (uint8_t *)("\r\nPWRC PIN INTERRUPT\r\n");
    uint8_t   rx_data;

//   nrf_delay_ms(300);

//    printf("\r\n",rx_data);

//   redBlink(1);
//   printf(" \r\nPWRC GPIO Interrupt: %d\r\n",g_ctr++);


   // Start sending one byte and see if you get the same
    for (uint32_t i = 0; i < 22; i++)
    {
        while (app_uart_put(tx_data[i]) != NRF_SUCCESS);
    }
    nrf_gpiote_event_clear(NRF_GPIOTE_EVENTS_IN_0);
}
/*************************************************************
*   Init PWRC pin wake-up from Host
*************************************************************/
static void wakeupPin_Init(void)
{
    ret_code_t err_code;

//    err_code = nrf_drv_gpiote_init();  //GNP_MAN throws an error cuz it checks if drivers are initialzied when they are already initialized.
 //   APP_ERROR_CHECK(err_code);

    nrf_drv_gpiote_in_config_t in_config = GPIOTE_CONFIG_IN_SENSE_TOGGLE(true);
    in_config.pull = NRF_GPIO_PIN_PULLUP;

    err_code = nrf_drv_gpiote_in_init(WAKEUP_PIN, &in_config, in_pin_handler);
    APP_ERROR_CHECK(err_code);

    nrf_drv_gpiote_in_event_enable(WAKEUP_PIN, true);
}
/*************************************************************
*   End of my stuff
*************************************************************/

/**@brief Function for handling event from the LMH layer
 *
 * @param[in] type  event type 
 * @param[in] data  event data
 */
static void lmh_evt_handler(lmh_evt_type_t type, void *data)
{
    switch(type)
    {
        case LHM_EVT_NWK_JOINED:
        {
#if (OVER_THE_AIR_ACTIVATION != 0)
            NRF_LOG_INFO("Network Joined");
#endif
        } 
        break;

        case LHM_EVT_RX_ACK:
        {
            NRF_LOG_INFO("Acknowledge received");
        } 
        break;

        case LHM_EVT_CLASS_CHANGED:
        {
            int new_class = *(int *)data; 
            NRF_LOG_INFO("Device class changed to %c", "ABC"[new_class]);
        }
        break;

        default:
            break;
    }
}

/**@brief Function for handling LoRaWan received data from the server
 *
 * @param[in] app_data  Pointer to rx data
 */
static void lmh_rx_data_handler(lmh_app_rx_data_t *app_data)
{
    NRF_LOG_DEBUG("LoRa Packet received on port %d, size:%d, rssi:%d, snr:%d", app_data->port, app_data->buffsize, app_data->rssi, app_data->snr);

    switch (app_data->port)
    {
        case LORAWAN_APP_PORT:
            // Take action on received data 
        break;
		
        default:
            break;
    }
}

/*************************************************************
*   SOFTWARE APP (UART FROM ATMEL) TRIGGERS AN XMT
*   @brief Function for handling a LoRa tx timer timeout event.
*************************************************************/
static void tx_lora_oneshot_handler(void * unused)
{
    uint32_t iters = 0;
    uint32_t startIndex;
    m_lora_tx_data.port = LORAWAN_APP_PORT;

    if(txTimerFlag==0)startIndex=3;
    else{
       startIndex=54;
       app_timer_start(lora_tx_timer_id, APP_TIMER_TICKS(30000), NULL);//Restart the timer to do the second half of the data 30 seconds later.
       txTimerFlag=0;
    }
    for(iters=0;iters<51;iters++){
      m_lora_tx_data.buffer[iters] = m_lora_tx_data_buffer[iters+startIndex];
    }

    m_lora_tx_data.buffsize = 11;//THIS IS THE XMT PAYLOAD SIZE
    m_lora_tx_data.confirmed = 0;
    m_lora_tx_data.nb_trials = 8;
  
    lmh_send(&m_lora_tx_data);
}
/*************************************************************
*   TIMER TRIGGERS AN XMT
*   @brief Function for handling a LoRa tx timer timeout event.
*************************************************************/
static void tx_lora_periodic_handler(void * unused)
{
    uint32_t i = 0;
    m_lora_tx_data.port = LORAWAN_APP_PORT;
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = 'D';
    m_lora_tx_data.buffer[i++] = ' ';
    //m_lora_tx_data.buffsize = i;
    //m_lora_tx_data.confirmed = 0;
    //m_lora_tx_data.nb_trials = 8;

    m_lora_tx_data.buffsize = 51;//Need to set US915_DEFAULT_DATARATE in RegionUS915.h
    m_lora_tx_data.confirmed = 0;
    m_lora_tx_data.nb_trials = 8;
  
    lmh_send(&m_lora_tx_data);
}
/*************************************************************
*   TIMER INIT
*   @details Initializes the timer module. This creates and starts application timers.
*************************************************************/
static void timers_init(void)
{
    ret_code_t err_code;
	
    APP_SCHED_INIT(SCHED_MAX_EVENT_DATA_SIZE, SCHED_QUEUE_SIZE);

    // Initialize timer module.
    err_code = app_timer_init();
    APP_ERROR_CHECK(err_code);
	
    // Initialize timers
#ifdef DO_TIMER_XMTS
    err_code = app_timer_create(&lora_tx_timer_id, APP_TIMER_MODE_REPEATED,  tx_lora_periodic_handler);//APP_TIMER_MODE_REPEATED
#endif
#ifdef DO_UART_XMTS
    err_code = app_timer_create(&lora_tx_timer_id, APP_TIMER_MODE_SINGLE_SHOT,  tx_lora_oneshot_handler);
#endif

    APP_ERROR_CHECK(err_code);
}

/**@brief Function for initializing the nrf log module.
 */
static void log_init(void)
{
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    NRF_LOG_DEFAULT_BACKENDS_INIT();
}


/**@brief Function for application main entry.
 */
int main(void)
 {	
    uint32_t err_code;


    // Initialize logs.
    log_init();
    NRF_LOG_INFO("LoRaWan Class A example started.");
	
   // Initialize clocks & power
    nrf_drv_clock_init();
    nrf_drv_clock_lfclk_request(NULL);
    nrf_pwr_mgmt_init();


    // Enable nRF52 DCDC
    NRF_POWER->DCDCEN = 1;

   // Init UART
 #ifdef DO_UART_XMTS
   const app_uart_comm_params_t comm_params =
      {
          RX_PIN_NUMBER,
          TX_PIN_NUMBER,
          RTS_PIN_NUMBER,
          CTS_PIN_NUMBER,
          UART_HWFC,
          false,
  //       NRF_UART_BAUDRATE_115200
          NRF_UART_BAUDRATE_9600
      };

    APP_UART_FIFO_INIT(&comm_params,
                         UART_RX_BUF_SIZE,
                         UART_TX_BUF_SIZE,
                         uart_error_handle,
                         APP_IRQ_PRIORITY_LOWEST,
                         err_code);

    APP_ERROR_CHECK(err_code);
#endif
   /* De */
    //NRF_LOG_RAW_INFO(
    //        "NRF BOOT\r\n"
    //);

   // Initialize Scheduler and timer
//#ifdef DO_TIMER_XMTS
    timers_init();
//#endif
		
    // Initialize LoRa chip.
    err_code = lora_hardware_init();
    APP_ERROR_CHECK(err_code);
	
    // Initialize LoRaWan
    err_code = lmh_init(&lora_callbacks);
    APP_ERROR_CHECK(err_code);  

    // Start Join procedure
    lmh_join(OVER_THE_AIR_ACTIVATION);
    app_timer_start(lora_tx_timer_id, APP_TIMER_TICKS(LORAWAN_APP_TX_DUTYCYCLE), NULL);


    //GNP_MAN LED Pin
    redBlink(5);
 //   nrf_gpio_cfg_input (2, NRF_GPIO_PIN_PULLUP);//Host Interrupt PWRC
 //   wakeupPin_Init();
/******* UART TEST ************************************************/		
    //uint8_t * tx_data = (uint8_t *)("\r\nUART TEST GOOD\r\n");
    //for (uint32_t i = 0; i < 18; i++)
    //{
    //    uint32_t err_code;
    //    while (app_uart_put(tx_data[i]) != NRF_SUCCESS);
    //}
 /*****************************************************************/
    
    // Enter main loop.
    for (;;)
    {
        lmh_process();

        app_sched_execute();

        redBlink(1);


        if (NRF_LOG_PROCESS() == false)
        {
            nrf_pwr_mgmt_run();
        }		
    }
}

/*************************************************************
*   Red Blink LED
*************************************************************/
void redBlink (char numBlinks){
	char ctr;
        nrf_gpio_cfg_output (30);
	for(ctr=numBlinks;ctr>0;ctr--){
            nrf_gpio_pin_write (30, 1);
            nrf_delay_ms(30);
            nrf_gpio_pin_write (30, 0);
            nrf_delay_ms(200);
	}
        nrf_gpio_cfg_input (30, NRF_GPIO_PIN_NOPULL);
}
/*************************************************************
*   CRC
*************************************************************/
uint16_t calcCRC(uint8_t cbuff[], uint32_t LEN) {
   uint32_t i,j;
   uint16_t X = 0xFFFF;
   uint16_t Y = 0x0080;
   uint16_t Z;
   for (i=0;i<LEN;i++){       //for each element
     Y = 0x0080;
     for (j=0;j<8;j++){
       Z = X;
       X <<= 1;
       if((Y & cbuff[i]) != 0){ X++;};
       Y >>= 1;
       if ((Z & 0x8000) != 0) {X ^= 0x1021; };
    };   //end 8x
   };    // end for each element
  for (i=0;i<16;i++){
    if ((X & 0x8000) != 0) { X<<=1; X ^= 0x1021; } else X <<= 1;
  };     //end 16x
  return X;
}
