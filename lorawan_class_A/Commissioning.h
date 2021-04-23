/*!
 * \file      Commissioning.h
 *
 * \brief     End device commissioning parameters
 *
 * \copyright Revised BSD License, see section \ref LICENSE.
 *
 * \code
 *                ______                              _
 *               / _____)             _              | |
 *              ( (____  _____ ____ _| |_ _____  ____| |__
 *               \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 *               _____) ) ____| | | || |_| ____( (___| | | |
 *              (______/|_____)_|_|_| \__)_____)\____)_| |_|
 *              (C)2013-2017 Semtech
 *
 * \endcode
 *
 * \author    Miguel Luis ( Semtech )
 *
 * \author    Gregory Cristian ( Semtech )
 */
#ifndef __LORA_COMMISSIONING_H__
#define __LORA_COMMISSIONING_H__

/*!
 ******************************************************************************
 ********************************** WARNING ***********************************
 ******************************************************************************
  The crypto-element implementation supports both 1.0.x and 1.1.x LoRaWAN 
  versions of the specification.
  Thus it has been decided to use the 1.1.x keys and EUI name definitions.
  The below table shows the names equivalence between versions:
               +---------------------+-------------------------+
               |       1.0.x         |          1.1.x          |
               +=====================+=========================+
               | LORAWAN_DEVICE_EUI  | LORAWAN_DEVICE_EUI      |
               +---------------------+-------------------------+
               | LORAWAN_APP_EUI     | LORAWAN_JOIN_EUI        |
               +---------------------+-------------------------+
               | LORAWAN_GEN_APP_KEY | LORAWAN_APP_KEY         |
               +---------------------+-------------------------+
               | LORAWAN_APP_KEY     | LORAWAN_NWK_KEY         |
               +---------------------+-------------------------+
               | LORAWAN_NWK_S_KEY   | LORAWAN_F_NWK_S_INT_KEY |
               +---------------------+-------------------------+
               | LORAWAN_NWK_S_KEY   | LORAWAN_S_NWK_S_INT_KEY |
               +---------------------+-------------------------+
               | LORAWAN_NWK_S_KEY   | LORAWAN_NWK_S_ENC_KEY   |
               +---------------------+-------------------------+
               | LORAWAN_APP_S_KEY   | LORAWAN_APP_S_KEY       |
               +---------------------+-------------------------+
 ******************************************************************************
 ******************************************************************************
 ******************************************************************************
 */

/*!
 * When set to 1 the application uses the Over-the-Air activation procedure
 * When set to 0 the application uses the Personalization activation procedure
 */
#define OVER_THE_AIR_ACTIVATION                            0

/*!
 * When using ABP activation the MAC layer must know in advance to which server
 * version it will be connected.
 */
#define ABP_ACTIVATION_LRWAN_VERSION_V10x                  0x01000300 // 1.0.3.0

#define ABP_ACTIVATION_LRWAN_VERSION                       ABP_ACTIVATION_LRWAN_VERSION_V10x

/*!
 * Indicates if the end-device is to be connected to a private or public network
 */
#define LORAWAN_PUBLIC_NETWORK                             true

/*!
 * IEEE Organizationally Unique Identifier ( OUI ) (big endian)
 * \remark This is unique to a company or organization
 */
#define IEEE_OUI                                           0x00, 0x0B, 0x33

/*!
 * Mote device IEEE EUI (big endian)
 *
 * \remark In this application the value is automatically generated by calling
 *         BoardGetUniqueId function
 */
 //AppNote says: can be manually set in code or generated using the nRF52832 device identifier
 //TTN says: OTAA needs DEVICE EUI. Should come from DEVICE. For ABP click the squiggle on TNN Device:SettingsTab to generate a DEVICE EUI
 //and then copy the DEVICE EUI from TTN:Settings to device code (this whole thing different for OTAA)
#define LORAWAN_DEVICE_EUI                                 { IEEE_OUI, 0x39, 0x4F, 0xB6, 0x0B, 0xC3 }

/*!
 * App/Join server IEEE EUI (big endian)
 * WORKS WITH CLASS_A WHEN USED APPLICATION EUI FROM TTN. DMB Dec.2020
 */
 //*********** USE APP_EUI FROM TTN.
#define LORAWAN_JOIN_EUI          { 0x70, 0xB3, 0xD5, 0x7E, 0xD0, 0x03, 0xA8, 0x4F }

/*!
 * Application root key
 * WARNING: NOT USED FOR 1.0.x DEVICES
 * WORKED WITH ZEROS. DMB Dec.2020
 */
#define LORAWAN_APP_KEY           { 0, 0, 0, 0, 0, 0, 0, 0 }         
/*!
 * Application root key - Used to derive Multicast keys on 1.0.x devices.
 * WARNING: USED only FOR 1.0.x DEVICES
 */
 //per note: OTAA only, used to generate sessions keys.
#define LORAWAN_GEN_APP_KEY       { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } 

/*!
 * Network root key
 * WARNING: FOR 1.0.x DEVICES IT IS THE \ref LORAWAN_APP_KEY
 */
#define LORAWAN_NWK_KEY          { 0x2B, 0x7E, 0x15, 0x16, 0x28, 0xAE, 0xD2, 0xA6, 0xAB, 0xF7, 0x15, 0x88, 0x09, 0xCF, 0x4F, 0x3C }
/*!
 * Current network ID
 */
#define LORAWAN_NETWORK_ID                                 ( uint32_t )0

/*!
 * Device address on the network (big endian)
 *
 * \remark In this application the value is automatically generated using
 *         a pseudo random generator seeded with a value derived from
 *         BoardUniqueId value if LORAWAN_DEVICE_ADDRESS is set to 0
 */
#define LORAWAN_DEVICE_ADDRESS                             ( uint32_t )0x26021AE4

/*!
 * Forwarding Network session integrity key
 * WARNING: NWK_S_KEY FOR 1.0.x DEVICES
 */
#define LORAWAN_F_NWK_S_INT_KEY            { 0xF6, 0x15, 0x64, 0x61, 0x96, 0x55, 0x46, 0x54, 0x37, 0xB8, 0x01, 0xF8, 0x31, 0x94, 0xE5, 0x8A }                 
/*!
 * Serving Network session integrity key
 * WARNING: NOT USED FOR 1.0.x DEVICES. MUST BE THE SAME AS \ref LORAWAN_F_NWK_S_INT_KEY
 */
#define LORAWAN_S_NWK_S_INT_KEY            { 0xF6, 0x15, 0x64, 0x61, 0x96, 0x55, 0x46, 0x54, 0x37, 0xB8, 0x01, 0xF8, 0x31, 0x94, 0xE5, 0x8A }                

/*!
 * Network session encryption key
 * WARNING: NOT USED FOR 1.0.x DEVICES. MUST BE THE SAME AS \ref LORAWAN_F_NWK_S_INT_KEY
 */
#define LORAWAN_NWK_S_ENC_KEY               { 0xF6, 0x15, 0x64, 0x61, 0x96, 0x55, 0x46, 0x54, 0x37, 0xB8, 0x01, 0xF8, 0x31, 0x94, 0xE5, 0x8A }                
/*!
 * Application session key
 */
#define LORAWAN_APP_S_KEY        { 0x56, 0x59, 0x33, 0xB7, 0x8D, 0x09, 0xD8, 0x50, 0x52, 0x47, 0x9B, 0xEE, 0x94, 0xAF, 0xAC, 0x39 }


/***************************************************************************************
*
*  FREQUENCY: Set the channel mask in three places in RegionUS915.c.  
*  Text search for "GNP_MAN" for the three places. These masks need to match Dragino Gateway LoRa:Radio Settings:Frequency Sub Band.
*
****************************************************************************************/
   
#endif // __LORA_COMMISSIONING_H__