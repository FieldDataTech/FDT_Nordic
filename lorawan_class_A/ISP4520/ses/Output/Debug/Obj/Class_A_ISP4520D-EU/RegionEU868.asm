	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"RegionEU868.c"
	.text
.Ltext0:
	.section	.rodata.LoRaMacMaxEirpTable,"a"
	.align	2
	.type	LoRaMacMaxEirpTable, %object
	.size	LoRaMacMaxEirpTable, 16
LoRaMacMaxEirpTable:
	.ascii	"\010\012\014\015\016\020\022\024\025\030\032\033\035"
	.ascii	"\036!$"
	.section	.rodata.DataratesEU868,"a"
	.align	2
	.type	DataratesEU868, %object
	.size	DataratesEU868, 8
DataratesEU868:
	.ascii	"\014\013\012\011\010\007\0072"
	.section	.rodata.BandwidthsEU868,"a"
	.align	2
	.type	BandwidthsEU868, %object
	.size	BandwidthsEU868, 32
BandwidthsEU868:
	.word	125000
	.word	125000
	.word	125000
	.word	125000
	.word	125000
	.word	125000
	.word	250000
	.word	0
	.section	.rodata.MaxPayloadOfDatarateEU868,"a"
	.align	2
	.type	MaxPayloadOfDatarateEU868, %object
	.size	MaxPayloadOfDatarateEU868, 8
MaxPayloadOfDatarateEU868:
	.ascii	"333s\362\362\362\362"
	.section	.rodata.MaxPayloadOfDatarateRepeaterEU868,"a"
	.align	2
	.type	MaxPayloadOfDatarateRepeaterEU868, %object
	.size	MaxPayloadOfDatarateRepeaterEU868, 8
MaxPayloadOfDatarateRepeaterEU868:
	.ascii	"333s\336\336\336\336"
	.section	.bss.NvmCtx,"aw",%nobits
	.align	2
	.type	NvmCtx, %object
	.size	NvmCtx, 292
NvmCtx:
	.space	292
	.section	.text.GetNextLowerTxDr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	GetNextLowerTxDr, %function
GetNextLowerTxDr:
.LFB0:
	.file 1 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\RegionEU868.c"
	.loc 1 69 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI0:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 70 13
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 72 7
	ldrsb	r2, [sp, #7]
	ldrsb	r3, [sp, #6]
	cmp	r2, r3
	bne	.L2
	.loc 1 74 21
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #15]
	b	.L3
.L2:
	.loc 1 78 26
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 78 21
	subs	r3, r3, #1
	strb	r3, [sp, #15]
.L3:
	.loc 1 80 12
	ldrsb	r3, [sp, #15]
	.loc 1 81 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI1:
	@ sp needed
	bx	lr
.LFE0:
	.size	GetNextLowerTxDr, .-GetNextLowerTxDr
	.section	.text.GetBandwidth,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	GetBandwidth, %function
GetBandwidth:
.LFB1:
	.loc 1 84 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI2:
	str	r0, [sp, #4]
	.loc 1 85 28
	ldr	r2, .L9
	ldr	r3, [sp, #4]
	ldr	r3, [r2, r3, lsl #2]
	.loc 1 85 5
	ldr	r2, .L9+4
	cmp	r3, r2
	beq	.L6
	ldr	r2, .L9+8
	cmp	r3, r2
	beq	.L7
	.loc 1 89 20
	movs	r3, #0
	b	.L8
.L6:
	.loc 1 91 20
	movs	r3, #1
	b	.L8
.L7:
	.loc 1 93 20
	movs	r3, #2
.L8:
	.loc 1 95 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI3:
	@ sp needed
	bx	lr
.L10:
	.align	2
.L9:
	.word	BandwidthsEU868
	.word	250000
	.word	500000
.LFE1:
	.size	GetBandwidth, .-GetBandwidth
	.section	.text.LimitTxPower,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	LimitTxPower, %function
LimitTxPower:
.LFB2:
	.loc 1 98 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI4:
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 99 12
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #15]
	.loc 1 102 19
	ldrsb	r2, [sp, #7]
	ldrsb	r3, [sp, #6]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	strb	r3, [sp, #15]
	.loc 1 104 12
	ldrsb	r3, [sp, #15]
	.loc 1 105 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI5:
	@ sp needed
	bx	lr
.LFE2:
	.size	LimitTxPower, .-LimitTxPower
	.section	.text.VerifyRfFreq,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	VerifyRfFreq, %function
VerifyRfFreq:
.LFB3:
	.loc 1 108 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #12
.LCFI7:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 110 14
	ldr	r3, .L23
	ldr	r3, [r3, #32]
	.loc 1 110 9
	ldr	r0, [sp, #4]
	blx	r3
.LVL0:
	mov	r3, r0
	.loc 1 110 40
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 110 7
	cmp	r3, #0
	beq	.L14
	.loc 1 112 16
	movs	r3, #0
	b	.L15
.L14:
	.loc 1 116 7
	ldr	r3, [sp, #4]
	ldr	r2, .L23+4
	cmp	r3, r2
	bcc	.L16
	.loc 1 116 31 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r2, .L23+8
	cmp	r3, r2
	bhi	.L16
	.loc 1 118 15
	ldr	r3, [sp]
	movs	r2, #2
	strb	r2, [r3]
	b	.L17
.L16:
	.loc 1 120 12
	ldr	r3, [sp, #4]
	ldr	r2, .L23+8
	cmp	r3, r2
	bls	.L18
	.loc 1 120 36 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r2, .L23+12
	cmp	r3, r2
	bhi	.L18
	.loc 1 122 15
	ldr	r3, [sp]
	movs	r2, #0
	strb	r2, [r3]
	b	.L17
.L18:
	.loc 1 124 12
	ldr	r3, [sp, #4]
	ldr	r2, .L23+12
	cmp	r3, r2
	bls	.L19
	.loc 1 124 35 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r2, .L23+16
	cmp	r3, r2
	bhi	.L19
	.loc 1 126 15
	ldr	r3, [sp]
	movs	r2, #1
	strb	r2, [r3]
	b	.L17
.L19:
	.loc 1 128 12
	ldr	r3, [sp, #4]
	ldr	r2, .L23+20
	cmp	r3, r2
	bls	.L20
	.loc 1 128 36 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r2, .L23+24
	cmp	r3, r2
	bhi	.L20
	.loc 1 130 15
	ldr	r3, [sp]
	movs	r2, #5
	strb	r2, [r3]
	b	.L17
.L20:
	.loc 1 132 12
	ldr	r3, [sp, #4]
	ldr	r2, .L23+28
	cmp	r3, r2
	bls	.L21
	.loc 1 132 36 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r2, .L23+32
	cmp	r3, r2
	bhi	.L21
	.loc 1 134 15
	ldr	r3, [sp]
	movs	r2, #3
	strb	r2, [r3]
	b	.L17
.L21:
	.loc 1 136 12
	ldr	r3, [sp, #4]
	ldr	r2, .L23+36
	cmp	r3, r2
	bcc	.L22
	.loc 1 136 36 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r2, .L23+40
	cmp	r3, r2
	bhi	.L22
	.loc 1 138 15
	ldr	r3, [sp]
	movs	r2, #4
	strb	r2, [r3]
	b	.L17
.L22:
	.loc 1 142 16
	movs	r3, #0
	b	.L15
.L17:
	.loc 1 144 12
	movs	r3, #1
.L15:
	.loc 1 145 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L24:
	.align	2
.L23:
	.word	Radio
	.word	863000000
	.word	864999999
	.word	868000000
	.word	868600000
	.word	868699999
	.word	869200000
	.word	869399999
	.word	869650000
	.word	869700000
	.word	870000000
.LFE3:
	.size	VerifyRfFreq, .-VerifyRfFreq
	.section	.text.CountNbOfEnabledChannels,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	CountNbOfEnabledChannels, %function
CountNbOfEnabledChannels:
.LFB4:
	.loc 1 148 1
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #28
.LCFI10:
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	mov	r3, r0
	strb	r3, [sp, #15]
	mov	r3, r1
	strb	r3, [sp, #14]
	.loc 1 149 13
	movs	r3, #0
	strb	r3, [sp, #23]
	.loc 1 150 13
	movs	r3, #0
	strb	r3, [sp, #22]
.LBB2:
	.loc 1 152 18
	movs	r3, #0
	strb	r3, [sp, #21]
	.loc 1 152 25
	movs	r3, #0
	strb	r3, [sp, #20]
	.loc 1 152 5
	b	.L26
.L34:
.LBB3:
	.loc 1 154 22
	movs	r3, #0
	strb	r3, [sp, #19]
	.loc 1 154 9
	b	.L27
.L33:
	.loc 1 156 31
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [sp, #8]
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 1 156 50
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	asr	r3, r2, r3
	and	r3, r3, #1
	.loc 1 156 15
	cmp	r3, #0
	beq	.L28
	.loc 1 158 32
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r2, r3
	.loc 1 158 29
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 1 158 36
	ldr	r3, [r3]
	.loc 1 158 19
	cmp	r3, #0
	beq	.L36
	.loc 1 162 28
	ldrb	r3, [sp, #15]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 162 19
	cmp	r3, #0
	beq	.L30
	.loc 1 164 62
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	movs	r2, #7
	asr	r3, r2, r3
	and	r3, r3, #1
	.loc 1 164 23
	cmp	r3, #0
	beq	.L37
.L30:
	.loc 1 169 21
	ldrsb	r0, [sp, #14]
	.loc 1 169 68
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r2, r3
	.loc 1 169 65
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 1 169 87
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #0, #4
	sxtb	r3, r3
	.loc 1 169 21
	mov	r1, r3
	.loc 1 170 58
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r2, r3
	.loc 1 170 55
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 1 170 77
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #4, #4
	sxtb	r3, r3
	.loc 1 169 21
	mov	r2, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 169 19
	cmp	r3, #0
	beq	.L38
	.loc 1 174 38
	ldrb	r2, [sp, #21]	@ zero_extendqisi2
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r2, r3
	.loc 1 174 35
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #4]
	add	r3, r3, r2
	.loc 1 174 42
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 1 174 26
	lsls	r3, r3, #4
	ldr	r2, [sp, #32]
	add	r3, r3, r2
	.loc 1 174 48
	ldr	r3, [r3, #12]
	.loc 1 174 19
	cmp	r3, #0
	beq	.L32
	.loc 1 176 38
	ldrb	r3, [sp, #22]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #22]
	.loc 1 177 21
	b	.L28
.L32:
	.loc 1 179 50
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	adds	r2, r3, #1
	strb	r2, [sp, #23]
	mov	r2, r3
	.loc 1 179 32
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	.loc 1 179 58
	ldrb	r1, [sp, #21]
	ldrb	r2, [sp, #19]
	add	r2, r2, r1
	uxtb	r2, r2
	.loc 1 179 54
	strb	r2, [r3]
	b	.L28
.L36:
	.loc 1 160 21
	nop
	b	.L28
.L37:
	.loc 1 166 25
	nop
	b	.L28
.L38:
	.loc 1 172 21
	nop
.L28:
	.loc 1 154 38 discriminator 2
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #19]
.L27:
	.loc 1 154 9 discriminator 1
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L33
.LBE3:
	.loc 1 152 61 discriminator 2
	ldrb	r3, [sp, #21]
	adds	r3, r3, #16
	strb	r3, [sp, #21]
	.loc 1 152 69 discriminator 2
	ldrb	r3, [sp, #20]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #20]
.L26:
	.loc 1 152 5 discriminator 1
	ldrb	r3, [sp, #21]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L34
.LBE2:
	.loc 1 184 14
	ldr	r3, [sp, #40]
	ldrb	r2, [sp, #22]
	strb	r2, [r3]
	.loc 1 185 12
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	.loc 1 186 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.LFE4:
	.size	CountNbOfEnabledChannels, .-CountNbOfEnabledChannels
	.section	.text.RegionEU868GetPhyParam,"ax",%progbits
	.align	1
	.global	RegionEU868GetPhyParam
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868GetPhyParam, %function
RegionEU868GetPhyParam:
.LFB5:
	.loc 1 189 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #20
.LCFI13:
	str	r0, [sp, #4]
	.loc 1 190 16
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 192 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #52
	bhi	.L76
	adr	r2, .L42
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L42:
	.word	.L73+1
	.word	.L72+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L71+1
	.word	.L76+1
	.word	.L70+1
	.word	.L76+1
	.word	.L69+1
	.word	.L68+1
	.word	.L67+1
	.word	.L66+1
	.word	.L65+1
	.word	.L64+1
	.word	.L63+1
	.word	.L62+1
	.word	.L61+1
	.word	.L60+1
	.word	.L59+1
	.word	.L58+1
	.word	.L57+1
	.word	.L56+1
	.word	.L55+1
	.word	.L54+1
	.word	.L53+1
	.word	.L52+1
	.word	.L51+1
	.word	.L50+1
	.word	.L49+1
	.word	.L49+1
	.word	.L48+1
	.word	.L47+1
	.word	.L46+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L76+1
	.word	.L45+1
	.word	.L44+1
	.word	.L43+1
	.word	.L76+1
	.word	.L76+1
	.word	.L41+1
	.p2align 1
.L73:
	.loc 1 196 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 197 13
	b	.L74
.L72:
	.loc 1 201 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 202 13
	b	.L74
.L71:
	.loc 1 206 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 207 13
	b	.L74
.L46:
	.loc 1 211 30
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3, #1]
	movs	r1, #0
	mov	r0, r3
	bl	GetNextLowerTxDr
	mov	r3, r0
	.loc 1 211 28
	str	r3, [sp, #8]
	.loc 1 212 13
	b	.L74
.L70:
	.loc 1 216 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 217 13
	b	.L74
.L69:
	.loc 1 221 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 222 13
	b	.L74
.L68:
	.loc 1 226 28
	movs	r3, #64
	str	r3, [sp, #8]
	.loc 1 227 13
	b	.L74
.L67:
	.loc 1 231 28
	movs	r3, #32
	str	r3, [sp, #8]
	.loc 1 232 13
	b	.L74
.L66:
	.loc 1 236 62
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	.loc 1 236 55
	ldr	r3, .L77
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	.loc 1 236 28
	str	r3, [sp, #8]
	.loc 1 237 13
	b	.L74
.L65:
	.loc 1 241 70
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	.loc 1 241 63
	ldr	r3, .L77+4
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	.loc 1 241 28
	str	r3, [sp, #8]
	.loc 1 242 13
	b	.L74
.L64:
	.loc 1 246 28
	movs	r3, #1
	str	r3, [sp, #8]
	.loc 1 247 13
	b	.L74
.L63:
	.loc 1 251 28
	movw	r3, #3000
	str	r3, [sp, #8]
	.loc 1 252 13
	b	.L74
.L62:
	.loc 1 256 28
	mov	r3, #1000
	str	r3, [sp, #8]
	.loc 1 257 13
	b	.L74
.L61:
	.loc 1 261 28
	mov	r3, #2000
	str	r3, [sp, #8]
	.loc 1 262 13
	b	.L74
.L60:
	.loc 1 266 28
	movw	r3, #5000
	str	r3, [sp, #8]
	.loc 1 267 13
	b	.L74
.L59:
	.loc 1 271 28
	movw	r3, #6000
	str	r3, [sp, #8]
	.loc 1 272 13
	b	.L74
.L58:
	.loc 1 276 28
	mov	r3, #16384
	str	r3, [sp, #8]
	.loc 1 277 13
	b	.L74
.L57:
	.loc 1 281 51
	mov	r1, #1000
	ldr	r0, .L77+8
	bl	randr
	mov	r3, r0
	.loc 1 281 49
	add	r3, r3, #2000
	.loc 1 281 28
	str	r3, [sp, #8]
	.loc 1 282 13
	b	.L74
.L56:
	.loc 1 286 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 287 13
	b	.L74
.L55:
	.loc 1 291 28
	ldr	r3, .L77+12
	str	r3, [sp, #8]
	.loc 1 292 13
	b	.L74
.L54:
	.loc 1 296 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 297 13
	b	.L74
.L53:
	.loc 1 301 35
	ldr	r3, .L77+16
	str	r3, [sp, #8]
	.loc 1 302 13
	b	.L74
.L52:
	.loc 1 306 35
	ldr	r3, .L77+20
	str	r3, [sp, #8]
	.loc 1 307 13
	b	.L74
.L51:
	.loc 1 311 28
	movs	r3, #16
	str	r3, [sp, #8]
	.loc 1 312 13
	b	.L74
.L50:
	.loc 1 316 31
	ldr	r3, .L77+24
	str	r3, [sp, #8]
	.loc 1 317 13
	b	.L74
.L49:
	.loc 1 322 28
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 323 13
	b	.L74
.L48:
	.loc 1 327 29
	mov	r3, #1098907648
	str	r3, [sp, #8]	@ float
	.loc 1 328 13
	b	.L74
.L47:
	.loc 1 332 29
	ldr	r3, .L77+28
	str	r3, [sp, #8]	@ float
	.loc 1 333 13
	b	.L74
.L45:
	.loc 1 337 28
	ldr	r3, .L77+12
	str	r3, [sp, #8]
	.loc 1 338 13
	b	.L74
.L44:
	.loc 1 342 46
	movs	r3, #17
	strb	r3, [sp, #8]
	.loc 1 343 44
	movs	r3, #2
	strb	r3, [sp, #9]
	.loc 1 344 44
	movs	r3, #0
	strb	r3, [sp, #10]
	.loc 1 345 13
	b	.L74
.L43:
	.loc 1 349 28
	movs	r3, #3
	str	r3, [sp, #8]
	.loc 1 350 13
	b	.L74
.L41:
	.loc 1 354 28
	movs	r3, #3
	str	r3, [sp, #8]
	.loc 1 355 13
	b	.L74
.L76:
	.loc 1 359 13
	nop
.L74:
	.loc 1 363 12
	ldr	r3, [sp, #8]
	str	r3, [sp, #12]
	movs	r3, #0
	ldr	r3, [sp, #12]
	.loc 1 364 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.L78:
	.align	2
.L77:
	.word	MaxPayloadOfDatarateEU868
	.word	MaxPayloadOfDatarateRepeaterEU868
	.word	-1000
	.word	869525000
	.word	NvmCtx+288
	.word	NvmCtx+290
	.word	NvmCtx
	.word	1074370970
.LFE5:
	.size	RegionEU868GetPhyParam, .-RegionEU868GetPhyParam
	.section	.text.RegionEU868SetBandTxDone,"ax",%progbits
	.align	1
	.global	RegionEU868SetBandTxDone
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868SetBandTxDone, %function
RegionEU868SetBandTxDone:
.LFB6:
	.loc 1 367 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #12
.LCFI16:
	str	r0, [sp, #4]
	.loc 1 368 5
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 368 84
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 368 94
	ldr	r2, .L80
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 368 5
	adds	r3, r3, #12
	lsls	r3, r3, #4
	ldr	r2, .L80
	adds	r1, r3, r2
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	bl	RegionCommonSetBandTxDone
	.loc 1 369 1
	nop
	add	sp, sp, #12
.LCFI17:
	@ sp needed
	ldr	pc, [sp], #4
.L81:
	.align	2
.L80:
	.word	NvmCtx
.LFE6:
	.size	RegionEU868SetBandTxDone, .-RegionEU868SetBandTxDone
	.section .rodata
	.align	2
.LC0:
	.word	868100000
	.word	0
	.byte	80
	.byte	1
	.space	2
	.align	2
.LC1:
	.word	868300000
	.word	0
	.byte	80
	.byte	1
	.space	2
	.align	2
.LC2:
	.word	868500000
	.word	0
	.byte	80
	.byte	1
	.space	2
	.section	.text.RegionEU868InitDefaults,"ax",%progbits
	.align	1
	.global	RegionEU868InitDefaults
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868InitDefaults, %function
RegionEU868InitDefaults:
.LFB7:
	.loc 1 372 1
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #180
.LCFI19:
	str	r0, [sp, #4]
	.loc 1 373 12
	add	r3, sp, #80
	movs	r2, #96
	movs	r1, #0
	mov	r0, r3
	bl	memset
	movs	r3, #100
	strh	r3, [sp, #80]	@ movhi
	movs	r3, #100
	strh	r3, [sp, #96]	@ movhi
	mov	r3, #1000
	strh	r3, [sp, #112]	@ movhi
	movs	r3, #10
	strh	r3, [sp, #128]	@ movhi
	movs	r3, #100
	strh	r3, [sp, #144]	@ movhi
	mov	r3, #1000
	strh	r3, [sp, #160]	@ movhi
	.loc 1 383 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 383 5
	cmp	r3, #2
	beq	.L83
	cmp	r3, #2
	bgt	.L89
	cmp	r3, #0
	beq	.L85
	cmp	r3, #1
	beq	.L86
	.loc 1 422 13
	b	.L89
.L85:
.LBB4:
	.loc 1 388 13
	add	r3, sp, #80
	movs	r2, #96
	mov	r1, r3
	ldr	r0, .L92
	bl	memcpy1
	.loc 1 391 32
	ldr	r3, .L92+4
	ldr	r2, .L92+8
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 392 32
	ldr	r3, .L92+4
	ldr	r2, .L92+12
	adds	r3, r3, #12
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 393 32
	ldr	r3, .L92+4
	ldr	r2, .L92+16
	adds	r3, r3, #24
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 396 43
	ldr	r3, .L92+4
	movs	r2, #7
	strh	r2, [r3, #290]	@ movhi
	.loc 1 398 13
	movs	r2, #1
	ldr	r1, .L92+20
	ldr	r0, .L92+24
	bl	RegionCommonChanMaskCopy
	.loc 1 399 13
	b	.L87
.L83:
.LBE4:
	.loc 1 403 23
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 403 15
	cmp	r3, #0
	beq	.L90
	.loc 1 405 63
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 405 17
	mov	r2, #292
	mov	r1, r3
	ldr	r0, .L92+4
	bl	memcpy1
	.loc 1 407 13
	b	.L90
.L86:
.LBB5:
	.loc 1 412 36
	ldr	r3, .L92+4
	ldrh	r2, [r3, #288]
	.loc 1 412 65
	ldr	r3, .L92+4
	ldrh	r3, [r3, #290]
	.loc 1 412 36
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, .L92+4
	strh	r2, [r3, #288]	@ movhi
	.loc 1 415 32
	ldr	r3, .L92+4
	ldr	r2, .L92+8
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 416 32
	ldr	r3, .L92+4
	ldr	r2, .L92+12
	adds	r3, r3, #12
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 417 32
	ldr	r3, .L92+4
	ldr	r2, .L92+16
	adds	r3, r3, #24
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 418 13
	b	.L87
.L89:
.LBE5:
	.loc 1 422 13
	nop
	b	.L91
.L90:
	.loc 1 407 13
	nop
.L87:
.L91:
	.loc 1 425 1
	nop
	add	sp, sp, #180
.LCFI20:
	@ sp needed
	ldr	pc, [sp], #4
.L93:
	.align	2
.L92:
	.word	NvmCtx+192
	.word	NvmCtx
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	NvmCtx+290
	.word	NvmCtx+288
.LFE7:
	.size	RegionEU868InitDefaults, .-RegionEU868InitDefaults
	.section	.text.RegionEU868GetNvmCtx,"ax",%progbits
	.align	1
	.global	RegionEU868GetNvmCtx
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868GetNvmCtx, %function
RegionEU868GetNvmCtx:
.LFB8:
	.loc 1 428 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI21:
	str	r0, [sp, #4]
	.loc 1 429 24
	ldr	r3, [sp, #4]
	mov	r2, #292
	str	r2, [r3]
	.loc 1 430 12
	ldr	r3, .L96
	.loc 1 431 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI22:
	@ sp needed
	bx	lr
.L97:
	.align	2
.L96:
	.word	NvmCtx
.LFE8:
	.size	RegionEU868GetNvmCtx, .-RegionEU868GetNvmCtx
	.section	.text.RegionEU868Verify,"ax",%progbits
	.align	1
	.global	RegionEU868Verify
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868Verify, %function
RegionEU868Verify:
.LFB9:
	.loc 1 434 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI23:
	sub	sp, sp, #20
.LCFI24:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 435 5
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L99
	adr	r2, .L101
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L101:
	.word	.L106+1
	.word	.L99+1
	.word	.L99+1
	.word	.L99+1
	.word	.L99+1
	.word	.L105+1
	.word	.L104+1
	.word	.L103+1
	.word	.L99+1
	.word	.L102+1
	.word	.L102+1
	.word	.L99+1
	.word	.L99+1
	.word	.L99+1
	.word	.L99+1
	.word	.L100+1
	.p2align 1
.L106:
.LBB6:
	.loc 1 439 21
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 440 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	add	r2, sp, #15
	mov	r1, r2
	mov	r0, r3
	bl	VerifyRfFreq
	mov	r3, r0
	b	.L107
.L105:
.LBE6:
	.loc 1 444 20
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3]
	movs	r2, #7
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L107
.L104:
	.loc 1 448 20
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3]
	movs	r2, #5
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L107
.L103:
	.loc 1 452 20
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3]
	movs	r2, #7
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L107
.L102:
	.loc 1 458 20
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3]
	movs	r2, #7
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L107
.L100:
	.loc 1 462 20
	movs	r3, #1
	b	.L107
.L99:
	.loc 1 465 20
	movs	r3, #0
.L107:
	.loc 1 467 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI25:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	RegionEU868Verify, .-RegionEU868Verify
	.section	.text.RegionEU868ApplyCFList,"ax",%progbits
	.align	1
	.global	RegionEU868ApplyCFList
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868ApplyCFList, %function
RegionEU868ApplyCFList:
.LFB10:
	.loc 1 470 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI26:
	sub	sp, sp, #44
.LCFI27:
	str	r0, [sp, #4]
	.loc 1 476 30
	movs	r3, #80
	strb	r3, [sp, #32]
	.loc 1 479 20
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 479 7
	cmp	r3, #16
	bne	.L119
	.loc 1 485 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 485 29
	adds	r3, r3, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 485 7
	cmp	r3, #0
	bne	.L120
.LBB7:
	.loc 1 491 18
	movs	r3, #0
	strb	r3, [sp, #39]
	.loc 1 491 25
	movs	r3, #3
	strb	r3, [sp, #38]
	.loc 1 491 5
	b	.L112
.L117:
	.loc 1 493 11
	ldrb	r3, [sp, #38]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L113
	.loc 1 496 58
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 496 67
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 496 34
	str	r3, [sp, #24]
	.loc 1 497 34
	ldr	r2, [sp, #24]
	.loc 1 497 61
	ldr	r3, [sp, #4]
	ldr	r1, [r3]
	.loc 1 497 70
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	adds	r3, r3, #1
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 497 78
	lsls	r3, r3, #8
	.loc 1 497 34
	orrs	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 498 34
	ldr	r2, [sp, #24]
	.loc 1 498 61
	ldr	r3, [sp, #4]
	ldr	r1, [r3]
	.loc 1 498 70
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	adds	r3, r3, #2
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 498 78
	lsls	r3, r3, #16
	.loc 1 498 34
	orrs	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 499 34
	ldr	r3, [sp, #24]
	movs	r2, #100
	mul	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 502 37
	movs	r3, #0
	str	r3, [sp, #28]
	b	.L114
.L113:
	.loc 1 506 34
	movs	r3, #0
	str	r3, [sp, #24]
	.loc 1 507 38
	movs	r3, #0
	strb	r3, [sp, #32]
	.loc 1 508 37
	movs	r3, #0
	str	r3, [sp, #28]
.L114:
	.loc 1 511 23
	ldr	r3, [sp, #24]
	.loc 1 511 11
	cmp	r3, #0
	beq	.L115
	.loc 1 513 35
	add	r3, sp, #24
	str	r3, [sp, #16]
	.loc 1 514 34
	ldrb	r3, [sp, #38]
	strb	r3, [sp, #20]
	.loc 1 517 13
	add	r3, sp, #16
	mov	r0, r3
	bl	RegionEU868ChannelAdd
	b	.L116
.L115:
	.loc 1 521 37
	ldrb	r3, [sp, #38]
	strb	r3, [sp, #12]
	.loc 1 523 13
	add	r3, sp, #12
	mov	r0, r3
	bl	RegionEU868ChannelsRemove
.L116:
	.loc 1 491 98 discriminator 2
	ldrb	r3, [sp, #39]
	adds	r3, r3, #3
	strb	r3, [sp, #39]
	.loc 1 491 110 discriminator 2
	ldrb	r3, [sp, #38]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #38]
.L112:
	.loc 1 491 5 discriminator 1
	ldrb	r3, [sp, #38]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L117
	b	.L108
.L119:
.LBE7:
	.loc 1 481 9
	nop
	b	.L108
.L120:
	.loc 1 487 9
	nop
.L108:
	.loc 1 526 1
	add	sp, sp, #44
.LCFI28:
	@ sp needed
	ldr	pc, [sp], #4
.LFE10:
	.size	RegionEU868ApplyCFList, .-RegionEU868ApplyCFList
	.section	.text.RegionEU868ChanMaskSet,"ax",%progbits
	.align	1
	.global	RegionEU868ChanMaskSet
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868ChanMaskSet, %function
RegionEU868ChanMaskSet:
.LFB11:
	.loc 1 529 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI29:
	sub	sp, sp, #12
.LCFI30:
	str	r0, [sp, #4]
	.loc 1 530 24
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 530 5
	cmp	r3, #0
	beq	.L122
	cmp	r3, #1
	beq	.L123
	b	.L127
.L122:
	.loc 1 534 13
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	movs	r2, #1
	mov	r1, r3
	ldr	r0, .L128
	bl	RegionCommonChanMaskCopy
	.loc 1 535 13
	b	.L125
.L123:
	.loc 1 539 13
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	movs	r2, #1
	mov	r1, r3
	ldr	r0, .L128+4
	bl	RegionCommonChanMaskCopy
	.loc 1 540 13
	b	.L125
.L127:
	.loc 1 543 20
	movs	r3, #0
	b	.L126
.L125:
	.loc 1 545 12
	movs	r3, #1
.L126:
	.loc 1 546 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI31:
	@ sp needed
	ldr	pc, [sp], #4
.L129:
	.align	2
.L128:
	.word	NvmCtx+288
	.word	NvmCtx+290
.LFE11:
	.size	RegionEU868ChanMaskSet, .-RegionEU868ChanMaskSet
	.section	.text.RegionEU868ComputeRxWindowParameters,"ax",%progbits
	.align	1
	.global	RegionEU868ComputeRxWindowParameters
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868ComputeRxWindowParameters, %function
RegionEU868ComputeRxWindowParameters:
.LFB12:
	.loc 1 549 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI32:
	sub	sp, sp, #36
.LCFI33:
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, r0
	strb	r3, [sp, #23]
	mov	r3, r1
	strb	r3, [sp, #22]
	.loc 1 550 12
	mov	r2, #0
	mov	r3, #0
	strd	r2, [sp, #24]
	.loc 1 553 32
	ldrsb	r3, [sp, #23]
	cmp	r3, #7
	it	ge
	movge	r3, #7
	sxtb	r2, r3
	.loc 1 553 30
	ldr	r3, [sp, #12]
	strb	r2, [r3, #1]
	.loc 1 554 61
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #1]
	.loc 1 554 33
	mov	r0, r3
	bl	GetBandwidth
	mov	r3, r0
	.loc 1 554 31
	uxtb	r2, r3
	ldr	r3, [sp, #12]
	strb	r2, [r3, #2]
	.loc 1 556 23
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #1]
	.loc 1 556 7
	cmp	r3, #7
	bne	.L131
	.loc 1 558 82
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	.loc 1 558 19
	ldr	r3, .L133
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	mov	r0, r3
	bl	RegionCommonComputeSymbolTimeFsk
	vstr.64	d0, [sp, #24]
	b	.L132
.L131:
	.loc 1 562 83
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	.loc 1 562 19
	ldr	r3, .L133
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	.loc 1 562 126
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #1]
	mov	r1, r3
	.loc 1 562 19
	ldr	r3, .L133+4
	ldr	r3, [r3, r1, lsl #2]
	mov	r1, r3
	mov	r0, r2
	bl	RegionCommonComputeSymbolTimeLoRa
	vstr.64	d0, [sp, #24]
.L132:
	.loc 1 565 81
	ldr	r3, .L133+8
	ldr	r3, [r3, #92]
	.loc 1 565 5
	blx	r3
.LVL1:
	mov	r1, r0
	ldr	r3, [sp, #12]
	add	r2, r3, #8
	ldr	r3, [sp, #12]
	adds	r3, r3, #12
	ldrb	r0, [sp, #22]	@ zero_extendqisi2
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r1
	ldr	r1, [sp, #16]
	vldr.64	d0, [sp, #24]
	bl	RegionCommonComputeRxWindowParameters
	.loc 1 566 1
	nop
	add	sp, sp, #36
.LCFI34:
	@ sp needed
	ldr	pc, [sp], #4
.L134:
	.align	2
.L133:
	.word	DataratesEU868
	.word	BandwidthsEU868
	.word	Radio
.LFE12:
	.size	RegionEU868ComputeRxWindowParameters, .-RegionEU868ComputeRxWindowParameters
	.section	.text.RegionEU868RxConfig,"ax",%progbits
	.align	1
	.global	RegionEU868RxConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868RxConfig, %function
RegionEU868RxConfig:
.LFB13:
	.loc 1 569 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI35:
	sub	sp, sp, #68
.LCFI36:
	str	r0, [sp, #44]
	str	r1, [sp, #40]
	.loc 1 571 12
	ldr	r3, [sp, #44]
	ldrb	r3, [r3, #1]
	strb	r3, [sp, #55]
	.loc 1 572 13
	movs	r3, #0
	strb	r3, [sp, #62]
	.loc 1 573 12
	movs	r3, #0
	strb	r3, [sp, #54]
	.loc 1 574 14
	ldr	r3, [sp, #44]
	ldr	r3, [r3, #4]
	str	r3, [sp, #56]
	.loc 1 576 14
	ldr	r3, .L143
	ldr	r3, [r3, #4]
	.loc 1 576 9
	blx	r3
.LVL2:
	mov	r3, r0
	.loc 1 576 7
	cmp	r3, #0
	beq	.L136
	.loc 1 578 16
	movs	r3, #0
	b	.L137
.L136:
	.loc 1 581 17
	ldr	r3, [sp, #44]
	ldrb	r3, [r3, #19]	@ zero_extendqisi2
	.loc 1 581 7
	cmp	r3, #0
	bne	.L138
	.loc 1 584 45
	ldr	r3, [sp, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 584 19
	ldr	r2, .L143+4
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [sp, #56]
	.loc 1 586 37
	ldr	r3, [sp, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 586 47
	ldr	r2, .L143+4
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r3, [r3]
	.loc 1 586 11
	cmp	r3, #0
	beq	.L138
	.loc 1 588 49
	ldr	r3, [sp, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 588 23
	ldr	r2, .L143+4
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r3, [r3]
	str	r3, [sp, #56]
.L138:
	.loc 1 593 27
	ldrsb	r3, [sp, #55]
	ldr	r2, .L143+8
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	.loc 1 593 11
	strb	r3, [sp, #54]
	.loc 1 595 10
	ldr	r3, .L143
	ldr	r3, [r3, #12]
	.loc 1 595 5
	ldr	r0, [sp, #56]
	blx	r3
.LVL3:
	.loc 1 598 7
	ldrsb	r3, [sp, #55]
	cmp	r3, #7
	bne	.L139
	.loc 1 600 15
	movs	r3, #0
	strb	r3, [sp, #63]
	.loc 1 601 14
	ldr	r3, .L143
	ldr	r4, [r3, #24]
	.loc 1 601 48
	ldrsb	r3, [sp, #54]
	mov	r2, #1000
	mul	r3, r2, r3
	.loc 1 601 9
	mov	r1, r3
	.loc 1 601 77
	ldr	r3, [sp, #44]
	ldr	r3, [r3, #8]
	.loc 1 601 9
	uxth	r3, r3
	ldr	r2, [sp, #44]
	ldrb	r2, [r2, #18]	@ zero_extendqisi2
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r2, [sp, #36]
	movs	r2, #0
	str	r2, [sp, #32]
	movs	r2, #0
	str	r2, [sp, #28]
	movs	r2, #0
	str	r2, [sp, #24]
	movs	r2, #1
	str	r2, [sp, #20]
	movs	r2, #0
	str	r2, [sp, #16]
	movs	r2, #0
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	movs	r3, #5
	str	r3, [sp, #4]
	ldr	r3, .L143+12
	str	r3, [sp]
	movs	r3, #0
	mov	r2, r1
	movw	r1, #50000
	blx	r4
.LVL4:
	b	.L140
.L139:
	.loc 1 605 15
	movs	r3, #1
	strb	r3, [sp, #63]
	.loc 1 606 14
	ldr	r3, .L143
	ldr	r4, [r3, #24]
	.loc 1 606 43
	ldr	r3, [sp, #44]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 606 9
	mov	r5, r3
	ldrsb	r1, [sp, #54]
	.loc 1 606 80
	ldr	r3, [sp, #44]
	ldr	r3, [r3, #8]
	.loc 1 606 9
	uxth	r3, r3
	ldr	r2, [sp, #44]
	ldrb	r2, [r2, #18]	@ zero_extendqisi2
	ldrb	r0, [sp, #63]	@ zero_extendqisi2
	str	r2, [sp, #36]
	movs	r2, #1
	str	r2, [sp, #32]
	movs	r2, #0
	str	r2, [sp, #28]
	movs	r2, #0
	str	r2, [sp, #24]
	movs	r2, #0
	str	r2, [sp, #20]
	movs	r2, #0
	str	r2, [sp, #16]
	movs	r2, #0
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	movs	r3, #8
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #1
	mov	r2, r1
	mov	r1, r5
	blx	r4
.LVL5:
.L140:
	.loc 1 609 17
	ldr	r3, [sp, #44]
	ldrb	r3, [r3, #17]	@ zero_extendqisi2
	.loc 1 609 7
	cmp	r3, #0
	beq	.L141
	.loc 1 611 55
	ldrsb	r3, [sp, #55]
	.loc 1 611 20
	ldr	r2, .L143+16
	ldrb	r3, [r2, r3]
	strb	r3, [sp, #62]
	b	.L142
.L141:
	.loc 1 615 47
	ldrsb	r3, [sp, #55]
	.loc 1 615 20
	ldr	r2, .L143+20
	ldrb	r3, [r2, r3]
	strb	r3, [sp, #62]
.L142:
	.loc 1 618 10
	ldr	r3, .L143
	ldr	r3, [r3, #84]
	.loc 1 618 5
	ldrb	r2, [sp, #62]
	adds	r2, r2, #13
	uxtb	r1, r2
	ldrb	r2, [sp, #63]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
.LVL6:
	.loc 1 620 15
	ldr	r3, [sp, #40]
	ldrb	r2, [sp, #55]
	strb	r2, [r3]
	.loc 1 621 12
	movs	r3, #1
.L137:
	.loc 1 622 1
	mov	r0, r3
	add	sp, sp, #68
.LCFI37:
	@ sp needed
	pop	{r4, r5, pc}
.L144:
	.align	2
.L143:
	.word	Radio
	.word	NvmCtx
	.word	DataratesEU868
	.word	83333
	.word	MaxPayloadOfDatarateRepeaterEU868
	.word	MaxPayloadOfDatarateEU868
.LFE13:
	.size	RegionEU868RxConfig, .-RegionEU868RxConfig
	.section	.text.RegionEU868TxConfig,"ax",%progbits
	.align	1
	.global	RegionEU868TxConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868TxConfig, %function
RegionEU868TxConfig:
.LFB14:
	.loc 1 625 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI38:
	sub	sp, sp, #72
.LCFI39:
	str	r0, [sp, #52]
	str	r1, [sp, #48]
	str	r2, [sp, #44]
	.loc 1 627 43
	ldr	r3, [sp, #52]
	ldrsb	r3, [r3, #1]
	mov	r2, r3
	.loc 1 627 34
	ldr	r3, .L149
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	.loc 1 627 12
	strb	r3, [sp, #70]
	.loc 1 628 29
	ldr	r3, [sp, #52]
	ldrsb	r0, [r3, #2]
	.loc 1 628 99
	ldr	r3, [sp, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 628 109
	ldr	r2, .L149+4
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 628 29
	ldr	r2, .L149+4
	adds	r3, r3, #12
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #2
	ldrsb	r1, [r3]
	ldr	r3, [sp, #52]
	ldrsb	r2, [r3, #1]
	ldr	r3, .L149+8
	bl	LimitTxPower
	mov	r3, r0
	strb	r3, [sp, #69]
	.loc 1 629 48
	ldr	r3, [sp, #52]
	ldrsb	r3, [r3, #1]
	.loc 1 629 26
	mov	r0, r3
	bl	GetBandwidth
	str	r0, [sp, #64]
	.loc 1 630 12
	movs	r3, #0
	strb	r3, [sp, #63]
	.loc 1 633 18
	ldr	r3, [sp, #52]
	vldr.32	s15, [r3, #4]
	ldr	r3, [sp, #52]
	vldr.32	s14, [r3, #8]
	ldrsb	r3, [sp, #69]
	vmov.f32	s1, s14
	vmov.f32	s0, s15
	mov	r0, r3
	bl	RegionCommonComputeTxPower
	mov	r3, r0
	strb	r3, [sp, #63]
	.loc 1 636 10
	ldr	r3, .L149+12
	ldr	r2, [r3, #12]
	.loc 1 636 47
	ldr	r3, [sp, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	.loc 1 636 5
	ldr	r1, .L149+4
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	mov	r0, r3
	blx	r2
.LVL7:
	.loc 1 638 17
	ldr	r3, [sp, #52]
	ldrsb	r3, [r3, #1]
	.loc 1 638 7
	cmp	r3, #7
	bne	.L146
	.loc 1 640 15
	movs	r3, #0
	strb	r3, [sp, #71]
	.loc 1 641 14
	ldr	r3, .L149+12
	ldr	r4, [r3, #28]
	.loc 1 641 71
	ldrsb	r3, [sp, #70]
	mov	r2, #1000
	mul	r3, r2, r3
	.loc 1 641 9
	mov	r2, r3
	ldrsb	r1, [sp, #63]
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	mov	r3, #4000
	str	r3, [sp, #32]
	movs	r3, #0
	str	r3, [sp, #28]
	movs	r3, #0
	str	r3, [sp, #24]
	movs	r3, #0
	str	r3, [sp, #20]
	movs	r3, #1
	str	r3, [sp, #16]
	movs	r3, #0
	str	r3, [sp, #12]
	movs	r3, #5
	str	r3, [sp, #8]
	movs	r3, #0
	str	r3, [sp, #4]
	str	r2, [sp]
	ldr	r3, [sp, #64]
	movw	r2, #25000
	blx	r4
.LVL8:
	b	.L147
.L146:
	.loc 1 645 15
	movs	r3, #1
	strb	r3, [sp, #71]
	.loc 1 646 14
	ldr	r3, .L149+12
	ldr	r4, [r3, #28]
	.loc 1 646 9
	ldrsb	r3, [sp, #70]
	ldrsb	r1, [sp, #63]
	ldrb	r0, [sp, #71]	@ zero_extendqisi2
	mov	r2, #4000
	str	r2, [sp, #32]
	movs	r2, #0
	str	r2, [sp, #28]
	movs	r2, #0
	str	r2, [sp, #24]
	movs	r2, #0
	str	r2, [sp, #20]
	movs	r2, #1
	str	r2, [sp, #16]
	movs	r2, #0
	str	r2, [sp, #12]
	movs	r2, #8
	str	r2, [sp, #8]
	movs	r2, #1
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [sp, #64]
	movs	r2, #0
	blx	r4
.LVL9:
.L147:
	.loc 1 650 10
	ldr	r3, .L149+12
	ldr	r3, [r3, #84]
	.loc 1 650 47
	ldr	r2, [sp, #52]
	ldrh	r2, [r2, #12]
	.loc 1 650 5
	uxtb	r1, r2
	ldrb	r2, [sp, #71]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
.LVL10:
	.loc 1 652 25
	ldr	r3, .L149+12
	ldr	r3, [r3, #36]
	.loc 1 652 52
	ldr	r2, [sp, #52]
	ldrh	r2, [r2, #12]
	.loc 1 652 20
	uxtb	r1, r2
	ldrb	r2, [sp, #71]	@ zero_extendqisi2
	mov	r0, r2
	blx	r3
.LVL11:
	mov	r2, r0
	.loc 1 652 18
	ldr	r3, [sp, #44]
	str	r2, [r3]
	.loc 1 654 14
	ldr	r3, [sp, #48]
	ldrb	r2, [sp, #69]
	strb	r2, [r3]
	.loc 1 655 12
	movs	r3, #1
	.loc 1 656 1
	mov	r0, r3
	add	sp, sp, #72
.LCFI40:
	@ sp needed
	pop	{r4, pc}
.L150:
	.align	2
.L149:
	.word	DataratesEU868
	.word	NvmCtx
	.word	NvmCtx+288
	.word	Radio
.LFE14:
	.size	RegionEU868TxConfig, .-RegionEU868TxConfig
	.section	.text.RegionEU868LinkAdrReq,"ax",%progbits
	.align	1
	.global	RegionEU868LinkAdrReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868LinkAdrReq, %function
RegionEU868LinkAdrReq:
.LFB15:
	.loc 1 659 1
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI41:
	sub	sp, sp, #72
.LCFI42:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 660 13
	movs	r3, #7
	strb	r3, [sp, #71]
	.loc 1 662 13
	movs	r3, #0
	strb	r3, [sp, #68]
	.loc 1 663 13
	movs	r3, #0
	strb	r3, [sp, #70]
	.loc 1 664 14
	movs	r3, #0
	strh	r3, [sp, #58]	@ movhi
	.loc 1 669 10
	b	.L152
.L163:
	.loc 1 672 63
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #4]
	.loc 1 672 21
	ldrb	r3, [sp, #70]	@ zero_extendqisi2
	add	r3, r3, r2
	add	r2, sp, #60
	mov	r1, r2
	mov	r0, r3
	bl	RegionCommonParseLinkAdrReq
	mov	r3, r0
	strb	r3, [sp, #68]
	.loc 1 674 11
	ldrb	r3, [sp, #68]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L166
	.loc 1 678 24
	ldrb	r2, [sp, #70]
	ldrb	r3, [sp, #68]
	add	r3, r3, r2
	strb	r3, [sp, #70]
	.loc 1 681 16
	movs	r3, #7
	strb	r3, [sp, #71]
	.loc 1 684 31
	ldrh	r3, [sp, #64]
	.loc 1 684 16
	strh	r3, [sp, #58]	@ movhi
	.loc 1 687 28
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	.loc 1 687 11
	cmp	r3, #0
	bne	.L155
	.loc 1 687 59 discriminator 1
	ldrh	r3, [sp, #58]
	.loc 1 687 47 discriminator 1
	cmp	r3, #0
	bne	.L155
	.loc 1 689 20
	ldrb	r3, [sp, #71]
	bic	r3, r3, #1
	strb	r3, [sp, #71]
	b	.L152
.L155:
	.loc 1 691 35
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	.loc 1 691 16
	cmp	r3, #0
	beq	.L156
	.loc 1 691 72 discriminator 1
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	.loc 1 691 54 discriminator 1
	cmp	r3, #5
	bls	.L157
.L156:
	.loc 1 692 32 discriminator 3
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	.loc 1 691 92 discriminator 3
	cmp	r3, #6
	bls	.L158
.L157:
	.loc 1 695 20
	ldrb	r3, [sp, #71]
	bic	r3, r3, #1
	strb	r3, [sp, #71]
	b	.L152
.L158:
.LBB8:
	.loc 1 699 26
	movs	r3, #0
	strb	r3, [sp, #69]
	.loc 1 699 13
	b	.L159
.L162:
	.loc 1 701 34
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	.loc 1 701 19
	cmp	r3, #6
	bne	.L160
	.loc 1 703 43
	ldrb	r2, [sp, #69]	@ zero_extendqisi2
	ldr	r1, .L167
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	.loc 1 703 23
	cmp	r3, #0
	beq	.L161
	.loc 1 705 37
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 705 32
	sxth	r2, r3
	ldrh	r3, [sp, #58]
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r3, r3
	uxth	r3, r3
	strh	r3, [sp, #58]	@ movhi
	b	.L161
.L160:
	.loc 1 710 51
	ldrh	r3, [sp, #58]
	mov	r2, r3
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	asr	r3, r2, r3
	and	r3, r3, #1
	.loc 1 710 23
	cmp	r3, #0
	beq	.L161
	.loc 1 711 45 discriminator 1
	ldrb	r2, [sp, #69]	@ zero_extendqisi2
	ldr	r1, .L167
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	.loc 1 710 58 discriminator 1
	cmp	r3, #0
	bne	.L161
	.loc 1 713 32
	ldrb	r3, [sp, #71]
	bic	r3, r3, #1
	strb	r3, [sp, #71]
.L161:
	.loc 1 699 61 discriminator 2
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #69]
.L159:
	.loc 1 699 13 discriminator 1
	ldrb	r3, [sp, #69]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L162
.L152:
.LBE8:
	.loc 1 669 39
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 1 669 10
	ldrb	r2, [sp, #70]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L163
	b	.L154
.L166:
	.loc 1 675 13
	nop
.L154:
	.loc 1 721 22
	movs	r3, #2
	strb	r3, [sp, #52]
	.loc 1 722 40
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 1 722 28
	strb	r3, [sp, #54]
	.loc 1 723 16
	add	r3, sp, #52
	mov	r0, r3
	bl	RegionEU868GetPhyParam
	mov	r3, r0
	str	r3, [sp, #48]
	.loc 1 725 32
	ldrb	r3, [sp, #71]
	strb	r3, [sp, #20]
	.loc 1 726 48
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	.loc 1 726 36
	strb	r3, [sp, #21]
	.loc 1 727 49
	ldrsb	r3, [sp, #61]
	.loc 1 727 34
	strb	r3, [sp, #22]
	.loc 1 728 48
	ldrsb	r3, [sp, #62]
	.loc 1 728 33
	strb	r3, [sp, #23]
	.loc 1 729 46
	ldrb	r3, [sp, #60]	@ zero_extendqisi2
	.loc 1 729 31
	strb	r3, [sp, #24]
	.loc 1 730 53
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #11]
	.loc 1 730 41
	strb	r3, [sp, #25]
	.loc 1 731 52
	ldr	r3, [sp, #12]
	ldrsb	r3, [r3, #12]
	.loc 1 731 40
	strb	r3, [sp, #26]
	.loc 1 732 50
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 732 38
	strb	r3, [sp, #27]
	.loc 1 733 36
	movs	r3, #16
	strb	r3, [sp, #28]
	.loc 1 734 38
	add	r3, sp, #58
	str	r3, [sp, #32]
	.loc 1 735 57
	ldr	r3, [sp, #48]
	.loc 1 735 39
	sxtb	r3, r3
	.loc 1 735 37
	strb	r3, [sp, #36]
	.loc 1 736 37
	movs	r3, #7
	strb	r3, [sp, #37]
	.loc 1 737 34
	ldr	r3, .L167
	str	r3, [sp, #40]
	.loc 1 738 36
	movs	r3, #7
	strb	r3, [sp, #44]
	.loc 1 739 36
	movs	r3, #0
	strb	r3, [sp, #45]
	.loc 1 740 33
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 743 14
	add	r4, sp, #60
	add	r3, sp, #60
	adds	r2, r3, #2
	add	r3, sp, #60
	adds	r1, r3, #1
	add	r0, sp, #16
	mov	r3, r4
	bl	RegionCommonLinkAdrReqVerifyParams
	mov	r3, r0
	strb	r3, [sp, #71]
	.loc 1 746 7
	ldrb	r3, [sp, #71]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L164
	.loc 1 749 9
	movs	r2, #2
	movs	r1, #0
	ldr	r0, .L167+4
	bl	memset1
	.loc 1 751 32
	ldrh	r2, [sp, #58]
	ldr	r3, .L167
	strh	r2, [r3, #288]	@ movhi
.L164:
	.loc 1 755 27
	ldrsb	r2, [sp, #61]
	.loc 1 755 12
	ldr	r3, [sp, #8]
	strb	r2, [r3]
	.loc 1 756 30
	ldrsb	r2, [sp, #62]
	.loc 1 756 15
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 757 30
	ldrb	r2, [sp, #60]	@ zero_extendqisi2
	.loc 1 757 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 758 20
	ldr	r3, [sp, #80]
	ldrb	r2, [sp, #70]
	strb	r2, [r3]
	.loc 1 760 12
	ldrb	r3, [sp, #71]	@ zero_extendqisi2
	.loc 1 761 1
	mov	r0, r3
	add	sp, sp, #72
.LCFI43:
	@ sp needed
	pop	{r4, pc}
.L168:
	.align	2
.L167:
	.word	NvmCtx
	.word	NvmCtx+288
.LFE15:
	.size	RegionEU868LinkAdrReq, .-RegionEU868LinkAdrReq
	.section	.text.RegionEU868RxParamSetupReq,"ax",%progbits
	.align	1
	.global	RegionEU868RxParamSetupReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868RxParamSetupReq, %function
RegionEU868RxParamSetupReq:
.LFB16:
	.loc 1 764 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI44:
	sub	sp, sp, #20
.LCFI45:
	str	r0, [sp, #4]
	.loc 1 765 13
	movs	r3, #7
	strb	r3, [sp, #15]
	.loc 1 766 13
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 769 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	add	r2, sp, #14
	mov	r1, r2
	mov	r0, r3
	bl	VerifyRfFreq
	mov	r3, r0
	.loc 1 769 59
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 769 7
	cmp	r3, #0
	beq	.L170
	.loc 1 771 16
	ldrb	r3, [sp, #15]
	bic	r3, r3, #1
	strb	r3, [sp, #15]
.L170:
	.loc 1 775 9
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3]
	movs	r2, #7
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 775 7
	cmp	r3, #0
	bne	.L171
	.loc 1 777 16
	ldrb	r3, [sp, #15]
	bic	r3, r3, #2
	strb	r3, [sp, #15]
.L171:
	.loc 1 781 9
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3, #1]
	movs	r2, #5
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 781 7
	cmp	r3, #0
	bne	.L172
	.loc 1 783 16
	ldrb	r3, [sp, #15]
	bic	r3, r3, #4
	strb	r3, [sp, #15]
.L172:
	.loc 1 786 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 787 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI46:
	@ sp needed
	ldr	pc, [sp], #4
.LFE16:
	.size	RegionEU868RxParamSetupReq, .-RegionEU868RxParamSetupReq
	.section	.text.RegionEU868NewChannelReq,"ax",%progbits
	.align	1
	.global	RegionEU868NewChannelReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868NewChannelReq, %function
RegionEU868NewChannelReq:
.LFB17:
	.loc 1 790 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI47:
	sub	sp, sp, #28
.LCFI48:
	str	r0, [sp, #4]
	.loc 1 791 13
	movs	r3, #3
	strb	r3, [sp, #23]
	.loc 1 795 22
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 795 34
	ldr	r3, [r3]
	.loc 1 795 7
	cmp	r3, #0
	bne	.L175
	.loc 1 797 48
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3, #4]
	uxtb	r3, r3
	.loc 1 797 33
	strb	r3, [sp, #8]
	.loc 1 800 13
	add	r3, sp, #8
	mov	r0, r3
	bl	RegionEU868ChannelsRemove
	mov	r3, r0
	.loc 1 800 57
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 800 11
	cmp	r3, #0
	beq	.L176
	.loc 1 802 20
	ldrb	r3, [sp, #23]
	bic	r3, r3, #3
	strb	r3, [sp, #23]
	b	.L176
.L175:
	.loc 1 807 46
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 807 31
	str	r3, [sp, #12]
	.loc 1 808 45
	ldr	r3, [sp, #4]
	ldrsb	r3, [r3, #4]
	uxtb	r3, r3
	.loc 1 808 30
	strb	r3, [sp, #16]
	.loc 1 810 17
	add	r3, sp, #12
	mov	r0, r3
	bl	RegionEU868ChannelAdd
	mov	r3, r0
	cmp	r3, #6
	bhi	.L177
	adr	r2, .L179
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L179:
	.word	.L184+1
	.word	.L177+1
	.word	.L177+1
	.word	.L177+1
	.word	.L181+1
	.word	.L180+1
	.word	.L178+1
	.p2align 1
.L181:
	.loc 1 818 24
	ldrb	r3, [sp, #23]
	bic	r3, r3, #1
	strb	r3, [sp, #23]
	.loc 1 819 17
	b	.L176
.L180:
	.loc 1 823 24
	ldrb	r3, [sp, #23]
	bic	r3, r3, #2
	strb	r3, [sp, #23]
	.loc 1 824 17
	b	.L176
.L178:
	.loc 1 828 24
	ldrb	r3, [sp, #23]
	bic	r3, r3, #3
	strb	r3, [sp, #23]
	.loc 1 829 17
	b	.L176
.L177:
	.loc 1 833 24
	ldrb	r3, [sp, #23]
	bic	r3, r3, #3
	strb	r3, [sp, #23]
	.loc 1 834 17
	b	.L176
.L184:
	.loc 1 814 17
	nop
.L176:
	.loc 1 839 12
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	.loc 1 840 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI49:
	@ sp needed
	ldr	pc, [sp], #4
.LFE17:
	.size	RegionEU868NewChannelReq, .-RegionEU868NewChannelReq
	.section	.text.RegionEU868TxParamSetupReq,"ax",%progbits
	.align	1
	.global	RegionEU868TxParamSetupReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868TxParamSetupReq, %function
RegionEU868TxParamSetupReq:
.LFB18:
	.loc 1 843 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI50:
	str	r0, [sp, #4]
	.loc 1 844 12
	mov	r3, #-1
	.loc 1 845 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI51:
	@ sp needed
	bx	lr
.LFE18:
	.size	RegionEU868TxParamSetupReq, .-RegionEU868TxParamSetupReq
	.section	.text.RegionEU868DlChannelReq,"ax",%progbits
	.align	1
	.global	RegionEU868DlChannelReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868DlChannelReq, %function
RegionEU868DlChannelReq:
.LFB19:
	.loc 1 848 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI52:
	sub	sp, sp, #20
.LCFI53:
	str	r0, [sp, #4]
	.loc 1 849 13
	movs	r3, #3
	strb	r3, [sp, #15]
	.loc 1 850 13
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 853 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	add	r2, sp, #14
	mov	r1, r2
	mov	r0, r3
	bl	VerifyRfFreq
	mov	r3, r0
	.loc 1 853 59
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 853 7
	cmp	r3, #0
	beq	.L188
	.loc 1 855 16
	ldrb	r3, [sp, #15]
	bic	r3, r3, #1
	strb	r3, [sp, #15]
.L188:
	.loc 1 859 37
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 859 49
	ldr	r2, .L192
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	.loc 1 859 7
	cmp	r3, #0
	bne	.L189
	.loc 1 861 16
	ldrb	r3, [sp, #15]
	bic	r3, r3, #2
	strb	r3, [sp, #15]
.L189:
	.loc 1 865 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L190
	.loc 1 867 37
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	.loc 1 867 77
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 867 63
	ldr	r1, .L192
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #4
	str	r2, [r3]
.L190:
	.loc 1 870 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 871 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI54:
	@ sp needed
	ldr	pc, [sp], #4
.L193:
	.align	2
.L192:
	.word	NvmCtx
.LFE19:
	.size	RegionEU868DlChannelReq, .-RegionEU868DlChannelReq
	.section	.text.RegionEU868AlternateDr,"ax",%progbits
	.align	1
	.global	RegionEU868AlternateDr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868AlternateDr, %function
RegionEU868AlternateDr:
.LFB20:
	.loc 1 874 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI55:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 875 12
	ldrsb	r3, [sp, #7]
	.loc 1 876 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI56:
	@ sp needed
	bx	lr
.LFE20:
	.size	RegionEU868AlternateDr, .-RegionEU868AlternateDr
	.section	.text.RegionEU868CalcBackOff,"ax",%progbits
	.align	1
	.global	RegionEU868CalcBackOff
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868CalcBackOff, %function
RegionEU868CalcBackOff:
.LFB21:
	.loc 1 879 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI57:
	sub	sp, sp, #36
.LCFI58:
	str	r0, [sp, #4]
	.loc 1 882 32
	ldr	r3, .L197
	str	r3, [sp, #8]
	.loc 1 883 29
	ldr	r3, .L197+4
	str	r3, [sp, #12]
	.loc 1 884 56
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 1 884 43
	strb	r3, [sp, #16]
	.loc 1 885 43
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 885 30
	strb	r3, [sp, #17]
	.loc 1 886 53
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 886 40
	strb	r3, [sp, #18]
	.loc 1 887 44
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 887 31
	strb	r3, [sp, #19]
	.loc 1 888 35
	ldr	r2, [sp, #4]
	add	r3, sp, #20
	adds	r2, r2, #4
	ldm	r2, {r0, r1}
	stm	r3, {r0, r1}
	.loc 1 889 48
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	.loc 1 889 35
	str	r3, [sp, #28]
	.loc 1 891 5
	add	r3, sp, #8
	mov	r0, r3
	bl	RegionCommonCalcBackOff
	.loc 1 892 1
	nop
	add	sp, sp, #36
.LCFI59:
	@ sp needed
	ldr	pc, [sp], #4
.L198:
	.align	2
.L197:
	.word	NvmCtx
	.word	NvmCtx+192
.LFE21:
	.size	RegionEU868CalcBackOff, .-RegionEU868CalcBackOff
	.section	.text.RegionEU868NextChannel,"ax",%progbits
	.align	1
	.global	RegionEU868NextChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868NextChannel, %function
RegionEU868NextChannel:
.LFB22:
	.loc 1 895 1
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI60:
	sub	sp, sp, #68
.LCFI61:
	str	r0, [sp, #28]
	str	r1, [sp, #24]
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	.loc 1 896 13
	movs	r3, #0
	strb	r3, [sp, #63]
	.loc 1 897 13
	movs	r3, #0
	strb	r3, [sp, #51]
	.loc 1 898 13
	movs	r3, #0
	str	r3, [sp, #32]
	add	r3, sp, #36
	movs	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	.loc 1 899 17
	movs	r3, #0
	str	r3, [sp, #56]
	.loc 1 901 9
	movs	r2, #1
	movs	r1, #0
	ldr	r0, .L208
	bl	RegionCommonCountChannels
	mov	r3, r0
	.loc 1 901 7
	cmp	r3, #0
	bne	.L200
	.loc 1 903 32
	ldr	r3, .L208+4
	ldrh	r3, [r3, #288]
	orr	r3, r3, #7
	uxth	r2, r3
	ldr	r3, .L208+4
	strh	r2, [r3, #288]	@ movhi
.L200:
	.loc 1 906 27
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	TimerGetElapsedTime
	str	r0, [sp, #52]
	.loc 1 907 25
	ldr	r3, [sp, #28]
	ldr	r3, [r3, #4]
	.loc 1 907 7
	cmp	r3, #0
	beq	.L201
	.loc 1 907 64 discriminator 1
	ldr	r3, [sp, #28]
	ldr	r3, [r3]
	.loc 1 907 45 discriminator 1
	ldr	r2, [sp, #52]
	cmp	r2, r3
	bcc	.L202
.L201:
	.loc 1 910 28
	ldr	r3, [sp, #16]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 913 23
	ldr	r3, [sp, #28]
	ldrb	r0, [r3, #9]	@ zero_extendqisi2
	ldr	r3, [sp, #28]
	ldrb	r1, [r3, #10]	@ zero_extendqisi2
	movs	r3, #6
	ldr	r2, .L208+8
	bl	RegionCommonUpdateBandTimeOff
	str	r0, [sp, #56]
	.loc 1 916 29
	ldr	r3, [sp, #28]
	ldrb	r0, [r3, #9]	@ zero_extendqisi2
	.loc 1 916 93
	ldr	r3, [sp, #28]
	ldrsb	r3, [r3, #8]
	.loc 1 916 29
	uxtb	r1, r3
	add	r3, sp, #51
	str	r3, [sp, #8]
	add	r3, sp, #32
	str	r3, [sp, #4]
	ldr	r3, .L208+8
	str	r3, [sp]
	ldr	r3, .L208+4
	ldr	r2, .L208
	bl	CountNbOfEnabledChannels
	mov	r3, r0
	strb	r3, [sp, #63]
	.loc 1 916 27
	b	.L203
.L202:
	.loc 1 922 16
	ldrb	r3, [sp, #51]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [sp, #51]
	.loc 1 923 37
	ldr	r3, [sp, #28]
	ldr	r2, [r3]
	.loc 1 923 21
	ldr	r3, [sp, #52]
	subs	r3, r2, r3
	str	r3, [sp, #56]
.L203:
	.loc 1 926 7
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L204
	.loc 1 929 36
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	subs	r3, r3, #1
	mov	r1, r3
	movs	r0, #0
	bl	randr
	mov	r3, r0
	.loc 1 929 35
	add	r2, sp, #64
	add	r3, r3, r2
	ldrb	r2, [r3, #-32]	@ zero_extendqisi2
	.loc 1 929 18
	ldr	r3, [sp, #24]
	strb	r2, [r3]
	.loc 1 931 15
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 932 16
	movs	r3, #0
	b	.L207
.L204:
	.loc 1 936 21
	ldrb	r3, [sp, #51]	@ zero_extendqisi2
	.loc 1 936 11
	cmp	r3, #0
	beq	.L206
	.loc 1 939 19
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #56]
	str	r2, [r3]
	.loc 1 940 20
	movs	r3, #11
	b	.L207
.L206:
	.loc 1 943 32
	ldr	r3, .L208+4
	ldrh	r3, [r3, #288]
	orr	r3, r3, #7
	uxth	r2, r3
	ldr	r3, .L208+4
	strh	r2, [r3, #288]	@ movhi
	.loc 1 944 15
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 945 16
	movs	r3, #12
.L207:
	.loc 1 947 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #68
.LCFI62:
	@ sp needed
	ldr	pc, [sp], #4
.L209:
	.align	2
.L208:
	.word	NvmCtx+288
	.word	NvmCtx
	.word	NvmCtx+192
.LFE22:
	.size	RegionEU868NextChannel, .-RegionEU868NextChannel
	.section	.text.RegionEU868ChannelAdd,"ax",%progbits
	.align	1
	.global	RegionEU868ChannelAdd
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868ChannelAdd, %function
RegionEU868ChannelAdd:
.LFB23:
	.loc 1 950 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI63:
	sub	sp, sp, #20
.LCFI64:
	str	r0, [sp, #4]
	.loc 1 951 13
	movs	r3, #0
	strb	r3, [sp, #12]
	.loc 1 952 10
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 953 10
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 954 13
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]
	strb	r3, [sp, #13]
	.loc 1 956 7
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	cmp	r3, #2
	bhi	.L211
	.loc 1 958 16
	movs	r3, #6
	b	.L221
.L211:
	.loc 1 961 7
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L213
	.loc 1 963 16
	movs	r3, #3
	b	.L221
.L213:
	.loc 1 967 45
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 967 73
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #0, #4
	sxtb	r3, r3
	.loc 1 967 9
	movs	r2, #7
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 967 7
	cmp	r3, #0
	bne	.L214
	.loc 1 969 19
	movs	r3, #1
	strb	r3, [sp, #15]
.L214:
	.loc 1 971 45
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 971 73
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #4, #4
	sxtb	r3, r3
	.loc 1 971 9
	movs	r2, #7
	movs	r1, #0
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 971 7
	cmp	r3, #0
	bne	.L215
	.loc 1 973 19
	movs	r3, #1
	strb	r3, [sp, #15]
.L215:
	.loc 1 975 19
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 975 47
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #0, #4
	sxtb	r2, r3
	.loc 1 975 64
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 975 92
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #4, #4
	sxtb	r3, r3
	.loc 1 975 7
	cmp	r2, r3
	ble	.L216
	.loc 1 977 19
	movs	r3, #1
	strb	r3, [sp, #15]
.L216:
	.loc 1 981 21
	ldrb	r3, [sp, #14]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 981 7
	cmp	r3, #0
	beq	.L217
	.loc 1 983 37
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 983 13
	ldr	r3, [r3]
	add	r2, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	VerifyRfFreq
	mov	r3, r0
	.loc 1 983 70
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 983 11
	cmp	r3, #0
	beq	.L217
	.loc 1 985 25
	movs	r3, #1
	strb	r3, [sp, #14]
.L217:
	.loc 1 990 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L218
	.loc 1 990 31 discriminator 1
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L218
	.loc 1 992 16
	movs	r3, #6
	b	.L221
.L218:
	.loc 1 994 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L219
	.loc 1 996 16
	movs	r3, #5
	b	.L221
.L219:
	.loc 1 998 7
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L220
	.loc 1 1000 16
	movs	r3, #4
	b	.L221
.L220:
	.loc 1 1003 44
	ldrb	r2, [sp, #13]	@ zero_extendqisi2
	.loc 1 1003 27
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, .L222
	adds	r0, r3, r2
	.loc 1 1003 74
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 1003 5
	movs	r2, #12
	mov	r1, r3
	bl	memcpy1
	.loc 1 1004 24
	ldrb	r2, [sp, #13]	@ zero_extendqisi2
	.loc 1 1004 30
	ldrb	r0, [sp, #12]	@ zero_extendqisi2
	ldr	r1, .L222
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #9
	mov	r2, r0
	strb	r2, [r3]
	.loc 1 1005 28
	ldr	r3, .L222
	ldrh	r3, [r3, #288]
	sxth	r2, r3
	.loc 1 1005 35
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	.loc 1 1005 28
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r3, r3
	uxth	r2, r3
	ldr	r3, .L222
	strh	r2, [r3, #288]	@ movhi
	.loc 1 1006 12
	movs	r3, #0
.L221:
	.loc 1 1007 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI65:
	@ sp needed
	ldr	pc, [sp], #4
.L223:
	.align	2
.L222:
	.word	NvmCtx
.LFE23:
	.size	RegionEU868ChannelAdd, .-RegionEU868ChannelAdd
	.section	.text.RegionEU868ChannelsRemove,"ax",%progbits
	.align	1
	.global	RegionEU868ChannelsRemove
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868ChannelsRemove, %function
RegionEU868ChannelsRemove:
.LFB24:
	.loc 1 1010 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI66:
	sub	sp, sp, #28
.LCFI67:
	str	r0, [sp, #4]
	.loc 1 1011 13
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	strb	r3, [sp, #23]
	.loc 1 1013 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #2
	bhi	.L225
	.loc 1 1015 16
	movs	r3, #0
	b	.L227
.L225:
	.loc 1 1019 20
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	.loc 1 1019 25
	ldr	r1, .L228
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #8]
	.loc 1 1021 12
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	movs	r2, #16
	mov	r1, r3
	ldr	r0, .L228+4
	bl	RegionCommonChanDisable
	mov	r3, r0
.L227:
	.loc 1 1022 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI68:
	@ sp needed
	ldr	pc, [sp], #4
.L229:
	.align	2
.L228:
	.word	NvmCtx
	.word	NvmCtx+288
.LFE24:
	.size	RegionEU868ChannelsRemove, .-RegionEU868ChannelsRemove
	.section	.text.RegionEU868SetContinuousWave,"ax",%progbits
	.align	1
	.global	RegionEU868SetContinuousWave
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868SetContinuousWave, %function
RegionEU868SetContinuousWave:
.LFB25:
	.loc 1 1025 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI69:
	sub	sp, sp, #20
.LCFI70:
	str	r0, [sp, #4]
	.loc 1 1026 29
	ldr	r3, [sp, #4]
	ldrsb	r0, [r3, #2]
	.loc 1 1026 111
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 1026 121
	ldr	r2, .L231
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1026 29
	ldr	r2, .L231
	adds	r3, r3, #12
	lsls	r3, r3, #4
	add	r3, r3, r2
	adds	r3, r3, #2
	ldrsb	r1, [r3]
	ldr	r3, [sp, #4]
	ldrsb	r2, [r3, #1]
	ldr	r3, .L231+4
	bl	LimitTxPower
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1027 12
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1028 56
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 1028 14
	ldr	r2, .L231
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [sp, #8]
	.loc 1 1031 18
	ldr	r3, [sp, #4]
	vldr.32	s15, [r3, #4]
	ldr	r3, [sp, #4]
	vldr.32	s14, [r3, #8]
	ldrsb	r3, [sp, #15]
	vmov.f32	s1, s14
	vmov.f32	s0, s15
	mov	r0, r3
	bl	RegionCommonComputeTxPower
	mov	r3, r0
	strb	r3, [sp, #14]
	.loc 1 1033 10
	ldr	r3, .L231+8
	ldr	r3, [r3, #60]
	.loc 1 1033 5
	ldr	r2, [sp, #4]
	ldrh	r2, [r2, #12]
	ldrsb	r1, [sp, #14]
	ldr	r0, [sp, #8]
	blx	r3
.LVL12:
	.loc 1 1034 1
	nop
	add	sp, sp, #20
.LCFI71:
	@ sp needed
	ldr	pc, [sp], #4
.L232:
	.align	2
.L231:
	.word	NvmCtx
	.word	NvmCtx+288
	.word	Radio
.LFE25:
	.size	RegionEU868SetContinuousWave, .-RegionEU868SetContinuousWave
	.section	.text.RegionEU868ApplyDrOffset,"ax",%progbits
	.align	1
	.global	RegionEU868ApplyDrOffset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868ApplyDrOffset, %function
RegionEU868ApplyDrOffset:
.LFB26:
	.loc 1 1037 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI72:
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 1038 26
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	subs	r3, r2, r3
	uxtb	r3, r3
	.loc 1 1038 12
	strb	r3, [sp, #15]
	.loc 1 1040 7
	ldrsb	r3, [sp, #15]
	cmp	r3, #0
	bge	.L234
	.loc 1 1042 18
	movs	r3, #0
	strb	r3, [sp, #15]
.L234:
	.loc 1 1044 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 1045 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI73:
	@ sp needed
	bx	lr
.LFE26:
	.size	RegionEU868ApplyDrOffset, .-RegionEU868ApplyDrOffset
	.section	.text.RegionEU868RxBeaconSetup,"ax",%progbits
	.align	1
	.global	RegionEU868RxBeaconSetup
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionEU868RxBeaconSetup, %function
RegionEU868RxBeaconSetup:
.LFB27:
	.loc 1 1048 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI74:
	sub	sp, sp, #36
.LCFI75:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1051 41
	ldr	r3, .L237
	str	r3, [sp, #12]
	.loc 1 1052 56
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	.loc 1 1052 41
	str	r3, [sp, #16]
	.loc 1 1053 42
	movs	r3, #17
	strb	r3, [sp, #20]
	.loc 1 1054 46
	movs	r3, #3
	strb	r3, [sp, #21]
	.loc 1 1055 47
	movs	r3, #0
	strb	r3, [sp, #22]
	.loc 1 1056 53
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 1 1056 38
	str	r3, [sp, #24]
	.loc 1 1057 60
	ldr	r3, [sp, #4]
	ldrh	r3, [r3]
	.loc 1 1057 45
	strh	r3, [sp, #28]	@ movhi
	.loc 1 1059 5
	add	r3, sp, #12
	mov	r0, r3
	bl	RegionCommonRxBeaconSetup
	.loc 1 1062 12
	ldr	r3, [sp]
	movs	r2, #3
	strb	r2, [r3]
	.loc 1 1063 1
	nop
	add	sp, sp, #36
.LCFI76:
	@ sp needed
	ldr	pc, [sp], #4
.L238:
	.align	2
.L237:
	.word	DataratesEU868
.LFE27:
	.size	RegionEU868RxBeaconSetup, .-RegionEU868RxBeaconSetup
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI9-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI12-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI15-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI18-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0xb8
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI21-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI23-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI26-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI29-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI32-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI35-.LFB13
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI38-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI41-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x50
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI44-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI47-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI50-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI52-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI55-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI57-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI60-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI63-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI66-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI69-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI72-.LFB26
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI74-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE54:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stdint.h"
	.file 3 "../../../../lora/boards/mcu/utilities.h"
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/__crossworks.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/sys/time.h"
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stddef.h"
	.file 7 "../../../../lora/boards/rtc-board.h"
	.file 8 "../../../../lora/mac/LoRaMacTypes.h"
	.file 9 "../../../../lora/system/systime.h"
	.file 10 "../../../../lora/radio/radio.h"
	.file 11 "../../../../lora/mac/LoRaMac.h"
	.file 12 "../../../../lora/mac/region/Region.h"
	.file 13 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\RegionCommon.h"
	.file 14 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\RegionEU868.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x2535
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1252
	.byte	0xc
	.4byte	.LASF1253
	.4byte	.LASF1254
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF750
	.byte	0x2
	.byte	0x29
	.byte	0x1c
	.4byte	0x35
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF752
	.uleb128 0x2
	.4byte	.LASF751
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x4d
	.uleb128 0x4
	.4byte	0x3c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF753
	.uleb128 0x4
	.4byte	0x4d
	.uleb128 0x2
	.4byte	.LASF754
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.4byte	0x65
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF755
	.uleb128 0x2
	.4byte	.LASF756
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x78
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF757
	.uleb128 0x2
	.4byte	.LASF758
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF759
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0xa3
	.uleb128 0x4
	.4byte	0x92
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF760
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF761
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF762
	.uleb128 0x6
	.4byte	.LASF769
	.byte	0x4
	.byte	0x3
	.byte	0x30
	.byte	0xc
	.4byte	0xfa
	.uleb128 0x7
	.ascii	"Rfu\000"
	.byte	0x3
	.byte	0x32
	.byte	0x11
	.4byte	0x3c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF763
	.byte	0x3
	.byte	0x33
	.byte	0x11
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF764
	.byte	0x3
	.byte	0x34
	.byte	0x11
	.4byte	0x3c
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF765
	.byte	0x3
	.byte	0x35
	.byte	0x11
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF909
	.byte	0x4
	.byte	0x3
	.byte	0x2e
	.byte	0xf
	.4byte	0x120
	.uleb128 0xa
	.4byte	.LASF766
	.byte	0x3
	.byte	0x36
	.byte	0x6
	.4byte	0xb8
	.uleb128 0xa
	.4byte	.LASF767
	.byte	0x3
	.byte	0x37
	.byte	0xe
	.4byte	0x92
	.byte	0
	.uleb128 0x2
	.4byte	.LASF768
	.byte	0x3
	.byte	0x38
	.byte	0x2
	.4byte	0xfa
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF770
	.byte	0x8
	.byte	0x4
	.byte	0x7c
	.byte	0x8
	.4byte	0x156
	.uleb128 0x8
	.4byte	.LASF771
	.byte	0x4
	.byte	0x7d
	.byte	0x7
	.4byte	0x8b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF772
	.byte	0x4
	.byte	0x7e
	.byte	0x8
	.4byte	0x156
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF773
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x176
	.uleb128 0xd
	.4byte	0x176
	.uleb128 0xd
	.4byte	0xa3
	.uleb128 0xd
	.4byte	0x188
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x17c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF774
	.uleb128 0x4
	.4byte	0x17c
	.uleb128 0xe
	.byte	0x4
	.4byte	0x12e
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x1ac
	.uleb128 0xd
	.4byte	0x1ac
	.uleb128 0xd
	.4byte	0x1b2
	.uleb128 0xd
	.4byte	0xa3
	.uleb128 0xd
	.4byte	0x188
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x183
	.uleb128 0xf
	.byte	0x58
	.byte	0x4
	.byte	0x84
	.byte	0x9
	.4byte	0x362
	.uleb128 0x8
	.4byte	.LASF775
	.byte	0x4
	.byte	0x86
	.byte	0xf
	.4byte	0x1b2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF776
	.byte	0x4
	.byte	0x87
	.byte	0xf
	.4byte	0x1b2
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF777
	.byte	0x4
	.byte	0x88
	.byte	0xf
	.4byte	0x1b2
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF778
	.byte	0x4
	.byte	0x8a
	.byte	0xf
	.4byte	0x1b2
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF779
	.byte	0x4
	.byte	0x8b
	.byte	0xf
	.4byte	0x1b2
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF780
	.byte	0x4
	.byte	0x8c
	.byte	0xf
	.4byte	0x1b2
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF781
	.byte	0x4
	.byte	0x8d
	.byte	0xf
	.4byte	0x1b2
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF782
	.byte	0x4
	.byte	0x8e
	.byte	0xf
	.4byte	0x1b2
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF783
	.byte	0x4
	.byte	0x8f
	.byte	0xf
	.4byte	0x1b2
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF784
	.byte	0x4
	.byte	0x90
	.byte	0xf
	.4byte	0x1b2
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF785
	.byte	0x4
	.byte	0x92
	.byte	0x8
	.4byte	0x17c
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF786
	.byte	0x4
	.byte	0x93
	.byte	0x8
	.4byte	0x17c
	.byte	0x29
	.uleb128 0x8
	.4byte	.LASF787
	.byte	0x4
	.byte	0x94
	.byte	0x8
	.4byte	0x17c
	.byte	0x2a
	.uleb128 0x8
	.4byte	.LASF788
	.byte	0x4
	.byte	0x95
	.byte	0x8
	.4byte	0x17c
	.byte	0x2b
	.uleb128 0x8
	.4byte	.LASF789
	.byte	0x4
	.byte	0x96
	.byte	0x8
	.4byte	0x17c
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF790
	.byte	0x4
	.byte	0x97
	.byte	0x8
	.4byte	0x17c
	.byte	0x2d
	.uleb128 0x8
	.4byte	.LASF791
	.byte	0x4
	.byte	0x98
	.byte	0x8
	.4byte	0x17c
	.byte	0x2e
	.uleb128 0x8
	.4byte	.LASF792
	.byte	0x4
	.byte	0x99
	.byte	0x8
	.4byte	0x17c
	.byte	0x2f
	.uleb128 0x8
	.4byte	.LASF793
	.byte	0x4
	.byte	0x9a
	.byte	0x8
	.4byte	0x17c
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF794
	.byte	0x4
	.byte	0x9b
	.byte	0x8
	.4byte	0x17c
	.byte	0x31
	.uleb128 0x8
	.4byte	.LASF795
	.byte	0x4
	.byte	0x9c
	.byte	0x8
	.4byte	0x17c
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF796
	.byte	0x4
	.byte	0x9d
	.byte	0x8
	.4byte	0x17c
	.byte	0x33
	.uleb128 0x8
	.4byte	.LASF797
	.byte	0x4
	.byte	0x9e
	.byte	0x8
	.4byte	0x17c
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF798
	.byte	0x4
	.byte	0x9f
	.byte	0x8
	.4byte	0x17c
	.byte	0x35
	.uleb128 0x8
	.4byte	.LASF799
	.byte	0x4
	.byte	0xa4
	.byte	0xf
	.4byte	0x1b2
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF800
	.byte	0x4
	.byte	0xa5
	.byte	0xf
	.4byte	0x1b2
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF801
	.byte	0x4
	.byte	0xa6
	.byte	0xf
	.4byte	0x1b2
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF802
	.byte	0x4
	.byte	0xa7
	.byte	0xf
	.4byte	0x1b2
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF803
	.byte	0x4
	.byte	0xa8
	.byte	0xf
	.4byte	0x1b2
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF804
	.byte	0x4
	.byte	0xa9
	.byte	0xf
	.4byte	0x1b2
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF805
	.byte	0x4
	.byte	0xaa
	.byte	0xf
	.4byte	0x1b2
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF806
	.byte	0x4
	.byte	0xab
	.byte	0xf
	.4byte	0x1b2
	.byte	0x54
	.byte	0
	.uleb128 0x2
	.4byte	.LASF807
	.byte	0x4
	.byte	0xac
	.byte	0x3
	.4byte	0x1b8
	.uleb128 0x4
	.4byte	0x362
	.uleb128 0xf
	.byte	0x20
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x3e5
	.uleb128 0x8
	.4byte	.LASF808
	.byte	0x4
	.byte	0xc4
	.byte	0x9
	.4byte	0x3f9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF809
	.byte	0x4
	.byte	0xc5
	.byte	0x9
	.4byte	0x40e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF810
	.byte	0x4
	.byte	0xc6
	.byte	0x9
	.4byte	0x40e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF811
	.byte	0x4
	.byte	0xc9
	.byte	0x9
	.4byte	0x428
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF812
	.byte	0x4
	.byte	0xca
	.byte	0xa
	.4byte	0x43d
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF813
	.byte	0x4
	.byte	0xcb
	.byte	0xa
	.4byte	0x43d
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF814
	.byte	0x4
	.byte	0xce
	.byte	0x9
	.4byte	0x443
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF815
	.byte	0x4
	.byte	0xcf
	.byte	0x9
	.4byte	0x449
	.byte	0x1c
	.byte	0
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x3f9
	.uleb128 0xd
	.4byte	0x8b
	.uleb128 0xd
	.4byte	0x8b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3e5
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x40e
	.uleb128 0xd
	.4byte	0x8b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x428
	.uleb128 0xd
	.4byte	0x156
	.uleb128 0xd
	.4byte	0x8b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x414
	.uleb128 0xc
	.4byte	0x156
	.4byte	0x43d
	.uleb128 0xd
	.4byte	0x156
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x42e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x18e
	.uleb128 0x2
	.4byte	.LASF816
	.byte	0x4
	.byte	0xd0
	.byte	0x3
	.4byte	0x373
	.uleb128 0x4
	.4byte	0x44f
	.uleb128 0xf
	.byte	0xc
	.byte	0x4
	.byte	0xd2
	.byte	0x9
	.4byte	0x491
	.uleb128 0x8
	.4byte	.LASF817
	.byte	0x4
	.byte	0xd3
	.byte	0xf
	.4byte	0x1b2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF818
	.byte	0x4
	.byte	0xd4
	.byte	0x25
	.4byte	0x491
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF819
	.byte	0x4
	.byte	0xd5
	.byte	0x28
	.4byte	0x497
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x36e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x45b
	.uleb128 0x2
	.4byte	.LASF820
	.byte	0x4
	.byte	0xd6
	.byte	0x3
	.4byte	0x460
	.uleb128 0x4
	.4byte	0x49d
	.uleb128 0x6
	.4byte	.LASF821
	.byte	0x14
	.byte	0x4
	.byte	0xda
	.byte	0x10
	.4byte	0x4c9
	.uleb128 0x8
	.4byte	.LASF822
	.byte	0x4
	.byte	0xdb
	.byte	0x20
	.4byte	0x4c9
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x4d9
	.4byte	0x4d9
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x4a9
	.uleb128 0x12
	.4byte	.LASF823
	.byte	0x4
	.2byte	0x104
	.byte	0x1a
	.4byte	0x4ae
	.uleb128 0x12
	.4byte	.LASF824
	.byte	0x4
	.2byte	0x10b
	.byte	0x24
	.4byte	0x4a9
	.uleb128 0x12
	.4byte	.LASF825
	.byte	0x4
	.2byte	0x10e
	.byte	0x2c
	.4byte	0x45b
	.uleb128 0x12
	.4byte	.LASF826
	.byte	0x4
	.2byte	0x10f
	.byte	0x2c
	.4byte	0x45b
	.uleb128 0x10
	.4byte	0x54
	.4byte	0x523
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	0x513
	.uleb128 0x12
	.4byte	.LASF827
	.byte	0x4
	.2byte	0x111
	.byte	0x23
	.4byte	0x523
	.uleb128 0x10
	.4byte	0x183
	.4byte	0x540
	.uleb128 0x13
	.byte	0
	.uleb128 0x4
	.4byte	0x535
	.uleb128 0x12
	.4byte	.LASF828
	.byte	0x4
	.2byte	0x113
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF829
	.byte	0x4
	.2byte	0x114
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF830
	.byte	0x4
	.2byte	0x115
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF831
	.byte	0x4
	.2byte	0x116
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF832
	.byte	0x4
	.2byte	0x118
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF833
	.byte	0x4
	.2byte	0x119
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF834
	.byte	0x4
	.2byte	0x11a
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF835
	.byte	0x4
	.2byte	0x11b
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF836
	.byte	0x4
	.2byte	0x11c
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF837
	.byte	0x4
	.2byte	0x11d
	.byte	0x13
	.4byte	0x540
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x5d6
	.uleb128 0xd
	.4byte	0x5d6
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x604
	.uleb128 0x6
	.4byte	.LASF838
	.byte	0x8
	.byte	0x5
	.byte	0x2e
	.byte	0x8
	.4byte	0x604
	.uleb128 0x8
	.4byte	.LASF839
	.byte	0x5
	.byte	0x30
	.byte	0x8
	.4byte	0x156
	.byte	0
	.uleb128 0x8
	.4byte	.LASF840
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.4byte	0x156
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x5dc
	.uleb128 0x12
	.4byte	.LASF841
	.byte	0x4
	.2byte	0x133
	.byte	0xe
	.4byte	0x616
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5c7
	.uleb128 0xc
	.4byte	0x8b
	.4byte	0x62b
	.uleb128 0xd
	.4byte	0x62b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x5dc
	.uleb128 0x12
	.4byte	.LASF842
	.byte	0x4
	.2byte	0x134
	.byte	0xe
	.4byte	0x63e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x14
	.4byte	.LASF843
	.byte	0x4
	.2byte	0x14b
	.byte	0x18
	.4byte	0x651
	.uleb128 0xe
	.byte	0x4
	.4byte	0x657
	.uleb128 0xc
	.4byte	0x1b2
	.4byte	0x666
	.uleb128 0xd
	.4byte	0x8b
	.byte	0
	.uleb128 0x15
	.4byte	.LASF844
	.byte	0x8
	.byte	0x4
	.2byte	0x14d
	.byte	0x10
	.4byte	0x691
	.uleb128 0x16
	.4byte	.LASF845
	.byte	0x4
	.2byte	0x14f
	.byte	0x1c
	.4byte	0x644
	.byte	0
	.uleb128 0x16
	.4byte	.LASF846
	.byte	0x4
	.2byte	0x150
	.byte	0x21
	.4byte	0x691
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x666
	.uleb128 0x14
	.4byte	.LASF847
	.byte	0x4
	.2byte	0x151
	.byte	0x3
	.4byte	0x666
	.uleb128 0x12
	.4byte	.LASF848
	.byte	0x4
	.2byte	0x155
	.byte	0x1f
	.4byte	0x6b1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x697
	.uleb128 0x2
	.4byte	.LASF849
	.byte	0x6
	.byte	0x31
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF850
	.uleb128 0x2
	.4byte	.LASF851
	.byte	0x7
	.byte	0x38
	.byte	0x12
	.4byte	0x92
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6dc
	.uleb128 0x17
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF852
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x15
	.4byte	.LASF853
	.byte	0x10
	.byte	0x8
	.2byte	0x233
	.byte	0x10
	.4byte	0x73f
	.uleb128 0x16
	.4byte	.LASF854
	.byte	0x8
	.2byte	0x238
	.byte	0xe
	.4byte	0x6c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF855
	.byte	0x8
	.2byte	0x23c
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF856
	.byte	0x8
	.2byte	0x240
	.byte	0x11
	.4byte	0x6ca
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF857
	.byte	0x8
	.2byte	0x244
	.byte	0x11
	.4byte	0x6ca
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF858
	.byte	0x8
	.2byte	0x248
	.byte	0x11
	.4byte	0x6ca
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF859
	.byte	0x8
	.2byte	0x249
	.byte	0x2
	.4byte	0x6ea
	.uleb128 0x6
	.4byte	.LASF860
	.byte	0x8
	.byte	0x9
	.byte	0x53
	.byte	0x10
	.4byte	0x774
	.uleb128 0x8
	.4byte	.LASF861
	.byte	0x9
	.byte	0x55
	.byte	0xe
	.4byte	0x92
	.byte	0
	.uleb128 0x8
	.4byte	.LASF862
	.byte	0x9
	.byte	0x56
	.byte	0xe
	.4byte	0x59
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF863
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0x74c
	.uleb128 0x18
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xa
	.byte	0x26
	.byte	0x1
	.4byte	0x79b
	.uleb128 0x19
	.4byte	.LASF864
	.byte	0
	.uleb128 0x19
	.4byte	.LASF865
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF866
	.byte	0xa
	.byte	0x29
	.byte	0x2
	.4byte	0x780
	.uleb128 0x18
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xa
	.byte	0x2f
	.byte	0x1
	.4byte	0x7ce
	.uleb128 0x19
	.4byte	.LASF867
	.byte	0
	.uleb128 0x19
	.4byte	.LASF868
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF869
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF870
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF871
	.byte	0xa
	.byte	0x34
	.byte	0x2
	.4byte	0x7a7
	.uleb128 0xf
	.byte	0x1c
	.byte	0xa
	.byte	0x39
	.byte	0x9
	.4byte	0x83f
	.uleb128 0x8
	.4byte	.LASF872
	.byte	0xa
	.byte	0x3e
	.byte	0x10
	.4byte	0x6d6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF873
	.byte	0xa
	.byte	0x42
	.byte	0x10
	.4byte	0x6d6
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF874
	.byte	0xa
	.byte	0x4d
	.byte	0x10
	.4byte	0x859
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF875
	.byte	0xa
	.byte	0x51
	.byte	0x10
	.4byte	0x6d6
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF876
	.byte	0xa
	.byte	0x55
	.byte	0x10
	.4byte	0x6d6
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF877
	.byte	0xa
	.byte	0x5b
	.byte	0xd
	.4byte	0x86a
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF878
	.byte	0xa
	.byte	0x62
	.byte	0xd
	.4byte	0x87b
	.byte	0x18
	.byte	0
	.uleb128 0x1a
	.4byte	0x859
	.uleb128 0xd
	.4byte	0x6e4
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x59
	.uleb128 0xd
	.4byte	0x29
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x83f
	.uleb128 0x1a
	.4byte	0x86a
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x85f
	.uleb128 0x1a
	.4byte	0x87b
	.uleb128 0xd
	.4byte	0x6dd
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x870
	.uleb128 0x2
	.4byte	.LASF879
	.byte	0xa
	.byte	0x63
	.byte	0x2
	.4byte	0x7da
	.uleb128 0x6
	.4byte	.LASF880
	.byte	0x6c
	.byte	0xa
	.byte	0x68
	.byte	0x8
	.4byte	0xa0a
	.uleb128 0x8
	.4byte	.LASF881
	.byte	0xa
	.byte	0x6f
	.byte	0x10
	.4byte	0xa20
	.byte	0
	.uleb128 0x8
	.4byte	.LASF882
	.byte	0xa
	.byte	0x75
	.byte	0x15
	.4byte	0xa2b
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF883
	.byte	0xa
	.byte	0x7b
	.byte	0x10
	.4byte	0xa3c
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF884
	.byte	0xa
	.byte	0x81
	.byte	0x10
	.4byte	0xa4d
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF885
	.byte	0xa
	.byte	0x8c
	.byte	0x10
	.4byte	0xa71
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF886
	.byte	0xa
	.byte	0x97
	.byte	0x11
	.4byte	0xa7c
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF887
	.byte	0xa
	.byte	0xbf
	.byte	0x10
	.4byte	0xace
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF888
	.byte	0xa
	.byte	0xe9
	.byte	0x10
	.4byte	0xb1b
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF889
	.byte	0xa
	.byte	0xf4
	.byte	0x10
	.4byte	0xb30
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF890
	.byte	0xa
	.byte	0xff
	.byte	0x12
	.4byte	0xb4a
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF891
	.byte	0xa
	.2byte	0x107
	.byte	0x10
	.4byte	0xb60
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF892
	.byte	0xa
	.2byte	0x10b
	.byte	0x10
	.4byte	0x6d6
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF893
	.byte	0xa
	.2byte	0x10f
	.byte	0x10
	.4byte	0x6d6
	.byte	0x30
	.uleb128 0x1b
	.ascii	"Rx\000"
	.byte	0xa
	.2byte	0x115
	.byte	0x10
	.4byte	0xa4d
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF894
	.byte	0xa
	.2byte	0x119
	.byte	0x10
	.4byte	0x6d6
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF895
	.byte	0xa
	.2byte	0x121
	.byte	0x10
	.4byte	0xb7b
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF896
	.byte	0xa
	.2byte	0x127
	.byte	0x10
	.4byte	0xb90
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF897
	.byte	0xa
	.2byte	0x12e
	.byte	0x10
	.4byte	0xba6
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF898
	.byte	0xa
	.2byte	0x135
	.byte	0x10
	.4byte	0xbbb
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF899
	.byte	0xa
	.2byte	0x13d
	.byte	0x10
	.4byte	0xbd6
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF900
	.byte	0xa
	.2byte	0x145
	.byte	0x10
	.4byte	0xbd6
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF901
	.byte	0xa
	.2byte	0x14c
	.byte	0x10
	.4byte	0xbec
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF902
	.byte	0xa
	.2byte	0x154
	.byte	0x10
	.4byte	0x87b
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF903
	.byte	0xa
	.2byte	0x15a
	.byte	0x12
	.4byte	0xa7c
	.byte	0x5c
	.uleb128 0x16
	.4byte	.LASF904
	.byte	0xa
	.2byte	0x15e
	.byte	0xd
	.4byte	0x6d6
	.byte	0x60
	.uleb128 0x16
	.4byte	.LASF905
	.byte	0xa
	.2byte	0x16a
	.byte	0x10
	.4byte	0xa4d
	.byte	0x64
	.uleb128 0x16
	.4byte	.LASF906
	.byte	0xa
	.2byte	0x173
	.byte	0xd
	.4byte	0xc02
	.byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x88d
	.uleb128 0x1a
	.4byte	0xa1a
	.uleb128 0xd
	.4byte	0xa1a
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x881
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa0f
	.uleb128 0x1c
	.4byte	0x7ce
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa26
	.uleb128 0x1a
	.4byte	0xa3c
	.uleb128 0xd
	.4byte	0x79b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa31
	.uleb128 0x1a
	.4byte	0xa4d
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa42
	.uleb128 0xc
	.4byte	0x6dd
	.4byte	0xa71
	.uleb128 0xd
	.4byte	0x79b
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x59
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa53
	.uleb128 0x1c
	.4byte	0x92
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa77
	.uleb128 0x1a
	.4byte	0xace
	.uleb128 0xd
	.4byte	0x79b
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x3c
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x3c
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x3c
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x6dd
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa82
	.uleb128 0x1a
	.4byte	0xb1b
	.uleb128 0xd
	.4byte	0x79b
	.uleb128 0xd
	.4byte	0x29
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x3c
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x3c
	.uleb128 0xd
	.4byte	0x6dd
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xad4
	.uleb128 0xc
	.4byte	0x6dd
	.4byte	0xb30
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb21
	.uleb128 0xc
	.4byte	0x92
	.4byte	0xb4a
	.uleb128 0xd
	.4byte	0x79b
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb36
	.uleb128 0x1a
	.4byte	0xb60
	.uleb128 0xd
	.4byte	0x6e4
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb50
	.uleb128 0x1a
	.4byte	0xb7b
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x29
	.uleb128 0xd
	.4byte	0x6c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb66
	.uleb128 0xc
	.4byte	0x59
	.4byte	0xb90
	.uleb128 0xd
	.4byte	0x79b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb81
	.uleb128 0x1a
	.4byte	0xba6
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb96
	.uleb128 0xc
	.4byte	0x3c
	.4byte	0xbbb
	.uleb128 0xd
	.4byte	0x6c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbac
	.uleb128 0x1a
	.4byte	0xbd6
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x6e4
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbc1
	.uleb128 0x1a
	.4byte	0xbec
	.uleb128 0xd
	.4byte	0x79b
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbdc
	.uleb128 0x1a
	.4byte	0xc02
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xbf2
	.uleb128 0x12
	.4byte	.LASF907
	.byte	0xa
	.2byte	0x17c
	.byte	0x1d
	.4byte	0xa0a
	.uleb128 0x6
	.4byte	.LASF908
	.byte	0x1
	.byte	0xb
	.byte	0xd3
	.byte	0xc
	.4byte	0xc43
	.uleb128 0x1d
	.ascii	"Min\000"
	.byte	0xb
	.byte	0xdc
	.byte	0x10
	.4byte	0x29
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.ascii	"Max\000"
	.byte	0xb
	.byte	0xe4
	.byte	0x10
	.4byte	0x29
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF910
	.byte	0x1
	.byte	0xb
	.byte	0xca
	.byte	0xf
	.4byte	0xc69
	.uleb128 0xa
	.4byte	.LASF767
	.byte	0xb
	.byte	0xcf
	.byte	0xc
	.4byte	0x29
	.uleb128 0xa
	.4byte	.LASF766
	.byte	0xb
	.byte	0xe5
	.byte	0x6
	.4byte	0xc15
	.byte	0
	.uleb128 0x2
	.4byte	.LASF911
	.byte	0xb
	.byte	0xe6
	.byte	0x2
	.4byte	0xc43
	.uleb128 0x6
	.4byte	.LASF912
	.byte	0xc
	.byte	0xb
	.byte	0xeb
	.byte	0x10
	.4byte	0xcb7
	.uleb128 0x8
	.4byte	.LASF913
	.byte	0xb
	.byte	0xf0
	.byte	0xe
	.4byte	0x92
	.byte	0
	.uleb128 0x8
	.4byte	.LASF914
	.byte	0xb
	.byte	0xf4
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF915
	.byte	0xb
	.byte	0xf8
	.byte	0xf
	.4byte	0xc69
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF916
	.byte	0xb
	.byte	0xfc
	.byte	0xd
	.4byte	0x3c
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF917
	.byte	0xb
	.byte	0xfd
	.byte	0x2
	.4byte	0xc75
	.uleb128 0x1e
	.4byte	.LASF927
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xb
	.2byte	0x115
	.byte	0xe
	.4byte	0xd01
	.uleb128 0x19
	.4byte	.LASF918
	.byte	0
	.uleb128 0x19
	.4byte	.LASF919
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF920
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF921
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF922
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF924
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF925
	.byte	0xb
	.2byte	0x133
	.byte	0x2
	.4byte	0xcc3
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF926
	.uleb128 0xe
	.byte	0x4
	.4byte	0xcb7
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x1e
	.4byte	.LASF928
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xb
	.2byte	0x866
	.byte	0xe
	.4byte	0xdc5
	.uleb128 0x19
	.4byte	.LASF929
	.byte	0
	.uleb128 0x19
	.4byte	.LASF930
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF931
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF932
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF933
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF935
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF936
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF937
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF938
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF939
	.byte	0xa
	.uleb128 0x19
	.4byte	.LASF940
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF941
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF942
	.byte	0xd
	.uleb128 0x19
	.4byte	.LASF943
	.byte	0xe
	.uleb128 0x19
	.4byte	.LASF944
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF945
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF946
	.byte	0x11
	.uleb128 0x19
	.4byte	.LASF947
	.byte	0x12
	.uleb128 0x19
	.4byte	.LASF948
	.byte	0x13
	.uleb128 0x19
	.4byte	.LASF949
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF950
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF951
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF952
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.4byte	.LASF953
	.byte	0xb
	.2byte	0x8ca
	.byte	0x2
	.4byte	0xd21
	.uleb128 0x10
	.4byte	0x48
	.4byte	0xde2
	.uleb128 0x11
	.4byte	0xa3
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0xdd2
	.uleb128 0x1f
	.4byte	.LASF1140
	.byte	0xb
	.2byte	0x966
	.byte	0x16
	.4byte	0xde2
	.uleb128 0x5
	.byte	0x3
	.4byte	LoRaMacMaxEirpTable
	.uleb128 0x1e
	.4byte	.LASF954
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xc
	.2byte	0x243
	.byte	0xe
	.4byte	0xf52
	.uleb128 0x19
	.4byte	.LASF955
	.byte	0
	.uleb128 0x19
	.4byte	.LASF956
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF957
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF958
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF959
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF961
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF962
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF963
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF964
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF965
	.byte	0xa
	.uleb128 0x19
	.4byte	.LASF966
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF967
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF968
	.byte	0xd
	.uleb128 0x19
	.4byte	.LASF969
	.byte	0xe
	.uleb128 0x19
	.4byte	.LASF970
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF971
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF972
	.byte	0x11
	.uleb128 0x19
	.4byte	.LASF973
	.byte	0x12
	.uleb128 0x19
	.4byte	.LASF974
	.byte	0x13
	.uleb128 0x19
	.4byte	.LASF975
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF976
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF977
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF978
	.byte	0x17
	.uleb128 0x19
	.4byte	.LASF979
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF980
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF981
	.byte	0x1a
	.uleb128 0x19
	.4byte	.LASF982
	.byte	0x1b
	.uleb128 0x19
	.4byte	.LASF983
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF984
	.byte	0x1d
	.uleb128 0x19
	.4byte	.LASF985
	.byte	0x1e
	.uleb128 0x19
	.4byte	.LASF986
	.byte	0x1f
	.uleb128 0x19
	.4byte	.LASF987
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF988
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF989
	.byte	0x22
	.uleb128 0x19
	.4byte	.LASF990
	.byte	0x23
	.uleb128 0x19
	.4byte	.LASF991
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF992
	.byte	0x25
	.uleb128 0x19
	.4byte	.LASF993
	.byte	0x26
	.uleb128 0x19
	.4byte	.LASF994
	.byte	0x27
	.uleb128 0x19
	.4byte	.LASF995
	.byte	0x28
	.uleb128 0x19
	.4byte	.LASF996
	.byte	0x29
	.uleb128 0x19
	.4byte	.LASF997
	.byte	0x2a
	.uleb128 0x19
	.4byte	.LASF998
	.byte	0x2b
	.uleb128 0x19
	.4byte	.LASF999
	.byte	0x2c
	.uleb128 0x19
	.4byte	.LASF1000
	.byte	0x2d
	.uleb128 0x19
	.4byte	.LASF1001
	.byte	0x2e
	.uleb128 0x19
	.4byte	.LASF1002
	.byte	0x2f
	.uleb128 0x19
	.4byte	.LASF1003
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF1004
	.byte	0x31
	.uleb128 0x19
	.4byte	.LASF1005
	.byte	0x32
	.uleb128 0x19
	.4byte	.LASF1006
	.byte	0x33
	.uleb128 0x19
	.4byte	.LASF1007
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF1008
	.byte	0x35
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1009
	.byte	0xc
	.2byte	0x324
	.byte	0x2
	.4byte	0xdfa
	.uleb128 0x1e
	.4byte	.LASF1010
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xc
	.2byte	0x329
	.byte	0xe
	.4byte	0xf85
	.uleb128 0x19
	.4byte	.LASF1011
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1012
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1013
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1014
	.byte	0xc
	.2byte	0x338
	.byte	0x2
	.4byte	0xf5f
	.uleb128 0x1e
	.4byte	.LASF1015
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xc
	.2byte	0x33a
	.byte	0xe
	.4byte	0xfb8
	.uleb128 0x19
	.4byte	.LASF1016
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1017
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1018
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1019
	.byte	0xc
	.2byte	0x349
	.byte	0x2
	.4byte	0xf92
	.uleb128 0x15
	.4byte	.LASF1020
	.byte	0x3
	.byte	0xc
	.2byte	0x34e
	.byte	0x10
	.4byte	0xffe
	.uleb128 0x16
	.4byte	.LASF1021
	.byte	0xc
	.2byte	0x353
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1022
	.byte	0xc
	.2byte	0x357
	.byte	0xd
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1023
	.byte	0xc
	.2byte	0x35b
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1024
	.byte	0xc
	.2byte	0x35c
	.byte	0x2
	.4byte	0xfc5
	.uleb128 0x20
	.4byte	.LASF1025
	.byte	0x4
	.byte	0xc
	.2byte	0x361
	.byte	0xf
	.4byte	0x105b
	.uleb128 0x21
	.4byte	.LASF767
	.byte	0xc
	.2byte	0x366
	.byte	0xe
	.4byte	0x92
	.uleb128 0x21
	.4byte	.LASF1026
	.byte	0xc
	.2byte	0x36a
	.byte	0xb
	.4byte	0xd0e
	.uleb128 0x21
	.4byte	.LASF1027
	.byte	0xc
	.2byte	0x36e
	.byte	0xf
	.4byte	0xd1b
	.uleb128 0x21
	.4byte	.LASF1028
	.byte	0xc
	.2byte	0x372
	.byte	0x16
	.4byte	0xd15
	.uleb128 0x21
	.4byte	.LASF1029
	.byte	0xc
	.2byte	0x376
	.byte	0x14
	.4byte	0xffe
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1030
	.byte	0xc
	.2byte	0x377
	.byte	0x2
	.4byte	0x100b
	.uleb128 0x15
	.4byte	.LASF1031
	.byte	0x4
	.byte	0xc
	.2byte	0x37c
	.byte	0x10
	.4byte	0x10af
	.uleb128 0x16
	.4byte	.LASF1032
	.byte	0xc
	.2byte	0x381
	.byte	0x14
	.4byte	0xf52
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x387
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1034
	.byte	0xc
	.2byte	0x38e
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1035
	.byte	0xc
	.2byte	0x395
	.byte	0xd
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1036
	.byte	0xc
	.2byte	0x396
	.byte	0x2
	.4byte	0x1068
	.uleb128 0x15
	.4byte	.LASF1037
	.byte	0x8
	.byte	0xc
	.2byte	0x39b
	.byte	0x10
	.4byte	0x10f5
	.uleb128 0x16
	.4byte	.LASF1038
	.byte	0xc
	.2byte	0x3a0
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1039
	.byte	0xc
	.2byte	0x3a4
	.byte	0xa
	.4byte	0x6dd
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF857
	.byte	0xc
	.2byte	0x3a8
	.byte	0x11
	.4byte	0x6ca
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1040
	.byte	0xc
	.2byte	0x3a9
	.byte	0x2
	.4byte	0x10bc
	.uleb128 0x15
	.4byte	.LASF1041
	.byte	0x8
	.byte	0xc
	.2byte	0x3ae
	.byte	0x10
	.4byte	0x112d
	.uleb128 0x16
	.4byte	.LASF1042
	.byte	0xc
	.2byte	0x3b3
	.byte	0xb
	.4byte	0x12c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1043
	.byte	0xc
	.2byte	0x3b7
	.byte	0x11
	.4byte	0xf85
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1044
	.byte	0xc
	.2byte	0x3b8
	.byte	0x2
	.4byte	0x1102
	.uleb128 0x15
	.4byte	.LASF1045
	.byte	0x4
	.byte	0xc
	.2byte	0x3bd
	.byte	0x10
	.4byte	0x1157
	.uleb128 0x16
	.4byte	.LASF1046
	.byte	0xc
	.2byte	0x3c2
	.byte	0xd
	.4byte	0x6b7
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1047
	.byte	0xc
	.2byte	0x3c3
	.byte	0x2
	.4byte	0x113a
	.uleb128 0x15
	.4byte	.LASF1048
	.byte	0x3
	.byte	0xc
	.2byte	0x3da
	.byte	0xc
	.4byte	0x119d
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x3df
	.byte	0x10
	.4byte	0x29
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1035
	.byte	0xc
	.2byte	0x3e3
	.byte	0x11
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1034
	.byte	0xc
	.2byte	0x3e7
	.byte	0x11
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1049
	.byte	0x4
	.byte	0xc
	.2byte	0x3c9
	.byte	0xf
	.4byte	0x11e0
	.uleb128 0x21
	.4byte	.LASF913
	.byte	0xc
	.2byte	0x3ce
	.byte	0xe
	.4byte	0x92
	.uleb128 0x21
	.4byte	.LASF1050
	.byte	0xc
	.2byte	0x3d2
	.byte	0xc
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF1051
	.byte	0xc
	.2byte	0x3d6
	.byte	0xa
	.4byte	0x6dd
	.uleb128 0x21
	.4byte	.LASF1052
	.byte	0xc
	.2byte	0x3e8
	.byte	0x6
	.4byte	0x1164
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1053
	.byte	0xc
	.2byte	0x3e9
	.byte	0x2
	.4byte	0x119d
	.uleb128 0x15
	.4byte	.LASF1054
	.byte	0x8
	.byte	0xc
	.2byte	0x3ee
	.byte	0x10
	.4byte	0x1218
	.uleb128 0x16
	.4byte	.LASF1055
	.byte	0xc
	.2byte	0x3f3
	.byte	0xe
	.4byte	0x6e4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1056
	.byte	0xc
	.2byte	0x3f7
	.byte	0xd
	.4byte	0x3c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1057
	.byte	0xc
	.2byte	0x3f8
	.byte	0x2
	.4byte	0x11ed
	.uleb128 0x15
	.4byte	.LASF1058
	.byte	0x8
	.byte	0xc
	.2byte	0x3fd
	.byte	0x10
	.4byte	0x1250
	.uleb128 0x16
	.4byte	.LASF1059
	.byte	0xc
	.2byte	0x402
	.byte	0xf
	.4byte	0xd1b
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1060
	.byte	0xc
	.2byte	0x406
	.byte	0x14
	.4byte	0xfb8
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1061
	.byte	0xc
	.2byte	0x407
	.byte	0x2
	.4byte	0x1225
	.uleb128 0x15
	.4byte	.LASF1062
	.byte	0x14
	.byte	0xc
	.2byte	0x40c
	.byte	0x10
	.4byte	0x1306
	.uleb128 0x16
	.4byte	.LASF1038
	.byte	0xc
	.2byte	0x411
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x415
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1063
	.byte	0xc
	.2byte	0x419
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1064
	.byte	0xc
	.2byte	0x41d
	.byte	0xc
	.4byte	0x29
	.byte	0x3
	.uleb128 0x16
	.4byte	.LASF913
	.byte	0xc
	.2byte	0x421
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1065
	.byte	0xc
	.2byte	0x425
	.byte	0xf
	.4byte	0x92
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1066
	.byte	0xc
	.2byte	0x429
	.byte	0xd
	.4byte	0x7f
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1035
	.byte	0xc
	.2byte	0x42d
	.byte	0xd
	.4byte	0x3c
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1067
	.byte	0xc
	.2byte	0x431
	.byte	0xa
	.4byte	0x6dd
	.byte	0x11
	.uleb128 0x16
	.4byte	.LASF1068
	.byte	0xc
	.2byte	0x435
	.byte	0xa
	.4byte	0x6dd
	.byte	0x12
	.uleb128 0x16
	.4byte	.LASF1069
	.byte	0xc
	.2byte	0x439
	.byte	0x15
	.4byte	0xd01
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1070
	.byte	0xc
	.2byte	0x43a
	.byte	0x2
	.4byte	0x125d
	.uleb128 0x15
	.4byte	.LASF1071
	.byte	0x10
	.byte	0xc
	.2byte	0x43f
	.byte	0x10
	.4byte	0x1376
	.uleb128 0x16
	.4byte	.LASF1038
	.byte	0xc
	.2byte	0x444
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x448
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1050
	.byte	0xc
	.2byte	0x44c
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1072
	.byte	0xc
	.2byte	0x450
	.byte	0xb
	.4byte	0xd0e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1073
	.byte	0xc
	.2byte	0x454
	.byte	0xb
	.4byte	0xd0e
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1074
	.byte	0xc
	.2byte	0x458
	.byte	0xe
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1075
	.byte	0xc
	.2byte	0x459
	.byte	0x2
	.4byte	0x1313
	.uleb128 0x15
	.4byte	.LASF1076
	.byte	0x10
	.byte	0xc
	.2byte	0x45e
	.byte	0x10
	.4byte	0x1402
	.uleb128 0x16
	.4byte	.LASF1077
	.byte	0xc
	.2byte	0x463
	.byte	0xf
	.4byte	0x120
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1055
	.byte	0xc
	.2byte	0x467
	.byte	0xe
	.4byte	0x6e4
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1078
	.byte	0xc
	.2byte	0x46b
	.byte	0xd
	.4byte	0x3c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1034
	.byte	0xc
	.2byte	0x46f
	.byte	0xd
	.4byte	0x3c
	.byte	0x9
	.uleb128 0x16
	.4byte	.LASF1079
	.byte	0xc
	.2byte	0x473
	.byte	0xa
	.4byte	0x6dd
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF1080
	.byte	0xc
	.2byte	0x477
	.byte	0xc
	.4byte	0x29
	.byte	0xb
	.uleb128 0x16
	.4byte	.LASF1081
	.byte	0xc
	.2byte	0x47b
	.byte	0xc
	.4byte	0x29
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1082
	.byte	0xc
	.2byte	0x47f
	.byte	0xd
	.4byte	0x3c
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1083
	.byte	0xc
	.2byte	0x480
	.byte	0x2
	.4byte	0x1383
	.uleb128 0x15
	.4byte	.LASF1084
	.byte	0x8
	.byte	0xc
	.2byte	0x485
	.byte	0x10
	.4byte	0x1448
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x48a
	.byte	0xc
	.4byte	0x29
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1064
	.byte	0xc
	.2byte	0x48e
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF913
	.byte	0xc
	.2byte	0x492
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1085
	.byte	0xc
	.2byte	0x493
	.byte	0x2
	.4byte	0x140f
	.uleb128 0x15
	.4byte	.LASF1086
	.byte	0x8
	.byte	0xc
	.2byte	0x498
	.byte	0x10
	.4byte	0x1480
	.uleb128 0x16
	.4byte	.LASF1087
	.byte	0xc
	.2byte	0x49d
	.byte	0x16
	.4byte	0xd15
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1088
	.byte	0xc
	.2byte	0x4a1
	.byte	0xc
	.4byte	0x29
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1089
	.byte	0xc
	.2byte	0x4a2
	.byte	0x2
	.4byte	0x1455
	.uleb128 0x15
	.4byte	.LASF1090
	.byte	0x3
	.byte	0xc
	.2byte	0x4a7
	.byte	0x10
	.4byte	0x14c6
	.uleb128 0x16
	.4byte	.LASF1034
	.byte	0xc
	.2byte	0x4ac
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1035
	.byte	0xc
	.2byte	0x4b0
	.byte	0xd
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1072
	.byte	0xc
	.2byte	0x4b4
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1091
	.byte	0xc
	.2byte	0x4b5
	.byte	0x2
	.4byte	0x148d
	.uleb128 0x15
	.4byte	.LASF1092
	.byte	0x8
	.byte	0xc
	.2byte	0x4ba
	.byte	0x10
	.4byte	0x14fe
	.uleb128 0x16
	.4byte	.LASF1088
	.byte	0xc
	.2byte	0x4bf
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF914
	.byte	0xc
	.2byte	0x4c3
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1093
	.byte	0xc
	.2byte	0x4c4
	.byte	0x2
	.4byte	0x14d3
	.uleb128 0x1e
	.4byte	.LASF1094
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xc
	.2byte	0x4c9
	.byte	0xe
	.4byte	0x152b
	.uleb128 0x19
	.4byte	.LASF1095
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1096
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1097
	.byte	0xc
	.2byte	0x4d3
	.byte	0x2
	.4byte	0x150b
	.uleb128 0x15
	.4byte	.LASF1098
	.byte	0x10
	.byte	0xc
	.2byte	0x4d8
	.byte	0x10
	.4byte	0x159b
	.uleb128 0x16
	.4byte	.LASF1039
	.byte	0xc
	.2byte	0x4dd
	.byte	0xa
	.4byte	0x6dd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1099
	.byte	0xc
	.2byte	0x4e1
	.byte	0xa
	.4byte	0x6dd
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1100
	.byte	0xc
	.2byte	0x4e5
	.byte	0xa
	.4byte	0x6dd
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1038
	.byte	0xc
	.2byte	0x4e9
	.byte	0xd
	.4byte	0x3c
	.byte	0x3
	.uleb128 0x16
	.4byte	.LASF1101
	.byte	0xc
	.2byte	0x4ed
	.byte	0xf
	.4byte	0x774
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1102
	.byte	0xc
	.2byte	0x4f1
	.byte	0x11
	.4byte	0x6ca
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1103
	.byte	0xc
	.2byte	0x4f2
	.byte	0x2
	.4byte	0x1538
	.uleb128 0x15
	.4byte	.LASF1104
	.byte	0xc
	.byte	0xc
	.2byte	0x4f7
	.byte	0x10
	.4byte	0x15fd
	.uleb128 0x16
	.4byte	.LASF1105
	.byte	0xc
	.2byte	0x4fc
	.byte	0x11
	.4byte	0x6ca
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1106
	.byte	0xc
	.2byte	0x500
	.byte	0x11
	.4byte	0x6ca
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x504
	.byte	0xc
	.4byte	0x29
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1039
	.byte	0xc
	.2byte	0x508
	.byte	0xa
	.4byte	0x6dd
	.byte	0x9
	.uleb128 0x16
	.4byte	.LASF1100
	.byte	0xc
	.2byte	0x50c
	.byte	0xa
	.4byte	0x6dd
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1107
	.byte	0xc
	.2byte	0x50d
	.byte	0x2
	.4byte	0x15a8
	.uleb128 0x15
	.4byte	.LASF1108
	.byte	0x8
	.byte	0xc
	.2byte	0x512
	.byte	0x10
	.4byte	0x1635
	.uleb128 0x16
	.4byte	.LASF1087
	.byte	0xc
	.2byte	0x517
	.byte	0x16
	.4byte	0xd15
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1088
	.byte	0xc
	.2byte	0x51b
	.byte	0xd
	.4byte	0x3c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1109
	.byte	0xc
	.2byte	0x51c
	.byte	0x2
	.4byte	0x160a
	.uleb128 0x15
	.4byte	.LASF1110
	.byte	0x1
	.byte	0xc
	.2byte	0x521
	.byte	0x10
	.4byte	0x165f
	.uleb128 0x16
	.4byte	.LASF1088
	.byte	0xc
	.2byte	0x526
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1111
	.byte	0xc
	.2byte	0x527
	.byte	0x2
	.4byte	0x1642
	.uleb128 0x15
	.4byte	.LASF1112
	.byte	0x10
	.byte	0xc
	.2byte	0x52c
	.byte	0x10
	.4byte	0x16cf
	.uleb128 0x16
	.4byte	.LASF1038
	.byte	0xc
	.2byte	0x531
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1033
	.byte	0xc
	.2byte	0x535
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1050
	.byte	0xc
	.2byte	0x539
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1072
	.byte	0xc
	.2byte	0x53d
	.byte	0xb
	.4byte	0xd0e
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1073
	.byte	0xc
	.2byte	0x541
	.byte	0xb
	.4byte	0xd0e
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1113
	.byte	0xc
	.2byte	0x545
	.byte	0xe
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1114
	.byte	0xc
	.2byte	0x546
	.byte	0x2
	.4byte	0x166c
	.uleb128 0x15
	.4byte	.LASF1115
	.byte	0xc
	.byte	0xc
	.2byte	0x54b
	.byte	0x10
	.4byte	0x1715
	.uleb128 0x16
	.4byte	.LASF1116
	.byte	0xc
	.2byte	0x550
	.byte	0xe
	.4byte	0x6c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1117
	.byte	0xc
	.2byte	0x554
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF913
	.byte	0xc
	.2byte	0x558
	.byte	0xe
	.4byte	0x92
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1118
	.byte	0xc
	.2byte	0x559
	.byte	0x2
	.4byte	0x16dc
	.uleb128 0x6
	.4byte	.LASF1119
	.byte	0x6
	.byte	0xd
	.byte	0x30
	.byte	0x10
	.4byte	0x1771
	.uleb128 0x8
	.4byte	.LASF1120
	.byte	0xd
	.byte	0x35
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1033
	.byte	0xd
	.byte	0x39
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF1050
	.byte	0xd
	.byte	0x3d
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF1121
	.byte	0xd
	.byte	0x41
	.byte	0xd
	.4byte	0x3c
	.byte	0x3
	.uleb128 0x8
	.4byte	.LASF1122
	.byte	0xd
	.byte	0x45
	.byte	0xe
	.4byte	0x6c
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1123
	.byte	0xd
	.byte	0x46
	.byte	0x2
	.4byte	0x1722
	.uleb128 0x6
	.4byte	.LASF1124
	.byte	0x20
	.byte	0xd
	.byte	0x48
	.byte	0x10
	.4byte	0x185b
	.uleb128 0x8
	.4byte	.LASF1077
	.byte	0xd
	.byte	0x4d
	.byte	0xf
	.4byte	0x120
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1125
	.byte	0xd
	.byte	0x51
	.byte	0xd
	.4byte	0x3c
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1079
	.byte	0xd
	.byte	0x55
	.byte	0xa
	.4byte	0x6dd
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF1033
	.byte	0xd
	.byte	0x59
	.byte	0xc
	.4byte	0x29
	.byte	0x6
	.uleb128 0x8
	.4byte	.LASF1050
	.byte	0xd
	.byte	0x5d
	.byte	0xc
	.4byte	0x29
	.byte	0x7
	.uleb128 0x8
	.4byte	.LASF1120
	.byte	0xd
	.byte	0x61
	.byte	0xd
	.4byte	0x3c
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1080
	.byte	0xd
	.byte	0x65
	.byte	0xc
	.4byte	0x29
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF1081
	.byte	0xd
	.byte	0x69
	.byte	0xc
	.4byte	0x29
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF1082
	.byte	0xd
	.byte	0x6d
	.byte	0xc
	.4byte	0x29
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF1126
	.byte	0xd
	.byte	0x71
	.byte	0xd
	.4byte	0x3c
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1027
	.byte	0xd
	.byte	0x75
	.byte	0xf
	.4byte	0xd1b
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF1127
	.byte	0xd
	.byte	0x79
	.byte	0xc
	.4byte	0x29
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF1128
	.byte	0xd
	.byte	0x7d
	.byte	0xc
	.4byte	0x29
	.byte	0x15
	.uleb128 0x8
	.4byte	.LASF1028
	.byte	0xd
	.byte	0x81
	.byte	0x16
	.4byte	0xd15
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF1129
	.byte	0xd
	.byte	0x85
	.byte	0xc
	.4byte	0x29
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF1130
	.byte	0xd
	.byte	0x89
	.byte	0xc
	.4byte	0x29
	.byte	0x1d
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1131
	.byte	0xd
	.byte	0x8a
	.byte	0x2
	.4byte	0x177d
	.uleb128 0x6
	.4byte	.LASF1132
	.byte	0x18
	.byte	0xd
	.byte	0x8c
	.byte	0x10
	.4byte	0x18dd
	.uleb128 0x8
	.4byte	.LASF1028
	.byte	0xd
	.byte	0x91
	.byte	0x16
	.4byte	0xd15
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1133
	.byte	0xd
	.byte	0x95
	.byte	0xd
	.4byte	0x18dd
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1099
	.byte	0xd
	.byte	0x99
	.byte	0xa
	.4byte	0x6dd
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1039
	.byte	0xd
	.byte	0x9d
	.byte	0xa
	.4byte	0x6dd
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF1100
	.byte	0xd
	.byte	0xa1
	.byte	0xa
	.4byte	0x6dd
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF1038
	.byte	0xd
	.byte	0xa5
	.byte	0xd
	.4byte	0x3c
	.byte	0xb
	.uleb128 0x8
	.4byte	.LASF1101
	.byte	0xd
	.byte	0xa9
	.byte	0xf
	.4byte	0x774
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1102
	.byte	0xd
	.byte	0xad
	.byte	0x11
	.4byte	0x6ca
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x73f
	.uleb128 0x2
	.4byte	.LASF1134
	.byte	0xd
	.byte	0xae
	.byte	0x2
	.4byte	0x1867
	.uleb128 0x6
	.4byte	.LASF1135
	.byte	0x14
	.byte	0xd
	.byte	0xb0
	.byte	0x10
	.4byte	0x1958
	.uleb128 0x8
	.4byte	.LASF1136
	.byte	0xd
	.byte	0xb5
	.byte	0x14
	.4byte	0x1958
	.byte	0
	.uleb128 0x8
	.4byte	.LASF913
	.byte	0xd
	.byte	0xb9
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1021
	.byte	0xd
	.byte	0xbd
	.byte	0xd
	.4byte	0x3c
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1137
	.byte	0xd
	.byte	0xc1
	.byte	0xd
	.4byte	0x3c
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF1138
	.byte	0xd
	.byte	0xc5
	.byte	0xd
	.4byte	0x3c
	.byte	0xa
	.uleb128 0x8
	.4byte	.LASF1117
	.byte	0xd
	.byte	0xc9
	.byte	0xe
	.4byte	0x92
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1116
	.byte	0xd
	.byte	0xcd
	.byte	0xe
	.4byte	0x6c
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x48
	.uleb128 0x2
	.4byte	.LASF1139
	.byte	0xd
	.byte	0xce
	.byte	0x2
	.4byte	0x18ef
	.uleb128 0x10
	.4byte	0x48
	.4byte	0x197a
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x196a
	.uleb128 0x1f
	.4byte	.LASF1141
	.byte	0xe
	.2byte	0x12d
	.byte	0x16
	.4byte	0x197a
	.uleb128 0x5
	.byte	0x3
	.4byte	DataratesEU868
	.uleb128 0x10
	.4byte	0x9e
	.4byte	0x19a2
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x1992
	.uleb128 0x1f
	.4byte	.LASF1142
	.byte	0xe
	.2byte	0x132
	.byte	0x17
	.4byte	0x19a2
	.uleb128 0x5
	.byte	0x3
	.4byte	BandwidthsEU868
	.uleb128 0x1f
	.4byte	.LASF1143
	.byte	0xe
	.2byte	0x137
	.byte	0x16
	.4byte	0x197a
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxPayloadOfDatarateEU868
	.uleb128 0x1f
	.4byte	.LASF1144
	.byte	0xe
	.2byte	0x13c
	.byte	0x16
	.4byte	0x197a
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxPayloadOfDatarateRepeaterEU868
	.uleb128 0x22
	.4byte	.LASF1145
	.2byte	0x124
	.byte	0x1
	.byte	0x2a
	.byte	0x10
	.4byte	0x1a25
	.uleb128 0x8
	.4byte	.LASF1028
	.byte	0x1
	.byte	0x2f
	.byte	0x15
	.4byte	0x1a25
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1133
	.byte	0x1
	.byte	0x33
	.byte	0xc
	.4byte	0x1a35
	.byte	0xc0
	.uleb128 0x23
	.4byte	.LASF1027
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x1a45
	.2byte	0x120
	.uleb128 0x23
	.4byte	.LASF1146
	.byte	0x1
	.byte	0x3b
	.byte	0xe
	.4byte	0x1a45
	.2byte	0x122
	.byte	0
	.uleb128 0x10
	.4byte	0xcb7
	.4byte	0x1a35
	.uleb128 0x11
	.4byte	0xa3
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.4byte	0x73f
	.4byte	0x1a45
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.4byte	0x6c
	.4byte	0x1a55
	.uleb128 0x11
	.4byte	0xa3
	.byte	0
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1147
	.byte	0x1
	.byte	0x3c
	.byte	0x2
	.4byte	0x19e0
	.uleb128 0x24
	.4byte	.LASF1042
	.byte	0x1
	.byte	0x41
	.byte	0x1c
	.4byte	0x1a55
	.uleb128 0x5
	.byte	0x3
	.4byte	NvmCtx
	.uleb128 0x25
	.4byte	.LASF1154
	.byte	0x1
	.2byte	0x417
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1abb
	.uleb128 0x26
	.4byte	.LASF1148
	.byte	0x1
	.2byte	0x417
	.byte	0x31
	.4byte	0x1abb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF1149
	.byte	0x1
	.2byte	0x417
	.byte	0x49
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF1150
	.byte	0x1
	.2byte	0x419
	.byte	0x27
	.4byte	0x195e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1715
	.uleb128 0x27
	.4byte	.LASF1160
	.byte	0x1
	.2byte	0x40c
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b1c
	.uleb128 0x26
	.4byte	.LASF1151
	.byte	0x1
	.2byte	0x40c
	.byte	0x2b
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x28
	.ascii	"dr\000"
	.byte	0x1
	.2byte	0x40c
	.byte	0x45
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x26
	.4byte	.LASF1152
	.byte	0x1
	.2byte	0x40c
	.byte	0x50
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x1f
	.4byte	.LASF1153
	.byte	0x1
	.2byte	0x40e
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1155
	.byte	0x1
	.2byte	0x400
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b74
	.uleb128 0x26
	.4byte	.LASF1156
	.byte	0x1
	.2byte	0x400
	.byte	0x3c
	.4byte	0x1b74
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1157
	.byte	0x1
	.2byte	0x402
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1158
	.byte	0x1
	.2byte	0x403
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1f
	.4byte	.LASF1159
	.byte	0x1
	.2byte	0x404
	.byte	0xe
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x16cf
	.uleb128 0x29
	.4byte	.LASF1161
	.byte	0x1
	.2byte	0x3f1
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bb5
	.uleb128 0x26
	.4byte	.LASF1162
	.byte	0x1
	.2byte	0x3f1
	.byte	0x38
	.4byte	0x1bb5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x3f3
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x165f
	.uleb128 0x29
	.4byte	.LASF1163
	.byte	0x1
	.2byte	0x3b5
	.byte	0x11
	.4byte	0xdc5
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c26
	.uleb128 0x26
	.4byte	.LASF1164
	.byte	0x1
	.2byte	0x3b5
	.byte	0x3c
	.4byte	0x1c26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1165
	.byte	0x1
	.2byte	0x3b7
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1166
	.byte	0x1
	.2byte	0x3b8
	.byte	0xa
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1167
	.byte	0x1
	.2byte	0x3b9
	.byte	0xa
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x2a
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x3ba
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1635
	.uleb128 0x29
	.4byte	.LASF1168
	.byte	0x1
	.2byte	0x37e
	.byte	0x11
	.4byte	0xdc5
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd8
	.uleb128 0x26
	.4byte	.LASF1169
	.byte	0x1
	.2byte	0x37e
	.byte	0x3b
	.4byte	0x1cd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x26
	.4byte	.LASF1170
	.byte	0x1
	.2byte	0x37e
	.byte	0x54
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x26
	.4byte	.LASF1171
	.byte	0x1
	.2byte	0x37e
	.byte	0x6a
	.4byte	0x1cde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x26
	.4byte	.LASF1172
	.byte	0x1
	.2byte	0x37e
	.byte	0x7d
	.4byte	0x1cde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1f
	.4byte	.LASF1173
	.byte	0x1
	.2byte	0x380
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1174
	.byte	0x1
	.2byte	0x381
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x1f
	.4byte	.LASF1175
	.byte	0x1
	.2byte	0x382
	.byte	0xd
	.4byte	0x1ce4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF1176
	.byte	0x1
	.2byte	0x383
	.byte	0x11
	.4byte	0x6ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1177
	.byte	0x1
	.2byte	0x38a
	.byte	0x11
	.4byte	0x6ca
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15fd
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ca
	.uleb128 0x10
	.4byte	0x3c
	.4byte	0x1cf4
	.uleb128 0x11
	.4byte	0xa3
	.byte	0xf
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1178
	.byte	0x1
	.2byte	0x36e
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d2c
	.uleb128 0x26
	.4byte	.LASF1179
	.byte	0x1
	.2byte	0x36e
	.byte	0x33
	.4byte	0x1d2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.4byte	.LASF1180
	.byte	0x1
	.2byte	0x370
	.byte	0x25
	.4byte	0x18e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x159b
	.uleb128 0x27
	.4byte	.LASF1181
	.byte	0x1
	.2byte	0x369
	.byte	0x8
	.4byte	0x29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d6e
	.uleb128 0x26
	.4byte	.LASF1182
	.byte	0x1
	.2byte	0x369
	.byte	0x27
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x26
	.4byte	.LASF1183
	.byte	0x1
	.2byte	0x369
	.byte	0x44
	.4byte	0x152b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1184
	.byte	0x1
	.2byte	0x34f
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dba
	.uleb128 0x26
	.4byte	.LASF1185
	.byte	0x1
	.2byte	0x34f
	.byte	0x38
	.4byte	0x1dba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1186
	.byte	0x1
	.2byte	0x351
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1165
	.byte	0x1
	.2byte	0x352
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14fe
	.uleb128 0x27
	.4byte	.LASF1187
	.byte	0x1
	.2byte	0x34a
	.byte	0x8
	.4byte	0x29
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dec
	.uleb128 0x26
	.4byte	.LASF1188
	.byte	0x1
	.2byte	0x34a
	.byte	0x3d
	.4byte	0x1dec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14c6
	.uleb128 0x29
	.4byte	.LASF1189
	.byte	0x1
	.2byte	0x315
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e4e
	.uleb128 0x26
	.4byte	.LASF1190
	.byte	0x1
	.2byte	0x315
	.byte	0x3a
	.4byte	0x1e4e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF1186
	.byte	0x1
	.2byte	0x317
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1164
	.byte	0x1
	.2byte	0x318
	.byte	0x18
	.4byte	0x1635
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1162
	.byte	0x1
	.2byte	0x319
	.byte	0x1b
	.4byte	0x165f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1480
	.uleb128 0x29
	.4byte	.LASF1191
	.byte	0x1
	.2byte	0x2fb
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea0
	.uleb128 0x26
	.4byte	.LASF1192
	.byte	0x1
	.2byte	0x2fb
	.byte	0x3e
	.4byte	0x1ea0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1186
	.byte	0x1
	.2byte	0x2fd
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1165
	.byte	0x1
	.2byte	0x2fe
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1448
	.uleb128 0x29
	.4byte	.LASF1193
	.byte	0x1
	.2byte	0x292
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fae
	.uleb128 0x26
	.4byte	.LASF1194
	.byte	0x1
	.2byte	0x292
	.byte	0x34
	.4byte	0x1fae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.4byte	.LASF1195
	.byte	0x1
	.2byte	0x292
	.byte	0x48
	.4byte	0x1fb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.4byte	.LASF1196
	.byte	0x1
	.2byte	0x292
	.byte	0x57
	.4byte	0x1fb4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x26
	.4byte	.LASF1197
	.byte	0x1
	.2byte	0x292
	.byte	0x6a
	.4byte	0x6e4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x26
	.4byte	.LASF1198
	.byte	0x1
	.2byte	0x292
	.byte	0x7d
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.4byte	.LASF1186
	.byte	0x1
	.2byte	0x294
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1199
	.byte	0x1
	.2byte	0x295
	.byte	0x21
	.4byte	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1f
	.4byte	.LASF1200
	.byte	0x1
	.2byte	0x296
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1f
	.4byte	.LASF1201
	.byte	0x1
	.2byte	0x297
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1f
	.4byte	.LASF1202
	.byte	0x1
	.2byte	0x298
	.byte	0xe
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x1f
	.4byte	.LASF1203
	.byte	0x1
	.2byte	0x299
	.byte	0x14
	.4byte	0x10af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF1204
	.byte	0x1
	.2byte	0x29a
	.byte	0x10
	.4byte	0x105b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.4byte	.LASF1205
	.byte	0x1
	.2byte	0x29b
	.byte	0x2a
	.4byte	0x185b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2b
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x2bb
	.byte	0x1a
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1402
	.uleb128 0xe
	.byte	0x4
	.4byte	0x29
	.uleb128 0x29
	.4byte	.LASF1206
	.byte	0x1
	.2byte	0x270
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2056
	.uleb128 0x26
	.4byte	.LASF1207
	.byte	0x1
	.2byte	0x270
	.byte	0x2d
	.4byte	0x2056
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF1208
	.byte	0x1
	.2byte	0x270
	.byte	0x3f
	.4byte	0x1fb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x26
	.4byte	.LASF1209
	.byte	0x1
	.2byte	0x270
	.byte	0x55
	.4byte	0x1cde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1f
	.4byte	.LASF1210
	.byte	0x1
	.2byte	0x272
	.byte	0x13
	.4byte	0x79b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1211
	.byte	0x1
	.2byte	0x273
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x1f
	.4byte	.LASF1157
	.byte	0x1
	.2byte	0x274
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x1f
	.4byte	.LASF1212
	.byte	0x1
	.2byte	0x275
	.byte	0xe
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1f
	.4byte	.LASF1158
	.byte	0x1
	.2byte	0x276
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1376
	.uleb128 0x29
	.4byte	.LASF1213
	.byte	0x1
	.2byte	0x238
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20e7
	.uleb128 0x26
	.4byte	.LASF1214
	.byte	0x1
	.2byte	0x238
	.byte	0x2d
	.4byte	0x20e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x26
	.4byte	.LASF1153
	.byte	0x1
	.2byte	0x238
	.byte	0x3f
	.4byte	0x1fb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1f
	.4byte	.LASF1210
	.byte	0x1
	.2byte	0x23a
	.byte	0x13
	.4byte	0x79b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2a
	.ascii	"dr\000"
	.byte	0x1
	.2byte	0x23b
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x1f
	.4byte	.LASF1215
	.byte	0x1
	.2byte	0x23c
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1f
	.4byte	.LASF1211
	.byte	0x1
	.2byte	0x23d
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x1f
	.4byte	.LASF1159
	.byte	0x1
	.2byte	0x23e
	.byte	0xe
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1306
	.uleb128 0x25
	.4byte	.LASF1216
	.byte	0x1
	.2byte	0x224
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2155
	.uleb128 0x26
	.4byte	.LASF1153
	.byte	0x1
	.2byte	0x224
	.byte	0x33
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x26
	.4byte	.LASF1217
	.byte	0x1
	.2byte	0x224
	.byte	0x45
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x26
	.4byte	.LASF1218
	.byte	0x1
	.2byte	0x224
	.byte	0x5c
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x26
	.4byte	.LASF1219
	.byte	0x1
	.2byte	0x224
	.byte	0x77
	.4byte	0x20e7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1f
	.4byte	.LASF1220
	.byte	0x1
	.2byte	0x226
	.byte	0xc
	.4byte	0x2155
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1221
	.uleb128 0x29
	.4byte	.LASF1222
	.byte	0x1
	.2byte	0x210
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2188
	.uleb128 0x26
	.4byte	.LASF1223
	.byte	0x1
	.2byte	0x210
	.byte	0x33
	.4byte	0x2188
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1250
	.uleb128 0x25
	.4byte	.LASF1224
	.byte	0x1
	.2byte	0x1d5
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x220e
	.uleb128 0x26
	.4byte	.LASF1225
	.byte	0x1
	.2byte	0x1d5
	.byte	0x33
	.4byte	0x220e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1f
	.4byte	.LASF1226
	.byte	0x1
	.2byte	0x1d7
	.byte	0x15
	.4byte	0xcb7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF1164
	.byte	0x1
	.2byte	0x1d8
	.byte	0x18
	.4byte	0x1635
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1f
	.4byte	.LASF1162
	.byte	0x1
	.2byte	0x1d9
	.byte	0x1b
	.4byte	0x165f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x1eb
	.byte	0x12
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1f
	.4byte	.LASF1227
	.byte	0x1
	.2byte	0x1eb
	.byte	0x19
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1218
	.uleb128 0x29
	.4byte	.LASF1228
	.byte	0x1
	.2byte	0x1b1
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226a
	.uleb128 0x26
	.4byte	.LASF1229
	.byte	0x1
	.2byte	0x1b1
	.byte	0x29
	.4byte	0x226a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.4byte	.LASF1230
	.byte	0x1
	.2byte	0x1b1
	.byte	0x40
	.4byte	0xf52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x2b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x1f
	.4byte	.LASF1165
	.byte	0x1
	.2byte	0x1b7
	.byte	0x15
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x11e0
	.uleb128 0x27
	.4byte	.LASF1231
	.byte	0x1
	.2byte	0x1ab
	.byte	0x7
	.4byte	0x12c
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x229c
	.uleb128 0x26
	.4byte	.LASF1232
	.byte	0x1
	.2byte	0x1ab
	.byte	0x30
	.4byte	0x229c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1157
	.uleb128 0x25
	.4byte	.LASF1233
	.byte	0x1
	.2byte	0x173
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22dc
	.uleb128 0x26
	.4byte	.LASF1232
	.byte	0x1
	.2byte	0x173
	.byte	0x35
	.4byte	0x22dc
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x1f
	.4byte	.LASF1234
	.byte	0x1
	.2byte	0x175
	.byte	0xc
	.4byte	0x1a35
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x112d
	.uleb128 0x25
	.4byte	.LASF1235
	.byte	0x1
	.2byte	0x16e
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x230a
	.uleb128 0x26
	.4byte	.LASF1236
	.byte	0x1
	.2byte	0x16e
	.byte	0x37
	.4byte	0x230a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x10f5
	.uleb128 0x2c
	.4byte	.LASF1237
	.byte	0x1
	.byte	0xbc
	.byte	0xc
	.4byte	0x105b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2349
	.uleb128 0x2d
	.4byte	.LASF1203
	.byte	0x1
	.byte	0xbc
	.byte	0x34
	.4byte	0x2349
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.4byte	.LASF1204
	.byte	0x1
	.byte	0xbe
	.byte	0x10
	.4byte	0x105b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x10af
	.uleb128 0x2e
	.4byte	.LASF1242
	.byte	0x1
	.byte	0x93
	.byte	0x10
	.4byte	0x3c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x242c
	.uleb128 0x2d
	.4byte	.LASF1238
	.byte	0x1
	.byte	0x93
	.byte	0x2f
	.4byte	0x6dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2d
	.4byte	.LASF1153
	.byte	0x1
	.byte	0x93
	.byte	0x3f
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.4byte	.LASF1239
	.byte	0x1
	.byte	0x93
	.byte	0x53
	.4byte	0xd1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2d
	.4byte	.LASF1240
	.byte	0x1
	.byte	0x93
	.byte	0x72
	.4byte	0xd15
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2d
	.4byte	.LASF1234
	.byte	0x1
	.byte	0x93
	.byte	0x84
	.4byte	0x18dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.4byte	.LASF1175
	.byte	0x1
	.byte	0x93
	.byte	0x94
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.4byte	.LASF1174
	.byte	0x1
	.byte	0x93
	.byte	0xae
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.4byte	.LASF1173
	.byte	0x1
	.byte	0x95
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x24
	.4byte	.LASF1241
	.byte	0x1
	.byte	0x96
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x2b
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x98
	.byte	0x12
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x2f
	.ascii	"k\000"
	.byte	0x1
	.byte	0x98
	.byte	0x19
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2f
	.ascii	"j\000"
	.byte	0x1
	.byte	0x9a
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF1243
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0x6dd
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2465
	.uleb128 0x2d
	.4byte	.LASF1244
	.byte	0x1
	.byte	0x6b
	.byte	0x24
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2d
	.4byte	.LASF1165
	.byte	0x1
	.byte	0x6b
	.byte	0x33
	.4byte	0x6e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x30
	.4byte	.LASF1245
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.4byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24cb
	.uleb128 0x2d
	.4byte	.LASF1208
	.byte	0x1
	.byte	0x61
	.byte	0x24
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2d
	.4byte	.LASF1246
	.byte	0x1
	.byte	0x61
	.byte	0x34
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x2d
	.4byte	.LASF1153
	.byte	0x1
	.byte	0x61
	.byte	0x4b
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x2d
	.4byte	.LASF1239
	.byte	0x1
	.byte	0x61
	.byte	0x5f
	.4byte	0xd1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.4byte	.LASF1247
	.byte	0x1
	.byte	0x63
	.byte	0xc
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x30
	.4byte	.LASF1248
	.byte	0x1
	.byte	0x53
	.byte	0x11
	.4byte	0x92
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f5
	.uleb128 0x2d
	.4byte	.LASF1249
	.byte	0x1
	.byte	0x53
	.byte	0x28
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x31
	.4byte	.LASF1255
	.byte	0x1
	.byte	0x44
	.byte	0xf
	.4byte	0x29
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x32
	.ascii	"dr\000"
	.byte	0x1
	.byte	0x44
	.byte	0x28
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x2d
	.4byte	.LASF1250
	.byte	0x1
	.byte	0x44
	.byte	0x33
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x24
	.4byte	.LASF1251
	.byte	0x1
	.byte	0x46
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xde5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2539
	.4byte	0x78e
	.ascii	"MODEM_FSK\000"
	.4byte	0x794
	.ascii	"MODEM_LORA\000"
	.4byte	0x7b5
	.ascii	"RF_IDLE\000"
	.4byte	0x7bb
	.ascii	"RF_RX_RUNNING\000"
	.4byte	0x7c1
	.ascii	"RF_TX_RUNNING\000"
	.4byte	0x7c7
	.ascii	"RF_CAD\000"
	.4byte	0xcd6
	.ascii	"RX_SLOT_WIN_1\000"
	.4byte	0xcdc
	.ascii	"RX_SLOT_WIN_2\000"
	.4byte	0xce2
	.ascii	"RX_SLOT_WIN_CLASS_C\000"
	.4byte	0xce8
	.ascii	"RX_SLOT_WIN_CLASS_C_MULTICAST\000"
	.4byte	0xcee
	.ascii	"RX_SLOT_WIN_CLASS_B_PING_SLOT\000"
	.4byte	0xcf4
	.ascii	"RX_SLOT_WIN_CLASS_B_MULTICAST_SLOT\000"
	.4byte	0xcfa
	.ascii	"RX_SLOT_NONE\000"
	.4byte	0xd34
	.ascii	"LORAMAC_STATUS_OK\000"
	.4byte	0xd3a
	.ascii	"LORAMAC_STATUS_BUSY\000"
	.4byte	0xd40
	.ascii	"LORAMAC_STATUS_SERVICE_UNKNOWN\000"
	.4byte	0xd46
	.ascii	"LORAMAC_STATUS_PARAMETER_INVALID\000"
	.4byte	0xd4c
	.ascii	"LORAMAC_STATUS_FREQUENCY_INVALID\000"
	.4byte	0xd52
	.ascii	"LORAMAC_STATUS_DATARATE_INVALID\000"
	.4byte	0xd58
	.ascii	"LORAMAC_STATUS_FREQ_AND_DR_INVALID\000"
	.4byte	0xd5e
	.ascii	"LORAMAC_STATUS_NO_NETWORK_JOINED\000"
	.4byte	0xd64
	.ascii	"LORAMAC_STATUS_LENGTH_ERROR\000"
	.4byte	0xd6a
	.ascii	"LORAMAC_STATUS_REGION_NOT_SUPPORTED\000"
	.4byte	0xd70
	.ascii	"LORAMAC_STATUS_SKIPPED_APP_DATA\000"
	.4byte	0xd76
	.ascii	"LORAMAC_STATUS_DUTYCYCLE_RESTRICTED\000"
	.4byte	0xd7c
	.ascii	"LORAMAC_STATUS_NO_CHANNEL_FOUND\000"
	.4byte	0xd82
	.ascii	"LORAMAC_STATUS_NO_FREE_CHANNEL_FOUND\000"
	.4byte	0xd88
	.ascii	"LORAMAC_STATUS_BUSY_BEACON_RESERVED_TIME\000"
	.4byte	0xd8e
	.ascii	"LORAMAC_STATUS_BUSY_PING_SLOT_WINDOW_TIME\000"
	.4byte	0xd94
	.ascii	"LORAMAC_STATUS_BUSY_UPLINK_COLLISION\000"
	.4byte	0xd9a
	.ascii	"LORAMAC_STATUS_CRYPTO_ERROR\000"
	.4byte	0xda0
	.ascii	"LORAMAC_STATUS_FCNT_HANDLER_ERROR\000"
	.4byte	0xda6
	.ascii	"LORAMAC_STATUS_MAC_COMMAD_ERROR\000"
	.4byte	0xdac
	.ascii	"LORAMAC_STATUS_CLASS_B_ERROR\000"
	.4byte	0xdb2
	.ascii	"LORAMAC_STATUS_CONFIRM_QUEUE_ERROR\000"
	.4byte	0xdb8
	.ascii	"LORAMAC_STATUS_MC_GROUP_UNDEFINED\000"
	.4byte	0xdbe
	.ascii	"LORAMAC_STATUS_ERROR\000"
	.4byte	0xde7
	.ascii	"LoRaMacMaxEirpTable\000"
	.4byte	0xe0d
	.ascii	"PHY_FREQUENCY\000"
	.4byte	0xe13
	.ascii	"PHY_MIN_RX_DR\000"
	.4byte	0xe19
	.ascii	"PHY_MIN_TX_DR\000"
	.4byte	0xe1f
	.ascii	"PHY_MAX_RX_DR\000"
	.4byte	0xe25
	.ascii	"PHY_MAX_TX_DR\000"
	.4byte	0xe2b
	.ascii	"PHY_TX_DR\000"
	.4byte	0xe31
	.ascii	"PHY_DEF_TX_DR\000"
	.4byte	0xe37
	.ascii	"PHY_RX_DR\000"
	.4byte	0xe3d
	.ascii	"PHY_MAX_TX_POWER\000"
	.4byte	0xe43
	.ascii	"PHY_TX_POWER\000"
	.4byte	0xe49
	.ascii	"PHY_DEF_TX_POWER\000"
	.4byte	0xe4f
	.ascii	"PHY_DEF_ADR_ACK_LIMIT\000"
	.4byte	0xe55
	.ascii	"PHY_DEF_ADR_ACK_DELAY\000"
	.4byte	0xe5b
	.ascii	"PHY_MAX_PAYLOAD\000"
	.4byte	0xe61
	.ascii	"PHY_MAX_PAYLOAD_REPEATER\000"
	.4byte	0xe67
	.ascii	"PHY_DUTY_CYCLE\000"
	.4byte	0xe6d
	.ascii	"PHY_MAX_RX_WINDOW\000"
	.4byte	0xe73
	.ascii	"PHY_RECEIVE_DELAY1\000"
	.4byte	0xe79
	.ascii	"PHY_RECEIVE_DELAY2\000"
	.4byte	0xe7f
	.ascii	"PHY_JOIN_ACCEPT_DELAY1\000"
	.4byte	0xe85
	.ascii	"PHY_JOIN_ACCEPT_DELAY2\000"
	.4byte	0xe8b
	.ascii	"PHY_MAX_FCNT_GAP\000"
	.4byte	0xe91
	.ascii	"PHY_ACK_TIMEOUT\000"
	.4byte	0xe97
	.ascii	"PHY_DEF_DR1_OFFSET\000"
	.4byte	0xe9d
	.ascii	"PHY_DEF_RX2_FREQUENCY\000"
	.4byte	0xea3
	.ascii	"PHY_DEF_RX2_DR\000"
	.4byte	0xea9
	.ascii	"PHY_CHANNELS_MASK\000"
	.4byte	0xeaf
	.ascii	"PHY_CHANNELS_DEFAULT_MASK\000"
	.4byte	0xeb5
	.ascii	"PHY_MAX_NB_CHANNELS\000"
	.4byte	0xebb
	.ascii	"PHY_CHANNELS\000"
	.4byte	0xec1
	.ascii	"PHY_DEF_UPLINK_DWELL_TIME\000"
	.4byte	0xec7
	.ascii	"PHY_DEF_DOWNLINK_DWELL_TIME\000"
	.4byte	0xecd
	.ascii	"PHY_DEF_MAX_EIRP\000"
	.4byte	0xed3
	.ascii	"PHY_DEF_ANTENNA_GAIN\000"
	.4byte	0xed9
	.ascii	"PHY_NEXT_LOWER_TX_DR\000"
	.4byte	0xedf
	.ascii	"PHY_BEACON_INTERVAL\000"
	.4byte	0xee5
	.ascii	"PHY_BEACON_RESERVED\000"
	.4byte	0xeeb
	.ascii	"PHY_BEACON_GUARD\000"
	.4byte	0xef1
	.ascii	"PHY_BEACON_WINDOW\000"
	.4byte	0xef7
	.ascii	"PHY_BEACON_WINDOW_SLOTS\000"
	.4byte	0xefd
	.ascii	"PHY_PING_SLOT_WINDOW\000"
	.4byte	0xf03
	.ascii	"PHY_BEACON_SYMBOL_TO_DEFAULT\000"
	.4byte	0xf09
	.ascii	"PHY_BEACON_SYMBOL_TO_EXPANSION_MAX\000"
	.4byte	0xf0f
	.ascii	"PHY_PING_SLOT_SYMBOL_TO_EXPANSION_MAX\000"
	.4byte	0xf15
	.ascii	"PHY_BEACON_SYMBOL_TO_EXPANSION_FACTOR\000"
	.4byte	0xf1b
	.ascii	"PHY_PING_SLOT_SYMBOL_TO_EXPANSION_FACTOR\000"
	.4byte	0xf21
	.ascii	"PHY_MAX_BEACON_LESS_PERIOD\000"
	.4byte	0xf27
	.ascii	"PHY_BEACON_DELAY_BEACON_TIMING_ANS\000"
	.4byte	0xf2d
	.ascii	"PHY_BEACON_CHANNEL_FREQ\000"
	.4byte	0xf33
	.ascii	"PHY_BEACON_FORMAT\000"
	.4byte	0xf39
	.ascii	"PHY_BEACON_CHANNEL_DR\000"
	.4byte	0xf3f
	.ascii	"PHY_BEACON_CHANNEL_STEPWIDTH\000"
	.4byte	0xf45
	.ascii	"PHY_BEACON_NB_CHANNELS\000"
	.4byte	0xf4b
	.ascii	"PHY_PING_SLOT_CHANNEL_DR\000"
	.4byte	0xf72
	.ascii	"INIT_TYPE_INIT\000"
	.4byte	0xf78
	.ascii	"INIT_TYPE_RESTORE_DEFAULT_CHANNELS\000"
	.4byte	0xf7e
	.ascii	"INIT_TYPE_RESTORE_CTX\000"
	.4byte	0xfa5
	.ascii	"CHANNELS_MASK\000"
	.4byte	0xfab
	.ascii	"CHANNELS_DEFAULT_MASK\000"
	.4byte	0xfb1
	.ascii	"CHANNELS_REINIT_MASK\000"
	.4byte	0x197f
	.ascii	"DataratesEU868\000"
	.4byte	0x19a7
	.ascii	"BandwidthsEU868\000"
	.4byte	0x19ba
	.ascii	"MaxPayloadOfDatarateEU868\000"
	.4byte	0x19cd
	.ascii	"MaxPayloadOfDatarateRepeaterEU868\000"
	.4byte	0x1a61
	.ascii	"NvmCtx\000"
	.4byte	0x1a61
	.ascii	"NvmCtx\000"
	.4byte	0x1a73
	.ascii	"RegionEU868RxBeaconSetup\000"
	.4byte	0x1ac1
	.ascii	"RegionEU868ApplyDrOffset\000"
	.4byte	0x1b1c
	.ascii	"RegionEU868SetContinuousWave\000"
	.4byte	0x1b7a
	.ascii	"RegionEU868ChannelsRemove\000"
	.4byte	0x1bbb
	.ascii	"RegionEU868ChannelAdd\000"
	.4byte	0x1c2c
	.ascii	"RegionEU868NextChannel\000"
	.4byte	0x1cf4
	.ascii	"RegionEU868CalcBackOff\000"
	.4byte	0x1d32
	.ascii	"RegionEU868AlternateDr\000"
	.4byte	0x1d6e
	.ascii	"RegionEU868DlChannelReq\000"
	.4byte	0x1dc0
	.ascii	"RegionEU868TxParamSetupReq\000"
	.4byte	0x1df2
	.ascii	"RegionEU868NewChannelReq\000"
	.4byte	0x1e54
	.ascii	"RegionEU868RxParamSetupReq\000"
	.4byte	0x1ea6
	.ascii	"RegionEU868LinkAdrReq\000"
	.4byte	0x1fba
	.ascii	"RegionEU868TxConfig\000"
	.4byte	0x205c
	.ascii	"RegionEU868RxConfig\000"
	.4byte	0x20ed
	.ascii	"RegionEU868ComputeRxWindowParameters\000"
	.4byte	0x215c
	.ascii	"RegionEU868ChanMaskSet\000"
	.4byte	0x218e
	.ascii	"RegionEU868ApplyCFList\000"
	.4byte	0x2214
	.ascii	"RegionEU868Verify\000"
	.4byte	0x2270
	.ascii	"RegionEU868GetNvmCtx\000"
	.4byte	0x22a2
	.ascii	"RegionEU868InitDefaults\000"
	.4byte	0x22e2
	.ascii	"RegionEU868SetBandTxDone\000"
	.4byte	0x2310
	.ascii	"RegionEU868GetPhyParam\000"
	.4byte	0x234f
	.ascii	"CountNbOfEnabledChannels\000"
	.4byte	0x242c
	.ascii	"VerifyRfFreq\000"
	.4byte	0x2465
	.ascii	"LimitTxPower\000"
	.4byte	0x24cb
	.ascii	"GetBandwidth\000"
	.4byte	0x24f5
	.ascii	"GetNextLowerTxDr\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x919
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x2539
	.4byte	0x35
	.ascii	"signed char\000"
	.4byte	0x29
	.ascii	"int8_t\000"
	.4byte	0x4d
	.ascii	"unsigned char\000"
	.4byte	0x3c
	.ascii	"uint8_t\000"
	.4byte	0x65
	.ascii	"short int\000"
	.4byte	0x59
	.ascii	"int16_t\000"
	.4byte	0x78
	.ascii	"short unsigned int\000"
	.4byte	0x6c
	.ascii	"uint16_t\000"
	.4byte	0x8b
	.ascii	"int\000"
	.4byte	0x7f
	.ascii	"int32_t\000"
	.4byte	0xa3
	.ascii	"unsigned int\000"
	.4byte	0x92
	.ascii	"uint32_t\000"
	.4byte	0xaa
	.ascii	"long long int\000"
	.4byte	0xb1
	.ascii	"long long unsigned int\000"
	.4byte	0xb8
	.ascii	"Version_s\000"
	.4byte	0xfa
	.ascii	"Version_u\000"
	.4byte	0x120
	.ascii	"Version_t\000"
	.4byte	0x156
	.ascii	"long int\000"
	.4byte	0x12e
	.ascii	"__mbstate_s\000"
	.4byte	0x17c
	.ascii	"char\000"
	.4byte	0x362
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x44f
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x49d
	.ascii	"__RAL_locale_t\000"
	.4byte	0x4ae
	.ascii	"__locale_s\000"
	.4byte	0x644
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0x666
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x697
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x6b7
	.ascii	"size_t\000"
	.4byte	0x6c3
	.ascii	"long double\000"
	.4byte	0x6ca
	.ascii	"TimerTime_t\000"
	.4byte	0x6dd
	.ascii	"_Bool\000"
	.4byte	0x6ea
	.ascii	"sBand\000"
	.4byte	0x73f
	.ascii	"Band_t\000"
	.4byte	0x5dc
	.ascii	"timeval\000"
	.4byte	0x74c
	.ascii	"SysTime_s\000"
	.4byte	0x774
	.ascii	"SysTime_t\000"
	.4byte	0x79b
	.ascii	"RadioModems_t\000"
	.4byte	0x7ce
	.ascii	"RadioState_t\000"
	.4byte	0x881
	.ascii	"RadioEvents_t\000"
	.4byte	0x88d
	.ascii	"Radio_s\000"
	.4byte	0xc15
	.ascii	"sFields\000"
	.4byte	0xc43
	.ascii	"uDrRange\000"
	.4byte	0xc69
	.ascii	"DrRange_t\000"
	.4byte	0xc75
	.ascii	"sChannelParams\000"
	.4byte	0xcb7
	.ascii	"ChannelParams_t\000"
	.4byte	0xcc3
	.ascii	"eLoRaMacRxSlot\000"
	.4byte	0xd01
	.ascii	"LoRaMacRxSlot_t\000"
	.4byte	0xd0e
	.ascii	"float\000"
	.4byte	0xd21
	.ascii	"eLoRaMacStatus\000"
	.4byte	0xdc5
	.ascii	"LoRaMacStatus_t\000"
	.4byte	0xdfa
	.ascii	"ePhyAttribute\000"
	.4byte	0xf52
	.ascii	"PhyAttribute_t\000"
	.4byte	0xf5f
	.ascii	"eInitType\000"
	.4byte	0xf85
	.ascii	"InitType_t\000"
	.4byte	0xf92
	.ascii	"eChannelsMask\000"
	.4byte	0xfb8
	.ascii	"ChannelsMask_t\000"
	.4byte	0xfc5
	.ascii	"sBeaconFormat\000"
	.4byte	0xffe
	.ascii	"BeaconFormat_t\000"
	.4byte	0x100b
	.ascii	"uPhyParam\000"
	.4byte	0x105b
	.ascii	"PhyParam_t\000"
	.4byte	0x1068
	.ascii	"sGetPhyParams\000"
	.4byte	0x10af
	.ascii	"GetPhyParams_t\000"
	.4byte	0x10bc
	.ascii	"sSetBandTxDoneParams\000"
	.4byte	0x10f5
	.ascii	"SetBandTxDoneParams_t\000"
	.4byte	0x1102
	.ascii	"sInitDefaultsParams\000"
	.4byte	0x112d
	.ascii	"InitDefaultsParams_t\000"
	.4byte	0x113a
	.ascii	"sGetNvmCtxParams\000"
	.4byte	0x1157
	.ascii	"GetNvmCtxParams_t\000"
	.4byte	0x1164
	.ascii	"sDatarateParams\000"
	.4byte	0x119d
	.ascii	"uVerifyParams\000"
	.4byte	0x11e0
	.ascii	"VerifyParams_t\000"
	.4byte	0x11ed
	.ascii	"sApplyCFListParams\000"
	.4byte	0x1218
	.ascii	"ApplyCFListParams_t\000"
	.4byte	0x1225
	.ascii	"sChanMaskSetParams\000"
	.4byte	0x1250
	.ascii	"ChanMaskSetParams_t\000"
	.4byte	0x125d
	.ascii	"sRxConfigParams\000"
	.4byte	0x1306
	.ascii	"RxConfigParams_t\000"
	.4byte	0x1313
	.ascii	"sTxConfigParams\000"
	.4byte	0x1376
	.ascii	"TxConfigParams_t\000"
	.4byte	0x1383
	.ascii	"sLinkAdrReqParams\000"
	.4byte	0x1402
	.ascii	"LinkAdrReqParams_t\000"
	.4byte	0x140f
	.ascii	"sRxParamSetupReqParams\000"
	.4byte	0x1448
	.ascii	"RxParamSetupReqParams_t\000"
	.4byte	0x1455
	.ascii	"sNewChannelReqParams\000"
	.4byte	0x1480
	.ascii	"NewChannelReqParams_t\000"
	.4byte	0x148d
	.ascii	"sTxParamSetupReqParams\000"
	.4byte	0x14c6
	.ascii	"TxParamSetupReqParams_t\000"
	.4byte	0x14d3
	.ascii	"sDlChannelReqParams\000"
	.4byte	0x14fe
	.ascii	"DlChannelReqParams_t\000"
	.4byte	0x150b
	.ascii	"eAlternateDrType\000"
	.4byte	0x152b
	.ascii	"AlternateDrType_t\000"
	.4byte	0x1538
	.ascii	"sCalcBackOffParams\000"
	.4byte	0x159b
	.ascii	"CalcBackOffParams_t\000"
	.4byte	0x15a8
	.ascii	"sNextChanParams\000"
	.4byte	0x15fd
	.ascii	"NextChanParams_t\000"
	.4byte	0x160a
	.ascii	"sChannelAddParams\000"
	.4byte	0x1635
	.ascii	"ChannelAddParams_t\000"
	.4byte	0x1642
	.ascii	"sChannelRemoveParams\000"
	.4byte	0x165f
	.ascii	"ChannelRemoveParams_t\000"
	.4byte	0x166c
	.ascii	"sContinuousWaveParams\000"
	.4byte	0x16cf
	.ascii	"ContinuousWaveParams_t\000"
	.4byte	0x16dc
	.ascii	"sRxBeaconSetupParams\000"
	.4byte	0x1715
	.ascii	"RxBeaconSetup_t\000"
	.4byte	0x1722
	.ascii	"sRegionCommonLinkAdrParams\000"
	.4byte	0x1771
	.ascii	"RegionCommonLinkAdrParams_t\000"
	.4byte	0x177d
	.ascii	"sRegionCommonLinkAdrReqVerifyParams\000"
	.4byte	0x185b
	.ascii	"RegionCommonLinkAdrReqVerifyParams_t\000"
	.4byte	0x1867
	.ascii	"sRegionCommonCalcBackOffParams\000"
	.4byte	0x18e3
	.ascii	"RegionCommonCalcBackOffParams_t\000"
	.4byte	0x18ef
	.ascii	"sRegionCommonRxBeaconSetupParams\000"
	.4byte	0x195e
	.ascii	"RegionCommonRxBeaconSetupParams_t\000"
	.4byte	0x19e0
	.ascii	"sRegionEU868NvmCtx\000"
	.4byte	0x1a55
	.ascii	"RegionEU868NvmCtx_t\000"
	.4byte	0x2155
	.ascii	"double\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xf4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF467
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 15 "../../../../nordic_sdk/nRF5_SDK_14.2.0_17b948a/components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x20
	.uleb128 0xf
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF584
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF585
	.file 16 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x10
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 17 "../../../../lora/system/timer.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF591
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF592
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF619
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF626
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF627
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF628
	.file 18 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/time.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF629
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF632
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x3
	.uleb128 0x86
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF660
	.byte	0x4
	.byte	0x3
	.uleb128 0x87
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x3
	.uleb128 0xa95
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF749
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.0.2f587695d2dc3eeba80b4bc1f56a51aa,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0
	.4byte	.LASF372
	.byte	0x5
	.uleb128 0
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0
	.4byte	.LASF388
	.byte	0x5
	.uleb128 0
	.4byte	.LASF389
	.byte	0x5
	.uleb128 0
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0
	.4byte	.LASF391
	.byte	0x5
	.uleb128 0
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0
	.4byte	.LASF393
	.byte	0x5
	.uleb128 0
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0
	.4byte	.LASF395
	.byte	0x5
	.uleb128 0
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0
	.4byte	.LASF399
	.byte	0x6
	.uleb128 0
	.4byte	.LASF400
	.byte	0x6
	.uleb128 0
	.4byte	.LASF401
	.byte	0x6
	.uleb128 0
	.4byte	.LASF402
	.byte	0x6
	.uleb128 0
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0
	.4byte	.LASF404
	.byte	0x6
	.uleb128 0
	.4byte	.LASF405
	.byte	0x6
	.uleb128 0
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0
	.4byte	.LASF421
	.byte	0x6
	.uleb128 0
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0
	.4byte	.LASF425
	.byte	0x6
	.uleb128 0
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0
	.4byte	.LASF427
	.byte	0x6
	.uleb128 0
	.4byte	.LASF428
	.byte	0x6
	.uleb128 0
	.4byte	.LASF429
	.byte	0x6
	.uleb128 0
	.4byte	.LASF430
	.byte	0x6
	.uleb128 0
	.4byte	.LASF431
	.byte	0x6
	.uleb128 0
	.4byte	.LASF432
	.byte	0x6
	.uleb128 0
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0
	.4byte	.LASF434
	.byte	0x6
	.uleb128 0
	.4byte	.LASF435
	.byte	0x6
	.uleb128 0
	.4byte	.LASF436
	.byte	0x6
	.uleb128 0
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0
	.4byte	.LASF444
	.byte	0x6
	.uleb128 0
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0
	.4byte	.LASF466
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.39.fe42d6eb18d369206696c6985313e641,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF527
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.nordic_common.h.45.16eceeed31f8d5a54ec899dc2bdaca21,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF580
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.utilities.h.41.dd792736c5bcab64215dded6a6fa212f,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF583
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.39.3758cb47b714dfcbf7837a03b10a6ad6,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF590
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.39.ff21eb83ebfc80fb95245a821dd1e413,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF594
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF613
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.44.3483ea4b5d43bc7237f8a88f13989923,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF617
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.rtcboard.h.42.b337a4ba498456f95ff10ff1362ea4fa,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF623
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.LoRaMacTypes.h.50.f8aa2b56650e5f13fc09f127047e2b7c,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF625
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.time.h.39.5b805c23b4e4a1b38dd0319ef439ea92,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF631
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.systime.h.39.79bbe2f9e5b0ad96b7ccf313967b6e2d,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF659
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.LoRaMac.h.140.57e9e82b1e62bed8e8fee55a15ce5b7c,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF625
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.Region.h.69.56d1290d4a742c2f8b19d6cb1caa298b,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x1c7
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x1d7
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x1f7
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x217
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x237
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x23c
	.4byte	.LASF700
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.RegionEU868.h.38.02ccb63d681d2947acb4992863114ce8,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF748
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF233:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF891:
	.ascii	"Send\000"
.LASF903:
	.ascii	"GetWakeupTime\000"
.LASF716:
	.ascii	"EU868_DEFAULT_MAX_EIRP 16.0f\000"
.LASF958:
	.ascii	"PHY_MAX_RX_DR\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF1093:
	.ascii	"DlChannelReqParams_t\000"
.LASF618:
	.ascii	"__RTC_BOARD_H__ \000"
.LASF408:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF750:
	.ascii	"int8_t\000"
.LASF253:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF636:
	.ascii	"TM_SECONDS_IN_1HOUR ( ( uint32_t ) 3600U )\000"
.LASF1197:
	.ascii	"nbRepOut\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF562:
	.ascii	"BIT_16 0x00010000\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF849:
	.ascii	"size_t\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF868:
	.ascii	"RF_RX_RUNNING\000"
.LASF821:
	.ascii	"__locale_s\000"
.LASF218:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF687:
	.ascii	"TX_POWER_2 2\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF918:
	.ascii	"RX_SLOT_WIN_1\000"
.LASF812:
	.ascii	"__towupper\000"
.LASF816:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF685:
	.ascii	"TX_POWER_0 0\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF214:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF1105:
	.ascii	"AggrTimeOff\000"
.LASF240:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF1007:
	.ascii	"PHY_BEACON_NB_CHANNELS\000"
.LASF212:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF659:
	.ascii	"UNIX_GPS_EPOCH_OFFSET 315964800\000"
.LASF1208:
	.ascii	"txPower\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF1112:
	.ascii	"sContinuousWaveParams\000"
.LASF1195:
	.ascii	"drOut\000"
.LASF745:
	.ascii	"EU868_LC1 { 868100000, 0, { ( ( DR_5 << 4 ) | DR_0 "
	.ascii	") }, 1 }\000"
.LASF758:
	.ascii	"int32_t\000"
.LASF866:
	.ascii	"RadioModems_t\000"
.LASF1131:
	.ascii	"RegionCommonLinkAdrReqVerifyParams_t\000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF246:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF267:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF333:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF878:
	.ascii	"CadDone\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF237:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF1039:
	.ascii	"Joined\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF243:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF1029:
	.ascii	"BeaconFormat\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF1154:
	.ascii	"RegionEU868RxBeaconSetup\000"
.LASF414:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF603:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF394:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF1005:
	.ascii	"PHY_BEACON_CHANNEL_DR\000"
.LASF990:
	.ascii	"PHY_BEACON_INTERVAL\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF1120:
	.ascii	"NbRep\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF805:
	.ascii	"time_format\000"
.LASF588:
	.ascii	"true 1\000"
.LASF1115:
	.ascii	"sRxBeaconSetupParams\000"
.LASF509:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF596:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF832:
	.ascii	"__RAL_data_utf8_period\000"
.LASF481:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF1009:
	.ascii	"PhyAttribute_t\000"
.LASF515:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF453:
	.ascii	"__SES_VERSION 53201\000"
.LASF929:
	.ascii	"LORAMAC_STATUS_OK\000"
.LASF615:
	.ascii	"NULL 0\000"
.LASF965:
	.ascii	"PHY_DEF_TX_POWER\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF898:
	.ascii	"Read\000"
.LASF692:
	.ascii	"TX_POWER_7 7\000"
.LASF1057:
	.ascii	"ApplyCFListParams_t\000"
.LASF484:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF576:
	.ascii	"BIT_30 0x40000000\000"
.LASF801:
	.ascii	"month_names\000"
.LASF948:
	.ascii	"LORAMAC_STATUS_MAC_COMMAD_ERROR\000"
.LASF472:
	.ascii	"UINT16_MAX 65535\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF833:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF867:
	.ascii	"RF_IDLE\000"
.LASF1188:
	.ascii	"txParamSetupReq\000"
.LASF778:
	.ascii	"int_curr_symbol\000"
.LASF804:
	.ascii	"date_format\000"
.LASF1224:
	.ascii	"RegionEU868ApplyCFList\000"
.LASF554:
	.ascii	"BIT_8 0x0100\000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF640:
	.ascii	"TM_MONTH_JANUARY ( ( uint8_t ) 0U )\000"
.LASF205:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF465:
	.ascii	"NRF52_PAN_74 1\000"
.LASF482:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF864:
	.ascii	"MODEM_FSK\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF987:
	.ascii	"PHY_DEF_MAX_EIRP\000"
.LASF549:
	.ascii	"BIT_3 0x08\000"
.LASF1183:
	.ascii	"type\000"
.LASF789:
	.ascii	"n_cs_precedes\000"
.LASF1254:
	.ascii	"C:\\SES\\ISP4520-examples-master\\ISP4520-examples-"
	.ascii	"master\\src\\apps\\lorawan_class_A\\ISP4520\\ses\000"
.LASF634:
	.ascii	"TM_DAYS_IN_YEAR ( ( uint32_t ) 365U )\000"
.LASF1220:
	.ascii	"tSymbol\000"
.LASF469:
	.ascii	"UINT8_MAX 255\000"
.LASF810:
	.ascii	"__tolower\000"
.LASF209:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF625:
	.ascii	"LORAMAC_CRYPTO_MULTICAST_KEYS 127\000"
.LASF471:
	.ascii	"INT8_MIN (-128)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF626:
	.ascii	"__REGION_H__ \000"
.LASF605:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF968:
	.ascii	"PHY_MAX_PAYLOAD\000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF1025:
	.ascii	"uPhyParam\000"
.LASF1107:
	.ascii	"NextChanParams_t\000"
.LASF610:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF679:
	.ascii	"DR_10 10\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF1111:
	.ascii	"ChannelRemoveParams_t\000"
.LASF785:
	.ascii	"int_frac_digits\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF1172:
	.ascii	"aggregatedTimeOff\000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF647:
	.ascii	"TM_MONTH_AUGUST ( ( uint8_t ) 7U )\000"
.LASF575:
	.ascii	"BIT_29 0x20000000\000"
.LASF1253:
	.ascii	"C:\\SES\\ISP4520-examples-master\\ISP4520-examples-"
	.ascii	"master\\src\\lora\\mac\\region\\RegionEU868.c\000"
.LASF656:
	.ascii	"TM_WEEKDAY_THURSDAY ( ( uint8_t )4U )\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF1110:
	.ascii	"sChannelRemoveParams\000"
.LASF208:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF229:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF783:
	.ascii	"positive_sign\000"
.LASF239:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF455:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF1046:
	.ascii	"nvmCtxSize\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF1187:
	.ascii	"RegionEU868TxParamSetupReq\000"
.LASF1101:
	.ascii	"ElapsedTime\000"
.LASF660:
	.ascii	"__RADIO_H__ \000"
.LASF425:
	.ascii	"__VFP_FP__ 1\000"
.LASF1001:
	.ascii	"PHY_MAX_BEACON_LESS_PERIOD\000"
.LASF663:
	.ascii	"DOWN_LINK 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF950:
	.ascii	"LORAMAC_STATUS_CONFIRM_QUEUE_ERROR\000"
.LASF657:
	.ascii	"TM_WEEKDAY_FRIDAY ( ( uint8_t )5U )\000"
.LASF389:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF559:
	.ascii	"BIT_13 0x2000\000"
.LASF702:
	.ascii	"EU868_MAX_NB_CHANNELS 16\000"
.LASF1193:
	.ascii	"RegionEU868LinkAdrReq\000"
.LASF1031:
	.ascii	"sGetPhyParams\000"
.LASF1149:
	.ascii	"outDr\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF474:
	.ascii	"INT16_MAX 32767\000"
.LASF590:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF521:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF525:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF232:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF1064:
	.ascii	"DrOffset\000"
.LASF1201:
	.ascii	"bytesProcessed\000"
.LASF1246:
	.ascii	"maxBandTxPower\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF780:
	.ascii	"mon_decimal_point\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF748:
	.ascii	"EU868_JOIN_CHANNELS ( uint16_t )( LC( 1 ) | LC( 2 )"
	.ascii	" | LC( 3 ) )\000"
.LASF1167:
	.ascii	"freqInvalid\000"
.LASF773:
	.ascii	"long int\000"
.LASF925:
	.ascii	"LoRaMacRxSlot_t\000"
.LASF1134:
	.ascii	"RegionCommonCalcBackOffParams_t\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF226:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF599:
	.ascii	"__CODE \000"
.LASF1223:
	.ascii	"chanMaskSet\000"
.LASF1077:
	.ascii	"Version\000"
.LASF1026:
	.ascii	"fValue\000"
.LASF689:
	.ascii	"TX_POWER_4 4\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF844:
	.ascii	"__RAL_error_decoder_s\000"
.LASF847:
	.ascii	"__RAL_error_decoder_t\000"
.LASF1024:
	.ascii	"BeaconFormat_t\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF534:
	.ascii	"MIN(a,b) ((a) < (b) ? (a) : (b))\000"
.LASF581:
	.ascii	"POW2(n) ( 1 << n )\000"
.LASF211:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF823:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF940:
	.ascii	"LORAMAC_STATUS_DUTYCYCLE_RESTRICTED\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF600:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF478:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF843:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF856:
	.ascii	"LastJoinTxDoneTime\000"
.LASF715:
	.ascii	"EU868_DEFAULT_TX_POWER TX_POWER_0\000"
.LASF435:
	.ascii	"__ARM_NEON__\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF361:
	.ascii	"__TA_FBIT__ 63\000"
.LASF438:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF794:
	.ascii	"int_n_cs_precedes\000"
.LASF923:
	.ascii	"RX_SLOT_WIN_CLASS_B_MULTICAST_SLOT\000"
.LASF1116:
	.ascii	"SymbolTimeout\000"
.LASF895:
	.ascii	"SetTxContinuousWave\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF738:
	.ascii	"EU868_MAX_NB_BANDS 6\000"
.LASF223:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF1250:
	.ascii	"minDr\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF480:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF962:
	.ascii	"PHY_RX_DR\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF1023:
	.ascii	"Rfu2Size\000"
.LASF623:
	.ascii	"RTC_TEMP_DEV_TURNOVER ( 5.0 )\000"
.LASF915:
	.ascii	"DrRange\000"
.LASF1038:
	.ascii	"Channel\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF1059:
	.ascii	"ChannelsMaskIn\000"
.LASF222:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF494:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF508:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF1117:
	.ascii	"RxTime\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF971:
	.ascii	"PHY_MAX_RX_WINDOW\000"
.LASF245:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF815:
	.ascii	"__mbtowc\000"
.LASF505:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF698:
	.ascii	"TX_POWER_13 13\000"
.LASF1102:
	.ascii	"TxTimeOnAir\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF249:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF1206:
	.ascii	"RegionEU868TxConfig\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF1056:
	.ascii	"Size\000"
.LASF1061:
	.ascii	"ChanMaskSetParams_t\000"
.LASF501:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF752:
	.ascii	"signed char\000"
.LASF994:
	.ascii	"PHY_BEACON_WINDOW_SLOTS\000"
.LASF751:
	.ascii	"uint8_t\000"
.LASF434:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF985:
	.ascii	"PHY_DEF_UPLINK_DWELL_TIME\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF726:
	.ascii	"EU868_MAX_FCNT_GAP 16384\000"
.LASF714:
	.ascii	"EU868_MAX_TX_POWER TX_POWER_0\000"
.LASF814:
	.ascii	"__wctomb\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF955:
	.ascii	"PHY_FREQUENCY\000"
.LASF566:
	.ascii	"BIT_20 0x00100000\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF1226:
	.ascii	"newChannel\000"
.LASF1055:
	.ascii	"Payload\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF672:
	.ascii	"DR_3 3\000"
.LASF460:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF875:
	.ascii	"RxTimeout\000"
.LASF502:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF604:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF1002:
	.ascii	"PHY_BEACON_DELAY_BEACON_TIMING_ANS\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF476:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF876:
	.ascii	"RxError\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF753:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF1091:
	.ascii	"TxParamSetupReqParams_t\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF737:
	.ascii	"EU868_PING_SLOT_CHANNEL_DR DR_3\000"
.LASF1028:
	.ascii	"Channels\000"
.LASF1181:
	.ascii	"RegionEU868AlternateDr\000"
.LASF790:
	.ascii	"n_sep_by_space\000"
.LASF1089:
	.ascii	"NewChannelReqParams_t\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF739:
	.ascii	"EU868_BAND0 { 100 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF1016:
	.ascii	"CHANNELS_MASK\000"
.LASF744:
	.ascii	"EU868_BAND5 { 1000, EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF1123:
	.ascii	"RegionCommonLinkAdrParams_t\000"
.LASF461:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF522:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF1045:
	.ascii	"sGetNvmCtxParams\000"
.LASF1129:
	.ascii	"MinTxPower\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF563:
	.ascii	"BIT_17 0x00020000\000"
.LASF421:
	.ascii	"__THUMBEL__ 1\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF520:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF834:
	.ascii	"__RAL_data_utf8_space\000"
.LASF1200:
	.ascii	"nextIndex\000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF545:
	.ascii	"IS_SET(W,B) (((W) >> (B)) & 1)\000"
.LASF528:
	.ascii	"NORDIC_COMMON_H__ \000"
.LASF1222:
	.ascii	"RegionEU868ChanMaskSet\000"
.LASF473:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF937:
	.ascii	"LORAMAC_STATUS_LENGTH_ERROR\000"
.LASF1179:
	.ascii	"calcBackOff\000"
.LASF852:
	.ascii	"_Bool\000"
.LASF943:
	.ascii	"LORAMAC_STATUS_BUSY_BEACON_RESERVED_TIME\000"
.LASF1066:
	.ascii	"WindowOffset\000"
.LASF1128:
	.ascii	"MaxDatarate\000"
.LASF622:
	.ascii	"RTC_TEMP_TURNOVER ( 25.0 )\000"
.LASF1060:
	.ascii	"ChannelsMaskType\000"
.LASF746:
	.ascii	"EU868_LC2 { 868300000, 0, { ( ( DR_5 << 4 ) | DR_0 "
	.ascii	") }, 1 }\000"
.LASF567:
	.ascii	"BIT_21 0x00200000\000"
.LASF718:
	.ascii	"EU868_ADR_ACK_LIMIT 64\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF1082:
	.ascii	"CurrentNbRep\000"
.LASF391:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF1088:
	.ascii	"ChannelId\000"
.LASF1205:
	.ascii	"linkAdrVerifyParams\000"
.LASF774:
	.ascii	"char\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF969:
	.ascii	"PHY_MAX_PAYLOAD_REPEATER\000"
.LASF1141:
	.ascii	"DataratesEU868\000"
.LASF614:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF1048:
	.ascii	"sDatarateParams\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF703:
	.ascii	"EU868_NUMB_DEFAULT_CHANNELS 3\000"
.LASF933:
	.ascii	"LORAMAC_STATUS_FREQUENCY_INVALID\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF487:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF708:
	.ascii	"EU868_RX_MAX_DATARATE DR_7\000"
.LASF558:
	.ascii	"BIT_12 0x1000\000"
.LASF1041:
	.ascii	"sInitDefaultsParams\000"
.LASF583:
	.ascii	"CRITICAL_SECTION_END() BoardCriticalSectionEnd( &ma"
	.ascii	"sk )\000"
.LASF730:
	.ascii	"EU868_RX_WND_2_DR DR_0\000"
.LASF1175:
	.ascii	"enabledChannels\000"
.LASF230:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF591:
	.ascii	"__TIMER_H__ \000"
.LASF235:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF972:
	.ascii	"PHY_RECEIVE_DELAY1\000"
.LASF973:
	.ascii	"PHY_RECEIVE_DELAY2\000"
.LASF792:
	.ascii	"n_sign_posn\000"
.LASF609:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF436:
	.ascii	"__ARM_NEON\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF838:
	.ascii	"timeval\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF517:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF1113:
	.ascii	"Timeout\000"
.LASF654:
	.ascii	"TM_WEEKDAY_TUESDAY ( ( uint8_t )2U )\000"
.LASF861:
	.ascii	"Seconds\000"
.LASF831:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF470:
	.ascii	"INT8_MAX 127\000"
.LASF705:
	.ascii	"EU868_TX_MIN_DATARATE DR_0\000"
.LASF648:
	.ascii	"TM_MONTH_SEPTEMBER ( ( uint8_t ) 8U )\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF247:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF1221:
	.ascii	"double\000"
.LASF901:
	.ascii	"SetMaxPayloadLength\000"
.LASF598:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF781:
	.ascii	"mon_thousands_sep\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF887:
	.ascii	"SetRxConfig\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF1242:
	.ascii	"CountNbOfEnabledChannels\000"
.LASF582:
	.ascii	"CRITICAL_SECTION_BEGIN() uint32_t mask; BoardCritic"
	.ascii	"alSectionBegin( &mask )\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF880:
	.ascii	"Radio_s\000"
.LASF1249:
	.ascii	"drIndex\000"
.LASF553:
	.ascii	"BIT_7 0x80\000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF813:
	.ascii	"__towlower\000"
.LASF784:
	.ascii	"negative_sign\000"
.LASF649:
	.ascii	"TM_MONTH_OCTOBER ( ( uint8_t ) 9U )\000"
.LASF1196:
	.ascii	"txPowOut\000"
.LASF459:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF422:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF491:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF1033:
	.ascii	"Datarate\000"
.LASF927:
	.ascii	"eLoRaMacRxSlot\000"
.LASF793:
	.ascii	"int_p_cs_precedes\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF1177:
	.ascii	"elapsed\000"
.LASF845:
	.ascii	"decode\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF911:
	.ascii	"DrRange_t\000"
.LASF1010:
	.ascii	"eInitType\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF300:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF500:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF680:
	.ascii	"DR_11 11\000"
.LASF1022:
	.ascii	"Rfu1Size\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF1083:
	.ascii	"LinkAdrReqParams_t\000"
.LASF1097:
	.ascii	"AlternateDrType_t\000"
.LASF722:
	.ascii	"EU868_RECEIVE_DELAY1 1000\000"
.LASF454:
	.ascii	"__GNU_LINKER 1\000"
.LASF682:
	.ascii	"DR_13 13\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF735:
	.ascii	"EU868_BEACON_CHANNEL_DR DR_3\000"
.LASF611:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF573:
	.ascii	"BIT_27 0x08000000\000"
.LASF238:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF961:
	.ascii	"PHY_DEF_TX_DR\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF225:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF858:
	.ascii	"TimeOff\000"
.LASF442:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF571:
	.ascii	"BIT_25 0x02000000\000"
.LASF874:
	.ascii	"RxDone\000"
.LASF1142:
	.ascii	"BandwidthsEU868\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF1017:
	.ascii	"CHANNELS_DEFAULT_MASK\000"
.LASF763:
	.ascii	"Revision\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF669:
	.ascii	"DR_0 0\000"
.LASF1155:
	.ascii	"RegionEU868SetContinuousWave\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF464:
	.ascii	"NRF52832_XXAA 1\000"
.LASF684:
	.ascii	"DR_15 15\000"
.LASF1247:
	.ascii	"txPowerResult\000"
.LASF1003:
	.ascii	"PHY_BEACON_CHANNEL_FREQ\000"
.LASF597:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF825:
	.ascii	"__RAL_codeset_ascii\000"
.LASF939:
	.ascii	"LORAMAC_STATUS_SKIPPED_APP_DATA\000"
.LASF627:
	.ascii	"__LORAMAC_H__ \000"
.LASF1216:
	.ascii	"RegionEU868ComputeRxWindowParameters\000"
.LASF1069:
	.ascii	"RxSlot\000"
.LASF840:
	.ascii	"tv_usec\000"
.LASF674:
	.ascii	"DR_5 5\000"
.LASF1251:
	.ascii	"nextLowerDr\000"
.LASF564:
	.ascii	"BIT_18 0x00040000\000"
.LASF820:
	.ascii	"__RAL_locale_t\000"
.LASF930:
	.ascii	"LORAMAC_STATUS_BUSY\000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF1219:
	.ascii	"rxConfigParams\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF490:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF967:
	.ascii	"PHY_DEF_ADR_ACK_DELAY\000"
.LASF511:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF862:
	.ascii	"SubSeconds\000"
.LASF533:
	.ascii	"LSB_16(a) ((a) & 0x00FF)\000"
.LASF1192:
	.ascii	"rxParamSetupReq\000"
.LASF1156:
	.ascii	"continuousWave\000"
.LASF870:
	.ascii	"RF_CAD\000"
.LASF485:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF542:
	.ascii	"ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))\000"
.LASF1013:
	.ascii	"INIT_TYPE_RESTORE_CTX\000"
.LASF1011:
	.ascii	"INIT_TYPE_INIT\000"
.LASF802:
	.ascii	"abbrev_month_names\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF882:
	.ascii	"GetStatus\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF769:
	.ascii	"Version_s\000"
.LASF768:
	.ascii	"Version_t\000"
.LASF909:
	.ascii	"Version_u\000"
.LASF736:
	.ascii	"EU868_BEACON_CHANNEL_BW 0\000"
.LASF819:
	.ascii	"codeset\000"
.LASF1158:
	.ascii	"phyTxPower\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF711:
	.ascii	"EU868_MAX_RX1_DR_OFFSET 5\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF637:
	.ascii	"TM_SECONDS_IN_1MINUTE ( ( uint32_t ) 60U )\000"
.LASF248:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF1137:
	.ascii	"BeaconDatarate\000"
.LASF906:
	.ascii	"SetRxDutyCycle\000"
.LASF677:
	.ascii	"DR_8 8\000"
.LASF946:
	.ascii	"LORAMAC_STATUS_CRYPTO_ERROR\000"
.LASF899:
	.ascii	"WriteBuffer\000"
.LASF440:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF537:
	.ascii	"CONCAT_2_(p1,p2) p1 ##p2\000"
.LASF412:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF1103:
	.ascii	"CalcBackOffParams_t\000"
.LASF1058:
	.ascii	"sChanMaskSetParams\000"
.LASF1227:
	.ascii	"chanIdx\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF1076:
	.ascii	"sLinkAdrReqParams\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF523:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF953:
	.ascii	"LoRaMacStatus_t\000"
.LASF772:
	.ascii	"__wchar\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF1214:
	.ascii	"rxConfig\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF621:
	.ascii	"RTC_TEMP_DEV_COEFFICIENT ( 0.006 )\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF561:
	.ascii	"BIT_15 0x8000\000"
.LASF556:
	.ascii	"BIT_10 0x0400\000"
.LASF848:
	.ascii	"__RAL_error_decoder_head\000"
.LASF428:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF883:
	.ascii	"SetModem\000"
.LASF570:
	.ascii	"BIT_24 0x01000000\000"
.LASF807:
	.ascii	"__RAL_locale_data_t\000"
.LASF877:
	.ascii	"FhssChangeChannel\000"
.LASF475:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF1211:
	.ascii	"phyDr\000"
.LASF1186:
	.ascii	"status\000"
.LASF1191:
	.ascii	"RegionEU868RxParamSetupReq\000"
.LASF236:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF830:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF580:
	.ascii	"UNUSED_RETURN_VALUE(X) UNUSED_VARIABLE(X)\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF707:
	.ascii	"EU868_RX_MIN_DATARATE DR_0\000"
.LASF1170:
	.ascii	"channel\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF974:
	.ascii	"PHY_JOIN_ACCEPT_DELAY1\000"
.LASF975:
	.ascii	"PHY_JOIN_ACCEPT_DELAY2\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF998:
	.ascii	"PHY_PING_SLOT_SYMBOL_TO_EXPANSION_MAX\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF529:
	.ascii	"NRF_MODULE_ENABLED(module) ((defined(module ## _ENA"
	.ascii	"BLED) && (module ## _ENABLED)) ? 1 : 0)\000"
.LASF645:
	.ascii	"TM_MONTH_JUNE ( ( uint8_t ) 5U )\000"
.LASF664:
	.ascii	"LORAMAC_MFR_LEN 4\000"
.LASF988:
	.ascii	"PHY_DEF_ANTENNA_GAIN\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF252:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF527:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF403:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF1255:
	.ascii	"GetNextLowerTxDr\000"
.LASF260:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF732:
	.ascii	"EU868_BEACON_SIZE 17\000"
.LASF803:
	.ascii	"am_pm_indicator\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF673:
	.ascii	"DR_4 4\000"
.LASF788:
	.ascii	"p_sep_by_space\000"
.LASF231:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF931:
	.ascii	"LORAMAC_STATUS_SERVICE_UNKNOWN\000"
.LASF1036:
	.ascii	"GetPhyParams_t\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF725:
	.ascii	"EU868_JOIN_ACCEPT_DELAY2 6000\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF913:
	.ascii	"Frequency\000"
.LASF1118:
	.ascii	"RxBeaconSetup_t\000"
.LASF709:
	.ascii	"EU868_DEFAULT_DATARATE DR_0\000"
.LASF1239:
	.ascii	"channelsMask\000"
.LASF466:
	.ascii	"SWI_DISABLE0 1\000"
.LASF1213:
	.ascii	"RegionEU868RxConfig\000"
.LASF317:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF1094:
	.ascii	"eAlternateDrType\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF541:
	.ascii	"STRINGIFY(val) STRINGIFY_(val)\000"
.LASF631:
	.ascii	"CLOCK_MONOTONIC 1\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF1160:
	.ascii	"RegionEU868ApplyDrOffset\000"
.LASF749:
	.ascii	"CHANNELS_MASK_SIZE 1\000"
.LASF796:
	.ascii	"int_n_sep_by_space\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF841:
	.ascii	"__user_set_time_of_day\000"
.LASF1217:
	.ascii	"minRxSymbols\000"
.LASF1040:
	.ascii	"SetBandTxDoneParams_t\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF1125:
	.ascii	"Status\000"
.LASF1130:
	.ascii	"MaxTxPower\000"
.LASF896:
	.ascii	"Rssi\000"
.LASF678:
	.ascii	"DR_9 9\000"
.LASF724:
	.ascii	"EU868_JOIN_ACCEPT_DELAY1 5000\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF322:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF1065:
	.ascii	"WindowTimeout\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF1166:
	.ascii	"drInvalid\000"
.LASF417:
	.ascii	"__ARM_ARCH 7\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF761:
	.ascii	"long long int\000"
.LASF1215:
	.ascii	"maxPayload\000"
.LASF770:
	.ascii	"__mbstate_s\000"
.LASF405:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF1073:
	.ascii	"AntennaGain\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF1084:
	.ascii	"sRxParamSetupReqParams\000"
.LASF1147:
	.ascii	"RegionEU868NvmCtx_t\000"
.LASF1092:
	.ascii	"sDlChannelReqParams\000"
.LASF489:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF426:
	.ascii	"__ARM_FP\000"
.LASF1063:
	.ascii	"Bandwidth\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF639:
	.ascii	"TM_HOURS_IN_1DAY ( ( uint32_t ) 24U )\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF963:
	.ascii	"PHY_MAX_TX_POWER\000"
.LASF584:
	.ascii	"__REGIONCOMMON_H__ \000"
.LASF526:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF503:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF210:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF293:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF907:
	.ascii	"Radio\000"
.LASF935:
	.ascii	"LORAMAC_STATUS_FREQ_AND_DR_INVALID\000"
.LASF1233:
	.ascii	"RegionEU868InitDefaults\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF1235:
	.ascii	"RegionEU868SetBandTxDone\000"
.LASF916:
	.ascii	"Band\000"
.LASF1099:
	.ascii	"LastTxIsJoinRequest\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF964:
	.ascii	"PHY_TX_POWER\000"
.LASF392:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF900:
	.ascii	"ReadBuffer\000"
.LASF822:
	.ascii	"__category\000"
.LASF1236:
	.ascii	"txDone\000"
.LASF430:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF938:
	.ascii	"LORAMAC_STATUS_REGION_NOT_SUPPORTED\000"
.LASF995:
	.ascii	"PHY_PING_SLOT_WINDOW\000"
.LASF539:
	.ascii	"CONCAT_3_(p1,p2,p3) p1 ##p2 ##p3\000"
.LASF551:
	.ascii	"BIT_5 0x20\000"
.LASF932:
	.ascii	"LORAMAC_STATUS_PARAMETER_INVALID\000"
.LASF1121:
	.ascii	"ChMaskCtrl\000"
.LASF1138:
	.ascii	"BeaconChannelBW\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF681:
	.ascii	"DR_12 12\000"
.LASF733:
	.ascii	"EU868_RFU1_SIZE 2\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF924:
	.ascii	"RX_SLOT_NONE\000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF630:
	.ascii	"_SYS_TIME_H \000"
.LASF1159:
	.ascii	"frequency\000"
.LASF806:
	.ascii	"date_time_format\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF572:
	.ascii	"BIT_26 0x04000000\000"
.LASF926:
	.ascii	"float\000"
.LASF1180:
	.ascii	"calcBackOffParams\000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF1135:
	.ascii	"sRegionCommonRxBeaconSetupParams\000"
.LASF764:
	.ascii	"Minor\000"
.LASF686:
	.ascii	"TX_POWER_1 1\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF1190:
	.ascii	"newChannelReq\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF1198:
	.ascii	"nbBytesParsed\000"
.LASF574:
	.ascii	"BIT_28 0x10000000\000"
.LASF980:
	.ascii	"PHY_DEF_RX2_DR\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF695:
	.ascii	"TX_POWER_10 10\000"
.LASF1114:
	.ascii	"ContinuousWaveParams_t\000"
.LASF477:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF1034:
	.ascii	"UplinkDwellTime\000"
.LASF227:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF670:
	.ascii	"DR_1 1\000"
.LASF760:
	.ascii	"unsigned int\000"
.LASF1210:
	.ascii	"modem\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF496:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF1080:
	.ascii	"CurrentDatarate\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF857:
	.ascii	"LastTxDoneTime\000"
.LASF706:
	.ascii	"EU868_TX_MAX_DATARATE DR_7\000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF532:
	.ascii	"MSB_16(a) (((a) & 0xFF00) >> 8)\000"
.LASF439:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF699:
	.ascii	"TX_POWER_14 14\000"
.LASF997:
	.ascii	"PHY_BEACON_SYMBOL_TO_EXPANSION_MAX\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF217:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF1052:
	.ascii	"DatarateParams\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF538:
	.ascii	"CONCAT_3(p1,p2,p3) CONCAT_3_(p1, p2, p3)\000"
.LASF791:
	.ascii	"p_sign_posn\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF905:
	.ascii	"RxBoosted\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF993:
	.ascii	"PHY_BEACON_WINDOW\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF497:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF879:
	.ascii	"RadioEvents_t\000"
.LASF406:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF717:
	.ascii	"EU868_DEFAULT_ANTENNA_GAIN 2.15f\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF710:
	.ascii	"EU868_MIN_RX1_DR_OFFSET 0\000"
.LASF601:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF242:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF1157:
	.ascii	"txPowerLimited\000"
.LASF872:
	.ascii	"TxDone\000"
.LASF740:
	.ascii	"EU868_BAND1 { 100 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF1212:
	.ascii	"bandwidth\000"
.LASF1182:
	.ascii	"currentDr\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF976:
	.ascii	"PHY_MAX_FCNT_GAP\000"
.LASF842:
	.ascii	"__user_get_time_of_day\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF451:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF443:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF999:
	.ascii	"PHY_BEACON_SYMBOL_TO_EXPANSION_FACTOR\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF1015:
	.ascii	"eChannelsMask\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF728:
	.ascii	"EU868_ACK_TIMEOUT_RND 1000\000"
.LASF495:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF446:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF667:
	.ascii	"LORAMAC_MAX_MC_CTX 4\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF589:
	.ascii	"false 0\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF1127:
	.ascii	"MinDatarate\000"
.LASF690:
	.ascii	"TX_POWER_5 5\000"
.LASF1043:
	.ascii	"Type\000"
.LASF826:
	.ascii	"__RAL_codeset_utf8\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF458:
	.ascii	"REGION_EU868 1\000"
.LASF824:
	.ascii	"__RAL_c_locale\000"
.LASF957:
	.ascii	"PHY_MIN_TX_DR\000"
.LASF881:
	.ascii	"Init\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF5:
	.ascii	"__GNUC__ 9\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF949:
	.ascii	"LORAMAC_STATUS_CLASS_B_ERROR\000"
.LASF1144:
	.ascii	"MaxPayloadOfDatarateRepeaterEU868\000"
.LASF1047:
	.ascii	"GetNvmCtxParams_t\000"
.LASF904:
	.ascii	"IrqProcess\000"
.LASF1162:
	.ascii	"channelRemove\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF483:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF775:
	.ascii	"decimal_point\000"
.LASF966:
	.ascii	"PHY_DEF_ADR_ACK_LIMIT\000"
.LASF587:
	.ascii	"bool _Bool\000"
.LASF853:
	.ascii	"sBand\000"
.LASF415:
	.ascii	"__arm__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF1032:
	.ascii	"Attribute\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF1030:
	.ascii	"PhyParam_t\000"
.LASF429:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF1185:
	.ascii	"dlChannelReq\000"
.LASF602:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF234:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF1087:
	.ascii	"NewChannel\000"
.LASF668:
	.ascii	"LC(channelIndex) ( uint16_t )( 1 << ( channelIndex "
	.ascii	"- 1 ) )\000"
.LASF723:
	.ascii	"EU868_RECEIVE_DELAY2 2000\000"
.LASF535:
	.ascii	"MAX(a,b) ((a) < (b) ? (b) : (a))\000"
.LASF984:
	.ascii	"PHY_CHANNELS\000"
.LASF989:
	.ascii	"PHY_NEXT_LOWER_TX_DR\000"
.LASF400:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF992:
	.ascii	"PHY_BEACON_GUARD\000"
.LASF1053:
	.ascii	"VerifyParams_t\000"
.LASF423:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF850:
	.ascii	"long double\000"
.LASF651:
	.ascii	"TM_MONTH_DECEMBER ( ( uint8_t )11U )\000"
.LASF504:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF713:
	.ascii	"EU868_MIN_TX_POWER TX_POWER_7\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF1178:
	.ascii	"RegionEU868CalcBackOff\000"
.LASF1104:
	.ascii	"sNextChanParams\000"
.LASF1225:
	.ascii	"applyCFList\000"
.LASF404:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF1081:
	.ascii	"CurrentTxPower\000"
.LASF869:
	.ascii	"RF_TX_RUNNING\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF548:
	.ascii	"BIT_2 0x04\000"
.LASF1054:
	.ascii	"sApplyCFListParams\000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF613:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF493:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF543:
	.ascii	"SET_BIT(W,B) ((W) |= (uint32_t)(1U << (B)))\000"
.LASF675:
	.ascii	"DR_6 6\000"
.LASF661:
	.ascii	"MAX_ACK_RETRIES 8\000"
.LASF734:
	.ascii	"EU868_RFU2_SIZE 0\000"
.LASF873:
	.ascii	"TxTimeout\000"
.LASF498:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF1012:
	.ascii	"INIT_TYPE_RESTORE_DEFAULT_CHANNELS\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF1148:
	.ascii	"rxBeaconSetup\000"
.LASF617:
	.ascii	"offsetof(s,m) __builtin_offsetof(s, m)\000"
.LASF1231:
	.ascii	"RegionEU868GetNvmCtx\000"
.LASF936:
	.ascii	"LORAMAC_STATUS_NO_NETWORK_JOINED\000"
.LASF390:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF835:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF518:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF978:
	.ascii	"PHY_DEF_DR1_OFFSET\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF977:
	.ascii	"PHY_ACK_TIMEOUT\000"
.LASF398:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF902:
	.ascii	"SetPublicNetwork\000"
.LASF865:
	.ascii	"MODEM_LORA\000"
.LASF854:
	.ascii	"DCycle\000"
.LASF1248:
	.ascii	"GetBandwidth\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF641:
	.ascii	"TM_MONTH_FEBRUARY ( ( uint8_t ) 1U )\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF592:
	.ascii	"__stddef_H \000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF808:
	.ascii	"__isctype\000"
.LASF241:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF762:
	.ascii	"long long unsigned int\000"
.LASF1232:
	.ascii	"params\000"
.LASF959:
	.ascii	"PHY_MAX_TX_DR\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF1096:
	.ascii	"ALTERNATE_DR_RESTORE\000"
.LASF897:
	.ascii	"Write\000"
.LASF507:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF795:
	.ascii	"int_p_sep_by_space\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF1021:
	.ascii	"BeaconSize\000"
.LASF756:
	.ascii	"uint16_t\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF765:
	.ascii	"Major\000"
.LASF606:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF912:
	.ascii	"sChannelParams\000"
.LASF1174:
	.ascii	"delayTx\000"
.LASF863:
	.ascii	"SysTime_t\000"
.LASF378:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF1169:
	.ascii	"nextChanParams\000"
.LASF635:
	.ascii	"TM_SECONDS_IN_1DAY ( ( uint32_t )86400U )\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF318:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF696:
	.ascii	"TX_POWER_11 11\000"
.LASF557:
	.ascii	"BIT_11 0x0800\000"
.LASF221:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF700:
	.ascii	"TX_POWER_15 15\000"
.LASF652:
	.ascii	"TM_WEEKDAY_SUNDAY ( ( uint8_t )0U )\000"
.LASF1062:
	.ascii	"sRxConfigParams\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF1074:
	.ascii	"PktLen\000"
.LASF547:
	.ascii	"BIT_1 0x02\000"
.LASF629:
	.ascii	"__time_H \000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF666:
	.ascii	"LORA_MAC_FRMPAYLOAD_OVERHEAD 13\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF1240:
	.ascii	"channels\000"
.LASF646:
	.ascii	"TM_MONTH_JULY ( ( uint8_t ) 6U )\000"
.LASF486:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF579:
	.ascii	"UNUSED_PARAMETER(X) UNUSED_VARIABLE(X)\000"
.LASF1241:
	.ascii	"delayTransmission\000"
.LASF731:
	.ascii	"EU868_BEACON_CHANNEL_FREQ 869525000\000"
.LASF1252:
	.ascii	"GNU C99 9.3.1 20200408 (release) -fmessage-length=0"
	.ascii	" -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard -"
	.ascii	"mfpu=fpv4-sp-d16 -mthumb -mtp=soft -munaligned-acce"
	.ascii	"ss -std=gnu99 -g3 -gpubnames -fomit-frame-pointer -"
	.ascii	"fno-dwarf2-cfi-asm -fno-builtin -ffunction-sections"
	.ascii	" -fdata-sections -fshort-enums -fno-common\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF568:
	.ascii	"BIT_22 0x00400000\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF1085:
	.ascii	"RxParamSetupReqParams_t\000"
.LASF910:
	.ascii	"uDrRange\000"
.LASF462:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF1014:
	.ascii	"InitType_t\000"
.LASF555:
	.ascii	"BIT_9 0x0200\000"
.LASF653:
	.ascii	"TM_WEEKDAY_MONDAY ( ( uint8_t )1U )\000"
.LASF467:
	.ascii	"__UTILITIES_H__ \000"
.LASF766:
	.ascii	"Fields\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF616:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF1151:
	.ascii	"downlinkDwellTime\000"
.LASF456:
	.ascii	"DEBUG_NRF 1\000"
.LASF704:
	.ascii	"EU868_NUMB_CHANNELS_CF_LIST 5\000"
.LASF437:
	.ascii	"__ARM_NEON_FP\000"
.LASF593:
	.ascii	"__crossworks_H \000"
.LASF655:
	.ascii	"TM_WEEKDAY_WEDNESDAY ( ( uint8_t )3U )\000"
.LASF578:
	.ascii	"UNUSED_VARIABLE(X) ((void)(X))\000"
.LASF1067:
	.ascii	"RepeaterSupport\000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF586:
	.ascii	"__stdbool_h \000"
.LASF441:
	.ascii	"__ARM_EABI__ 1\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF1184:
	.ascii	"RegionEU868DlChannelReq\000"
.LASF1068:
	.ascii	"RxContinuous\000"
.LASF697:
	.ascii	"TX_POWER_12 12\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF671:
	.ascii	"DR_2 2\000"
.LASF665:
	.ascii	"LORA_MAC_MLME_CONFIRM_QUEUE_LEN 5\000"
.LASF1245:
	.ascii	"LimitTxPower\000"
.LASF954:
	.ascii	"ePhyAttribute\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF727:
	.ascii	"EU868_ACKTIMEOUT 2000\000"
.LASF1171:
	.ascii	"time\000"
.LASF612:
	.ascii	"__RAL_WCHAR_T __WCHAR_TYPE__\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF928:
	.ascii	"eLoRaMacStatus\000"
.LASF851:
	.ascii	"TimerTime_t\000"
.LASF1207:
	.ascii	"txConfig\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF676:
	.ascii	"DR_7 7\000"
.LASF800:
	.ascii	"abbrev_day_names\000"
.LASF1165:
	.ascii	"band\000"
.LASF934:
	.ascii	"LORAMAC_STATUS_DATARATE_INVALID\000"
.LASF409:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF650:
	.ascii	"TM_MONTH_NOVEMBER ( ( uint8_t )10U )\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF375:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF1075:
	.ascii	"TxConfigParams_t\000"
.LASF979:
	.ascii	"PHY_DEF_RX2_FREQUENCY\000"
.LASF1109:
	.ascii	"ChannelAddParams_t\000"
.LASF827:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF228:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF776:
	.ascii	"thousands_sep\000"
.LASF530:
	.ascii	"MSB_32(a) (((a) & 0xFF000000) >> 24)\000"
.LASF1209:
	.ascii	"txTimeOnAir\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF890:
	.ascii	"TimeOnAir\000"
.LASF1050:
	.ascii	"TxPower\000"
.LASF219:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF1126:
	.ascii	"NbChannels\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF399:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF688:
	.ascii	"TX_POWER_3 3\000"
.LASF642:
	.ascii	"TM_MONTH_MARCH ( ( uint8_t ) 2U )\000"
.LASF1004:
	.ascii	"PHY_BEACON_FORMAT\000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF809:
	.ascii	"__toupper\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF662:
	.ascii	"UP_LINK 0\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF254:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF1152:
	.ascii	"drOffset\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF1229:
	.ascii	"verify\000"
.LASF742:
	.ascii	"EU868_BAND3 { 10 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF817:
	.ascii	"name\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF251:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF638:
	.ascii	"TM_MINUTES_IN_1HOUR ( ( uint32_t ) 60U )\000"
.LASF1132:
	.ascii	"sRegionCommonCalcBackOffParams\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF1168:
	.ascii	"RegionEU868NextChannel\000"
.LASF1202:
	.ascii	"chMask\000"
.LASF786:
	.ascii	"frac_digits\000"
.LASF266:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF779:
	.ascii	"currency_symbol\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF468:
	.ascii	"__stdint_H \000"
.LASF499:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF633:
	.ascii	"TM_DAYS_IN_LEAP_YEAR ( ( uint32_t ) 366U )\000"
.LASF1146:
	.ascii	"ChannelsDefaultMask\000"
.LASF1000:
	.ascii	"PHY_PING_SLOT_SYMBOL_TO_EXPANSION_FACTOR\000"
.LASF755:
	.ascii	"short int\000"
.LASF1243:
	.ascii	"VerifyRfFreq\000"
.LASF884:
	.ascii	"SetChannel\000"
.LASF431:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF919:
	.ascii	"RX_SLOT_WIN_2\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF374:
	.ascii	"__NO_INLINE__ 1\000"
.LASF1008:
	.ascii	"PHY_PING_SLOT_CHANNEL_DR\000"
.LASF643:
	.ascii	"TM_MONTH_APRIL ( ( uint8_t ) 3U )\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF771:
	.ascii	"__state\000"
.LASF445:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF693:
	.ascii	"TX_POWER_8 8\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF721:
	.ascii	"EU868_MAX_RX_WINDOW 3000\000"
.LASF754:
	.ascii	"int16_t\000"
.LASF206:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF917:
	.ascii	"ChannelParams_t\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF1095:
	.ascii	"ALTERNATE_DR\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF1044:
	.ascii	"InitDefaultsParams_t\000"
.LASF908:
	.ascii	"sFields\000"
.LASF213:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF1176:
	.ascii	"nextTxDelay\000"
.LASF244:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF782:
	.ascii	"mon_grouping\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF620:
	.ascii	"RTC_TEMP_COEFFICIENT ( -0.034 )\000"
.LASF397:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF510:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF1124:
	.ascii	"sRegionCommonLinkAdrReqVerifyParams\000"
.LASF991:
	.ascii	"PHY_BEACON_RESERVED\000"
.LASF524:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF560:
	.ascii	"BIT_14 0x4000\000"
.LASF1133:
	.ascii	"Bands\000"
.LASF720:
	.ascii	"EU868_DUTY_CYCLE_ENABLED 1\000"
.LASF941:
	.ascii	"LORAMAC_STATUS_NO_CHANNEL_FOUND\000"
.LASF922:
	.ascii	"RX_SLOT_WIN_CLASS_B_PING_SLOT\000"
.LASF410:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF683:
	.ascii	"DR_14 14\000"
.LASF894:
	.ascii	"StartCad\000"
.LASF536:
	.ascii	"CONCAT_2(p1,p2) CONCAT_2_(p1, p2)\000"
.LASF1071:
	.ascii	"sTxConfigParams\000"
.LASF799:
	.ascii	"day_names\000"
.LASF741:
	.ascii	"EU868_BAND2 { 1000, EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF719:
	.ascii	"EU868_ADR_ACK_DELAY 32\000"
.LASF565:
	.ascii	"BIT_19 0x00080000\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF747:
	.ascii	"EU868_LC3 { 868500000, 0, { ( ( DR_5 << 4 ) | DR_0 "
	.ascii	") }, 1 }\000"
.LASF836:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF1237:
	.ascii	"RegionEU868GetPhyParam\000"
.LASF1218:
	.ascii	"rxError\000"
.LASF1199:
	.ascii	"linkAdrParams\000"
.LASF540:
	.ascii	"STRINGIFY_(val) #val\000"
.LASF1035:
	.ascii	"DownlinkDwellTime\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF1108:
	.ascii	"sChannelAddParams\000"
.LASF797:
	.ascii	"int_p_sign_posn\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF1106:
	.ascii	"LastAggrTx\000"
.LASF1079:
	.ascii	"AdrEnabled\000"
.LASF393:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF701:
	.ascii	"__REGION_EU868_H__ \000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF1122:
	.ascii	"ChMask\000"
.LASF960:
	.ascii	"PHY_TX_DR\000"
.LASF569:
	.ascii	"BIT_23 0x00800000\000"
.LASF1204:
	.ascii	"phyParam\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF1136:
	.ascii	"Datarates\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF1072:
	.ascii	"MaxEirp\000"
.LASF1161:
	.ascii	"RegionEU868ChannelsRemove\000"
.LASF811:
	.ascii	"__iswctype\000"
.LASF1006:
	.ascii	"PHY_BEACON_CHANNEL_STEPWIDTH\000"
.LASF1078:
	.ascii	"PayloadSize\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF1018:
	.ascii	"CHANNELS_REINIT_MASK\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF1098:
	.ascii	"sCalcBackOffParams\000"
.LASF729:
	.ascii	"EU868_RX_WND_2_FREQ 869525000\000"
.LASF607:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF893:
	.ascii	"Standby\000"
.LASF644:
	.ascii	"TM_MONTH_MAY ( ( uint8_t ) 4U )\000"
.LASF1020:
	.ascii	"sBeaconFormat\000"
.LASF1086:
	.ascii	"sNewChannelReqParams\000"
.LASF942:
	.ascii	"LORAMAC_STATUS_NO_FREE_CHANNEL_FOUND\000"
.LASF828:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF402:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF420:
	.ascii	"__thumb2__ 1\000"
.LASF1234:
	.ascii	"bands\000"
.LASF921:
	.ascii	"RX_SLOT_WIN_CLASS_C_MULTICAST\000"
.LASF970:
	.ascii	"PHY_DUTY_CYCLE\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF947:
	.ascii	"LORAMAC_STATUS_FCNT_HANDLER_ERROR\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF885:
	.ascii	"IsChannelFree\000"
.LASF871:
	.ascii	"RadioState_t\000"
.LASF996:
	.ascii	"PHY_BEACON_SYMBOL_TO_DEFAULT\000"
.LASF632:
	.ascii	"CLOCKS_PER_SEC 1000\000"
.LASF1143:
	.ascii	"MaxPayloadOfDatarateEU868\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF767:
	.ascii	"Value\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF1173:
	.ascii	"nbEnabledChannels\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF595:
	.ascii	"__RAL_SIZE_T\000"
.LASF759:
	.ascii	"uint32_t\000"
.LASF479:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF1027:
	.ascii	"ChannelsMask\000"
.LASF798:
	.ascii	"int_n_sign_posn\000"
.LASF1150:
	.ascii	"regionCommonRxBeaconSetup\000"
.LASF512:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF519:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF888:
	.ascii	"SetTxConfig\000"
.LASF452:
	.ascii	"__HEAP_SIZE__ 512\000"
.LASF691:
	.ascii	"TX_POWER_6 6\000"
.LASF594:
	.ascii	"__THREAD __thread\000"
.LASF427:
	.ascii	"__ARM_FP 4\000"
.LASF488:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF920:
	.ascii	"RX_SLOT_WIN_CLASS_C\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF8:
	.ascii	"__VERSION__ \"9.3.1 20200408 (release)\"\000"
.LASF364:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF1019:
	.ascii	"ChannelsMask_t\000"
.LASF837:
	.ascii	"__RAL_data_empty_string\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF956:
	.ascii	"PHY_MIN_RX_DR\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF550:
	.ascii	"BIT_4 0x10\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF531:
	.ascii	"LSB_32(a) ((a) & 0x000000FF)\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF624:
	.ascii	"LORAMAC_CRYPTO_UNICAST_KEYS 0\000"
.LASF1090:
	.ascii	"sTxParamSetupReqParams\000"
.LASF207:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF1228:
	.ascii	"RegionEU868Verify\000"
.LASF1070:
	.ascii	"RxConfigParams_t\000"
.LASF1042:
	.ascii	"NvmCtx\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF463:
	.ascii	"NRF52 1\000"
.LASF1049:
	.ascii	"uVerifyParams\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF787:
	.ascii	"p_cs_precedes\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF952:
	.ascii	"LORAMAC_STATUS_ERROR\000"
.LASF1189:
	.ascii	"RegionEU868NewChannelReq\000"
.LASF1244:
	.ascii	"freq\000"
.LASF1145:
	.ascii	"sRegionEU868NvmCtx\000"
.LASF757:
	.ascii	"short unsigned int\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF419:
	.ascii	"__thumb__ 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF1164:
	.ascii	"channelAdd\000"
.LASF945:
	.ascii	"LORAMAC_STATUS_BUSY_UPLINK_COLLISION\000"
.LASF424:
	.ascii	"__ARMEL__ 1\000"
.LASF546:
	.ascii	"BIT_0 0x01\000"
.LASF628:
	.ascii	"__SYS_TIME_H__ \000"
.LASF337:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF981:
	.ascii	"PHY_CHANNELS_MASK\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF889:
	.ascii	"CheckRfFrequency\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF982:
	.ascii	"PHY_CHANNELS_DEFAULT_MASK\000"
.LASF658:
	.ascii	"TM_WEEKDAY_SATURDAY ( ( uint8_t )6U )\000"
.LASF1100:
	.ascii	"DutyCycleEnabled\000"
.LASF577:
	.ascii	"BIT_31 0x80000000\000"
.LASF416:
	.ascii	"__ARM_ARCH\000"
.LASF1119:
	.ascii	"sRegionCommonLinkAdrParams\000"
.LASF552:
	.ascii	"BIT_6 0x40\000"
.LASF544:
	.ascii	"CLR_BIT(W,B) ((W) &= (~(uint32_t)(1U << (B))))\000"
.LASF712:
	.ascii	"EU868_DEFAULT_RX1_DR_OFFSET 0\000"
.LASF1140:
	.ascii	"LoRaMacMaxEirpTable\000"
.LASF444:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF886:
	.ascii	"Random\000"
.LASF619:
	.ascii	"TIMERTIME_T_MAX ( ( uint32_t )~0 )\000"
.LASF743:
	.ascii	"EU868_BAND4 { 100 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF407:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF1230:
	.ascii	"phyAttribute\000"
.LASF457:
	.ascii	"ISP4520_EU 1\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF859:
	.ascii	"Band_t\000"
.LASF224:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF258:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF220:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF514:
	.ascii	"INT8_C(x) (x)\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF986:
	.ascii	"PHY_DEF_DOWNLINK_DWELL_TIME\000"
.LASF777:
	.ascii	"grouping\000"
.LASF1194:
	.ascii	"linkAdrReq\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF944:
	.ascii	"LORAMAC_STATUS_BUSY_PING_SLOT_WINDOW_TIME\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF216:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF250:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF608:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF846:
	.ascii	"next\000"
.LASF983:
	.ascii	"PHY_MAX_NB_CHANNELS\000"
.LASF818:
	.ascii	"data\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF855:
	.ascii	"TxMaxPower\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF506:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF1203:
	.ascii	"getPhy\000"
.LASF1153:
	.ascii	"datarate\000"
.LASF839:
	.ascii	"tv_sec\000"
.LASF1238:
	.ascii	"joined\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF585:
	.ascii	"__LORAMAC_TYPES_H__ \000"
.LASF215:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF694:
	.ascii	"TX_POWER_9 9\000"
.LASF951:
	.ascii	"LORAMAC_STATUS_MC_GROUP_UNDEFINED\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF892:
	.ascii	"Sleep\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF1139:
	.ascii	"RegionCommonRxBeaconSetupParams_t\000"
.LASF914:
	.ascii	"Rx1Frequency\000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF1051:
	.ascii	"DutyCycle\000"
.LASF513:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF516:
	.ascii	"INT16_C(x) (x)\000"
.LASF1037:
	.ascii	"sSetBandTxDoneParams\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF860:
	.ascii	"SysTime_s\000"
.LASF829:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF1163:
	.ascii	"RegionEU868ChannelAdd\000"
.LASF492:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 9.3.1 20200408 (release)"
