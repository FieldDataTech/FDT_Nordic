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
	.file	"RegionCommon.c"
	.text
.Ltext0:
	.section	.rodata.LoRaMacMaxEirpTable,"a"
	.align	2
	.type	LoRaMacMaxEirpTable, %object
	.size	LoRaMacMaxEirpTable, 16
LoRaMacMaxEirpTable:
	.ascii	"\010\012\014\015\016\020\022\024\025\030\032\033\035"
	.ascii	"\036!$"
	.section	.text.CountChannels,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	CountChannels, %function
CountChannels:
.LFB0:
	.file 1 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\RegionCommon.c"
	.loc 1 41 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI0:
	mov	r3, r0
	mov	r2, r1
	strh	r3, [sp, #6]	@ movhi
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 42 13
	movs	r3, #0
	strb	r3, [sp, #15]
.LBB2:
	.loc 1 44 18
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 44 5
	b	.L2
.L4:
	.loc 1 46 20
	ldrh	r2, [sp, #6]
	.loc 1 46 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	.loc 1 46 20
	ands	r2, r2, r3
	.loc 1 46 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	movs	r1, #1
	lsl	r3, r1, r3
	.loc 1 46 11
	cmp	r2, r3
	bne	.L3
	.loc 1 48 25
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L3:
	.loc 1 44 38 discriminator 2
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #14]
.L2:
	.loc 1 44 5 discriminator 1
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L4
.LBE2:
	.loc 1 51 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 52 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI1:
	@ sp needed
	bx	lr
.LFE0:
	.size	CountChannels, .-CountChannels
	.section	.text.RegionCommonGetJoinDc,"ax",%progbits
	.align	1
	.global	RegionCommonGetJoinDc
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonGetJoinDc, %function
RegionCommonGetJoinDc:
.LFB1:
	.loc 1 55 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI2:
	mov	r3, sp
	stm	r3, {r0, r1}
	.loc 1 56 14
	movs	r3, #0
	strh	r3, [sp, #14]	@ movhi
	.loc 1 58 20
	ldr	r3, [sp]
	.loc 1 58 7
	cmp	r3, #3600
	bcs	.L7
	.loc 1 60 19
	movs	r3, #100
	strh	r3, [sp, #14]	@ movhi
	b	.L8
.L7:
	.loc 1 62 25
	ldr	r3, [sp]
	.loc 1 62 12
	movw	r2, #39599
	cmp	r3, r2
	bhi	.L9
	.loc 1 64 19
	mov	r3, #1000
	strh	r3, [sp, #14]	@ movhi
	b	.L8
.L9:
	.loc 1 68 19
	movw	r3, #10000
	strh	r3, [sp, #14]	@ movhi
.L8:
	.loc 1 70 12
	ldrh	r3, [sp, #14]
	.loc 1 71 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI3:
	@ sp needed
	bx	lr
.LFE1:
	.size	RegionCommonGetJoinDc, .-RegionCommonGetJoinDc
	.section	.text.RegionCommonChanVerifyDr,"ax",%progbits
	.align	1
	.global	RegionCommonChanVerifyDr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonChanVerifyDr, %function
RegionCommonChanVerifyDr:
.LFB2:
	.loc 1 74 1
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #20
.LCFI5:
	str	r1, [sp]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 75 9
	ldrsb	r2, [sp, #24]
	ldrsb	r1, [sp, #5]
	ldrsb	r3, [sp, #6]
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 75 7
	cmp	r3, #0
	bne	.L12
	.loc 1 77 16
	movs	r3, #0
	b	.L13
.L12:
.LBB3:
	.loc 1 80 18
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 80 25
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 80 5
	b	.L14
.L18:
.LBB4:
	.loc 1 82 22
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 82 9
	b	.L15
.L17:
	.loc 1 84 33
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [sp]
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	.loc 1 84 52
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	asr	r3, r2, r3
	and	r3, r3, #1
	.loc 1 84 15
	cmp	r3, #0
	beq	.L16
	.loc 1 86 64
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r2, r3
	.loc 1 86 61
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	.loc 1 86 83
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #0, #4
	sxtb	r3, r3
	.loc 1 86 21
	and	r3, r3, #15
	sxtb	r1, r3
	.loc 1 87 64
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	add	r3, r3, r2
	mov	r2, r3
	.loc 1 87 61
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	.loc 1 87 83
	ldrb	r3, [r3, #8]
	sbfx	r3, r3, #4, #4
	sxtb	r3, r3
	.loc 1 86 21
	and	r3, r3, #15
	sxtb	r2, r3
	ldrsb	r3, [sp, #6]
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 86 19
	cmp	r3, #1
	bne	.L16
	.loc 1 90 28
	movs	r3, #1
	b	.L13
.L16:
	.loc 1 82 38 discriminator 2
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #13]
.L15:
	.loc 1 82 9 discriminator 1
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L17
.LBE4:
	.loc 1 80 50 discriminator 2
	ldrb	r3, [sp, #15]
	adds	r3, r3, #16
	strb	r3, [sp, #15]
	.loc 1 80 58 discriminator 2
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #14]
.L14:
	.loc 1 80 5 discriminator 1
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L18
.LBE3:
	.loc 1 95 12
	movs	r3, #0
.L13:
	.loc 1 96 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI6:
	@ sp needed
	ldr	pc, [sp], #4
.LFE2:
	.size	RegionCommonChanVerifyDr, .-RegionCommonChanVerifyDr
	.section	.text.RegionCommonValueInRange,"ax",%progbits
	.align	1
	.global	RegionCommonValueInRange
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonValueInRange, %function
RegionCommonValueInRange:
.LFB3:
	.loc 1 99 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI7:
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 100 7
	ldrsb	r2, [sp, #7]
	ldrsb	r3, [sp, #6]
	cmp	r2, r3
	blt	.L20
	.loc 1 100 26 discriminator 1
	ldrsb	r2, [sp, #7]
	ldrsb	r3, [sp, #5]
	cmp	r2, r3
	bgt	.L20
	.loc 1 102 16
	movs	r3, #1
	b	.L21
.L20:
	.loc 1 104 12
	movs	r3, #0
.L21:
	.loc 1 105 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI8:
	@ sp needed
	bx	lr
.LFE3:
	.size	RegionCommonValueInRange, .-RegionCommonValueInRange
	.section	.text.RegionCommonChanDisable,"ax",%progbits
	.align	1
	.global	RegionCommonChanDisable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonChanDisable, %function
RegionCommonChanDisable:
.LFB4:
	.loc 1 108 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI9:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	mov	r3, r2
	strb	r3, [sp, #2]
	.loc 1 109 13
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	strb	r3, [sp, #15]
	.loc 1 111 17
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	.loc 1 111 7
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L23
	.loc 1 111 42 discriminator 1
	ldrb	r2, [sp, #3]	@ zero_extendqisi2
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L24
.L23:
	.loc 1 113 16
	movs	r3, #0
	b	.L25
.L24:
	.loc 1 117 25
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r2, r3
	.loc 1 117 41
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	and	r3, r3, #15
	.loc 1 117 33
	movs	r1, #1
	lsl	r3, r1, r3
	.loc 1 117 25
	sxth	r3, r3
	mvns	r3, r3
	sxth	r3, r3
	ands	r3, r3, r2
	sxth	r1, r3
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	uxth	r2, r1
	strh	r2, [r3]	@ movhi
	.loc 1 119 12
	movs	r3, #1
.L25:
	.loc 1 120 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI10:
	@ sp needed
	bx	lr
.LFE4:
	.size	RegionCommonChanDisable, .-RegionCommonChanDisable
	.section	.text.RegionCommonCountChannels,"ax",%progbits
	.align	1
	.global	RegionCommonCountChannels
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonCountChannels, %function
RegionCommonCountChannels:
.LFB5:
	.loc 1 123 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #20
.LCFI12:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	mov	r3, r2
	strb	r3, [sp, #2]
	.loc 1 124 13
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 126 7
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L27
	.loc 1 128 16
	movs	r3, #0
	b	.L28
.L27:
.LBB5:
	.loc 1 131 18
	ldrb	r3, [sp, #3]
	strb	r3, [sp, #14]
	.loc 1 131 5
	b	.L29
.L30:
	.loc 1 133 50 discriminator 3
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 1 133 23 discriminator 3
	ldrh	r3, [r3]
	movs	r1, #16
	mov	r0, r3
	bl	CountChannels
	mov	r3, r0
	mov	r2, r3
	.loc 1 133 20 discriminator 3
	ldrb	r3, [sp, #15]
	add	r3, r3, r2
	strb	r3, [sp, #15]
	.loc 1 131 46 discriminator 3
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #14]
.L29:
	.loc 1 131 5 discriminator 1
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L30
.LBE5:
	.loc 1 136 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
.L28:
	.loc 1 137 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI13:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	RegionCommonCountChannels, .-RegionCommonCountChannels
	.section	.text.RegionCommonChanMaskCopy,"ax",%progbits
	.align	1
	.global	RegionCommonChanMaskCopy
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonChanMaskCopy, %function
RegionCommonChanMaskCopy:
.LFB6:
	.loc 1 140 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI14:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strb	r3, [sp, #7]
	.loc 1 141 7
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L35
	.loc 1 141 38 discriminator 1
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L35
.LBB6:
	.loc 1 143 22
	movs	r3, #0
	strb	r3, [sp, #23]
	.loc 1 143 9
	b	.L33
.L34:
	.loc 1 145 50 discriminator 3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [sp, #8]
	add	r2, r2, r3
	.loc 1 145 29 discriminator 3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r1, [sp, #12]
	add	r3, r3, r1
	.loc 1 145 50 discriminator 3
	ldrh	r2, [r2]
	.loc 1 145 33 discriminator 3
	strh	r2, [r3]	@ movhi
	.loc 1 143 39 discriminator 3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #23]
.L33:
	.loc 1 143 9 discriminator 1
	ldrb	r2, [sp, #23]	@ zero_extendqisi2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L34
.L35:
.LBE6:
	.loc 1 148 1
	nop
	add	sp, sp, #24
.LCFI15:
	@ sp needed
	bx	lr
.LFE6:
	.size	RegionCommonChanMaskCopy, .-RegionCommonChanMaskCopy
	.section	.text.RegionCommonSetBandTxDone,"ax",%progbits
	.align	1
	.global	RegionCommonSetBandTxDone
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonSetBandTxDone, %function
RegionCommonSetBandTxDone:
.LFB7:
	.loc 1 151 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI16:
	mov	r3, r0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #15]
	.loc 1 152 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L37
	.loc 1 154 30
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	str	r2, [r3, #8]
	.loc 1 161 1
	b	.L39
.L37:
	.loc 1 158 30
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	str	r2, [r3, #8]
	.loc 1 159 34
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	str	r2, [r3, #4]
.L39:
	.loc 1 161 1
	nop
	add	sp, sp, #16
.LCFI17:
	@ sp needed
	bx	lr
.LFE7:
	.size	RegionCommonSetBandTxDone, .-RegionCommonSetBandTxDone
	.section	.text.RegionCommonUpdateBandTimeOff,"ax",%progbits
	.align	1
	.global	RegionCommonUpdateBandTimeOff
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonUpdateBandTimeOff, %function
RegionCommonUpdateBandTimeOff:
.LFB8:
	.loc 1 164 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI18:
	sub	sp, sp, #36
.LCFI19:
	str	r2, [sp]
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 165 17
	mov	r3, #-1
	str	r3, [sp, #28]
.LBB7:
	.loc 1 168 18
	movs	r3, #0
	strb	r3, [sp, #27]
	.loc 1 168 5
	b	.L41
.L49:
	.loc 1 170 20
	ldrb	r3, [sp, #7]
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 170 11
	cmp	r3, #0
	beq	.L42
.LBB8:
	.loc 1 172 65
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 172 39
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	TimerGetElapsedTime
	str	r0, [sp, #16]
	.loc 1 173 63
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 173 37
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	TimerGetElapsedTime
	str	r0, [sp, #12]
	.loc 1 174 39
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L43
	.loc 1 174 39 is_stmt 0 discriminator 1
	ldr	r3, [sp, #12]
	b	.L44
.L43:
	.loc 1 174 39 discriminator 2
	movs	r3, #0
.L44:
	.loc 1 174 25 is_stmt 1 discriminator 4
	ldr	r2, [sp, #16]
	cmp	r3, r2
	it	cc
	movcc	r3, r2
	str	r3, [sp, #8]
	.loc 1 177 22 discriminator 4
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 177 25 discriminator 4
	ldr	r3, [r3, #12]
	.loc 1 177 15 discriminator 4
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bcc	.L45
	.loc 1 179 22
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 179 34
	movs	r2, #0
	str	r2, [r3, #12]
.L45:
	.loc 1 181 22
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 181 25
	ldr	r3, [r3, #12]
	.loc 1 181 15
	cmp	r3, #0
	beq	.L46
	.loc 1 183 31
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [sp, #8]
	subs	r3, r2, r3
	.loc 1 183 29
	ldr	r2, [sp, #28]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [sp, #28]
	b	.L46
.L42:
.LBE8:
	.loc 1 188 15
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L47
.LBB9:
	.loc 1 190 65
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 190 39
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	TimerGetElapsedTime
	str	r0, [sp, #20]
	.loc 1 191 26
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 191 29
	ldr	r3, [r3, #12]
	.loc 1 191 19
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bcc	.L48
	.loc 1 193 26
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 193 38
	movs	r2, #0
	str	r2, [r3, #12]
.L48:
	.loc 1 195 26
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 195 29
	ldr	r3, [r3, #12]
	.loc 1 195 19
	cmp	r3, #0
	beq	.L46
	.loc 1 197 35
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	.loc 1 197 33
	ldr	r2, [sp, #28]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [sp, #28]
	b	.L46
.L47:
.LBE9:
	.loc 1 202 29
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 1 203 22
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	lsls	r3, r3, #4
	ldr	r2, [sp]
	add	r3, r3, r2
	.loc 1 203 34
	movs	r2, #0
	str	r2, [r3, #12]
.L46:
	.loc 1 168 39 discriminator 2
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #27]
.L41:
	.loc 1 168 5 discriminator 1
	ldrb	r2, [sp, #27]	@ zero_extendqisi2
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L49
.LBE7:
	.loc 1 208 51
	ldr	r3, [sp, #28]
	cmp	r3, #-1
	beq	.L50
	.loc 1 208 51 is_stmt 0 discriminator 1
	ldr	r3, [sp, #28]
	b	.L52
.L50:
	.loc 1 208 51 discriminator 2
	movs	r3, #0
.L52:
	.loc 1 209 1 is_stmt 1 discriminator 5
	mov	r0, r3
	add	sp, sp, #36
.LCFI20:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	RegionCommonUpdateBandTimeOff, .-RegionCommonUpdateBandTimeOff
	.section	.text.RegionCommonParseLinkAdrReq,"ax",%progbits
	.align	1
	.global	RegionCommonParseLinkAdrReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonParseLinkAdrReq, %function
RegionCommonParseLinkAdrReq:
.LFB9:
	.loc 1 212 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI21:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 213 13
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 215 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 215 7
	cmp	r3, #3
	bne	.L54
	.loc 1 218 42
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 218 33
	ldr	r3, [sp]
	strb	r2, [r3, #1]
	.loc 1 219 47
	ldr	r3, [sp]
	ldrsb	r3, [r3, #1]
	.loc 1 219 58
	and	r3, r3, #15
	sxtb	r2, r3
	.loc 1 219 32
	ldr	r3, [sp]
	strb	r2, [r3, #2]
	.loc 1 220 50
	ldr	r3, [sp]
	ldrsb	r3, [r3, #1]
	.loc 1 220 68
	uxtb	r3, r3
	lsrs	r3, r3, #4
	uxtb	r3, r3
	sxtb	r2, r3
	.loc 1 220 33
	ldr	r3, [sp]
	strb	r2, [r3, #1]
	.loc 1 222 52
	ldr	r3, [sp, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 222 33
	uxth	r2, r3
	.loc 1 222 31
	ldr	r3, [sp]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 223 31
	ldr	r3, [sp]
	ldrh	r3, [r3, #4]
	sxth	r2, r3
	.loc 1 223 53
	ldr	r3, [sp, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 223 57
	lsls	r3, r3, #8
	.loc 1 223 31
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r3, r3
	uxth	r2, r3
	ldr	r3, [sp]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 225 30
	ldr	r3, [sp, #4]
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 226 52
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 226 67
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 226 35
	ldr	r3, [sp]
	strb	r2, [r3, #3]
	.loc 1 227 30
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 230 18
	movs	r3, #5
	strb	r3, [sp, #15]
.L54:
	.loc 1 232 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 233 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI22:
	@ sp needed
	bx	lr
.LFE9:
	.size	RegionCommonParseLinkAdrReq, .-RegionCommonParseLinkAdrReq
	.section	.text.RegionCommonLinkAdrReqVerifyParams,"ax",%progbits
	.align	1
	.global	RegionCommonLinkAdrReqVerifyParams
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonLinkAdrReqVerifyParams, %function
RegionCommonLinkAdrReqVerifyParams:
.LFB10:
	.loc 1 236 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI23:
	sub	sp, sp, #36
.LCFI24:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 237 13
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #4]
	strb	r3, [sp, #31]
	.loc 1 238 12
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #6]
	strb	r3, [sp, #30]
	.loc 1 239 12
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #7]
	strb	r3, [sp, #29]
	.loc 1 240 40
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 1 240 12
	strb	r3, [sp, #28]
	.loc 1 243 21
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 243 34
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 243 7
	cmp	r3, #0
	beq	.L57
	.loc 1 246 23
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #11]
	strb	r3, [sp, #28]
	.loc 1 247 18
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #9]
	strb	r3, [sp, #30]
	.loc 1 248 17
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #10]
	strb	r3, [sp, #29]
.L57:
	.loc 1 251 7
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L58
	.loc 1 254 13
	ldr	r3, [sp, #20]
	ldrb	r0, [r3, #12]	@ zero_extendqisi2
	ldr	r3, [sp, #20]
	ldr	r1, [r3, #16]
	ldr	r3, [sp, #20]
	ldrsb	r5, [r3, #20]
	ldr	r3, [sp, #20]
	ldrsb	r3, [r3, #21]
	ldr	r2, [sp, #20]
	ldr	r2, [r2, #24]
	ldrsb	r4, [sp, #30]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r5
	mov	r2, r4
	bl	RegionCommonChanVerifyDr
	mov	r3, r0
	.loc 1 255 119
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 254 11
	cmp	r3, #0
	beq	.L59
	.loc 1 257 20
	ldrb	r3, [sp, #31]
	bic	r3, r3, #2
	strb	r3, [sp, #31]
.L59:
	.loc 1 261 13
	ldr	r3, [sp, #20]
	ldrsb	r1, [r3, #29]
	ldr	r3, [sp, #20]
	ldrsb	r2, [r3, #28]
	ldrsb	r3, [sp, #29]
	mov	r0, r3
	bl	RegionCommonValueInRange
	mov	r3, r0
	.loc 1 261 11
	cmp	r3, #0
	bne	.L58
	.loc 1 264 29
	ldr	r3, [sp, #20]
	ldrsb	r3, [r3, #29]
	.loc 1 264 15
	ldrsb	r2, [sp, #29]
	cmp	r2, r3
	bge	.L60
	.loc 1 266 25
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #29]
	strb	r3, [sp, #29]
	b	.L58
.L60:
	.loc 1 270 24
	ldrb	r3, [sp, #31]
	bic	r3, r3, #4
	strb	r3, [sp, #31]
.L58:
	.loc 1 276 7
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L61
	.loc 1 278 11
	ldrsb	r3, [sp, #28]
	cmp	r3, #0
	bne	.L61
	.loc 1 280 27
	movs	r3, #1
	strb	r3, [sp, #28]
.L61:
	.loc 1 285 9
	ldr	r3, [sp, #16]
	ldrb	r2, [sp, #30]
	strb	r2, [r3]
	.loc 1 286 12
	ldr	r3, [sp, #12]
	ldrb	r2, [sp, #29]
	strb	r2, [r3]
	.loc 1 287 12
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	ldr	r3, [sp, #8]
	strb	r2, [r3]
	.loc 1 289 12
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	.loc 1 290 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI25:
	@ sp needed
	pop	{r4, r5, pc}
.LFE10:
	.size	RegionCommonLinkAdrReqVerifyParams, .-RegionCommonLinkAdrReqVerifyParams
	.global	__aeabi_i2d
	.global	__aeabi_ui2d
	.global	__aeabi_ddiv
	.global	__aeabi_dmul
	.section	.text.RegionCommonComputeSymbolTimeLoRa,"ax",%progbits
	.align	1
	.global	RegionCommonComputeSymbolTimeLoRa
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonComputeSymbolTimeLoRa, %function
RegionCommonComputeSymbolTimeLoRa:
.LFB11:
	.loc 1 293 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI26:
	sub	sp, sp, #12
.LCFI27:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 294 28
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 1 294 14
	mov	r0, r3
	bl	__aeabi_i2d
.LVL0:
	mov	r4, r0
	mov	r5, r1
	.loc 1 294 41
	ldr	r0, [sp]
	bl	__aeabi_ui2d
.LVL1:
	mov	r2, r0
	mov	r3, r1
	.loc 1 294 39
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_ddiv
.LVL2:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 294 63
	mov	r2, #0
	ldr	r3, .L65
	bl	__aeabi_dmul
.LVL3:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	.loc 1 295 1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	add	sp, sp, #12
.LCFI28:
	@ sp needed
	pop	{r4, r5, pc}
.L66:
	.align	2
.L65:
	.word	1083129856
.LFE11:
	.size	RegionCommonComputeSymbolTimeLoRa, .-RegionCommonComputeSymbolTimeLoRa
	.section	.text.RegionCommonComputeSymbolTimeFsk,"ax",%progbits
	.align	1
	.global	RegionCommonComputeSymbolTimeFsk
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonComputeSymbolTimeFsk, %function
RegionCommonComputeSymbolTimeFsk:
.LFB12:
	.loc 1 298 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI29:
	sub	sp, sp, #12
.LCFI30:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 299 20
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL4:
	mov	r2, r0
	mov	r3, r1
	.loc 1 299 18
	mov	r0, #0
	ldr	r1, .L69
	bl	__aeabi_ddiv
.LVL5:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	.loc 1 300 1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	add	sp, sp, #12
.LCFI31:
	@ sp needed
	ldr	pc, [sp], #4
.L70:
	.align	2
.L69:
	.word	1075838976
.LFE12:
	.size	RegionCommonComputeSymbolTimeFsk, .-RegionCommonComputeSymbolTimeFsk
	.global	__aeabi_dadd
	.global	__aeabi_d2uiz
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.section	.text.RegionCommonComputeRxWindowParameters,"ax",%progbits
	.align	1
	.global	RegionCommonComputeRxWindowParameters
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonComputeRxWindowParameters, %function
RegionCommonComputeRxWindowParameters:
.LFB13:
	.loc 1 303 1
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI32:
	sub	sp, sp, #28
.LCFI33:
	vstr.64	d0, [sp, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 304 22
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	subs	r3, r3, #4
	lsls	r3, r3, #1
	mov	r0, r3
	bl	__aeabi_i2d
.LVL6:
	ldrd	r2, [sp, #16]
	bl	__aeabi_dmul
.LVL7:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [sp, #8]
	lsls	r3, r3, #1
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL8:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
.LVL9:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [sp, #16]
	bl	__aeabi_ddiv
.LVL10:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
.LVL11:
	mov	r2, r0
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L72
	.loc 1 304 22 is_stmt 0 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	b	.L73
.L72:
	.loc 1 304 22 discriminator 2
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	subs	r3, r3, #4
	lsls	r3, r3, #1
	mov	r0, r3
	bl	__aeabi_i2d
.LVL12:
	ldrd	r2, [sp, #16]
	bl	__aeabi_dmul
.LVL13:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [sp, #8]
	lsls	r3, r3, #1
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL14:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
.LVL15:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldrd	r2, [sp, #16]
	bl	__aeabi_ddiv
.LVL16:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
.LVL17:
	mov	r3, r0
.L73:
	.loc 1 304 20 is_stmt 1 discriminator 4
	ldr	r2, [sp]
	str	r3, [r2]
	.loc 1 305 44 discriminator 4
	mov	r2, #0
	ldr	r3, .L74
	ldrd	r0, [sp, #16]
	bl	__aeabi_dmul
.LVL18:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 305 62 discriminator 4
	ldr	r3, [sp]
	ldr	r3, [r3]
	.loc 1 305 77 discriminator 4
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL19:
	ldrd	r2, [sp, #16]
	bl	__aeabi_dmul
.LVL20:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 1 305 89 discriminator 4
	mov	r2, #0
	mov	r3, #1073741824
	bl	__aeabi_ddiv
.LVL21:
	mov	r2, r0
	mov	r3, r1
	.loc 1 305 56 discriminator 4
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
.LVL22:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 1 305 32 discriminator 4
	ldr	r0, [sp, #4]
	bl	__aeabi_ui2d
.LVL23:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
.LVL24:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 1 305 21 discriminator 4
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL25:
	mov	r2, r0
	.loc 1 305 19 discriminator 4
	ldr	r3, [sp, #40]
	str	r2, [r3]
	.loc 1 306 1 discriminator 4
	nop
	add	sp, sp, #28
.LCFI34:
	@ sp needed
	pop	{r4, r5, pc}
.L75:
	.align	2
.L74:
	.word	1074790400
.LFE13:
	.size	RegionCommonComputeRxWindowParameters, .-RegionCommonComputeRxWindowParameters
	.global	__aeabi_f2d
	.section	.text.RegionCommonComputeTxPower,"ax",%progbits
	.align	1
	.global	RegionCommonComputeTxPower
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonComputeTxPower, %function
RegionCommonComputeTxPower:
.LFB14:
	.loc 1 309 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI35:
	sub	sp, sp, #28
.LCFI36:
	mov	r3, r0
	vstr.32	s0, [sp, #8]
	vstr.32	s1, [sp, #4]
	strb	r3, [sp, #15]
	.loc 1 310 12
	movs	r3, #0
	strb	r3, [sp, #23]
	.loc 1 312 62
	ldrsb	r3, [sp, #15]
	lsls	r3, r3, #1
	.loc 1 312 45
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vldr.32	s14, [sp, #8]
	vsub.f32	s14, s14, s15
	.loc 1 312 71
	vldr.32	s15, [sp, #4]
	vsub.f32	s15, s14, s15
	.loc 1 312 28
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL26:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	floor
	vmov	r2, r3, d0
	.loc 1 312 16
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL27:
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 314 12
	ldrsb	r3, [sp, #23]
	.loc 1 315 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI37:
	@ sp needed
	ldr	pc, [sp], #4
.LFE14:
	.size	RegionCommonComputeTxPower, .-RegionCommonComputeTxPower
	.section	.text.RegionCommonCalcBackOff,"ax",%progbits
	.align	1
	.global	RegionCommonCalcBackOff
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonCalcBackOff, %function
RegionCommonCalcBackOff:
.LFB15:
	.loc 1 318 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI38:
	sub	sp, sp, #20
.LCFI39:
	str	r0, [sp, #4]
	.loc 1 319 40
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 319 68
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 319 50
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r3, r3, r2
	.loc 1 319 13
	ldrb	r3, [r3, #9]
	strb	r3, [sp, #15]
	.loc 1 320 43
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 320 50
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #4
	add	r3, r3, r2
	.loc 1 320 14
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #12]	@ movhi
	.loc 1 321 14
	movs	r3, #0
	strh	r3, [sp, #10]	@ movhi
	.loc 1 324 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 324 29
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #4
	add	r3, r3, r2
	.loc 1 324 47
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 326 26
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	.loc 1 326 35
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 326 7
	cmp	r3, #0
	beq	.L79
	.loc 1 329 25
	ldr	r3, [sp, #4]
	adds	r3, r3, #12
	ldm	r3, {r0, r1}
	bl	RegionCommonGetJoinDc
	mov	r3, r0
	strh	r3, [sp, #10]	@ movhi
	.loc 1 331 19
	ldrh	r2, [sp, #12]
	ldrh	r3, [sp, #10]
	cmp	r3, r2
	it	cc
	movcc	r3, r2
	strh	r3, [sp, #12]	@ movhi
	.loc 1 333 32
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	.loc 1 333 51
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 333 11
	cmp	r3, #0
	beq	.L80
	.loc 1 333 84 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 1 333 106 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 1 333 62 discriminator 1
	cmp	r3, #0
	beq	.L80
	.loc 1 339 30
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 339 37
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #4
	add	r3, r3, r2
	.loc 1 339 55
	movs	r2, #0
	str	r2, [r3, #12]
	.loc 1 358 1
	b	.L84
.L80:
	.loc 1 344 100
	ldrh	r3, [sp, #12]
	subs	r2, r3, #1
	.loc 1 344 74
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #20]
	.loc 1 344 30
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #4]
	.loc 1 344 37
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #4
	add	r3, r3, r0
	.loc 1 344 100
	mul	r2, r1, r2
	.loc 1 344 55
	str	r2, [r3, #12]
	.loc 1 358 1
	b	.L84
.L79:
	.loc 1 349 30
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	.loc 1 349 11
	cmp	r3, #0
	beq	.L83
	.loc 1 351 100
	ldrh	r3, [sp, #12]
	subs	r2, r3, #1
	.loc 1 351 74
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #20]
	.loc 1 351 30
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #4]
	.loc 1 351 37
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #4
	add	r3, r3, r0
	.loc 1 351 100
	mul	r2, r1, r2
	.loc 1 351 55
	str	r2, [r3, #12]
	.loc 1 358 1
	b	.L84
.L83:
	.loc 1 355 30
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #4]
	.loc 1 355 37
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	lsls	r3, r3, #4
	add	r3, r3, r2
	.loc 1 355 55
	movs	r2, #0
	str	r2, [r3, #12]
.L84:
	.loc 1 358 1
	nop
	add	sp, sp, #20
.LCFI40:
	@ sp needed
	ldr	pc, [sp], #4
.LFE15:
	.size	RegionCommonCalcBackOff, .-RegionCommonCalcBackOff
	.section	.text.RegionCommonRxBeaconSetup,"ax",%progbits
	.align	1
	.global	RegionCommonRxBeaconSetup
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCommonRxBeaconSetup, %function
RegionCommonRxBeaconSetup:
.LFB16:
	.loc 1 362 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI41:
	sub	sp, sp, #60
.LCFI42:
	str	r0, [sp, #44]
	.loc 1 363 10
	movs	r3, #1
	strb	r3, [sp, #55]
	.loc 1 367 10
	ldr	r3, .L87
	ldr	r3, [r3, #44]
	.loc 1 367 5
	blx	r3
.LVL28:
	.loc 1 370 10
	ldr	r3, .L87
	ldr	r3, [r3, #12]
	.loc 1 370 5
	ldr	r2, [sp, #44]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.LVL29:
	.loc 1 371 10
	ldr	r3, .L87
	ldr	r3, [r3, #84]
	.loc 1 371 5
	ldr	r2, [sp, #44]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	mov	r1, r2
	movs	r0, #1
	blx	r3
.LVL30:
	.loc 1 374 28
	ldr	r3, [sp, #44]
	ldr	r3, [r3, #12]
	.loc 1 374 7
	cmp	r3, #0
	beq	.L86
	.loc 1 376 22
	movs	r3, #0
	strb	r3, [sp, #55]
.L86:
	.loc 1 380 35
	ldr	r3, [sp, #44]
	ldr	r3, [r3]
	.loc 1 380 66
	ldr	r2, [sp, #44]
	ldrb	r2, [r2, #9]	@ zero_extendqisi2
	.loc 1 380 46
	add	r3, r3, r2
	.loc 1 380 14
	ldrb	r3, [r3]
	strb	r3, [sp, #54]
	.loc 1 383 10
	ldr	r3, .L87
	ldr	r4, [r3, #24]
	.loc 1 383 55
	ldr	r3, [sp, #44]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	.loc 1 383 5
	mov	r5, r3
	ldrb	r0, [sp, #54]	@ zero_extendqisi2
	ldr	r3, [sp, #44]
	ldrh	r3, [r3, #16]
	ldr	r2, [sp, #44]
	ldrb	r2, [r2, #8]	@ zero_extendqisi2
	ldrb	r1, [sp, #55]	@ zero_extendqisi2
	str	r1, [sp, #36]
	movs	r1, #0
	str	r1, [sp, #32]
	movs	r1, #0
	str	r1, [sp, #28]
	movs	r1, #0
	str	r1, [sp, #24]
	movs	r1, #0
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	movs	r2, #1
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	movs	r3, #10
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #1
	mov	r2, r0
	mov	r1, r5
	movs	r0, #1
	blx	r4
.LVL31:
	.loc 1 386 10
	ldr	r3, .L87
	ldr	r3, [r3, #52]
	.loc 1 386 5
	ldr	r2, [sp, #44]
	ldr	r2, [r2, #12]
	mov	r0, r2
	blx	r3
.LVL32:
	.loc 1 387 1
	nop
	add	sp, sp, #60
.LCFI43:
	@ sp needed
	pop	{r4, r5, pc}
.L88:
	.align	2
.L87:
	.word	Radio
.LFE16:
	.size	RegionCommonRxBeaconSetup, .-RegionCommonRxBeaconSetup
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
	.uleb128 0x10
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI7-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI11-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
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
	.4byte	.LCFI14-.LFB6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI16-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI18-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI21-.LFB9
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI23-.LFB10
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI26-.LFB11
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI29-.LFB12
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
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI32-.LFB13
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
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
	.4byte	.LCFI35-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI38-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI41-.LFB16
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE32:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stdint.h"
	.file 3 "../../../../lora/radio/radio.h"
	.file 4 "../../../../lora/boards/mcu/utilities.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/__crossworks.h"
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/sys/time.h"
	.file 7 "../../../../lora/boards/rtc-board.h"
	.file 8 "../../../../lora/mac/LoRaMacTypes.h"
	.file 9 "../../../../lora/system/systime.h"
	.file 10 "../../../../lora/mac/LoRaMac.h"
	.file 11 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\RegionCommon.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1644
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1041
	.byte	0xc
	.4byte	.LASF1042
	.4byte	.LASF1043
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF747
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF748
	.uleb128 0x3
	.4byte	.LASF750
	.byte	0x2
	.byte	0x29
	.byte	0x1c
	.4byte	0x43
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF749
	.uleb128 0x3
	.4byte	.LASF751
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x5b
	.uleb128 0x4
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF752
	.uleb128 0x4
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF753
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.4byte	0x73
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF754
	.uleb128 0x3
	.4byte	.LASF755
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x86
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF756
	.uleb128 0x3
	.4byte	.LASF757
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x99
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.4byte	.LASF758
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0xac
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF759
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF760
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF761
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x5b
	.byte	0x3
	.byte	0x26
	.byte	0x1
	.4byte	0xdc
	.uleb128 0x7
	.4byte	.LASF762
	.byte	0
	.uleb128 0x7
	.4byte	.LASF763
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.4byte	.LASF764
	.byte	0x3
	.byte	0x29
	.byte	0x2
	.4byte	0xc1
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x5b
	.byte	0x3
	.byte	0x2f
	.byte	0x1
	.4byte	0x10f
	.uleb128 0x7
	.4byte	.LASF765
	.byte	0
	.uleb128 0x7
	.4byte	.LASF766
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF767
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF768
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF769
	.byte	0x3
	.byte	0x34
	.byte	0x2
	.4byte	0xe8
	.uleb128 0x8
	.byte	0x1c
	.byte	0x3
	.byte	0x39
	.byte	0x9
	.4byte	0x180
	.uleb128 0x9
	.4byte	.LASF770
	.byte	0x3
	.byte	0x3e
	.byte	0x10
	.4byte	0x181
	.byte	0
	.uleb128 0x9
	.4byte	.LASF771
	.byte	0x3
	.byte	0x42
	.byte	0x10
	.4byte	0x181
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF772
	.byte	0x3
	.byte	0x4d
	.byte	0x10
	.4byte	0x1a7
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF773
	.byte	0x3
	.byte	0x51
	.byte	0x10
	.4byte	0x181
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF774
	.byte	0x3
	.byte	0x55
	.byte	0x10
	.4byte	0x181
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF775
	.byte	0x3
	.byte	0x5b
	.byte	0xd
	.4byte	0x1b8
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF776
	.byte	0x3
	.byte	0x62
	.byte	0xd
	.4byte	0x1d0
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x4
	.4byte	0x180
	.uleb128 0xc
	.4byte	0x1a1
	.uleb128 0xd
	.4byte	0x1a1
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x67
	.uleb128 0xd
	.4byte	0x37
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x187
	.uleb128 0xc
	.4byte	0x1b8
	.uleb128 0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1ad
	.uleb128 0xc
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x1c9
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF777
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1be
	.uleb128 0x3
	.4byte	.LASF778
	.byte	0x3
	.byte	0x63
	.byte	0x2
	.4byte	0x11b
	.uleb128 0xe
	.4byte	.LASF805
	.byte	0x6c
	.byte	0x3
	.byte	0x68
	.byte	0x8
	.4byte	0x35f
	.uleb128 0x9
	.4byte	.LASF779
	.byte	0x3
	.byte	0x6f
	.byte	0x10
	.4byte	0x375
	.byte	0
	.uleb128 0x9
	.4byte	.LASF780
	.byte	0x3
	.byte	0x75
	.byte	0x15
	.4byte	0x380
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF781
	.byte	0x3
	.byte	0x7b
	.byte	0x10
	.4byte	0x391
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF782
	.byte	0x3
	.byte	0x81
	.byte	0x10
	.4byte	0x3a2
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF783
	.byte	0x3
	.byte	0x8c
	.byte	0x10
	.4byte	0x3c6
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF784
	.byte	0x3
	.byte	0x97
	.byte	0x11
	.4byte	0x3d1
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF785
	.byte	0x3
	.byte	0xbf
	.byte	0x10
	.4byte	0x423
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF786
	.byte	0x3
	.byte	0xe9
	.byte	0x10
	.4byte	0x470
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF787
	.byte	0x3
	.byte	0xf4
	.byte	0x10
	.4byte	0x485
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF788
	.byte	0x3
	.byte	0xff
	.byte	0x12
	.4byte	0x49f
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF789
	.byte	0x3
	.2byte	0x107
	.byte	0x10
	.4byte	0x4b5
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF790
	.byte	0x3
	.2byte	0x10b
	.byte	0x10
	.4byte	0x181
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF791
	.byte	0x3
	.2byte	0x10f
	.byte	0x10
	.4byte	0x181
	.byte	0x30
	.uleb128 0x10
	.ascii	"Rx\000"
	.byte	0x3
	.2byte	0x115
	.byte	0x10
	.4byte	0x3a2
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF792
	.byte	0x3
	.2byte	0x119
	.byte	0x10
	.4byte	0x181
	.byte	0x38
	.uleb128 0xf
	.4byte	.LASF793
	.byte	0x3
	.2byte	0x121
	.byte	0x10
	.4byte	0x4d0
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF794
	.byte	0x3
	.2byte	0x127
	.byte	0x10
	.4byte	0x4e5
	.byte	0x40
	.uleb128 0xf
	.4byte	.LASF795
	.byte	0x3
	.2byte	0x12e
	.byte	0x10
	.4byte	0x4fb
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF796
	.byte	0x3
	.2byte	0x135
	.byte	0x10
	.4byte	0x510
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF797
	.byte	0x3
	.2byte	0x13d
	.byte	0x10
	.4byte	0x52b
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF798
	.byte	0x3
	.2byte	0x145
	.byte	0x10
	.4byte	0x52b
	.byte	0x50
	.uleb128 0xf
	.4byte	.LASF799
	.byte	0x3
	.2byte	0x14c
	.byte	0x10
	.4byte	0x541
	.byte	0x54
	.uleb128 0xf
	.4byte	.LASF800
	.byte	0x3
	.2byte	0x154
	.byte	0x10
	.4byte	0x1d0
	.byte	0x58
	.uleb128 0xf
	.4byte	.LASF801
	.byte	0x3
	.2byte	0x15a
	.byte	0x12
	.4byte	0x3d1
	.byte	0x5c
	.uleb128 0xf
	.4byte	.LASF802
	.byte	0x3
	.2byte	0x15e
	.byte	0xd
	.4byte	0x181
	.byte	0x60
	.uleb128 0xf
	.4byte	.LASF803
	.byte	0x3
	.2byte	0x16a
	.byte	0x10
	.4byte	0x3a2
	.byte	0x64
	.uleb128 0xf
	.4byte	.LASF804
	.byte	0x3
	.2byte	0x173
	.byte	0xd
	.4byte	0x557
	.byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x1e2
	.uleb128 0xc
	.4byte	0x36f
	.uleb128 0xd
	.4byte	0x36f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1d6
	.uleb128 0xb
	.byte	0x4
	.4byte	0x364
	.uleb128 0x11
	.4byte	0x10f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37b
	.uleb128 0xc
	.4byte	0x391
	.uleb128 0xd
	.4byte	0xdc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x386
	.uleb128 0xc
	.4byte	0x3a2
	.uleb128 0xd
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x397
	.uleb128 0x12
	.4byte	0x1c9
	.4byte	0x3c6
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x67
	.uleb128 0xd
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3a8
	.uleb128 0x11
	.4byte	0xa0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3cc
	.uleb128 0xc
	.4byte	0x423
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x4a
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x4a
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x4a
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x1c9
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3d7
	.uleb128 0xc
	.4byte	0x470
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0xd
	.4byte	0x37
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x4a
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x4a
	.uleb128 0xd
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x429
	.uleb128 0x12
	.4byte	0x1c9
	.4byte	0x485
	.uleb128 0xd
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x476
	.uleb128 0x12
	.4byte	0xa0
	.4byte	0x49f
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x48b
	.uleb128 0xc
	.4byte	0x4b5
	.uleb128 0xd
	.4byte	0x1a1
	.uleb128 0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4a5
	.uleb128 0xc
	.4byte	0x4d0
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0x37
	.uleb128 0xd
	.4byte	0x7a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4bb
	.uleb128 0x12
	.4byte	0x67
	.4byte	0x4e5
	.uleb128 0xd
	.4byte	0xdc
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4d6
	.uleb128 0xc
	.4byte	0x4fb
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x4eb
	.uleb128 0x12
	.4byte	0x4a
	.4byte	0x510
	.uleb128 0xd
	.4byte	0x7a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x501
	.uleb128 0xc
	.4byte	0x52b
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x1a1
	.uleb128 0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x516
	.uleb128 0xc
	.4byte	0x541
	.uleb128 0xd
	.4byte	0xdc
	.uleb128 0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x531
	.uleb128 0xc
	.4byte	0x557
	.uleb128 0xd
	.4byte	0xa0
	.uleb128 0xd
	.4byte	0xa0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x547
	.uleb128 0x13
	.4byte	.LASF866
	.byte	0x3
	.2byte	0x17c
	.byte	0x1d
	.4byte	0x35f
	.uleb128 0xe
	.4byte	.LASF806
	.byte	0x4
	.byte	0x4
	.byte	0x30
	.byte	0xc
	.4byte	0x5ac
	.uleb128 0x14
	.ascii	"Rfu\000"
	.byte	0x4
	.byte	0x32
	.byte	0x11
	.4byte	0x4a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF807
	.byte	0x4
	.byte	0x33
	.byte	0x11
	.4byte	0x4a
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF808
	.byte	0x4
	.byte	0x34
	.byte	0x11
	.4byte	0x4a
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF809
	.byte	0x4
	.byte	0x35
	.byte	0x11
	.4byte	0x4a
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	.LASF922
	.byte	0x4
	.byte	0x4
	.byte	0x2e
	.byte	0xf
	.4byte	0x5d2
	.uleb128 0x16
	.4byte	.LASF810
	.byte	0x4
	.byte	0x36
	.byte	0x6
	.4byte	0x56a
	.uleb128 0x16
	.4byte	.LASF811
	.byte	0x4
	.byte	0x37
	.byte	0xe
	.4byte	0xa0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF812
	.byte	0x4
	.byte	0x38
	.byte	0x2
	.4byte	0x5ac
	.uleb128 0xe
	.4byte	.LASF813
	.byte	0x8
	.byte	0x5
	.byte	0x7c
	.byte	0x8
	.4byte	0x606
	.uleb128 0x9
	.4byte	.LASF814
	.byte	0x5
	.byte	0x7d
	.byte	0x7
	.4byte	0x99
	.byte	0
	.uleb128 0x9
	.4byte	.LASF815
	.byte	0x5
	.byte	0x7e
	.byte	0x8
	.4byte	0x606
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF816
	.uleb128 0x12
	.4byte	0x99
	.4byte	0x626
	.uleb128 0xd
	.4byte	0x626
	.uleb128 0xd
	.4byte	0xac
	.uleb128 0xd
	.4byte	0x638
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x62c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF817
	.uleb128 0x4
	.4byte	0x62c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x5de
	.uleb128 0x12
	.4byte	0x99
	.4byte	0x65c
	.uleb128 0xd
	.4byte	0x65c
	.uleb128 0xd
	.4byte	0x662
	.uleb128 0xd
	.4byte	0xac
	.uleb128 0xd
	.4byte	0x638
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xac
	.uleb128 0xb
	.byte	0x4
	.4byte	0x633
	.uleb128 0x8
	.byte	0x58
	.byte	0x5
	.byte	0x84
	.byte	0x9
	.4byte	0x812
	.uleb128 0x9
	.4byte	.LASF818
	.byte	0x5
	.byte	0x86
	.byte	0xf
	.4byte	0x662
	.byte	0
	.uleb128 0x9
	.4byte	.LASF819
	.byte	0x5
	.byte	0x87
	.byte	0xf
	.4byte	0x662
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF820
	.byte	0x5
	.byte	0x88
	.byte	0xf
	.4byte	0x662
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF821
	.byte	0x5
	.byte	0x8a
	.byte	0xf
	.4byte	0x662
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF822
	.byte	0x5
	.byte	0x8b
	.byte	0xf
	.4byte	0x662
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF823
	.byte	0x5
	.byte	0x8c
	.byte	0xf
	.4byte	0x662
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF824
	.byte	0x5
	.byte	0x8d
	.byte	0xf
	.4byte	0x662
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF825
	.byte	0x5
	.byte	0x8e
	.byte	0xf
	.4byte	0x662
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF826
	.byte	0x5
	.byte	0x8f
	.byte	0xf
	.4byte	0x662
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF827
	.byte	0x5
	.byte	0x90
	.byte	0xf
	.4byte	0x662
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF828
	.byte	0x5
	.byte	0x92
	.byte	0x8
	.4byte	0x62c
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF829
	.byte	0x5
	.byte	0x93
	.byte	0x8
	.4byte	0x62c
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF830
	.byte	0x5
	.byte	0x94
	.byte	0x8
	.4byte	0x62c
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF831
	.byte	0x5
	.byte	0x95
	.byte	0x8
	.4byte	0x62c
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF832
	.byte	0x5
	.byte	0x96
	.byte	0x8
	.4byte	0x62c
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF833
	.byte	0x5
	.byte	0x97
	.byte	0x8
	.4byte	0x62c
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF834
	.byte	0x5
	.byte	0x98
	.byte	0x8
	.4byte	0x62c
	.byte	0x2e
	.uleb128 0x9
	.4byte	.LASF835
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x62c
	.byte	0x2f
	.uleb128 0x9
	.4byte	.LASF836
	.byte	0x5
	.byte	0x9a
	.byte	0x8
	.4byte	0x62c
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF837
	.byte	0x5
	.byte	0x9b
	.byte	0x8
	.4byte	0x62c
	.byte	0x31
	.uleb128 0x9
	.4byte	.LASF838
	.byte	0x5
	.byte	0x9c
	.byte	0x8
	.4byte	0x62c
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF839
	.byte	0x5
	.byte	0x9d
	.byte	0x8
	.4byte	0x62c
	.byte	0x33
	.uleb128 0x9
	.4byte	.LASF840
	.byte	0x5
	.byte	0x9e
	.byte	0x8
	.4byte	0x62c
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF841
	.byte	0x5
	.byte	0x9f
	.byte	0x8
	.4byte	0x62c
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF842
	.byte	0x5
	.byte	0xa4
	.byte	0xf
	.4byte	0x662
	.byte	0x38
	.uleb128 0x9
	.4byte	.LASF843
	.byte	0x5
	.byte	0xa5
	.byte	0xf
	.4byte	0x662
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF844
	.byte	0x5
	.byte	0xa6
	.byte	0xf
	.4byte	0x662
	.byte	0x40
	.uleb128 0x9
	.4byte	.LASF845
	.byte	0x5
	.byte	0xa7
	.byte	0xf
	.4byte	0x662
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF846
	.byte	0x5
	.byte	0xa8
	.byte	0xf
	.4byte	0x662
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF847
	.byte	0x5
	.byte	0xa9
	.byte	0xf
	.4byte	0x662
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF848
	.byte	0x5
	.byte	0xaa
	.byte	0xf
	.4byte	0x662
	.byte	0x50
	.uleb128 0x9
	.4byte	.LASF849
	.byte	0x5
	.byte	0xab
	.byte	0xf
	.4byte	0x662
	.byte	0x54
	.byte	0
	.uleb128 0x3
	.4byte	.LASF850
	.byte	0x5
	.byte	0xac
	.byte	0x3
	.4byte	0x668
	.uleb128 0x4
	.4byte	0x812
	.uleb128 0x8
	.byte	0x20
	.byte	0x5
	.byte	0xc2
	.byte	0x9
	.4byte	0x895
	.uleb128 0x9
	.4byte	.LASF851
	.byte	0x5
	.byte	0xc4
	.byte	0x9
	.4byte	0x8a9
	.byte	0
	.uleb128 0x9
	.4byte	.LASF852
	.byte	0x5
	.byte	0xc5
	.byte	0x9
	.4byte	0x8be
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF853
	.byte	0x5
	.byte	0xc6
	.byte	0x9
	.4byte	0x8be
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF854
	.byte	0x5
	.byte	0xc9
	.byte	0x9
	.4byte	0x8d8
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF855
	.byte	0x5
	.byte	0xca
	.byte	0xa
	.4byte	0x8ed
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF856
	.byte	0x5
	.byte	0xcb
	.byte	0xa
	.4byte	0x8ed
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF857
	.byte	0x5
	.byte	0xce
	.byte	0x9
	.4byte	0x8f3
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF858
	.byte	0x5
	.byte	0xcf
	.byte	0x9
	.4byte	0x8f9
	.byte	0x1c
	.byte	0
	.uleb128 0x12
	.4byte	0x99
	.4byte	0x8a9
	.uleb128 0xd
	.4byte	0x99
	.uleb128 0xd
	.4byte	0x99
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x895
	.uleb128 0x12
	.4byte	0x99
	.4byte	0x8be
	.uleb128 0xd
	.4byte	0x99
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8af
	.uleb128 0x12
	.4byte	0x99
	.4byte	0x8d8
	.uleb128 0xd
	.4byte	0x606
	.uleb128 0xd
	.4byte	0x99
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8c4
	.uleb128 0x12
	.4byte	0x606
	.4byte	0x8ed
	.uleb128 0xd
	.4byte	0x606
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8de
	.uleb128 0xb
	.byte	0x4
	.4byte	0x60d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x63e
	.uleb128 0x3
	.4byte	.LASF859
	.byte	0x5
	.byte	0xd0
	.byte	0x3
	.4byte	0x823
	.uleb128 0x4
	.4byte	0x8ff
	.uleb128 0x8
	.byte	0xc
	.byte	0x5
	.byte	0xd2
	.byte	0x9
	.4byte	0x941
	.uleb128 0x9
	.4byte	.LASF860
	.byte	0x5
	.byte	0xd3
	.byte	0xf
	.4byte	0x662
	.byte	0
	.uleb128 0x9
	.4byte	.LASF861
	.byte	0x5
	.byte	0xd4
	.byte	0x25
	.4byte	0x941
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF862
	.byte	0x5
	.byte	0xd5
	.byte	0x28
	.4byte	0x947
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x81e
	.uleb128 0xb
	.byte	0x4
	.4byte	0x90b
	.uleb128 0x3
	.4byte	.LASF863
	.byte	0x5
	.byte	0xd6
	.byte	0x3
	.4byte	0x910
	.uleb128 0x4
	.4byte	0x94d
	.uleb128 0xe
	.4byte	.LASF864
	.byte	0x14
	.byte	0x5
	.byte	0xda
	.byte	0x10
	.4byte	0x979
	.uleb128 0x9
	.4byte	.LASF865
	.byte	0x5
	.byte	0xdb
	.byte	0x20
	.4byte	0x979
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0x989
	.4byte	0x989
	.uleb128 0x18
	.4byte	0xac
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x959
	.uleb128 0x13
	.4byte	.LASF867
	.byte	0x5
	.2byte	0x104
	.byte	0x1a
	.4byte	0x95e
	.uleb128 0x13
	.4byte	.LASF868
	.byte	0x5
	.2byte	0x10b
	.byte	0x24
	.4byte	0x959
	.uleb128 0x13
	.4byte	.LASF869
	.byte	0x5
	.2byte	0x10e
	.byte	0x2c
	.4byte	0x90b
	.uleb128 0x13
	.4byte	.LASF870
	.byte	0x5
	.2byte	0x10f
	.byte	0x2c
	.4byte	0x90b
	.uleb128 0x17
	.4byte	0x62
	.4byte	0x9d3
	.uleb128 0x18
	.4byte	0xac
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	0x9c3
	.uleb128 0x13
	.4byte	.LASF871
	.byte	0x5
	.2byte	0x111
	.byte	0x23
	.4byte	0x9d3
	.uleb128 0x17
	.4byte	0x633
	.4byte	0x9f0
	.uleb128 0x19
	.byte	0
	.uleb128 0x4
	.4byte	0x9e5
	.uleb128 0x13
	.4byte	.LASF872
	.byte	0x5
	.2byte	0x113
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF873
	.byte	0x5
	.2byte	0x114
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF874
	.byte	0x5
	.2byte	0x115
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF875
	.byte	0x5
	.2byte	0x116
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF876
	.byte	0x5
	.2byte	0x118
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF877
	.byte	0x5
	.2byte	0x119
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF878
	.byte	0x5
	.2byte	0x11a
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF879
	.byte	0x5
	.2byte	0x11b
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF880
	.byte	0x5
	.2byte	0x11c
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x13
	.4byte	.LASF881
	.byte	0x5
	.2byte	0x11d
	.byte	0x13
	.4byte	0x9f0
	.uleb128 0x12
	.4byte	0x99
	.4byte	0xa86
	.uleb128 0xd
	.4byte	0xa86
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xab4
	.uleb128 0xe
	.4byte	.LASF882
	.byte	0x8
	.byte	0x6
	.byte	0x2e
	.byte	0x8
	.4byte	0xab4
	.uleb128 0x9
	.4byte	.LASF883
	.byte	0x6
	.byte	0x30
	.byte	0x8
	.4byte	0x606
	.byte	0
	.uleb128 0x9
	.4byte	.LASF884
	.byte	0x6
	.byte	0x31
	.byte	0x8
	.4byte	0x606
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0xa8c
	.uleb128 0x13
	.4byte	.LASF885
	.byte	0x5
	.2byte	0x133
	.byte	0xe
	.4byte	0xac6
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa77
	.uleb128 0x12
	.4byte	0x99
	.4byte	0xadb
	.uleb128 0xd
	.4byte	0xadb
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa8c
	.uleb128 0x13
	.4byte	.LASF886
	.byte	0x5
	.2byte	0x134
	.byte	0xe
	.4byte	0xaee
	.uleb128 0xb
	.byte	0x4
	.4byte	0xacc
	.uleb128 0x1a
	.4byte	.LASF887
	.byte	0x5
	.2byte	0x14b
	.byte	0x18
	.4byte	0xb01
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb07
	.uleb128 0x12
	.4byte	0x662
	.4byte	0xb16
	.uleb128 0xd
	.4byte	0x99
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF888
	.byte	0x8
	.byte	0x5
	.2byte	0x14d
	.byte	0x10
	.4byte	0xb41
	.uleb128 0xf
	.4byte	.LASF889
	.byte	0x5
	.2byte	0x14f
	.byte	0x1c
	.4byte	0xaf4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF890
	.byte	0x5
	.2byte	0x150
	.byte	0x21
	.4byte	0xb41
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb16
	.uleb128 0x1a
	.4byte	.LASF891
	.byte	0x5
	.2byte	0x151
	.byte	0x3
	.4byte	0xb16
	.uleb128 0x13
	.4byte	.LASF892
	.byte	0x5
	.2byte	0x155
	.byte	0x1f
	.4byte	0xb61
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb47
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF893
	.uleb128 0x3
	.4byte	.LASF894
	.byte	0x7
	.byte	0x38
	.byte	0x12
	.4byte	0xa0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x1c
	.4byte	.LASF1044
	.byte	0x7
	.byte	0x1
	.4byte	0x5b
	.byte	0x8
	.2byte	0x1f0
	.byte	0xe
	.4byte	0xbee
	.uleb128 0x7
	.4byte	.LASF895
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF896
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF897
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF898
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF900
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF901
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF902
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF903
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF904
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF905
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF906
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF907
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF908
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF909
	.byte	0x13
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF910
	.byte	0x10
	.byte	0x8
	.2byte	0x233
	.byte	0x10
	.4byte	0xc43
	.uleb128 0xf
	.4byte	.LASF911
	.byte	0x8
	.2byte	0x238
	.byte	0xe
	.4byte	0x7a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF912
	.byte	0x8
	.2byte	0x23c
	.byte	0xc
	.4byte	0x37
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF913
	.byte	0x8
	.2byte	0x240
	.byte	0x11
	.4byte	0xb6e
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF914
	.byte	0x8
	.2byte	0x244
	.byte	0x11
	.4byte	0xb6e
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF915
	.byte	0x8
	.2byte	0x248
	.byte	0x11
	.4byte	0xb6e
	.byte	0xc
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF916
	.byte	0x8
	.2byte	0x249
	.byte	0x2
	.4byte	0xbee
	.uleb128 0xe
	.4byte	.LASF917
	.byte	0x8
	.byte	0x9
	.byte	0x53
	.byte	0x10
	.4byte	0xc78
	.uleb128 0x9
	.4byte	.LASF918
	.byte	0x9
	.byte	0x55
	.byte	0xe
	.4byte	0xa0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF919
	.byte	0x9
	.byte	0x56
	.byte	0xe
	.4byte	0x67
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF920
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0xc50
	.uleb128 0xe
	.4byte	.LASF921
	.byte	0x1
	.byte	0xa
	.byte	0xd3
	.byte	0xc
	.4byte	0xcb2
	.uleb128 0x1d
	.ascii	"Min\000"
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x37
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.ascii	"Max\000"
	.byte	0xa
	.byte	0xe4
	.byte	0x10
	.4byte	0x37
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	.LASF923
	.byte	0x1
	.byte	0xa
	.byte	0xca
	.byte	0xf
	.4byte	0xcd8
	.uleb128 0x16
	.4byte	.LASF811
	.byte	0xa
	.byte	0xcf
	.byte	0xc
	.4byte	0x37
	.uleb128 0x16
	.4byte	.LASF810
	.byte	0xa
	.byte	0xe5
	.byte	0x6
	.4byte	0xc84
	.byte	0
	.uleb128 0x3
	.4byte	.LASF924
	.byte	0xa
	.byte	0xe6
	.byte	0x2
	.4byte	0xcb2
	.uleb128 0xe
	.4byte	.LASF925
	.byte	0xc
	.byte	0xa
	.byte	0xeb
	.byte	0x10
	.4byte	0xd26
	.uleb128 0x9
	.4byte	.LASF926
	.byte	0xa
	.byte	0xf0
	.byte	0xe
	.4byte	0xa0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF927
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF928
	.byte	0xa
	.byte	0xf8
	.byte	0xf
	.4byte	0xcd8
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF929
	.byte	0xa
	.byte	0xfc
	.byte	0xd
	.4byte	0x4a
	.byte	0x9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF930
	.byte	0xa
	.byte	0xfd
	.byte	0x2
	.4byte	0xce4
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd26
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x17
	.4byte	0x56
	.4byte	0xd4e
	.uleb128 0x18
	.4byte	0xac
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0xd3e
	.uleb128 0x1e
	.4byte	.LASF970
	.byte	0xa
	.2byte	0x966
	.byte	0x16
	.4byte	0xd4e
	.uleb128 0x5
	.byte	0x3
	.4byte	LoRaMacMaxEirpTable
	.uleb128 0xe
	.4byte	.LASF931
	.byte	0x6
	.byte	0xb
	.byte	0x30
	.byte	0x10
	.4byte	0xdb5
	.uleb128 0x9
	.4byte	.LASF932
	.byte	0xb
	.byte	0x35
	.byte	0xd
	.4byte	0x4a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF933
	.byte	0xb
	.byte	0x39
	.byte	0xc
	.4byte	0x37
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF934
	.byte	0xb
	.byte	0x3d
	.byte	0xc
	.4byte	0x37
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF935
	.byte	0xb
	.byte	0x41
	.byte	0xd
	.4byte	0x4a
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF936
	.byte	0xb
	.byte	0x45
	.byte	0xe
	.4byte	0x7a
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF937
	.byte	0xb
	.byte	0x46
	.byte	0x2
	.4byte	0xd66
	.uleb128 0xe
	.4byte	.LASF938
	.byte	0x20
	.byte	0xb
	.byte	0x48
	.byte	0x10
	.4byte	0xe9f
	.uleb128 0x9
	.4byte	.LASF939
	.byte	0xb
	.byte	0x4d
	.byte	0xf
	.4byte	0x5d2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF940
	.byte	0xb
	.byte	0x51
	.byte	0xd
	.4byte	0x4a
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF941
	.byte	0xb
	.byte	0x55
	.byte	0xa
	.4byte	0x1c9
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF933
	.byte	0xb
	.byte	0x59
	.byte	0xc
	.4byte	0x37
	.byte	0x6
	.uleb128 0x9
	.4byte	.LASF934
	.byte	0xb
	.byte	0x5d
	.byte	0xc
	.4byte	0x37
	.byte	0x7
	.uleb128 0x9
	.4byte	.LASF932
	.byte	0xb
	.byte	0x61
	.byte	0xd
	.4byte	0x4a
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF942
	.byte	0xb
	.byte	0x65
	.byte	0xc
	.4byte	0x37
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF943
	.byte	0xb
	.byte	0x69
	.byte	0xc
	.4byte	0x37
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF944
	.byte	0xb
	.byte	0x6d
	.byte	0xc
	.4byte	0x37
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF945
	.byte	0xb
	.byte	0x71
	.byte	0xd
	.4byte	0x4a
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF946
	.byte	0xb
	.byte	0x75
	.byte	0xf
	.4byte	0xd38
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF947
	.byte	0xb
	.byte	0x79
	.byte	0xc
	.4byte	0x37
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF948
	.byte	0xb
	.byte	0x7d
	.byte	0xc
	.4byte	0x37
	.byte	0x15
	.uleb128 0x9
	.4byte	.LASF949
	.byte	0xb
	.byte	0x81
	.byte	0x16
	.4byte	0xd32
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF950
	.byte	0xb
	.byte	0x85
	.byte	0xc
	.4byte	0x37
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF951
	.byte	0xb
	.byte	0x89
	.byte	0xc
	.4byte	0x37
	.byte	0x1d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF952
	.byte	0xb
	.byte	0x8a
	.byte	0x2
	.4byte	0xdc1
	.uleb128 0xe
	.4byte	.LASF953
	.byte	0x18
	.byte	0xb
	.byte	0x8c
	.byte	0x10
	.4byte	0xf21
	.uleb128 0x9
	.4byte	.LASF949
	.byte	0xb
	.byte	0x91
	.byte	0x16
	.4byte	0xd32
	.byte	0
	.uleb128 0x9
	.4byte	.LASF954
	.byte	0xb
	.byte	0x95
	.byte	0xd
	.4byte	0xf21
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF955
	.byte	0xb
	.byte	0x99
	.byte	0xa
	.4byte	0x1c9
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF956
	.byte	0xb
	.byte	0x9d
	.byte	0xa
	.4byte	0x1c9
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF957
	.byte	0xb
	.byte	0xa1
	.byte	0xa
	.4byte	0x1c9
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF958
	.byte	0xb
	.byte	0xa5
	.byte	0xd
	.4byte	0x4a
	.byte	0xb
	.uleb128 0x9
	.4byte	.LASF959
	.byte	0xb
	.byte	0xa9
	.byte	0xf
	.4byte	0xc78
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF960
	.byte	0xb
	.byte	0xad
	.byte	0x11
	.4byte	0xb6e
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc43
	.uleb128 0x3
	.4byte	.LASF961
	.byte	0xb
	.byte	0xae
	.byte	0x2
	.4byte	0xeab
	.uleb128 0xe
	.4byte	.LASF962
	.byte	0x14
	.byte	0xb
	.byte	0xb0
	.byte	0x10
	.4byte	0xf9c
	.uleb128 0x9
	.4byte	.LASF963
	.byte	0xb
	.byte	0xb5
	.byte	0x14
	.4byte	0xf9c
	.byte	0
	.uleb128 0x9
	.4byte	.LASF926
	.byte	0xb
	.byte	0xb9
	.byte	0xe
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF964
	.byte	0xb
	.byte	0xbd
	.byte	0xd
	.4byte	0x4a
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF965
	.byte	0xb
	.byte	0xc1
	.byte	0xd
	.4byte	0x4a
	.byte	0x9
	.uleb128 0x9
	.4byte	.LASF966
	.byte	0xb
	.byte	0xc5
	.byte	0xd
	.4byte	0x4a
	.byte	0xa
	.uleb128 0x9
	.4byte	.LASF967
	.byte	0xb
	.byte	0xc9
	.byte	0xe
	.4byte	0xa0
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF968
	.byte	0xb
	.byte	0xcd
	.byte	0xe
	.4byte	0x7a
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF969
	.byte	0xb
	.byte	0xce
	.byte	0x2
	.4byte	0xf33
	.uleb128 0x1f
	.4byte	.LASF973
	.byte	0x1
	.2byte	0x169
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xff6
	.uleb128 0x20
	.4byte	.LASF975
	.byte	0x1
	.2byte	0x169
	.byte	0x44
	.4byte	0xff6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.4byte	.LASF971
	.byte	0x1
	.2byte	0x16b
	.byte	0xa
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1e
	.4byte	.LASF972
	.byte	0x1
	.2byte	0x16c
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xfa2
	.uleb128 0x1f
	.4byte	.LASF974
	.byte	0x1
	.2byte	0x13d
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1054
	.uleb128 0x20
	.4byte	.LASF976
	.byte	0x1
	.2byte	0x13d
	.byte	0x40
	.4byte	0x1054
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.4byte	.LASF977
	.byte	0x1
	.2byte	0x13f
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x1e
	.4byte	.LASF978
	.byte	0x1
	.2byte	0x140
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1e
	.4byte	.LASF979
	.byte	0x1
	.2byte	0x141
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xf27
	.uleb128 0x21
	.4byte	.LASF991
	.byte	0x1
	.2byte	0x134
	.byte	0x8
	.4byte	0x37
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b6
	.uleb128 0x20
	.4byte	.LASF980
	.byte	0x1
	.2byte	0x134
	.byte	0x2b
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x20
	.4byte	.LASF981
	.byte	0x1
	.2byte	0x134
	.byte	0x3f
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF982
	.byte	0x1
	.2byte	0x134
	.byte	0x4e
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1e
	.4byte	.LASF983
	.byte	0x1
	.2byte	0x136
	.byte	0xc
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF984
	.byte	0x1
	.2byte	0x12e
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112e
	.uleb128 0x20
	.4byte	.LASF985
	.byte	0x1
	.2byte	0x12e
	.byte	0x34
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.4byte	.LASF986
	.byte	0x1
	.2byte	0x12e
	.byte	0x45
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x20
	.4byte	.LASF987
	.byte	0x1
	.2byte	0x12e
	.byte	0x5c
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LASF988
	.byte	0x1
	.2byte	0x12e
	.byte	0x6e
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x20
	.4byte	.LASF989
	.byte	0x1
	.2byte	0x12e
	.byte	0x84
	.4byte	0xb7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x20
	.4byte	.LASF990
	.byte	0x1
	.2byte	0x12e
	.byte	0x9c
	.4byte	0x112e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF992
	.byte	0x1
	.2byte	0x129
	.byte	0x8
	.4byte	0x30
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1160
	.uleb128 0x20
	.4byte	.LASF993
	.byte	0x1
	.2byte	0x129
	.byte	0x32
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x21
	.4byte	.LASF994
	.byte	0x1
	.2byte	0x124
	.byte	0x8
	.4byte	0x30
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x119c
	.uleb128 0x20
	.4byte	.LASF993
	.byte	0x1
	.2byte	0x124
	.byte	0x33
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x20
	.4byte	.LASF995
	.byte	0x1
	.2byte	0x124
	.byte	0x43
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x22
	.4byte	.LASF996
	.byte	0x1
	.byte	0xeb
	.byte	0x9
	.4byte	0x4a
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x122e
	.uleb128 0x23
	.4byte	.LASF997
	.byte	0x1
	.byte	0xeb
	.byte	0x53
	.4byte	0x122e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.ascii	"dr\000"
	.byte	0x1
	.byte	0xeb
	.byte	0x69
	.4byte	0x1234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x23
	.4byte	.LASF998
	.byte	0x1
	.byte	0xeb
	.byte	0x75
	.4byte	0x1234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x23
	.4byte	.LASF999
	.byte	0x1
	.byte	0xeb
	.byte	0x85
	.4byte	0x1a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.4byte	.LASF1000
	.byte	0x1
	.byte	0xed
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x25
	.4byte	.LASF972
	.byte	0x1
	.byte	0xee
	.byte	0xc
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x25
	.4byte	.LASF1001
	.byte	0x1
	.byte	0xef
	.byte	0xc
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x25
	.4byte	.LASF1002
	.byte	0x1
	.byte	0xf0
	.byte	0xc
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xe9f
	.uleb128 0xb
	.byte	0x4
	.4byte	0x37
	.uleb128 0x26
	.4byte	.LASF1003
	.byte	0x1
	.byte	0xd3
	.byte	0x9
	.4byte	0x4a
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1282
	.uleb128 0x23
	.4byte	.LASF1004
	.byte	0x1
	.byte	0xd3
	.byte	0x2f
	.4byte	0x1a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LASF1005
	.byte	0x1
	.byte	0xd3
	.byte	0x55
	.4byte	0x1282
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.4byte	.LASF1006
	.byte	0x1
	.byte	0xd5
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xdb5
	.uleb128 0x22
	.4byte	.LASF1007
	.byte	0x1
	.byte	0xa3
	.byte	0xd
	.4byte	0xb6e
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1359
	.uleb128 0x23
	.4byte	.LASF1008
	.byte	0x1
	.byte	0xa3
	.byte	0x31
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x23
	.4byte	.LASF978
	.byte	0x1
	.byte	0xa3
	.byte	0x3e
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -34
	.uleb128 0x23
	.4byte	.LASF1009
	.byte	0x1
	.byte	0xa3
	.byte	0x51
	.4byte	0xf21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.4byte	.LASF1010
	.byte	0x1
	.byte	0xa3
	.byte	0x60
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -35
	.uleb128 0x25
	.4byte	.LASF1011
	.byte	0x1
	.byte	0xa5
	.byte	0x11
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x27
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.byte	0xa8
	.byte	0x12
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x29
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x133e
	.uleb128 0x25
	.4byte	.LASF1012
	.byte	0x1
	.byte	0xac
	.byte	0x19
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x25
	.4byte	.LASF1013
	.byte	0x1
	.byte	0xad
	.byte	0x19
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x25
	.4byte	.LASF1014
	.byte	0x1
	.byte	0xae
	.byte	0x19
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x27
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x25
	.4byte	.LASF1015
	.byte	0x1
	.byte	0xbe
	.byte	0x1d
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF1016
	.byte	0x1
	.byte	0x96
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x139d
	.uleb128 0x23
	.4byte	.LASF1008
	.byte	0x1
	.byte	0x96
	.byte	0x26
	.4byte	0x1c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x23
	.4byte	.LASF1017
	.byte	0x1
	.byte	0x96
	.byte	0x36
	.4byte	0xf21
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x23
	.4byte	.LASF1018
	.byte	0x1
	.byte	0x96
	.byte	0x48
	.4byte	0xb6e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF1019
	.byte	0x1
	.byte	0x8b
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13f8
	.uleb128 0x23
	.4byte	.LASF1020
	.byte	0x1
	.byte	0x8b
	.byte	0x2a
	.4byte	0xd38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.4byte	.LASF1021
	.byte	0x1
	.byte	0x8b
	.byte	0x46
	.4byte	0xd38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x24
	.ascii	"len\000"
	.byte	0x1
	.byte	0x8b
	.byte	0x5f
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x27
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.byte	0x8f
	.byte	0x16
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1022
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.4byte	0x4a
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1466
	.uleb128 0x23
	.4byte	.LASF1023
	.byte	0x1
	.byte	0x7a
	.byte	0x2e
	.4byte	0xd38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF1024
	.byte	0x1
	.byte	0x7a
	.byte	0x44
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x23
	.4byte	.LASF1025
	.byte	0x1
	.byte	0x7a
	.byte	0x56
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x25
	.4byte	.LASF1026
	.byte	0x1
	.byte	0x7c
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x27
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.byte	0x83
	.byte	0x12
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1027
	.byte	0x1
	.byte	0x6b
	.byte	0x6
	.4byte	0x1c9
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14bc
	.uleb128 0x23
	.4byte	.LASF1023
	.byte	0x1
	.byte	0x6b
	.byte	0x29
	.4byte	0xd38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.ascii	"id\000"
	.byte	0x1
	.byte	0x6b
	.byte	0x3f
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x23
	.4byte	.LASF1028
	.byte	0x1
	.byte	0x6b
	.byte	0x4b
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x25
	.4byte	.LASF1029
	.byte	0x1
	.byte	0x6d
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1030
	.byte	0x1
	.byte	0x62
	.byte	0x9
	.4byte	0x4a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1504
	.uleb128 0x23
	.4byte	.LASF1031
	.byte	0x1
	.byte	0x62
	.byte	0x2a
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x24
	.ascii	"min\000"
	.byte	0x1
	.byte	0x62
	.byte	0x38
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x24
	.ascii	"max\000"
	.byte	0x1
	.byte	0x62
	.byte	0x44
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -3
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1032
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	0x1c9
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b3
	.uleb128 0x23
	.4byte	.LASF1026
	.byte	0x1
	.byte	0x49
	.byte	0x28
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LASF1023
	.byte	0x1
	.byte	0x49
	.byte	0x3e
	.4byte	0xd38
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii	"dr\000"
	.byte	0x1
	.byte	0x49
	.byte	0x53
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x23
	.4byte	.LASF1033
	.byte	0x1
	.byte	0x49
	.byte	0x5e
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x23
	.4byte	.LASF1034
	.byte	0x1
	.byte	0x49
	.byte	0x6c
	.4byte	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF1035
	.byte	0x1
	.byte	0x49
	.byte	0x84
	.4byte	0xd32
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x28
	.ascii	"i\000"
	.byte	0x1
	.byte	0x50
	.byte	0x12
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x28
	.ascii	"k\000"
	.byte	0x1
	.byte	0x50
	.byte	0x19
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x27
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x28
	.ascii	"j\000"
	.byte	0x1
	.byte	0x52
	.byte	0x16
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF1036
	.byte	0x1
	.byte	0x36
	.byte	0xa
	.4byte	0x7a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ec
	.uleb128 0x23
	.4byte	.LASF1037
	.byte	0x1
	.byte	0x36
	.byte	0x2b
	.4byte	0xc78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x25
	.4byte	.LASF978
	.byte	0x1
	.byte	0x38
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF1045
	.byte	0x1
	.byte	0x28
	.byte	0x10
	.4byte	0x4a
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF1038
	.byte	0x1
	.byte	0x28
	.byte	0x28
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x23
	.4byte	.LASF1039
	.byte	0x1
	.byte	0x28
	.byte	0x36
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x25
	.4byte	.LASF1040
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x27
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x28
	.ascii	"j\000"
	.byte	0x1
	.byte	0x2c
	.byte	0x12
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
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
	.uleb128 0x3
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x402
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1648
	.4byte	0xcf
	.ascii	"MODEM_FSK\000"
	.4byte	0xd5
	.ascii	"MODEM_LORA\000"
	.4byte	0xb93
	.ascii	"SRV_MAC_RESET_CONF\000"
	.4byte	0xb99
	.ascii	"SRV_MAC_LINK_CHECK_ANS\000"
	.4byte	0xb9f
	.ascii	"SRV_MAC_LINK_ADR_REQ\000"
	.4byte	0xba5
	.ascii	"SRV_MAC_DUTY_CYCLE_REQ\000"
	.4byte	0xbab
	.ascii	"SRV_MAC_RX_PARAM_SETUP_REQ\000"
	.4byte	0xbb1
	.ascii	"SRV_MAC_DEV_STATUS_REQ\000"
	.4byte	0xbb7
	.ascii	"SRV_MAC_NEW_CHANNEL_REQ\000"
	.4byte	0xbbd
	.ascii	"SRV_MAC_RX_TIMING_SETUP_REQ\000"
	.4byte	0xbc3
	.ascii	"SRV_MAC_TX_PARAM_SETUP_REQ\000"
	.4byte	0xbc9
	.ascii	"SRV_MAC_DL_CHANNEL_REQ\000"
	.4byte	0xbcf
	.ascii	"SRV_MAC_DEVICE_TIME_ANS\000"
	.4byte	0xbd5
	.ascii	"SRV_MAC_PING_SLOT_INFO_ANS\000"
	.4byte	0xbdb
	.ascii	"SRV_MAC_PING_SLOT_CHANNEL_REQ\000"
	.4byte	0xbe1
	.ascii	"SRV_MAC_BEACON_TIMING_ANS\000"
	.4byte	0xbe7
	.ascii	"SRV_MAC_BEACON_FREQ_REQ\000"
	.4byte	0xd53
	.ascii	"LoRaMacMaxEirpTable\000"
	.4byte	0xfae
	.ascii	"RegionCommonRxBeaconSetup\000"
	.4byte	0xffc
	.ascii	"RegionCommonCalcBackOff\000"
	.4byte	0x105a
	.ascii	"RegionCommonComputeTxPower\000"
	.4byte	0x10b6
	.ascii	"RegionCommonComputeRxWindowParameters\000"
	.4byte	0x1134
	.ascii	"RegionCommonComputeSymbolTimeFsk\000"
	.4byte	0x1160
	.ascii	"RegionCommonComputeSymbolTimeLoRa\000"
	.4byte	0x119c
	.ascii	"RegionCommonLinkAdrReqVerifyParams\000"
	.4byte	0x123a
	.ascii	"RegionCommonParseLinkAdrReq\000"
	.4byte	0x1288
	.ascii	"RegionCommonUpdateBandTimeOff\000"
	.4byte	0x1359
	.ascii	"RegionCommonSetBandTxDone\000"
	.4byte	0x139d
	.ascii	"RegionCommonChanMaskCopy\000"
	.4byte	0x13f8
	.ascii	"RegionCommonCountChannels\000"
	.4byte	0x1466
	.ascii	"RegionCommonChanDisable\000"
	.4byte	0x14bc
	.ascii	"RegionCommonValueInRange\000"
	.4byte	0x1504
	.ascii	"RegionCommonChanVerifyDr\000"
	.4byte	0x15b3
	.ascii	"RegionCommonGetJoinDc\000"
	.4byte	0x15ec
	.ascii	"CountChannels\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x41a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1648
	.4byte	0x29
	.ascii	"float\000"
	.4byte	0x30
	.ascii	"double\000"
	.4byte	0x43
	.ascii	"signed char\000"
	.4byte	0x37
	.ascii	"int8_t\000"
	.4byte	0x5b
	.ascii	"unsigned char\000"
	.4byte	0x4a
	.ascii	"uint8_t\000"
	.4byte	0x73
	.ascii	"short int\000"
	.4byte	0x67
	.ascii	"int16_t\000"
	.4byte	0x86
	.ascii	"short unsigned int\000"
	.4byte	0x7a
	.ascii	"uint16_t\000"
	.4byte	0x99
	.ascii	"int\000"
	.4byte	0x8d
	.ascii	"int32_t\000"
	.4byte	0xac
	.ascii	"unsigned int\000"
	.4byte	0xa0
	.ascii	"uint32_t\000"
	.4byte	0xb3
	.ascii	"long long int\000"
	.4byte	0xba
	.ascii	"long long unsigned int\000"
	.4byte	0xdc
	.ascii	"RadioModems_t\000"
	.4byte	0x10f
	.ascii	"RadioState_t\000"
	.4byte	0x1c9
	.ascii	"_Bool\000"
	.4byte	0x1d6
	.ascii	"RadioEvents_t\000"
	.4byte	0x1e2
	.ascii	"Radio_s\000"
	.4byte	0x56a
	.ascii	"Version_s\000"
	.4byte	0x5ac
	.ascii	"Version_u\000"
	.4byte	0x5d2
	.ascii	"Version_t\000"
	.4byte	0x606
	.ascii	"long int\000"
	.4byte	0x5de
	.ascii	"__mbstate_s\000"
	.4byte	0x62c
	.ascii	"char\000"
	.4byte	0x812
	.ascii	"__RAL_locale_data_t\000"
	.4byte	0x8ff
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x94d
	.ascii	"__RAL_locale_t\000"
	.4byte	0x95e
	.ascii	"__locale_s\000"
	.4byte	0xaf4
	.ascii	"__RAL_error_decoder_fn_t\000"
	.4byte	0xb16
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0xb47
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0xb67
	.ascii	"long double\000"
	.4byte	0xb6e
	.ascii	"TimerTime_t\000"
	.4byte	0xb80
	.ascii	"eLoRaMacSrvCmd\000"
	.4byte	0xbee
	.ascii	"sBand\000"
	.4byte	0xc43
	.ascii	"Band_t\000"
	.4byte	0xa8c
	.ascii	"timeval\000"
	.4byte	0xc50
	.ascii	"SysTime_s\000"
	.4byte	0xc78
	.ascii	"SysTime_t\000"
	.4byte	0xc84
	.ascii	"sFields\000"
	.4byte	0xcb2
	.ascii	"uDrRange\000"
	.4byte	0xcd8
	.ascii	"DrRange_t\000"
	.4byte	0xce4
	.ascii	"sChannelParams\000"
	.4byte	0xd26
	.ascii	"ChannelParams_t\000"
	.4byte	0xd66
	.ascii	"sRegionCommonLinkAdrParams\000"
	.4byte	0xdb5
	.ascii	"RegionCommonLinkAdrParams_t\000"
	.4byte	0xdc1
	.ascii	"sRegionCommonLinkAdrReqVerifyParams\000"
	.4byte	0xe9f
	.ascii	"RegionCommonLinkAdrReqVerifyParams_t\000"
	.4byte	0xeab
	.ascii	"sRegionCommonCalcBackOffParams\000"
	.4byte	0xf27
	.ascii	"RegionCommonCalcBackOffParams_t\000"
	.4byte	0xf33
	.ascii	"sRegionCommonRxBeaconSetupParams\000"
	.4byte	0xfa2
	.ascii	"RegionCommonRxBeaconSetupParams_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x9c
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
	.file 12 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/math.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xc
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF510
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.file 13 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x20
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF576
	.file 14 "../../../../nordic_sdk/nRF5_SDK_14.2.0_17b948a/components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x20
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF633
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF634
	.file 15 "../../../../lora/system/timer.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF635
	.file 16 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stddef.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF636
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF663
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.file 17 "../../../../lora/mac/region/Region.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF670
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF671
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF672
	.file 18 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/time.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF673
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF676
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x3
	.uleb128 0x87
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x3
	.uleb128 0xa95
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF746
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
	.section	.debug_macro,"G",%progbits,wm4.math.h.39.36eb78145b8dd9c8054f35ff3e8356e9,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF509
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdint.h.39.fe42d6eb18d369206696c6985313e641,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF570
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.39.3758cb47b714dfcbf7837a03b10a6ad6,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF575
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.nordic_common.h.45.16eceeed31f8d5a54ec899dc2bdaca21,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF629
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.utilities.h.41.dd792736c5bcab64215dded6a6fa212f,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF632
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.39.ff21eb83ebfc80fb95245a821dd1e413,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF638
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF657
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.44.3483ea4b5d43bc7237f8a88f13989923,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF658
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF661
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.rtcboard.h.42.b337a4ba498456f95ff10ff1362ea4fa,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF667
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.LoRaMacTypes.h.50.f8aa2b56650e5f13fc09f127047e2b7c,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF669
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.time.h.39.5b805c23b4e4a1b38dd0319ef439ea92,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF675
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.systime.h.39.79bbe2f9e5b0ad96b7ccf313967b6e2d,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF699
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF703
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.LoRaMac.h.140.57e9e82b1e62bed8e8fee55a15ce5b7c,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF669
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.Region.h.69.56d1290d4a742c2f8b19d6cb1caa298b,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x1c7
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x1d7
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x1f7
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x217
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x237
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x23c
	.4byte	.LASF743
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF789:
	.ascii	"Send\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF1007:
	.ascii	"RegionCommonUpdateBandTimeOff\000"
.LASF408:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF750:
	.ascii	"int8_t\000"
.LASF253:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF680:
	.ascii	"TM_SECONDS_IN_1HOUR ( ( uint32_t ) 3600U )\000"
.LASF734:
	.ascii	"TX_POWER_6 6\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF521:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF504:
	.ascii	"isgreater(x,y) (!isunordered(x, y) && (x > y))\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF766:
	.ascii	"RF_RX_RUNNING\000"
.LASF864:
	.ascii	"__locale_s\000"
.LASF218:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF638:
	.ascii	"__THREAD __thread\000"
.LASF730:
	.ascii	"TX_POWER_2 2\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF654:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF855:
	.ascii	"__towupper\000"
.LASF859:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF728:
	.ascii	"TX_POWER_0 0\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF214:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF240:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF641:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF212:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF703:
	.ascii	"UNIX_GPS_EPOCH_OFFSET 315964800\000"
.LASF1001:
	.ascii	"txPower\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF866:
	.ascii	"Radio\000"
.LASF757:
	.ascii	"int32_t\000"
.LASF952:
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
.LASF776:
	.ascii	"CadDone\000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF237:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF956:
	.ascii	"Joined\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF243:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF484:
	.ascii	"M_2_PI 0.63661977236758134308\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF414:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF498:
	.ascii	"isinf(x) (sizeof(x) == sizeof(float) ? __float32_is"
	.ascii	"inf(x) : __float64_isinf(x))\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF619:
	.ascii	"BIT_24 0x01000000\000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF694:
	.ascii	"TM_MONTH_NOVEMBER ( ( uint8_t )10U )\000"
.LASF667:
	.ascii	"RTC_TEMP_DEV_TURNOVER ( 5.0 )\000"
.LASF932:
	.ascii	"NbRep\000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF848:
	.ascii	"time_format\000"
.LASF552:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF640:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF876:
	.ascii	"__RAL_data_utf8_period\000"
.LASF524:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF558:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF453:
	.ascii	"__SES_VERSION 53201\000"
.LASF625:
	.ascii	"BIT_30 0x40000000\000"
.LASF659:
	.ascii	"NULL 0\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF796:
	.ascii	"Read\000"
.LASF710:
	.ascii	"LORAMAC_MAX_MC_CTX 4\000"
.LASF606:
	.ascii	"BIT_11 0x0800\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF477:
	.ascii	"M_LOG10E 0.43429448190325182765\000"
.LASF844:
	.ascii	"month_names\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF515:
	.ascii	"UINT16_MAX 65535\000"
.LASF483:
	.ascii	"M_1_PI 0.31830988618379067154\000"
.LASF877:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF765:
	.ascii	"RF_IDLE\000"
.LASF821:
	.ascii	"int_curr_symbol\000"
.LASF847:
	.ascii	"date_format\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF603:
	.ascii	"BIT_8 0x0100\000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF684:
	.ascii	"TM_MONTH_JANUARY ( ( uint8_t ) 0U )\000"
.LASF205:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF1040:
	.ascii	"nbActiveBits\000"
.LASF982:
	.ascii	"antennaGain\000"
.LASF762:
	.ascii	"MODEM_FSK\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF487:
	.ascii	"M_SQRT1_2 0.70710678118654752440\000"
.LASF914:
	.ascii	"LastTxDoneTime\000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF832:
	.ascii	"n_cs_precedes\000"
.LASF1043:
	.ascii	"C:\\SES\\ISP4520-examples-master\\ISP4520-examples-"
	.ascii	"master\\src\\apps\\lorawan_class_A\\ISP4520\\ses\000"
.LASF678:
	.ascii	"TM_DAYS_IN_YEAR ( ( uint32_t ) 365U )\000"
.LASF985:
	.ascii	"tSymbol\000"
.LASF512:
	.ascii	"UINT8_MAX 255\000"
.LASF853:
	.ascii	"__tolower\000"
.LASF909:
	.ascii	"SRV_MAC_BEACON_FREQ_REQ\000"
.LASF209:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF669:
	.ascii	"LORAMAC_CRYPTO_MULTICAST_KEYS 127\000"
.LASF514:
	.ascii	"INT8_MIN (-128)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF649:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF635:
	.ascii	"__TIMER_H__ \000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF828:
	.ascii	"int_frac_digits\000"
.LASF469:
	.ascii	"FP_SUBNORMAL 0x01\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF213:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF741:
	.ascii	"TX_POWER_13 13\000"
.LASF624:
	.ascii	"BIT_29 0x20000000\000"
.LASF736:
	.ascii	"TX_POWER_8 8\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF979:
	.ascii	"joinDutyCycle\000"
.LASF208:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF229:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF981:
	.ascii	"maxEirp\000"
.LASF826:
	.ascii	"positive_sign\000"
.LASF239:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF455:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF959:
	.ascii	"ElapsedTime\000"
.LASF510:
	.ascii	"__RADIO_H__ \000"
.LASF425:
	.ascii	"__VFP_FP__ 1\000"
.LASF903:
	.ascii	"SRV_MAC_TX_PARAM_SETUP_REQ\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF701:
	.ascii	"TM_WEEKDAY_FRIDAY ( ( uint8_t )5U )\000"
.LASF389:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF493:
	.ascii	"__float32_infinity __builtin_huge_valf()\000"
.LASF584:
	.ascii	"MAX(a,b) ((a) < (b) ? (b) : (a))\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF517:
	.ascii	"INT16_MAX 32767\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF488:
	.ascii	"INFINITY __builtin_huge_val()\000"
.LASF568:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF232:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF553:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF823:
	.ascii	"mon_decimal_point\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF816:
	.ascii	"long int\000"
.LASF1034:
	.ascii	"maxDr\000"
.LASF961:
	.ascii	"RegionCommonCalcBackOffParams_t\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF226:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF643:
	.ascii	"__CODE \000"
.LASF233:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF732:
	.ascii	"TX_POWER_4 4\000"
.LASF888:
	.ascii	"__RAL_error_decoder_s\000"
.LASF891:
	.ascii	"__RAL_error_decoder_t\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF996:
	.ascii	"RegionCommonLinkAdrReqVerifyParams\000"
.LASF630:
	.ascii	"POW2(n) ( 1 << n )\000"
.LASF867:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF1013:
	.ascii	"elapsedTx\000"
.LASF644:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF490:
	.ascii	"HUGE_VAL __builtin_huge_val()\000"
.LASF887:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF913:
	.ascii	"LastJoinTxDoneTime\000"
.LASF435:
	.ascii	"__ARM_NEON__\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF361:
	.ascii	"__TA_FBIT__ 63\000"
.LASF438:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF837:
	.ascii	"int_n_cs_precedes\000"
.LASF611:
	.ascii	"BIT_16 0x00010000\000"
.LASF968:
	.ascii	"SymbolTimeout\000"
.LASF756:
	.ascii	"short unsigned int\000"
.LASF793:
	.ascii	"SetTxContinuousWave\000"
.LASF223:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF1033:
	.ascii	"minDr\000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF505:
	.ascii	"isgreaterequal(x,y) (!isunordered(x, y) && (x >= y)"
	.ascii	")\000"
.LASF523:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF503:
	.ascii	"fpclassify(x) (__is_float32(x) ? __float32_classify"
	.ascii	"(x) : __float64_classify(x))\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF895:
	.ascii	"SRV_MAC_RESET_CONF\000"
.LASF928:
	.ascii	"DrRange\000"
.LASF958:
	.ascii	"Channel\000"
.LASF468:
	.ascii	"FP_ZERO 0x00\000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF222:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF537:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF551:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF967:
	.ascii	"RxTime\000"
.LASF1003:
	.ascii	"RegionCommonParseLinkAdrReq\000"
.LASF245:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF858:
	.ascii	"__mbtowc\000"
.LASF491:
	.ascii	"HUGE_VALF __builtin_huge_valf()\000"
.LASF960:
	.ascii	"TxTimeOnAir\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF249:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF608:
	.ascii	"BIT_13 0x2000\000"
.LASF544:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF749:
	.ascii	"signed char\000"
.LASF751:
	.ascii	"uint8_t\000"
.LASF434:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF600:
	.ascii	"BIT_5 0x20\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF857:
	.ascii	"__wctomb\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF615:
	.ascii	"BIT_20 0x00100000\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF473:
	.ascii	"FP_ILOGB0 (-INT_MAX)\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF715:
	.ascii	"DR_3 3\000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF773:
	.ascii	"RxTimeout\000"
.LASF545:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF211:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF519:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF774:
	.ascii	"RxError\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF752:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF252:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF250:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF833:
	.ascii	"n_sep_by_space\000"
.LASF713:
	.ascii	"DR_1 1\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF937:
	.ascii	"RegionCommonLinkAdrParams_t\000"
.LASF565:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF950:
	.ascii	"MinTxPower\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF612:
	.ascii	"BIT_17 0x00020000\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF563:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF878:
	.ascii	"__RAL_data_utf8_space\000"
.LASF471:
	.ascii	"FP_INFINITE 0x03\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF594:
	.ascii	"IS_SET(W,B) (((W) >> (B)) & 1)\000"
.LASF577:
	.ascii	"NORDIC_COMMON_H__ \000"
.LASF501:
	.ascii	"isnormal(x) (sizeof(x) == sizeof(float) ? __float32"
	.ascii	"_isnormal(x) : __float64_isnormal(x))\000"
.LASF516:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF489:
	.ascii	"NAN __builtin_nanf(\"0x7fc00000\")\000"
.LASF777:
	.ascii	"_Bool\000"
.LASF632:
	.ascii	"CRITICAL_SECTION_END() BoardCriticalSectionEnd( &ma"
	.ascii	"sk )\000"
.LASF948:
	.ascii	"MaxDatarate\000"
.LASF666:
	.ascii	"RTC_TEMP_TURNOVER ( 25.0 )\000"
.LASF1031:
	.ascii	"value\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF944:
	.ascii	"CurrentNbRep\000"
.LASF391:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF817:
	.ascii	"char\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF658:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF598:
	.ascii	"BIT_3 0x08\000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF1020:
	.ascii	"channelsMaskDest\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF230:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF835:
	.ascii	"n_sign_posn\000"
.LASF653:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF436:
	.ascii	"__ARM_NEON\000"
.LASF882:
	.ascii	"timeval\000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF560:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF706:
	.ascii	"DOWN_LINK 1\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF698:
	.ascii	"TM_WEEKDAY_TUESDAY ( ( uint8_t )2U )\000"
.LASF918:
	.ascii	"Seconds\000"
.LASF875:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF692:
	.ascii	"TM_MONTH_SEPTEMBER ( ( uint8_t ) 8U )\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF602:
	.ascii	"BIT_7 0x80\000"
.LASF799:
	.ascii	"SetMaxPayloadLength\000"
.LASF824:
	.ascii	"mon_thousands_sep\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF785:
	.ascii	"SetRxConfig\000"
.LASF744:
	.ascii	"BACKOFF_DC_1_HOUR 100\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF527:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF631:
	.ascii	"CRITICAL_SECTION_BEGIN() uint32_t mask; BoardCritic"
	.ascii	"alSectionBegin( &mask )\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF805:
	.ascii	"Radio_s\000"
.LASF479:
	.ascii	"M_LN10 2.30258509299404568402\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF856:
	.ascii	"__towlower\000"
.LASF827:
	.ascii	"negative_sign\000"
.LASF693:
	.ascii	"TM_MONTH_OCTOBER ( ( uint8_t ) 9U )\000"
.LASF459:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF422:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF933:
	.ascii	"Datarate\000"
.LASF836:
	.ascii	"int_p_cs_precedes\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF1015:
	.ascii	"elapsed\000"
.LASF889:
	.ascii	"decode\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF924:
	.ascii	"DrRange_t\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF300:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF543:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF723:
	.ascii	"DR_11 11\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF616:
	.ascii	"BIT_21 0x00200000\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF655:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF622:
	.ascii	"BIT_27 0x08000000\000"
.LASF238:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF725:
	.ascii	"DR_13 13\000"
.LASF225:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF915:
	.ascii	"TimeOff\000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF572:
	.ascii	"bool _Bool\000"
.LASF772:
	.ascii	"RxDone\000"
.LASF737:
	.ascii	"TX_POWER_9 9\000"
.LASF807:
	.ascii	"Revision\000"
.LASF907:
	.ascii	"SRV_MAC_PING_SLOT_CHANNEL_REQ\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF712:
	.ascii	"DR_0 0\000"
.LASF998:
	.ascii	"txPow\000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF464:
	.ascii	"NRF52832_XXAA 1\000"
.LASF727:
	.ascii	"DR_15 15\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF869:
	.ascii	"__RAL_codeset_ascii\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF991:
	.ascii	"RegionCommonComputeTxPower\000"
.LASF494:
	.ascii	"__float64_infinity __builtin_huge_val()\000"
.LASF1036:
	.ascii	"RegionCommonGetJoinDc\000"
.LASF470:
	.ascii	"FP_NORMAL 0x02\000"
.LASF884:
	.ascii	"tv_usec\000"
.LASF717:
	.ascii	"DR_5 5\000"
.LASF613:
	.ascii	"BIT_18 0x00040000\000"
.LASF863:
	.ascii	"__RAL_locale_t\000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF657:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF742:
	.ascii	"TX_POWER_14 14\000"
.LASF554:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF919:
	.ascii	"SubSeconds\000"
.LASF652:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF247:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF768:
	.ascii	"RF_CAD\000"
.LASF528:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF591:
	.ascii	"ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))\000"
.LASF260:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF845:
	.ascii	"abbrev_month_names\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF780:
	.ascii	"GetStatus\000"
.LASF906:
	.ascii	"SRV_MAC_PING_SLOT_INFO_ANS\000"
.LASF806:
	.ascii	"Version_s\000"
.LASF812:
	.ascii	"Version_t\000"
.LASF922:
	.ascii	"Version_u\000"
.LASF862:
	.ascii	"codeset\000"
.LASF983:
	.ascii	"phyTxPower\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF548:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF1029:
	.ascii	"index\000"
.LASF681:
	.ascii	"TM_SECONDS_IN_1MINUTE ( ( uint32_t ) 60U )\000"
.LASF248:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF1027:
	.ascii	"RegionCommonChanDisable\000"
.LASF965:
	.ascii	"BeaconDatarate\000"
.LASF804:
	.ascii	"SetRxDutyCycle\000"
.LASF797:
	.ascii	"WriteBuffer\000"
.LASF440:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF586:
	.ascii	"CONCAT_2_(p1,p2) p1 ##p2\000"
.LASF412:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF224:
	.ascii	"__FLT32X_MAX_EXP__ 1024\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF743:
	.ascii	"TX_POWER_15 15\000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF566:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF815:
	.ascii	"__wchar\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF735:
	.ascii	"TX_POWER_7 7\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF1045:
	.ascii	"CountChannels\000"
.LASF665:
	.ascii	"RTC_TEMP_DEV_COEFFICIENT ( 0.006 )\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF605:
	.ascii	"BIT_10 0x0400\000"
.LASF892:
	.ascii	"__RAL_error_decoder_head\000"
.LASF428:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF781:
	.ascii	"SetModem\000"
.LASF850:
	.ascii	"__RAL_locale_data_t\000"
.LASF775:
	.ascii	"FhssChangeChannel\000"
.LASF518:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF993:
	.ascii	"phyDr\000"
.LASF1000:
	.ascii	"status\000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF236:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF874:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF629:
	.ascii	"UNUSED_RETURN_VALUE(X) UNUSED_VARIABLE(X)\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF642:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF700:
	.ascii	"TM_WEEKDAY_THURSDAY ( ( uint8_t )4U )\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF564:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF499:
	.ascii	"isnan(x) (sizeof(x) == sizeof(float) ? __float32_is"
	.ascii	"nan(x) : __float64_isnan(x))\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF578:
	.ascii	"NRF_MODULE_ENABLED(module) ((defined(module ## _ENA"
	.ascii	"BLED) && (module ## _ENABLED)) ? 1 : 0)\000"
.LASF689:
	.ascii	"TM_MONTH_JUNE ( ( uint8_t ) 5U )\000"
.LASF506:
	.ascii	"isless(x,y) (!isunordered(x, y) && (x < y))\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF570:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF403:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF567:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF555:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF846:
	.ascii	"am_pm_indicator\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF716:
	.ascii	"DR_4 4\000"
.LASF831:
	.ascii	"p_sep_by_space\000"
.LASF231:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF1042:
	.ascii	"C:\\SES\\ISP4520-examples-master\\ISP4520-examples-"
	.ascii	"master\\src\\lora\\mac\\region\\RegionCommon.c\000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF1004:
	.ascii	"payload\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF1026:
	.ascii	"nbChannels\000"
.LASF926:
	.ascii	"Frequency\000"
.LASF980:
	.ascii	"txPowerIndex\000"
.LASF1023:
	.ascii	"channelsMask\000"
.LASF466:
	.ascii	"SWI_DISABLE0 1\000"
.LASF530:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF987:
	.ascii	"rxError\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF397:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF648:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF675:
	.ascii	"CLOCK_MONOTONIC 1\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF677:
	.ascii	"TM_DAYS_IN_LEAP_YEAR ( ( uint32_t ) 366U )\000"
.LASF839:
	.ascii	"int_n_sep_by_space\000"
.LASF984:
	.ascii	"RegionCommonComputeRxWindowParameters\000"
.LASF885:
	.ascii	"__user_set_time_of_day\000"
.LASF986:
	.ascii	"minRxSymbols\000"
.LASF454:
	.ascii	"__GNU_LINKER 1\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF940:
	.ascii	"Status\000"
.LASF951:
	.ascii	"MaxTxPower\000"
.LASF794:
	.ascii	"Rssi\000"
.LASF721:
	.ascii	"DR_9 9\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF322:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF481:
	.ascii	"M_PI_2 1.57079632679489661923\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF417:
	.ascii	"__ARM_ARCH 7\000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF760:
	.ascii	"long long int\000"
.LASF813:
	.ascii	"__mbstate_s\000"
.LASF405:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF443:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF939:
	.ascii	"Version\000"
.LASF1019:
	.ascii	"RegionCommonChanMaskCopy\000"
.LASF1021:
	.ascii	"channelsMaskSrc\000"
.LASF610:
	.ascii	"BIT_15 0x8000\000"
.LASF618:
	.ascii	"BIT_23 0x00800000\000"
.LASF426:
	.ascii	"__ARM_FP\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF683:
	.ascii	"TM_HOURS_IN_1DAY ( ( uint32_t ) 24U )\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF546:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF210:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF293:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF748:
	.ascii	"double\000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF595:
	.ascii	"BIT_0 0x01\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF929:
	.ascii	"Band\000"
.LASF955:
	.ascii	"LastTxIsJoinRequest\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF392:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF798:
	.ascii	"ReadBuffer\000"
.LASF865:
	.ascii	"__category\000"
.LASF430:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF1038:
	.ascii	"mask\000"
.LASF588:
	.ascii	"CONCAT_3_(p1,p2,p3) p1 ##p2 ##p3\000"
.LASF1022:
	.ascii	"RegionCommonCountChannels\000"
.LASF935:
	.ascii	"ChMaskCtrl\000"
.LASF966:
	.ascii	"BeaconChannelBW\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF905:
	.ascii	"SRV_MAC_DEVICE_TIME_ANS\000"
.LASF724:
	.ascii	"DR_12 12\000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF1044:
	.ascii	"eLoRaMacSrvCmd\000"
.LASF674:
	.ascii	"_SYS_TIME_H \000"
.LASF607:
	.ascii	"BIT_12 0x1000\000"
.LASF849:
	.ascii	"date_time_format\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF621:
	.ascii	"BIT_26 0x04000000\000"
.LASF976:
	.ascii	"calcBackOffParams\000"
.LASF962:
	.ascii	"sRegionCommonRxBeaconSetupParams\000"
.LASF808:
	.ascii	"Minor\000"
.LASF729:
	.ascii	"TX_POWER_1 1\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF623:
	.ascii	"BIT_28 0x10000000\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF474:
	.ascii	"FP_ILOGBNAN INT_MAX\000"
.LASF520:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF227:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF1006:
	.ascii	"retIndex\000"
.LASF759:
	.ascii	"unsigned int\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF539:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF942:
	.ascii	"CurrentDatarate\000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF764:
	.ascii	"RadioModems_t\000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF581:
	.ascii	"MSB_16(a) (((a) & 0xFF00) >> 8)\000"
.LASF439:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF718:
	.ascii	"DR_6 6\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF217:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF587:
	.ascii	"CONCAT_3(p1,p2,p3) CONCAT_3_(p1, p2, p3)\000"
.LASF834:
	.ascii	"p_sign_posn\000"
.LASF978:
	.ascii	"dutyCycle\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF803:
	.ascii	"RxBoosted\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF1039:
	.ascii	"nbBits\000"
.LASF540:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF778:
	.ascii	"RadioEvents_t\000"
.LASF406:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF502:
	.ascii	"signbit(x) (sizeof(x) == sizeof(float) ? __float32_"
	.ascii	"signbit(x) : __float64_signbit(x))\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF645:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF242:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF770:
	.ascii	"TxDone\000"
.LASF995:
	.ascii	"bandwidth\000"
.LASF507:
	.ascii	"islessequal(x,y) (!isunordered(x, y) && (x <= y))\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF394:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF886:
	.ascii	"__user_get_time_of_day\000"
.LASF1025:
	.ascii	"stopIdx\000"
.LASF451:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF899:
	.ascii	"SRV_MAC_RX_PARAM_SETUP_REQ\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF662:
	.ascii	"__RTC_BOARD_H__ \000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF538:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF446:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF974:
	.ascii	"RegionCommonCalcBackOff\000"
.LASF908:
	.ascii	"SRV_MAC_BEACON_TIMING_ANS\000"
.LASF574:
	.ascii	"false 0\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF947:
	.ascii	"MinDatarate\000"
.LASF733:
	.ascii	"TX_POWER_5 5\000"
.LASF573:
	.ascii	"true 1\000"
.LASF870:
	.ascii	"__RAL_codeset_utf8\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF458:
	.ascii	"REGION_EU868 1\000"
.LASF868:
	.ascii	"__RAL_c_locale\000"
.LASF779:
	.ascii	"Init\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF5:
	.ascii	"__GNUC__ 9\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF802:
	.ascii	"IrqProcess\000"
.LASF526:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF818:
	.ascii	"decimal_point\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF910:
	.ascii	"sBand\000"
.LASF415:
	.ascii	"__arm__ 1\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF992:
	.ascii	"RegionCommonComputeSymbolTimeFsk\000"
.LASF1014:
	.ascii	"txDoneTime\000"
.LASF429:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF646:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF234:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF901:
	.ascii	"SRV_MAC_NEW_CHANNEL_REQ\000"
.LASF711:
	.ascii	"LC(channelIndex) ( uint16_t )( 1 << ( channelIndex "
	.ascii	"- 1 ) )\000"
.LASF686:
	.ascii	"TM_MONTH_MARCH ( ( uint8_t ) 2U )\000"
.LASF400:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF971:
	.ascii	"rxContinuous\000"
.LASF423:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF893:
	.ascii	"long double\000"
.LASF695:
	.ascii	"TM_MONTH_DECEMBER ( ( uint8_t )11U )\000"
.LASF480:
	.ascii	"M_PI 3.14159265358979323846\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF404:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF943:
	.ascii	"CurrentTxPower\000"
.LASF767:
	.ascii	"RF_TX_RUNNING\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF597:
	.ascii	"BIT_2 0x04\000"
.LASF460:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF536:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF592:
	.ascii	"SET_BIT(W,B) ((W) |= (uint32_t)(1U << (B)))\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF704:
	.ascii	"MAX_ACK_RETRIES 8\000"
.LASF771:
	.ascii	"TxTimeout\000"
.LASF541:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF486:
	.ascii	"M_SQRT2 1.41421356237309504880\000"
.LASF997:
	.ascii	"verifyParams\000"
.LASF497:
	.ascii	"__is_float32(x) (sizeof(x) == sizeof(float))\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF661:
	.ascii	"offsetof(s,m) __builtin_offsetof(s, m)\000"
.LASF1030:
	.ascii	"RegionCommonValueInRange\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF390:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF719:
	.ascii	"DR_7 7\000"
.LASF879:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF561:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF398:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF800:
	.ascii	"SetPublicNetwork\000"
.LASF763:
	.ascii	"MODEM_LORA\000"
.LASF911:
	.ascii	"DCycle\000"
.LASF898:
	.ascii	"SRV_MAC_DUTY_CYCLE_REQ\000"
.LASF495:
	.ascii	"__float32_nan __builtin_nanf(\"0x7fc00000\")\000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF896:
	.ascii	"SRV_MAC_LINK_CHECK_ANS\000"
.LASF699:
	.ascii	"TM_WEEKDAY_WEDNESDAY ( ( uint8_t )3U )\000"
.LASF636:
	.ascii	"__stddef_H \000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF851:
	.ascii	"__isctype\000"
.LASF241:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF761:
	.ascii	"long long unsigned int\000"
.LASF531:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF1032:
	.ascii	"RegionCommonChanVerifyDr\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF533:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF795:
	.ascii	"Write\000"
.LASF550:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF838:
	.ascii	"int_p_sep_by_space\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF964:
	.ascii	"BeaconSize\000"
.LASF755:
	.ascii	"uint16_t\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF809:
	.ascii	"Major\000"
.LASF650:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF925:
	.ascii	"sChannelParams\000"
.LASF920:
	.ascii	"SysTime_t\000"
.LASF378:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF318:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF1037:
	.ascii	"elapsedTime\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF221:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF589:
	.ascii	"STRINGIFY_(val) #val\000"
.LASF696:
	.ascii	"TM_WEEKDAY_SUNDAY ( ( uint8_t )0U )\000"
.LASF633:
	.ascii	"__REGIONCOMMON_H__ \000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF596:
	.ascii	"BIT_1 0x02\000"
.LASF673:
	.ascii	"__time_H \000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF709:
	.ascii	"LORA_MAC_FRMPAYLOAD_OVERHEAD 13\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF1035:
	.ascii	"channels\000"
.LASF627:
	.ascii	"UNUSED_VARIABLE(X) ((void)(X))\000"
.LASF690:
	.ascii	"TM_MONTH_JULY ( ( uint8_t ) 6U )\000"
.LASF529:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF628:
	.ascii	"UNUSED_PARAMETER(X) UNUSED_VARIABLE(X)\000"
.LASF485:
	.ascii	"M_2_SQRTPI 1.12837916709551257390\000"
.LASF881:
	.ascii	"__RAL_data_empty_string\000"
.LASF1041:
	.ascii	"GNU C99 9.3.1 20200408 (release) -fmessage-length=0"
	.ascii	" -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard -"
	.ascii	"mfpu=fpv4-sp-d16 -mthumb -mtp=soft -munaligned-acce"
	.ascii	"ss -std=gnu99 -g3 -gpubnames -fomit-frame-pointer -"
	.ascii	"fno-dwarf2-cfi-asm -fno-builtin -ffunction-sections"
	.ascii	" -fdata-sections -fshort-enums -fno-common\000"
.LASF671:
	.ascii	"__LORAMAC_H__ \000"
.LASF617:
	.ascii	"BIT_22 0x00400000\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF582:
	.ascii	"LSB_16(a) ((a) & 0x00FF)\000"
.LASF923:
	.ascii	"uDrRange\000"
.LASF462:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF513:
	.ascii	"INT8_MAX 127\000"
.LASF604:
	.ascii	"BIT_9 0x0200\000"
.LASF697:
	.ascii	"TM_WEEKDAY_MONDAY ( ( uint8_t )1U )\000"
.LASF576:
	.ascii	"__UTILITIES_H__ \000"
.LASF810:
	.ascii	"Fields\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF1012:
	.ascii	"elapsedJoin\000"
.LASF456:
	.ascii	"DEBUG_NRF 1\000"
.LASF745:
	.ascii	"BACKOFF_DC_10_HOURS 1000\000"
.LASF437:
	.ascii	"__ARM_NEON_FP\000"
.LASF637:
	.ascii	"__crossworks_H \000"
.LASF989:
	.ascii	"windowTimeout\000"
.LASF492:
	.ascii	"HUGE_VALL __builtin_huge_vall()\000"
.LASF1024:
	.ascii	"startIdx\000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF1028:
	.ascii	"maxChannels\000"
.LASF571:
	.ascii	"__stdbool_h \000"
.LASF441:
	.ascii	"__ARM_EABI__ 1\000"
.LASF532:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF421:
	.ascii	"__THUMBEL__ 1\000"
.LASF740:
	.ascii	"TX_POWER_12 12\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF714:
	.ascii	"DR_2 2\000"
.LASF708:
	.ascii	"LORA_MAC_MLME_CONFIRM_QUEUE_LEN 5\000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF476:
	.ascii	"M_LOG2E 1.4426950408889634074\000"
.LASF656:
	.ascii	"__RAL_WCHAR_T __WCHAR_TYPE__\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF511:
	.ascii	"__stdint_H \000"
.LASF894:
	.ascii	"TimerTime_t\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF904:
	.ascii	"SRV_MAC_DL_CHANNEL_REQ\000"
.LASF843:
	.ascii	"abbrev_day_names\000"
.LASF1017:
	.ascii	"band\000"
.LASF409:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF375:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF461:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF871:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF228:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF819:
	.ascii	"thousands_sep\000"
.LASF579:
	.ascii	"MSB_32(a) (((a) & 0xFF000000) >> 24)\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF788:
	.ascii	"TimeOnAir\000"
.LASF934:
	.ascii	"TxPower\000"
.LASF219:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF399:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF902:
	.ascii	"SRV_MAC_RX_TIMING_SETUP_REQ\000"
.LASF731:
	.ascii	"TX_POWER_3 3\000"
.LASF496:
	.ascii	"__float64_nan __builtin_nan(\"0x7ff8000000000000\")"
	.ascii	"\000"
.LASF660:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF852:
	.ascii	"__toupper\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF705:
	.ascii	"UP_LINK 0\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF254:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF860:
	.ascii	"name\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF251:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF682:
	.ascii	"TM_MINUTES_IN_1HOUR ( ( uint32_t ) 60U )\000"
.LASF953:
	.ascii	"sRegionCommonCalcBackOffParams\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF975:
	.ascii	"rxBeaconSetupParams\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF829:
	.ascii	"frac_digits\000"
.LASF266:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF822:
	.ascii	"currency_symbol\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF542:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF754:
	.ascii	"short int\000"
.LASF990:
	.ascii	"windowOffset\000"
.LASF782:
	.ascii	"SetChannel\000"
.LASF431:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF707:
	.ascii	"LORAMAC_MFR_LEN 4\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF374:
	.ascii	"__NO_INLINE__ 1\000"
.LASF687:
	.ascii	"TM_MONTH_APRIL ( ( uint8_t ) 3U )\000"
.LASF583:
	.ascii	"MIN(a,b) ((a) < (b) ? (a) : (b))\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF814:
	.ascii	"__state\000"
.LASF445:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF472:
	.ascii	"FP_NAN 0x04\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF753:
	.ascii	"int16_t\000"
.LASF206:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF930:
	.ascii	"ChannelParams_t\000"
.LASF482:
	.ascii	"M_PI_4 0.78539816339744830962\000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF525:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF921:
	.ascii	"sFields\000"
.LASF244:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF825:
	.ascii	"mon_grouping\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF664:
	.ascii	"RTC_TEMP_COEFFICIENT ( -0.034 )\000"
.LASF679:
	.ascii	"TM_SECONDS_IN_1DAY ( ( uint32_t )86400U )\000"
.LASF973:
	.ascii	"RegionCommonRxBeaconSetup\000"
.LASF938:
	.ascii	"sRegionCommonLinkAdrReqVerifyParams\000"
.LASF534:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF1010:
	.ascii	"nbBands\000"
.LASF569:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF609:
	.ascii	"BIT_14 0x4000\000"
.LASF954:
	.ascii	"Bands\000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF410:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF726:
	.ascii	"DR_14 14\000"
.LASF792:
	.ascii	"StartCad\000"
.LASF585:
	.ascii	"CONCAT_2(p1,p2) CONCAT_2_(p1, p2)\000"
.LASF647:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF842:
	.ascii	"day_names\000"
.LASF614:
	.ascii	"BIT_19 0x00080000\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF880:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF1002:
	.ascii	"nbRepetitions\000"
.LASF1005:
	.ascii	"linkAdrParams\000"
.LASF442:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF840:
	.ascii	"int_p_sign_posn\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF465:
	.ascii	"NRF52_PAN_74 1\000"
.LASF941:
	.ascii	"AdrEnabled\000"
.LASF393:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF977:
	.ascii	"bandIdx\000"
.LASF936:
	.ascii	"ChMask\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF963:
	.ascii	"Datarates\000"
.LASF317:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF854:
	.ascii	"__iswctype\000"
.LASF235:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF945:
	.ascii	"NbChannels\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF478:
	.ascii	"M_LN2 0.693147180559945309417\000"
.LASF651:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF791:
	.ascii	"Standby\000"
.LASF688:
	.ascii	"TM_MONTH_MAY ( ( uint8_t ) 4U )\000"
.LASF444:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF872:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF402:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF420:
	.ascii	"__thumb2__ 1\000"
.LASF1009:
	.ascii	"bands\000"
.LASF547:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF1018:
	.ascii	"lastTxDone\000"
.LASF590:
	.ascii	"STRINGIFY(val) STRINGIFY_(val)\000"
.LASF783:
	.ascii	"IsChannelFree\000"
.LASF769:
	.ascii	"RadioState_t\000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF676:
	.ascii	"CLOCKS_PER_SEC 1000\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF811:
	.ascii	"Value\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF639:
	.ascii	"__RAL_SIZE_T\000"
.LASF758:
	.ascii	"uint32_t\000"
.LASF522:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF946:
	.ascii	"ChannelsMask\000"
.LASF841:
	.ascii	"int_n_sign_posn\000"
.LASF562:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF786:
	.ascii	"SetTxConfig\000"
.LASF452:
	.ascii	"__HEAP_SIZE__ 512\000"
.LASF427:
	.ascii	"__ARM_FP 4\000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF8:
	.ascii	"__VERSION__ \"9.3.1 20200408 (release)\"\000"
.LASF364:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF801:
	.ascii	"GetWakeupTime\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF949:
	.ascii	"Channels\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF599:
	.ascii	"BIT_4 0x10\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF988:
	.ascii	"wakeUpTime\000"
.LASF580:
	.ascii	"LSB_32(a) ((a) & 0x000000FF)\000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF668:
	.ascii	"LORAMAC_CRYPTO_UNICAST_KEYS 0\000"
.LASF722:
	.ascii	"DR_10 10\000"
.LASF207:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF999:
	.ascii	"nbRep\000"
.LASF559:
	.ascii	"INT16_C(x) (x)\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF463:
	.ascii	"NRF52 1\000"
.LASF691:
	.ascii	"TM_MONTH_AUGUST ( ( uint8_t ) 7U )\000"
.LASF897:
	.ascii	"SRV_MAC_LINK_ADR_REQ\000"
.LASF830:
	.ascii	"p_cs_precedes\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF508:
	.ascii	"islessgreater(x,y) (!isunordered(x, y) && (x < y ||"
	.ascii	" x > y))\000"
.LASF1011:
	.ascii	"nextTxDelay\000"
.LASF747:
	.ascii	"float\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF419:
	.ascii	"__thumb__ 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF509:
	.ascii	"isunordered(a,b) (fpclassify(a) == FP_NAN || fpclas"
	.ascii	"sify(b) == FP_NAN)\000"
.LASF424:
	.ascii	"__ARMEL__ 1\000"
.LASF670:
	.ascii	"__REGION_H__ \000"
.LASF672:
	.ascii	"__SYS_TIME_H__ \000"
.LASF337:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF575:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF787:
	.ascii	"CheckRfFrequency\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF994:
	.ascii	"RegionCommonComputeSymbolTimeLoRa\000"
.LASF702:
	.ascii	"TM_WEEKDAY_SATURDAY ( ( uint8_t )6U )\000"
.LASF957:
	.ascii	"DutyCycleEnabled\000"
.LASF626:
	.ascii	"BIT_31 0x80000000\000"
.LASF416:
	.ascii	"__ARM_ARCH\000"
.LASF931:
	.ascii	"sRegionCommonLinkAdrParams\000"
.LASF601:
	.ascii	"BIT_6 0x40\000"
.LASF593:
	.ascii	"CLR_BIT(W,B) ((W) &= (~(uint32_t)(1U << (B))))\000"
.LASF467:
	.ascii	"__math_h \000"
.LASF970:
	.ascii	"LoRaMacMaxEirpTable\000"
.LASF784:
	.ascii	"Random\000"
.LASF739:
	.ascii	"TX_POWER_11 11\000"
.LASF663:
	.ascii	"TIMERTIME_T_MAX ( ( uint32_t )~0 )\000"
.LASF407:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF900:
	.ascii	"SRV_MAC_DEV_STATUS_REQ\000"
.LASF457:
	.ascii	"ISP4520_EU 1\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
.LASF916:
	.ascii	"Band_t\000"
.LASF738:
	.ascii	"TX_POWER_10 10\000"
.LASF258:
	.ascii	"__SFRACT_MAX__ 0X7FP-7HR\000"
.LASF220:
	.ascii	"__FLT32X_MANT_DIG__ 53\000"
.LASF557:
	.ascii	"INT8_C(x) (x)\000"
.LASF86:
	.ascii	"__WCHAR_WIDTH__ 32\000"
.LASF500:
	.ascii	"isfinite(x) (sizeof(x) == sizeof(float) ? __float32"
	.ascii	"_isfinite(x) : __float64_isfinite(x))\000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF746:
	.ascii	"BACKOFF_DC_24_HOURS 10000\000"
.LASF820:
	.ascii	"grouping\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF216:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF720:
	.ascii	"DR_8 8\000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF890:
	.ascii	"next\000"
.LASF861:
	.ascii	"data\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF912:
	.ascii	"TxMaxPower\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF549:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF972:
	.ascii	"datarate\000"
.LASF883:
	.ascii	"tv_sec\000"
.LASF1008:
	.ascii	"joined\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF634:
	.ascii	"__LORAMAC_TYPES_H__ \000"
.LASF215:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF475:
	.ascii	"M_E 2.7182818284590452354\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF790:
	.ascii	"Sleep\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF620:
	.ascii	"BIT_25 0x02000000\000"
.LASF969:
	.ascii	"RegionCommonRxBeaconSetupParams_t\000"
.LASF927:
	.ascii	"Rx1Frequency\000"
.LASF1016:
	.ascii	"RegionCommonSetBandTxDone\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF556:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF917:
	.ascii	"SysTime_s\000"
.LASF873:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF685:
	.ascii	"TM_MONTH_FEBRUARY ( ( uint8_t ) 1U )\000"
.LASF535:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 9.3.1 20200408 (release)"
