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
	.file	"Region.c"
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
	.section	.text.RegionIsActive,"ax",%progbits
	.align	1
	.global	RegionIsActive
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionIsActive, %function
RegionIsActive:
.LFB0:
	.file 1 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\Region.c"
	.loc 1 575 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 576 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L2
	.loc 1 583 9
	movs	r3, #1
	b	.L3
.L2:
	.loc 1 590 20
	movs	r3, #0
.L3:
	.loc 1 593 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	bx	lr
.LFE0:
	.size	RegionIsActive, .-RegionIsActive
	.section	.text.RegionGetPhyParam,"ax",%progbits
	.align	1
	.global	RegionGetPhyParam
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionGetPhyParam, %function
RegionGetPhyParam:
.LFB1:
	.loc 1 596 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI2:
	sub	sp, sp, #20
.LCFI3:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 597 16
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 598 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L5
	.loc 1 605 9
	ldr	r0, [sp]
	bl	RegionEU868GetPhyParam
	mov	r3, r0
	str	r3, [sp, #12]
	b	.L7
.L5:
	.loc 1 612 20
	ldr	r3, [sp, #8]
	str	r3, [sp, #12]
.L7:
	movs	r3, #0
	ldr	r3, [sp, #12]
	.loc 1 615 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI4:
	@ sp needed
	ldr	pc, [sp], #4
.LFE1:
	.size	RegionGetPhyParam, .-RegionGetPhyParam
	.section	.text.RegionSetBandTxDone,"ax",%progbits
	.align	1
	.global	RegionSetBandTxDone
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionSetBandTxDone, %function
RegionSetBandTxDone:
.LFB2:
	.loc 1 618 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI5:
	sub	sp, sp, #12
.LCFI6:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 619 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L11
	.loc 1 626 9
	ldr	r0, [sp]
	bl	RegionEU868SetBandTxDone
	b	.L8
.L11:
	.loc 1 633 13
	nop
.L8:
	.loc 1 636 1
	add	sp, sp, #12
.LCFI7:
	@ sp needed
	ldr	pc, [sp], #4
.LFE2:
	.size	RegionSetBandTxDone, .-RegionSetBandTxDone
	.section	.text.RegionInitDefaults,"ax",%progbits
	.align	1
	.global	RegionInitDefaults
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionInitDefaults, %function
RegionInitDefaults:
.LFB3:
	.loc 1 639 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI8:
	sub	sp, sp, #12
.LCFI9:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 640 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L15
	.loc 1 647 9
	ldr	r0, [sp]
	bl	RegionEU868InitDefaults
	b	.L14
.L15:
	.loc 1 654 13
	nop
.L14:
	.loc 1 657 1
	nop
	add	sp, sp, #12
.LCFI10:
	@ sp needed
	ldr	pc, [sp], #4
.LFE3:
	.size	RegionInitDefaults, .-RegionInitDefaults
	.section	.text.RegionGetNvmCtx,"ax",%progbits
	.align	1
	.global	RegionGetNvmCtx
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionGetNvmCtx, %function
RegionGetNvmCtx:
.LFB4:
	.loc 1 660 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI11:
	sub	sp, sp, #12
.LCFI12:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 661 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L17
	.loc 1 668 9
	ldr	r0, [sp]
	bl	RegionEU868GetNvmCtx
	mov	r3, r0
	b	.L18
.L17:
	.loc 1 675 19
	movs	r3, #0
.L18:
	.loc 1 678 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI13:
	@ sp needed
	ldr	pc, [sp], #4
.LFE4:
	.size	RegionGetNvmCtx, .-RegionGetNvmCtx
	.section	.text.RegionVerify,"ax",%progbits
	.align	1
	.global	RegionVerify
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionVerify, %function
RegionVerify:
.LFB5:
	.loc 1 681 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI14:
	sub	sp, sp, #12
.LCFI15:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 682 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L20
	.loc 1 689 9
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp]
	bl	RegionEU868Verify
	mov	r3, r0
	b	.L21
.L20:
	.loc 1 696 20
	movs	r3, #0
.L21:
	.loc 1 699 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI16:
	@ sp needed
	ldr	pc, [sp], #4
.LFE5:
	.size	RegionVerify, .-RegionVerify
	.section	.text.RegionApplyCFList,"ax",%progbits
	.align	1
	.global	RegionApplyCFList
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionApplyCFList, %function
RegionApplyCFList:
.LFB6:
	.loc 1 702 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI17:
	sub	sp, sp, #12
.LCFI18:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 703 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L25
	.loc 1 710 9
	ldr	r0, [sp]
	bl	RegionEU868ApplyCFList
	b	.L24
.L25:
	.loc 1 717 13
	nop
.L24:
	.loc 1 720 1
	nop
	add	sp, sp, #12
.LCFI19:
	@ sp needed
	ldr	pc, [sp], #4
.LFE6:
	.size	RegionApplyCFList, .-RegionApplyCFList
	.section	.text.RegionChanMaskSet,"ax",%progbits
	.align	1
	.global	RegionChanMaskSet
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionChanMaskSet, %function
RegionChanMaskSet:
.LFB7:
	.loc 1 723 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI20:
	sub	sp, sp, #12
.LCFI21:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 724 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L27
	.loc 1 731 9
	ldr	r0, [sp]
	bl	RegionEU868ChanMaskSet
	mov	r3, r0
	b	.L28
.L27:
	.loc 1 738 20
	movs	r3, #0
.L28:
	.loc 1 741 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI22:
	@ sp needed
	ldr	pc, [sp], #4
.LFE7:
	.size	RegionChanMaskSet, .-RegionChanMaskSet
	.section	.text.RegionComputeRxWindowParameters,"ax",%progbits
	.align	1
	.global	RegionComputeRxWindowParameters
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionComputeRxWindowParameters, %function
RegionComputeRxWindowParameters:
.LFB8:
	.loc 1 744 1
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI23:
	sub	sp, sp, #12
.LCFI24:
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 745 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L32
	.loc 1 752 9
	ldrb	r1, [sp, #5]	@ zero_extendqisi2
	ldrsb	r0, [sp, #6]
	ldr	r3, [sp, #16]
	ldr	r2, [sp]
	bl	RegionEU868ComputeRxWindowParameters
	b	.L31
.L32:
	.loc 1 759 13
	nop
.L31:
	.loc 1 762 1
	nop
	add	sp, sp, #12
.LCFI25:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	RegionComputeRxWindowParameters, .-RegionComputeRxWindowParameters
	.section	.text.RegionRxConfig,"ax",%progbits
	.align	1
	.global	RegionRxConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionRxConfig, %function
RegionRxConfig:
.LFB9:
	.loc 1 765 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI26:
	sub	sp, sp, #20
.LCFI27:
	mov	r3, r0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #15]
	.loc 1 766 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L34
	.loc 1 773 9
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	RegionEU868RxConfig
	mov	r3, r0
	b	.L35
.L34:
	.loc 1 780 20
	movs	r3, #0
.L35:
	.loc 1 783 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI28:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	RegionRxConfig, .-RegionRxConfig
	.section	.text.RegionTxConfig,"ax",%progbits
	.align	1
	.global	RegionTxConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionTxConfig, %function
RegionTxConfig:
.LFB10:
	.loc 1 786 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI29:
	sub	sp, sp, #20
.LCFI30:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 787 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L37
	.loc 1 794 9
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	RegionEU868TxConfig
	mov	r3, r0
	b	.L38
.L37:
	.loc 1 801 20
	movs	r3, #0
.L38:
	.loc 1 804 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI31:
	@ sp needed
	ldr	pc, [sp], #4
.LFE10:
	.size	RegionTxConfig, .-RegionTxConfig
	.section	.text.RegionLinkAdrReq,"ax",%progbits
	.align	1
	.global	RegionLinkAdrReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionLinkAdrReq, %function
RegionLinkAdrReq:
.LFB11:
	.loc 1 807 1
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI32:
	sub	sp, sp, #28
.LCFI33:
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 808 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L40
	.loc 1 815 9
	ldr	r3, [sp, #36]
	str	r3, [sp]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #16]
	bl	RegionEU868LinkAdrReq
	mov	r3, r0
	b	.L41
.L40:
	.loc 1 822 20
	movs	r3, #0
.L41:
	.loc 1 825 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI34:
	@ sp needed
	ldr	pc, [sp], #4
.LFE11:
	.size	RegionLinkAdrReq, .-RegionLinkAdrReq
	.section	.text.RegionRxParamSetupReq,"ax",%progbits
	.align	1
	.global	RegionRxParamSetupReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionRxParamSetupReq, %function
RegionRxParamSetupReq:
.LFB12:
	.loc 1 828 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI35:
	sub	sp, sp, #12
.LCFI36:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 829 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L43
	.loc 1 836 9
	ldr	r0, [sp]
	bl	RegionEU868RxParamSetupReq
	mov	r3, r0
	b	.L44
.L43:
	.loc 1 843 20
	movs	r3, #0
.L44:
	.loc 1 846 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI37:
	@ sp needed
	ldr	pc, [sp], #4
.LFE12:
	.size	RegionRxParamSetupReq, .-RegionRxParamSetupReq
	.section	.text.RegionNewChannelReq,"ax",%progbits
	.align	1
	.global	RegionNewChannelReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionNewChannelReq, %function
RegionNewChannelReq:
.LFB13:
	.loc 1 849 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI38:
	sub	sp, sp, #12
.LCFI39:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 850 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L46
	.loc 1 857 9
	ldr	r0, [sp]
	bl	RegionEU868NewChannelReq
	mov	r3, r0
	b	.L47
.L46:
	.loc 1 864 20
	movs	r3, #0
.L47:
	.loc 1 867 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI40:
	@ sp needed
	ldr	pc, [sp], #4
.LFE13:
	.size	RegionNewChannelReq, .-RegionNewChannelReq
	.section	.text.RegionTxParamSetupReq,"ax",%progbits
	.align	1
	.global	RegionTxParamSetupReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionTxParamSetupReq, %function
RegionTxParamSetupReq:
.LFB14:
	.loc 1 870 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI41:
	sub	sp, sp, #12
.LCFI42:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 871 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L49
	.loc 1 878 9
	ldr	r0, [sp]
	bl	RegionEU868TxParamSetupReq
	mov	r3, r0
	b	.L50
.L49:
	.loc 1 885 20
	movs	r3, #0
.L50:
	.loc 1 888 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI43:
	@ sp needed
	ldr	pc, [sp], #4
.LFE14:
	.size	RegionTxParamSetupReq, .-RegionTxParamSetupReq
	.section	.text.RegionDlChannelReq,"ax",%progbits
	.align	1
	.global	RegionDlChannelReq
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionDlChannelReq, %function
RegionDlChannelReq:
.LFB15:
	.loc 1 891 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI44:
	sub	sp, sp, #12
.LCFI45:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 892 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L52
	.loc 1 899 9
	ldr	r0, [sp]
	bl	RegionEU868DlChannelReq
	mov	r3, r0
	b	.L53
.L52:
	.loc 1 906 20
	movs	r3, #0
.L53:
	.loc 1 909 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI46:
	@ sp needed
	ldr	pc, [sp], #4
.LFE15:
	.size	RegionDlChannelReq, .-RegionDlChannelReq
	.section	.text.RegionAlternateDr,"ax",%progbits
	.align	1
	.global	RegionAlternateDr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionAlternateDr, %function
RegionAlternateDr:
.LFB16:
	.loc 1 912 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI47:
	sub	sp, sp, #12
.LCFI48:
	mov	r3, r0
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 1 913 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L55
	.loc 1 920 9
	ldrb	r2, [sp, #5]	@ zero_extendqisi2
	ldrsb	r3, [sp, #6]
	mov	r1, r2
	mov	r0, r3
	bl	RegionEU868AlternateDr
	mov	r3, r0
	b	.L56
.L55:
	.loc 1 927 20
	movs	r3, #0
.L56:
	.loc 1 930 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI49:
	@ sp needed
	ldr	pc, [sp], #4
.LFE16:
	.size	RegionAlternateDr, .-RegionAlternateDr
	.section	.text.RegionCalcBackOff,"ax",%progbits
	.align	1
	.global	RegionCalcBackOff
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionCalcBackOff, %function
RegionCalcBackOff:
.LFB17:
	.loc 1 933 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI50:
	sub	sp, sp, #12
.LCFI51:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 934 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L60
	.loc 1 941 9
	ldr	r0, [sp]
	bl	RegionEU868CalcBackOff
	b	.L59
.L60:
	.loc 1 948 13
	nop
.L59:
	.loc 1 951 1
	nop
	add	sp, sp, #12
.LCFI52:
	@ sp needed
	ldr	pc, [sp], #4
.LFE17:
	.size	RegionCalcBackOff, .-RegionCalcBackOff
	.section	.text.RegionNextChannel,"ax",%progbits
	.align	1
	.global	RegionNextChannel
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionNextChannel, %function
RegionNextChannel:
.LFB18:
	.loc 1 954 1
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI53:
	sub	sp, sp, #20
.LCFI54:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 955 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L62
	.loc 1 962 9
	ldr	r3, [sp, #24]
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	RegionEU868NextChannel
	mov	r3, r0
	b	.L63
.L62:
	.loc 1 969 20
	movs	r3, #9
.L63:
	.loc 1 972 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI55:
	@ sp needed
	ldr	pc, [sp], #4
.LFE18:
	.size	RegionNextChannel, .-RegionNextChannel
	.section	.text.RegionChannelAdd,"ax",%progbits
	.align	1
	.global	RegionChannelAdd
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionChannelAdd, %function
RegionChannelAdd:
.LFB19:
	.loc 1 975 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI56:
	sub	sp, sp, #12
.LCFI57:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 976 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L65
	.loc 1 983 9
	ldr	r0, [sp]
	bl	RegionEU868ChannelAdd
	mov	r3, r0
	b	.L66
.L65:
	.loc 1 990 20
	movs	r3, #3
.L66:
	.loc 1 993 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI58:
	@ sp needed
	ldr	pc, [sp], #4
.LFE19:
	.size	RegionChannelAdd, .-RegionChannelAdd
	.section	.text.RegionChannelsRemove,"ax",%progbits
	.align	1
	.global	RegionChannelsRemove
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionChannelsRemove, %function
RegionChannelsRemove:
.LFB20:
	.loc 1 996 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI59:
	sub	sp, sp, #12
.LCFI60:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 997 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L68
	.loc 1 1004 9
	ldr	r0, [sp]
	bl	RegionEU868ChannelsRemove
	mov	r3, r0
	b	.L69
.L68:
	.loc 1 1011 20
	movs	r3, #0
.L69:
	.loc 1 1014 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI61:
	@ sp needed
	ldr	pc, [sp], #4
.LFE20:
	.size	RegionChannelsRemove, .-RegionChannelsRemove
	.section	.text.RegionSetContinuousWave,"ax",%progbits
	.align	1
	.global	RegionSetContinuousWave
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionSetContinuousWave, %function
RegionSetContinuousWave:
.LFB21:
	.loc 1 1017 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI62:
	sub	sp, sp, #12
.LCFI63:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1018 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L73
	.loc 1 1025 9
	ldr	r0, [sp]
	bl	RegionEU868SetContinuousWave
	b	.L72
.L73:
	.loc 1 1032 13
	nop
.L72:
	.loc 1 1035 1
	nop
	add	sp, sp, #12
.LCFI64:
	@ sp needed
	ldr	pc, [sp], #4
.LFE21:
	.size	RegionSetContinuousWave, .-RegionSetContinuousWave
	.section	.text.RegionApplyDrOffset,"ax",%progbits
	.align	1
	.global	RegionApplyDrOffset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionApplyDrOffset, %function
RegionApplyDrOffset:
.LFB22:
	.loc 1 1038 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI65:
	sub	sp, sp, #8
.LCFI66:
	mov	r4, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r4
	strb	r3, [sp, #7]
	mov	r3, r0
	strb	r3, [sp, #6]
	mov	r3, r1
	strb	r3, [sp, #5]
	mov	r3, r2
	strb	r3, [sp, #4]
	.loc 1 1039 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L75
	.loc 1 1046 9
	ldrsb	r2, [sp, #4]
	ldrsb	r1, [sp, #5]
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	mov	r0, r3
	bl	RegionEU868ApplyDrOffset
	mov	r3, r0
	b	.L76
.L75:
	.loc 1 1053 20
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
.L76:
	.loc 1 1056 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI67:
	@ sp needed
	pop	{r4, pc}
.LFE22:
	.size	RegionApplyDrOffset, .-RegionApplyDrOffset
	.section	.text.RegionRxBeaconSetup,"ax",%progbits
	.align	1
	.global	RegionRxBeaconSetup
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	RegionRxBeaconSetup, %function
RegionRxBeaconSetup:
.LFB23:
	.loc 1 1059 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI68:
	sub	sp, sp, #20
.LCFI69:
	mov	r3, r0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #15]
	.loc 1 1060 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L80
	.loc 1 1067 9
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	RegionEU868RxBeaconSetup
	b	.L79
.L80:
	.loc 1 1074 13
	nop
.L79:
	.loc 1 1077 1
	nop
	add	sp, sp, #20
.LCFI70:
	@ sp needed
	ldr	pc, [sp], #4
.LFE23:
	.size	RegionRxBeaconSetup, .-RegionRxBeaconSetup
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
	.uleb128 0x8
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
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
	.4byte	.LCFI8-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
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
	.4byte	.LCFI11-.LFB4
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
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
	.4byte	.LCFI14-.LFB5
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
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
	.4byte	.LCFI17-.LFB6
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
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
	.4byte	.LCFI20-.LFB7
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
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
	.4byte	.LCFI23-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
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
	.4byte	.LCFI26-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
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
	.4byte	.LCFI29-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
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
	.4byte	.LCFI32-.LFB11
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
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
	.4byte	.LCFI35-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
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
	.4byte	.LCFI38-.LFB13
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI41-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
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
	.4byte	.LCFI44-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
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
	.4byte	.LCFI47-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
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
	.4byte	.LCFI50-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
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
	.4byte	.LCFI53-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI56-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
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
	.4byte	.LCFI59-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI62-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
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
	.4byte	.LCFI65-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI68-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE46:
	.text
.Letext0:
	.file 2 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stdint.h"
	.file 3 "../../../../lora/boards/mcu/utilities.h"
	.file 4 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/__crossworks.h"
	.file 5 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/sys/time.h"
	.file 6 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stddef.h"
	.file 7 "../../../../lora/boards/rtc-board.h"
	.file 8 "../../../../lora/system/systime.h"
	.file 9 "../../../../lora/radio/radio.h"
	.file 10 "../../../../lora/mac/LoRaMac.h"
	.file 11 "../../../../lora/mac/region/Region.h"
	.file 12 "C:\\SES\\ISP4520-examples-master\\ISP4520-examples-master\\src\\lora\\mac\\region\\RegionEU868.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1eb3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF1433
	.byte	0xc
	.4byte	.LASF1434
	.4byte	.LASF1435
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF989
	.byte	0x2
	.byte	0x29
	.byte	0x1c
	.4byte	0x35
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF991
	.uleb128 0x2
	.4byte	.LASF990
	.byte	0x2
	.byte	0x2a
	.byte	0x1c
	.4byte	0x4d
	.uleb128 0x4
	.4byte	0x3c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF992
	.uleb128 0x4
	.4byte	0x4d
	.uleb128 0x2
	.4byte	.LASF993
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.4byte	0x65
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF994
	.uleb128 0x2
	.4byte	.LASF995
	.byte	0x2
	.byte	0x30
	.byte	0x1c
	.4byte	0x78
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF996
	.uleb128 0x2
	.4byte	.LASF997
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.4byte	.LASF998
	.byte	0x2
	.byte	0x37
	.byte	0x1c
	.4byte	0xa3
	.uleb128 0x4
	.4byte	0x92
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF999
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1000
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1001
	.uleb128 0x6
	.4byte	.LASF1008
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
	.4byte	.LASF1002
	.byte	0x3
	.byte	0x33
	.byte	0x11
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x8
	.4byte	.LASF1003
	.byte	0x3
	.byte	0x34
	.byte	0x11
	.4byte	0x3c
	.byte	0x2
	.uleb128 0x8
	.4byte	.LASF1004
	.byte	0x3
	.byte	0x35
	.byte	0x11
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1141
	.byte	0x4
	.byte	0x3
	.byte	0x2e
	.byte	0xf
	.4byte	0x120
	.uleb128 0xa
	.4byte	.LASF1005
	.byte	0x3
	.byte	0x36
	.byte	0x6
	.4byte	0xb8
	.uleb128 0xa
	.4byte	.LASF1006
	.byte	0x3
	.byte	0x37
	.byte	0xe
	.4byte	0x92
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1007
	.byte	0x3
	.byte	0x38
	.byte	0x2
	.4byte	0xfa
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF1009
	.byte	0x8
	.byte	0x4
	.byte	0x7c
	.byte	0x8
	.4byte	0x156
	.uleb128 0x8
	.4byte	.LASF1010
	.byte	0x4
	.byte	0x7d
	.byte	0x7
	.4byte	0x8b
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1011
	.byte	0x4
	.byte	0x7e
	.byte	0x8
	.4byte	0x156
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF1012
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
	.4byte	.LASF1013
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
	.4byte	.LASF1014
	.byte	0x4
	.byte	0x86
	.byte	0xf
	.4byte	0x1b2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1015
	.byte	0x4
	.byte	0x87
	.byte	0xf
	.4byte	0x1b2
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1016
	.byte	0x4
	.byte	0x88
	.byte	0xf
	.4byte	0x1b2
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1017
	.byte	0x4
	.byte	0x8a
	.byte	0xf
	.4byte	0x1b2
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1018
	.byte	0x4
	.byte	0x8b
	.byte	0xf
	.4byte	0x1b2
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF1019
	.byte	0x4
	.byte	0x8c
	.byte	0xf
	.4byte	0x1b2
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF1020
	.byte	0x4
	.byte	0x8d
	.byte	0xf
	.4byte	0x1b2
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF1021
	.byte	0x4
	.byte	0x8e
	.byte	0xf
	.4byte	0x1b2
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF1022
	.byte	0x4
	.byte	0x8f
	.byte	0xf
	.4byte	0x1b2
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF1023
	.byte	0x4
	.byte	0x90
	.byte	0xf
	.4byte	0x1b2
	.byte	0x24
	.uleb128 0x8
	.4byte	.LASF1024
	.byte	0x4
	.byte	0x92
	.byte	0x8
	.4byte	0x17c
	.byte	0x28
	.uleb128 0x8
	.4byte	.LASF1025
	.byte	0x4
	.byte	0x93
	.byte	0x8
	.4byte	0x17c
	.byte	0x29
	.uleb128 0x8
	.4byte	.LASF1026
	.byte	0x4
	.byte	0x94
	.byte	0x8
	.4byte	0x17c
	.byte	0x2a
	.uleb128 0x8
	.4byte	.LASF1027
	.byte	0x4
	.byte	0x95
	.byte	0x8
	.4byte	0x17c
	.byte	0x2b
	.uleb128 0x8
	.4byte	.LASF1028
	.byte	0x4
	.byte	0x96
	.byte	0x8
	.4byte	0x17c
	.byte	0x2c
	.uleb128 0x8
	.4byte	.LASF1029
	.byte	0x4
	.byte	0x97
	.byte	0x8
	.4byte	0x17c
	.byte	0x2d
	.uleb128 0x8
	.4byte	.LASF1030
	.byte	0x4
	.byte	0x98
	.byte	0x8
	.4byte	0x17c
	.byte	0x2e
	.uleb128 0x8
	.4byte	.LASF1031
	.byte	0x4
	.byte	0x99
	.byte	0x8
	.4byte	0x17c
	.byte	0x2f
	.uleb128 0x8
	.4byte	.LASF1032
	.byte	0x4
	.byte	0x9a
	.byte	0x8
	.4byte	0x17c
	.byte	0x30
	.uleb128 0x8
	.4byte	.LASF1033
	.byte	0x4
	.byte	0x9b
	.byte	0x8
	.4byte	0x17c
	.byte	0x31
	.uleb128 0x8
	.4byte	.LASF1034
	.byte	0x4
	.byte	0x9c
	.byte	0x8
	.4byte	0x17c
	.byte	0x32
	.uleb128 0x8
	.4byte	.LASF1035
	.byte	0x4
	.byte	0x9d
	.byte	0x8
	.4byte	0x17c
	.byte	0x33
	.uleb128 0x8
	.4byte	.LASF1036
	.byte	0x4
	.byte	0x9e
	.byte	0x8
	.4byte	0x17c
	.byte	0x34
	.uleb128 0x8
	.4byte	.LASF1037
	.byte	0x4
	.byte	0x9f
	.byte	0x8
	.4byte	0x17c
	.byte	0x35
	.uleb128 0x8
	.4byte	.LASF1038
	.byte	0x4
	.byte	0xa4
	.byte	0xf
	.4byte	0x1b2
	.byte	0x38
	.uleb128 0x8
	.4byte	.LASF1039
	.byte	0x4
	.byte	0xa5
	.byte	0xf
	.4byte	0x1b2
	.byte	0x3c
	.uleb128 0x8
	.4byte	.LASF1040
	.byte	0x4
	.byte	0xa6
	.byte	0xf
	.4byte	0x1b2
	.byte	0x40
	.uleb128 0x8
	.4byte	.LASF1041
	.byte	0x4
	.byte	0xa7
	.byte	0xf
	.4byte	0x1b2
	.byte	0x44
	.uleb128 0x8
	.4byte	.LASF1042
	.byte	0x4
	.byte	0xa8
	.byte	0xf
	.4byte	0x1b2
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF1043
	.byte	0x4
	.byte	0xa9
	.byte	0xf
	.4byte	0x1b2
	.byte	0x4c
	.uleb128 0x8
	.4byte	.LASF1044
	.byte	0x4
	.byte	0xaa
	.byte	0xf
	.4byte	0x1b2
	.byte	0x50
	.uleb128 0x8
	.4byte	.LASF1045
	.byte	0x4
	.byte	0xab
	.byte	0xf
	.4byte	0x1b2
	.byte	0x54
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1046
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
	.4byte	.LASF1047
	.byte	0x4
	.byte	0xc4
	.byte	0x9
	.4byte	0x3f9
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1048
	.byte	0x4
	.byte	0xc5
	.byte	0x9
	.4byte	0x40e
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1049
	.byte	0x4
	.byte	0xc6
	.byte	0x9
	.4byte	0x40e
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1050
	.byte	0x4
	.byte	0xc9
	.byte	0x9
	.4byte	0x428
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1051
	.byte	0x4
	.byte	0xca
	.byte	0xa
	.4byte	0x43d
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF1052
	.byte	0x4
	.byte	0xcb
	.byte	0xa
	.4byte	0x43d
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF1053
	.byte	0x4
	.byte	0xce
	.byte	0x9
	.4byte	0x443
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF1054
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
	.4byte	.LASF1055
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
	.4byte	.LASF1056
	.byte	0x4
	.byte	0xd3
	.byte	0xf
	.4byte	0x1b2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1057
	.byte	0x4
	.byte	0xd4
	.byte	0x25
	.4byte	0x491
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1058
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
	.4byte	.LASF1059
	.byte	0x4
	.byte	0xd6
	.byte	0x3
	.4byte	0x460
	.uleb128 0x4
	.4byte	0x49d
	.uleb128 0x6
	.4byte	.LASF1060
	.byte	0x14
	.byte	0x4
	.byte	0xda
	.byte	0x10
	.4byte	0x4c9
	.uleb128 0x8
	.4byte	.LASF1061
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
	.4byte	.LASF1062
	.byte	0x4
	.2byte	0x104
	.byte	0x1a
	.4byte	0x4ae
	.uleb128 0x12
	.4byte	.LASF1063
	.byte	0x4
	.2byte	0x10b
	.byte	0x24
	.4byte	0x4a9
	.uleb128 0x12
	.4byte	.LASF1064
	.byte	0x4
	.2byte	0x10e
	.byte	0x2c
	.4byte	0x45b
	.uleb128 0x12
	.4byte	.LASF1065
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
	.4byte	.LASF1066
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
	.4byte	.LASF1067
	.byte	0x4
	.2byte	0x113
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1068
	.byte	0x4
	.2byte	0x114
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1069
	.byte	0x4
	.2byte	0x115
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1070
	.byte	0x4
	.2byte	0x116
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1071
	.byte	0x4
	.2byte	0x118
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1072
	.byte	0x4
	.2byte	0x119
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1073
	.byte	0x4
	.2byte	0x11a
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1074
	.byte	0x4
	.2byte	0x11b
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1075
	.byte	0x4
	.2byte	0x11c
	.byte	0x13
	.4byte	0x540
	.uleb128 0x12
	.4byte	.LASF1076
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
	.4byte	.LASF1077
	.byte	0x8
	.byte	0x5
	.byte	0x2e
	.byte	0x8
	.4byte	0x604
	.uleb128 0x8
	.4byte	.LASF1078
	.byte	0x5
	.byte	0x30
	.byte	0x8
	.4byte	0x156
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1079
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.4byte	0x156
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	0x5dc
	.uleb128 0x12
	.4byte	.LASF1080
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
	.4byte	.LASF1081
	.byte	0x4
	.2byte	0x134
	.byte	0xe
	.4byte	0x63e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x14
	.4byte	.LASF1082
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
	.4byte	.LASF1083
	.byte	0x8
	.byte	0x4
	.2byte	0x14d
	.byte	0x10
	.4byte	0x691
	.uleb128 0x16
	.4byte	.LASF1084
	.byte	0x4
	.2byte	0x14f
	.byte	0x1c
	.4byte	0x644
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1085
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
	.4byte	.LASF1086
	.byte	0x4
	.2byte	0x151
	.byte	0x3
	.4byte	0x666
	.uleb128 0x12
	.4byte	.LASF1087
	.byte	0x4
	.2byte	0x155
	.byte	0x1f
	.4byte	0x6b1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x697
	.uleb128 0x2
	.4byte	.LASF1088
	.byte	0x6
	.byte	0x31
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1089
	.uleb128 0x2
	.4byte	.LASF1090
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
	.4byte	.LASF1091
	.uleb128 0x6
	.4byte	.LASF1092
	.byte	0x8
	.byte	0x8
	.byte	0x53
	.byte	0x10
	.4byte	0x70c
	.uleb128 0x8
	.4byte	.LASF1093
	.byte	0x8
	.byte	0x55
	.byte	0xe
	.4byte	0x92
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1094
	.byte	0x8
	.byte	0x56
	.byte	0xe
	.4byte	0x59
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1095
	.byte	0x8
	.byte	0x57
	.byte	0x2
	.4byte	0x6e4
	.uleb128 0x18
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0x9
	.byte	0x26
	.byte	0x1
	.4byte	0x733
	.uleb128 0x19
	.4byte	.LASF1096
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1097
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1098
	.byte	0x9
	.byte	0x29
	.byte	0x2
	.4byte	0x718
	.uleb128 0x18
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0x9
	.byte	0x2f
	.byte	0x1
	.4byte	0x766
	.uleb128 0x19
	.4byte	.LASF1099
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1100
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1101
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF1102
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1103
	.byte	0x9
	.byte	0x34
	.byte	0x2
	.4byte	0x73f
	.uleb128 0xf
	.byte	0x1c
	.byte	0x9
	.byte	0x39
	.byte	0x9
	.4byte	0x7d7
	.uleb128 0x8
	.4byte	.LASF1104
	.byte	0x9
	.byte	0x3e
	.byte	0x10
	.4byte	0x6d6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1105
	.byte	0x9
	.byte	0x42
	.byte	0x10
	.4byte	0x6d6
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1106
	.byte	0x9
	.byte	0x4d
	.byte	0x10
	.4byte	0x7f7
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1107
	.byte	0x9
	.byte	0x51
	.byte	0x10
	.4byte	0x6d6
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1108
	.byte	0x9
	.byte	0x55
	.byte	0x10
	.4byte	0x6d6
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF1109
	.byte	0x9
	.byte	0x5b
	.byte	0xd
	.4byte	0x808
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF1110
	.byte	0x9
	.byte	0x62
	.byte	0xd
	.4byte	0x819
	.byte	0x18
	.byte	0
	.uleb128 0x1a
	.4byte	0x7f1
	.uleb128 0xd
	.4byte	0x7f1
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x59
	.uleb128 0xd
	.4byte	0x29
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3c
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d7
	.uleb128 0x1a
	.4byte	0x808
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7fd
	.uleb128 0x1a
	.4byte	0x819
	.uleb128 0xd
	.4byte	0x6dd
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x80e
	.uleb128 0x2
	.4byte	.LASF1111
	.byte	0x9
	.byte	0x63
	.byte	0x2
	.4byte	0x772
	.uleb128 0x6
	.4byte	.LASF1112
	.byte	0x6c
	.byte	0x9
	.byte	0x68
	.byte	0x8
	.4byte	0x9a8
	.uleb128 0x8
	.4byte	.LASF1113
	.byte	0x9
	.byte	0x6f
	.byte	0x10
	.4byte	0x9be
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1114
	.byte	0x9
	.byte	0x75
	.byte	0x15
	.4byte	0x9c9
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1115
	.byte	0x9
	.byte	0x7b
	.byte	0x10
	.4byte	0x9da
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1116
	.byte	0x9
	.byte	0x81
	.byte	0x10
	.4byte	0x9eb
	.byte	0xc
	.uleb128 0x8
	.4byte	.LASF1117
	.byte	0x9
	.byte	0x8c
	.byte	0x10
	.4byte	0xa0f
	.byte	0x10
	.uleb128 0x8
	.4byte	.LASF1118
	.byte	0x9
	.byte	0x97
	.byte	0x11
	.4byte	0xa1a
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF1119
	.byte	0x9
	.byte	0xbf
	.byte	0x10
	.4byte	0xa6c
	.byte	0x18
	.uleb128 0x8
	.4byte	.LASF1120
	.byte	0x9
	.byte	0xe9
	.byte	0x10
	.4byte	0xab9
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF1121
	.byte	0x9
	.byte	0xf4
	.byte	0x10
	.4byte	0xace
	.byte	0x20
	.uleb128 0x8
	.4byte	.LASF1122
	.byte	0x9
	.byte	0xff
	.byte	0x12
	.4byte	0xae8
	.byte	0x24
	.uleb128 0x16
	.4byte	.LASF1123
	.byte	0x9
	.2byte	0x107
	.byte	0x10
	.4byte	0xafe
	.byte	0x28
	.uleb128 0x16
	.4byte	.LASF1124
	.byte	0x9
	.2byte	0x10b
	.byte	0x10
	.4byte	0x6d6
	.byte	0x2c
	.uleb128 0x16
	.4byte	.LASF1125
	.byte	0x9
	.2byte	0x10f
	.byte	0x10
	.4byte	0x6d6
	.byte	0x30
	.uleb128 0x1b
	.ascii	"Rx\000"
	.byte	0x9
	.2byte	0x115
	.byte	0x10
	.4byte	0x9eb
	.byte	0x34
	.uleb128 0x16
	.4byte	.LASF1126
	.byte	0x9
	.2byte	0x119
	.byte	0x10
	.4byte	0x6d6
	.byte	0x38
	.uleb128 0x16
	.4byte	.LASF1127
	.byte	0x9
	.2byte	0x121
	.byte	0x10
	.4byte	0xb19
	.byte	0x3c
	.uleb128 0x16
	.4byte	.LASF1128
	.byte	0x9
	.2byte	0x127
	.byte	0x10
	.4byte	0xb2e
	.byte	0x40
	.uleb128 0x16
	.4byte	.LASF1129
	.byte	0x9
	.2byte	0x12e
	.byte	0x10
	.4byte	0xb44
	.byte	0x44
	.uleb128 0x16
	.4byte	.LASF1130
	.byte	0x9
	.2byte	0x135
	.byte	0x10
	.4byte	0xb59
	.byte	0x48
	.uleb128 0x16
	.4byte	.LASF1131
	.byte	0x9
	.2byte	0x13d
	.byte	0x10
	.4byte	0xb74
	.byte	0x4c
	.uleb128 0x16
	.4byte	.LASF1132
	.byte	0x9
	.2byte	0x145
	.byte	0x10
	.4byte	0xb74
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF1133
	.byte	0x9
	.2byte	0x14c
	.byte	0x10
	.4byte	0xb8a
	.byte	0x54
	.uleb128 0x16
	.4byte	.LASF1134
	.byte	0x9
	.2byte	0x154
	.byte	0x10
	.4byte	0x819
	.byte	0x58
	.uleb128 0x16
	.4byte	.LASF1135
	.byte	0x9
	.2byte	0x15a
	.byte	0x12
	.4byte	0xa1a
	.byte	0x5c
	.uleb128 0x16
	.4byte	.LASF1136
	.byte	0x9
	.2byte	0x15e
	.byte	0xd
	.4byte	0x6d6
	.byte	0x60
	.uleb128 0x16
	.4byte	.LASF1137
	.byte	0x9
	.2byte	0x16a
	.byte	0x10
	.4byte	0x9eb
	.byte	0x64
	.uleb128 0x16
	.4byte	.LASF1138
	.byte	0x9
	.2byte	0x173
	.byte	0xd
	.4byte	0xba0
	.byte	0x68
	.byte	0
	.uleb128 0x4
	.4byte	0x82b
	.uleb128 0x1a
	.4byte	0x9b8
	.uleb128 0xd
	.4byte	0x9b8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x81f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9ad
	.uleb128 0x1c
	.4byte	0x766
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9c4
	.uleb128 0x1a
	.4byte	0x9da
	.uleb128 0xd
	.4byte	0x733
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9cf
	.uleb128 0x1a
	.4byte	0x9eb
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9e0
	.uleb128 0xc
	.4byte	0x6dd
	.4byte	0xa0f
	.uleb128 0xd
	.4byte	0x733
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x59
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9f1
	.uleb128 0x1c
	.4byte	0x92
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa15
	.uleb128 0x1a
	.4byte	0xa6c
	.uleb128 0xd
	.4byte	0x733
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
	.4byte	0xa20
	.uleb128 0x1a
	.4byte	0xab9
	.uleb128 0xd
	.4byte	0x733
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
	.4byte	0xa72
	.uleb128 0xc
	.4byte	0x6dd
	.4byte	0xace
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xabf
	.uleb128 0xc
	.4byte	0x92
	.4byte	0xae8
	.uleb128 0xd
	.4byte	0x733
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xad4
	.uleb128 0x1a
	.4byte	0xafe
	.uleb128 0xd
	.4byte	0x7f1
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xaee
	.uleb128 0x1a
	.4byte	0xb19
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x29
	.uleb128 0xd
	.4byte	0x6c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb04
	.uleb128 0xc
	.4byte	0x59
	.4byte	0xb2e
	.uleb128 0xd
	.4byte	0x733
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb1f
	.uleb128 0x1a
	.4byte	0xb44
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb34
	.uleb128 0xc
	.4byte	0x3c
	.4byte	0xb59
	.uleb128 0xd
	.4byte	0x6c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb4a
	.uleb128 0x1a
	.4byte	0xb74
	.uleb128 0xd
	.4byte	0x6c
	.uleb128 0xd
	.4byte	0x7f1
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb5f
	.uleb128 0x1a
	.4byte	0xb8a
	.uleb128 0xd
	.4byte	0x733
	.uleb128 0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb7a
	.uleb128 0x1a
	.4byte	0xba0
	.uleb128 0xd
	.4byte	0x92
	.uleb128 0xd
	.4byte	0x92
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb90
	.uleb128 0x12
	.4byte	.LASF1139
	.byte	0x9
	.2byte	0x17c
	.byte	0x1d
	.4byte	0x9a8
	.uleb128 0x6
	.4byte	.LASF1140
	.byte	0x1
	.byte	0xa
	.byte	0xd3
	.byte	0xc
	.4byte	0xbe1
	.uleb128 0x1d
	.ascii	"Min\000"
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x29
	.byte	0x1
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.ascii	"Max\000"
	.byte	0xa
	.byte	0xe4
	.byte	0x10
	.4byte	0x29
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	.LASF1142
	.byte	0x1
	.byte	0xa
	.byte	0xca
	.byte	0xf
	.4byte	0xc07
	.uleb128 0xa
	.4byte	.LASF1006
	.byte	0xa
	.byte	0xcf
	.byte	0xc
	.4byte	0x29
	.uleb128 0xa
	.4byte	.LASF1005
	.byte	0xa
	.byte	0xe5
	.byte	0x6
	.4byte	0xbb3
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1143
	.byte	0xa
	.byte	0xe6
	.byte	0x2
	.4byte	0xbe1
	.uleb128 0x6
	.4byte	.LASF1144
	.byte	0xc
	.byte	0xa
	.byte	0xeb
	.byte	0x10
	.4byte	0xc55
	.uleb128 0x8
	.4byte	.LASF1145
	.byte	0xa
	.byte	0xf0
	.byte	0xe
	.4byte	0x92
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1146
	.byte	0xa
	.byte	0xf4
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF1147
	.byte	0xa
	.byte	0xf8
	.byte	0xf
	.4byte	0xc07
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF1148
	.byte	0xa
	.byte	0xfc
	.byte	0xd
	.4byte	0x3c
	.byte	0x9
	.byte	0
	.uleb128 0x2
	.4byte	.LASF1149
	.byte	0xa
	.byte	0xfd
	.byte	0x2
	.4byte	0xc13
	.uleb128 0x1e
	.4byte	.LASF1159
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xa
	.2byte	0x115
	.byte	0xe
	.4byte	0xc9f
	.uleb128 0x19
	.4byte	.LASF1150
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1151
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1152
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF1153
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF1154
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF1155
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1156
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1157
	.byte	0xa
	.2byte	0x133
	.byte	0x2
	.4byte	0xc61
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1158
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc55
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6c
	.uleb128 0x1e
	.4byte	.LASF1160
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xa
	.2byte	0x866
	.byte	0xe
	.4byte	0xd63
	.uleb128 0x19
	.4byte	.LASF1161
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1162
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1163
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF1164
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF1165
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF1166
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1167
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF1168
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF1169
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF1170
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF1171
	.byte	0xa
	.uleb128 0x19
	.4byte	.LASF1172
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF1173
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF1174
	.byte	0xd
	.uleb128 0x19
	.4byte	.LASF1175
	.byte	0xe
	.uleb128 0x19
	.4byte	.LASF1176
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF1177
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF1178
	.byte	0x11
	.uleb128 0x19
	.4byte	.LASF1179
	.byte	0x12
	.uleb128 0x19
	.4byte	.LASF1180
	.byte	0x13
	.uleb128 0x19
	.4byte	.LASF1181
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF1182
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF1183
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF1184
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1185
	.byte	0xa
	.2byte	0x8ca
	.byte	0x2
	.4byte	0xcbf
	.uleb128 0x1e
	.4byte	.LASF1186
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xa
	.2byte	0x8cf
	.byte	0xe
	.4byte	0xdc0
	.uleb128 0x19
	.4byte	.LASF1187
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1188
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1189
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF1190
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF1191
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF1192
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1193
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF1194
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF1195
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF1196
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1197
	.byte	0xa
	.2byte	0x8f9
	.byte	0x2
	.4byte	0xd70
	.uleb128 0x10
	.4byte	0x48
	.4byte	0xddd
	.uleb128 0x11
	.4byte	0xa3
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0xdcd
	.uleb128 0x1f
	.4byte	.LASF1364
	.byte	0xa
	.2byte	0x966
	.byte	0x16
	.4byte	0xddd
	.uleb128 0x5
	.byte	0x3
	.4byte	LoRaMacMaxEirpTable
	.uleb128 0x1e
	.4byte	.LASF1198
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xb
	.2byte	0x243
	.byte	0xe
	.4byte	0xf4d
	.uleb128 0x19
	.4byte	.LASF1199
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1200
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1201
	.byte	0x2
	.uleb128 0x19
	.4byte	.LASF1202
	.byte	0x3
	.uleb128 0x19
	.4byte	.LASF1203
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF1204
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF1205
	.byte	0x6
	.uleb128 0x19
	.4byte	.LASF1206
	.byte	0x7
	.uleb128 0x19
	.4byte	.LASF1207
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF1208
	.byte	0x9
	.uleb128 0x19
	.4byte	.LASF1209
	.byte	0xa
	.uleb128 0x19
	.4byte	.LASF1210
	.byte	0xb
	.uleb128 0x19
	.4byte	.LASF1211
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF1212
	.byte	0xd
	.uleb128 0x19
	.4byte	.LASF1213
	.byte	0xe
	.uleb128 0x19
	.4byte	.LASF1214
	.byte	0xf
	.uleb128 0x19
	.4byte	.LASF1215
	.byte	0x10
	.uleb128 0x19
	.4byte	.LASF1216
	.byte	0x11
	.uleb128 0x19
	.4byte	.LASF1217
	.byte	0x12
	.uleb128 0x19
	.4byte	.LASF1218
	.byte	0x13
	.uleb128 0x19
	.4byte	.LASF1219
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF1220
	.byte	0x15
	.uleb128 0x19
	.4byte	.LASF1221
	.byte	0x16
	.uleb128 0x19
	.4byte	.LASF1222
	.byte	0x17
	.uleb128 0x19
	.4byte	.LASF1223
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF1224
	.byte	0x19
	.uleb128 0x19
	.4byte	.LASF1225
	.byte	0x1a
	.uleb128 0x19
	.4byte	.LASF1226
	.byte	0x1b
	.uleb128 0x19
	.4byte	.LASF1227
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF1228
	.byte	0x1d
	.uleb128 0x19
	.4byte	.LASF1229
	.byte	0x1e
	.uleb128 0x19
	.4byte	.LASF1230
	.byte	0x1f
	.uleb128 0x19
	.4byte	.LASF1231
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF1232
	.byte	0x21
	.uleb128 0x19
	.4byte	.LASF1233
	.byte	0x22
	.uleb128 0x19
	.4byte	.LASF1234
	.byte	0x23
	.uleb128 0x19
	.4byte	.LASF1235
	.byte	0x24
	.uleb128 0x19
	.4byte	.LASF1236
	.byte	0x25
	.uleb128 0x19
	.4byte	.LASF1237
	.byte	0x26
	.uleb128 0x19
	.4byte	.LASF1238
	.byte	0x27
	.uleb128 0x19
	.4byte	.LASF1239
	.byte	0x28
	.uleb128 0x19
	.4byte	.LASF1240
	.byte	0x29
	.uleb128 0x19
	.4byte	.LASF1241
	.byte	0x2a
	.uleb128 0x19
	.4byte	.LASF1242
	.byte	0x2b
	.uleb128 0x19
	.4byte	.LASF1243
	.byte	0x2c
	.uleb128 0x19
	.4byte	.LASF1244
	.byte	0x2d
	.uleb128 0x19
	.4byte	.LASF1245
	.byte	0x2e
	.uleb128 0x19
	.4byte	.LASF1246
	.byte	0x2f
	.uleb128 0x19
	.4byte	.LASF1247
	.byte	0x30
	.uleb128 0x19
	.4byte	.LASF1248
	.byte	0x31
	.uleb128 0x19
	.4byte	.LASF1249
	.byte	0x32
	.uleb128 0x19
	.4byte	.LASF1250
	.byte	0x33
	.uleb128 0x19
	.4byte	.LASF1251
	.byte	0x34
	.uleb128 0x19
	.4byte	.LASF1252
	.byte	0x35
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1253
	.byte	0xb
	.2byte	0x324
	.byte	0x2
	.4byte	0xdf5
	.uleb128 0x1e
	.4byte	.LASF1254
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xb
	.2byte	0x329
	.byte	0xe
	.4byte	0xf80
	.uleb128 0x19
	.4byte	.LASF1255
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1256
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1257
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1258
	.byte	0xb
	.2byte	0x338
	.byte	0x2
	.4byte	0xf5a
	.uleb128 0x1e
	.4byte	.LASF1259
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xb
	.2byte	0x33a
	.byte	0xe
	.4byte	0xfb3
	.uleb128 0x19
	.4byte	.LASF1260
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1261
	.byte	0x1
	.uleb128 0x19
	.4byte	.LASF1262
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1263
	.byte	0xb
	.2byte	0x349
	.byte	0x2
	.4byte	0xf8d
	.uleb128 0x15
	.4byte	.LASF1264
	.byte	0x3
	.byte	0xb
	.2byte	0x34e
	.byte	0x10
	.4byte	0xff9
	.uleb128 0x16
	.4byte	.LASF1265
	.byte	0xb
	.2byte	0x353
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1266
	.byte	0xb
	.2byte	0x357
	.byte	0xd
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1267
	.byte	0xb
	.2byte	0x35b
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1268
	.byte	0xb
	.2byte	0x35c
	.byte	0x2
	.4byte	0xfc0
	.uleb128 0x20
	.4byte	.LASF1269
	.byte	0x4
	.byte	0xb
	.2byte	0x361
	.byte	0xf
	.4byte	0x1056
	.uleb128 0x21
	.4byte	.LASF1006
	.byte	0xb
	.2byte	0x366
	.byte	0xe
	.4byte	0x92
	.uleb128 0x21
	.4byte	.LASF1270
	.byte	0xb
	.2byte	0x36a
	.byte	0xb
	.4byte	0xcac
	.uleb128 0x21
	.4byte	.LASF1271
	.byte	0xb
	.2byte	0x36e
	.byte	0xf
	.4byte	0xcb9
	.uleb128 0x21
	.4byte	.LASF1272
	.byte	0xb
	.2byte	0x372
	.byte	0x16
	.4byte	0xcb3
	.uleb128 0x21
	.4byte	.LASF1273
	.byte	0xb
	.2byte	0x376
	.byte	0x14
	.4byte	0xff9
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1274
	.byte	0xb
	.2byte	0x377
	.byte	0x2
	.4byte	0x1006
	.uleb128 0x15
	.4byte	.LASF1275
	.byte	0x4
	.byte	0xb
	.2byte	0x37c
	.byte	0x10
	.4byte	0x10aa
	.uleb128 0x16
	.4byte	.LASF1276
	.byte	0xb
	.2byte	0x381
	.byte	0x14
	.4byte	0xf4d
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x387
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1278
	.byte	0xb
	.2byte	0x38e
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1279
	.byte	0xb
	.2byte	0x395
	.byte	0xd
	.4byte	0x3c
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1280
	.byte	0xb
	.2byte	0x396
	.byte	0x2
	.4byte	0x1063
	.uleb128 0x15
	.4byte	.LASF1281
	.byte	0x8
	.byte	0xb
	.2byte	0x39b
	.byte	0x10
	.4byte	0x10f0
	.uleb128 0x16
	.4byte	.LASF1282
	.byte	0xb
	.2byte	0x3a0
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1283
	.byte	0xb
	.2byte	0x3a4
	.byte	0xa
	.4byte	0x6dd
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1284
	.byte	0xb
	.2byte	0x3a8
	.byte	0x11
	.4byte	0x6ca
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1285
	.byte	0xb
	.2byte	0x3a9
	.byte	0x2
	.4byte	0x10b7
	.uleb128 0x15
	.4byte	.LASF1286
	.byte	0x8
	.byte	0xb
	.2byte	0x3ae
	.byte	0x10
	.4byte	0x1128
	.uleb128 0x16
	.4byte	.LASF1287
	.byte	0xb
	.2byte	0x3b3
	.byte	0xb
	.4byte	0x12c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1288
	.byte	0xb
	.2byte	0x3b7
	.byte	0x11
	.4byte	0xf80
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1289
	.byte	0xb
	.2byte	0x3b8
	.byte	0x2
	.4byte	0x10fd
	.uleb128 0x15
	.4byte	.LASF1290
	.byte	0x4
	.byte	0xb
	.2byte	0x3bd
	.byte	0x10
	.4byte	0x1152
	.uleb128 0x16
	.4byte	.LASF1291
	.byte	0xb
	.2byte	0x3c2
	.byte	0xd
	.4byte	0x6b7
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1292
	.byte	0xb
	.2byte	0x3c3
	.byte	0x2
	.4byte	0x1135
	.uleb128 0x15
	.4byte	.LASF1293
	.byte	0x3
	.byte	0xb
	.2byte	0x3da
	.byte	0xc
	.4byte	0x1198
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x3df
	.byte	0x10
	.4byte	0x29
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1279
	.byte	0xb
	.2byte	0x3e3
	.byte	0x11
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1278
	.byte	0xb
	.2byte	0x3e7
	.byte	0x11
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.4byte	.LASF1294
	.byte	0x4
	.byte	0xb
	.2byte	0x3c9
	.byte	0xf
	.4byte	0x11db
	.uleb128 0x21
	.4byte	.LASF1145
	.byte	0xb
	.2byte	0x3ce
	.byte	0xe
	.4byte	0x92
	.uleb128 0x21
	.4byte	.LASF1295
	.byte	0xb
	.2byte	0x3d2
	.byte	0xc
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF1296
	.byte	0xb
	.2byte	0x3d6
	.byte	0xa
	.4byte	0x6dd
	.uleb128 0x21
	.4byte	.LASF1297
	.byte	0xb
	.2byte	0x3e8
	.byte	0x6
	.4byte	0x115f
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1298
	.byte	0xb
	.2byte	0x3e9
	.byte	0x2
	.4byte	0x1198
	.uleb128 0x15
	.4byte	.LASF1299
	.byte	0x8
	.byte	0xb
	.2byte	0x3ee
	.byte	0x10
	.4byte	0x1213
	.uleb128 0x16
	.4byte	.LASF1300
	.byte	0xb
	.2byte	0x3f3
	.byte	0xe
	.4byte	0x7f1
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1301
	.byte	0xb
	.2byte	0x3f7
	.byte	0xd
	.4byte	0x3c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1302
	.byte	0xb
	.2byte	0x3f8
	.byte	0x2
	.4byte	0x11e8
	.uleb128 0x15
	.4byte	.LASF1303
	.byte	0x8
	.byte	0xb
	.2byte	0x3fd
	.byte	0x10
	.4byte	0x124b
	.uleb128 0x16
	.4byte	.LASF1304
	.byte	0xb
	.2byte	0x402
	.byte	0xf
	.4byte	0xcb9
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1305
	.byte	0xb
	.2byte	0x406
	.byte	0x14
	.4byte	0xfb3
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1306
	.byte	0xb
	.2byte	0x407
	.byte	0x2
	.4byte	0x1220
	.uleb128 0x15
	.4byte	.LASF1307
	.byte	0x14
	.byte	0xb
	.2byte	0x40c
	.byte	0x10
	.4byte	0x1301
	.uleb128 0x16
	.4byte	.LASF1282
	.byte	0xb
	.2byte	0x411
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x415
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1308
	.byte	0xb
	.2byte	0x419
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1309
	.byte	0xb
	.2byte	0x41d
	.byte	0xc
	.4byte	0x29
	.byte	0x3
	.uleb128 0x16
	.4byte	.LASF1145
	.byte	0xb
	.2byte	0x421
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1310
	.byte	0xb
	.2byte	0x425
	.byte	0xf
	.4byte	0x92
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1311
	.byte	0xb
	.2byte	0x429
	.byte	0xd
	.4byte	0x7f
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1279
	.byte	0xb
	.2byte	0x42d
	.byte	0xd
	.4byte	0x3c
	.byte	0x10
	.uleb128 0x16
	.4byte	.LASF1312
	.byte	0xb
	.2byte	0x431
	.byte	0xa
	.4byte	0x6dd
	.byte	0x11
	.uleb128 0x16
	.4byte	.LASF1313
	.byte	0xb
	.2byte	0x435
	.byte	0xa
	.4byte	0x6dd
	.byte	0x12
	.uleb128 0x16
	.4byte	.LASF1314
	.byte	0xb
	.2byte	0x439
	.byte	0x15
	.4byte	0xc9f
	.byte	0x13
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1315
	.byte	0xb
	.2byte	0x43a
	.byte	0x2
	.4byte	0x1258
	.uleb128 0x15
	.4byte	.LASF1316
	.byte	0x10
	.byte	0xb
	.2byte	0x43f
	.byte	0x10
	.4byte	0x1371
	.uleb128 0x16
	.4byte	.LASF1282
	.byte	0xb
	.2byte	0x444
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x448
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1295
	.byte	0xb
	.2byte	0x44c
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1317
	.byte	0xb
	.2byte	0x450
	.byte	0xb
	.4byte	0xcac
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1318
	.byte	0xb
	.2byte	0x454
	.byte	0xb
	.4byte	0xcac
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1319
	.byte	0xb
	.2byte	0x458
	.byte	0xe
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1320
	.byte	0xb
	.2byte	0x459
	.byte	0x2
	.4byte	0x130e
	.uleb128 0x15
	.4byte	.LASF1321
	.byte	0x10
	.byte	0xb
	.2byte	0x45e
	.byte	0x10
	.4byte	0x13fd
	.uleb128 0x16
	.4byte	.LASF1322
	.byte	0xb
	.2byte	0x463
	.byte	0xf
	.4byte	0x120
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1300
	.byte	0xb
	.2byte	0x467
	.byte	0xe
	.4byte	0x7f1
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1323
	.byte	0xb
	.2byte	0x46b
	.byte	0xd
	.4byte	0x3c
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1278
	.byte	0xb
	.2byte	0x46f
	.byte	0xd
	.4byte	0x3c
	.byte	0x9
	.uleb128 0x16
	.4byte	.LASF1324
	.byte	0xb
	.2byte	0x473
	.byte	0xa
	.4byte	0x6dd
	.byte	0xa
	.uleb128 0x16
	.4byte	.LASF1325
	.byte	0xb
	.2byte	0x477
	.byte	0xc
	.4byte	0x29
	.byte	0xb
	.uleb128 0x16
	.4byte	.LASF1326
	.byte	0xb
	.2byte	0x47b
	.byte	0xc
	.4byte	0x29
	.byte	0xc
	.uleb128 0x16
	.4byte	.LASF1327
	.byte	0xb
	.2byte	0x47f
	.byte	0xd
	.4byte	0x3c
	.byte	0xd
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1328
	.byte	0xb
	.2byte	0x480
	.byte	0x2
	.4byte	0x137e
	.uleb128 0x15
	.4byte	.LASF1329
	.byte	0x8
	.byte	0xb
	.2byte	0x485
	.byte	0x10
	.4byte	0x1443
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x48a
	.byte	0xc
	.4byte	0x29
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1309
	.byte	0xb
	.2byte	0x48e
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1145
	.byte	0xb
	.2byte	0x492
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1330
	.byte	0xb
	.2byte	0x493
	.byte	0x2
	.4byte	0x140a
	.uleb128 0x15
	.4byte	.LASF1331
	.byte	0x8
	.byte	0xb
	.2byte	0x498
	.byte	0x10
	.4byte	0x147b
	.uleb128 0x16
	.4byte	.LASF1332
	.byte	0xb
	.2byte	0x49d
	.byte	0x16
	.4byte	0xcb3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1333
	.byte	0xb
	.2byte	0x4a1
	.byte	0xc
	.4byte	0x29
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1334
	.byte	0xb
	.2byte	0x4a2
	.byte	0x2
	.4byte	0x1450
	.uleb128 0x15
	.4byte	.LASF1335
	.byte	0x3
	.byte	0xb
	.2byte	0x4a7
	.byte	0x10
	.4byte	0x14c1
	.uleb128 0x16
	.4byte	.LASF1278
	.byte	0xb
	.2byte	0x4ac
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1279
	.byte	0xb
	.2byte	0x4b0
	.byte	0xd
	.4byte	0x3c
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1317
	.byte	0xb
	.2byte	0x4b4
	.byte	0xd
	.4byte	0x3c
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1336
	.byte	0xb
	.2byte	0x4b5
	.byte	0x2
	.4byte	0x1488
	.uleb128 0x15
	.4byte	.LASF1337
	.byte	0x8
	.byte	0xb
	.2byte	0x4ba
	.byte	0x10
	.4byte	0x14f9
	.uleb128 0x16
	.4byte	.LASF1333
	.byte	0xb
	.2byte	0x4bf
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1146
	.byte	0xb
	.2byte	0x4c3
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1338
	.byte	0xb
	.2byte	0x4c4
	.byte	0x2
	.4byte	0x14ce
	.uleb128 0x1e
	.4byte	.LASF1339
	.byte	0x7
	.byte	0x1
	.4byte	0x4d
	.byte	0xb
	.2byte	0x4c9
	.byte	0xe
	.4byte	0x1526
	.uleb128 0x19
	.4byte	.LASF1340
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1341
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1342
	.byte	0xb
	.2byte	0x4d3
	.byte	0x2
	.4byte	0x1506
	.uleb128 0x15
	.4byte	.LASF1343
	.byte	0x10
	.byte	0xb
	.2byte	0x4d8
	.byte	0x10
	.4byte	0x1596
	.uleb128 0x16
	.4byte	.LASF1283
	.byte	0xb
	.2byte	0x4dd
	.byte	0xa
	.4byte	0x6dd
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1344
	.byte	0xb
	.2byte	0x4e1
	.byte	0xa
	.4byte	0x6dd
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1345
	.byte	0xb
	.2byte	0x4e5
	.byte	0xa
	.4byte	0x6dd
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1282
	.byte	0xb
	.2byte	0x4e9
	.byte	0xd
	.4byte	0x3c
	.byte	0x3
	.uleb128 0x16
	.4byte	.LASF1346
	.byte	0xb
	.2byte	0x4ed
	.byte	0xf
	.4byte	0x70c
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1347
	.byte	0xb
	.2byte	0x4f1
	.byte	0x11
	.4byte	0x6ca
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1348
	.byte	0xb
	.2byte	0x4f2
	.byte	0x2
	.4byte	0x1533
	.uleb128 0x15
	.4byte	.LASF1349
	.byte	0xc
	.byte	0xb
	.2byte	0x4f7
	.byte	0x10
	.4byte	0x15f8
	.uleb128 0x16
	.4byte	.LASF1350
	.byte	0xb
	.2byte	0x4fc
	.byte	0x11
	.4byte	0x6ca
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1351
	.byte	0xb
	.2byte	0x500
	.byte	0x11
	.4byte	0x6ca
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x504
	.byte	0xc
	.4byte	0x29
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1283
	.byte	0xb
	.2byte	0x508
	.byte	0xa
	.4byte	0x6dd
	.byte	0x9
	.uleb128 0x16
	.4byte	.LASF1345
	.byte	0xb
	.2byte	0x50c
	.byte	0xa
	.4byte	0x6dd
	.byte	0xa
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1352
	.byte	0xb
	.2byte	0x50d
	.byte	0x2
	.4byte	0x15a3
	.uleb128 0x15
	.4byte	.LASF1353
	.byte	0x8
	.byte	0xb
	.2byte	0x512
	.byte	0x10
	.4byte	0x1630
	.uleb128 0x16
	.4byte	.LASF1332
	.byte	0xb
	.2byte	0x517
	.byte	0x16
	.4byte	0xcb3
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1333
	.byte	0xb
	.2byte	0x51b
	.byte	0xd
	.4byte	0x3c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1354
	.byte	0xb
	.2byte	0x51c
	.byte	0x2
	.4byte	0x1605
	.uleb128 0x15
	.4byte	.LASF1355
	.byte	0x1
	.byte	0xb
	.2byte	0x521
	.byte	0x10
	.4byte	0x165a
	.uleb128 0x16
	.4byte	.LASF1333
	.byte	0xb
	.2byte	0x526
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1356
	.byte	0xb
	.2byte	0x527
	.byte	0x2
	.4byte	0x163d
	.uleb128 0x15
	.4byte	.LASF1357
	.byte	0x10
	.byte	0xb
	.2byte	0x52c
	.byte	0x10
	.4byte	0x16ca
	.uleb128 0x16
	.4byte	.LASF1282
	.byte	0xb
	.2byte	0x531
	.byte	0xd
	.4byte	0x3c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1277
	.byte	0xb
	.2byte	0x535
	.byte	0xc
	.4byte	0x29
	.byte	0x1
	.uleb128 0x16
	.4byte	.LASF1295
	.byte	0xb
	.2byte	0x539
	.byte	0xc
	.4byte	0x29
	.byte	0x2
	.uleb128 0x16
	.4byte	.LASF1317
	.byte	0xb
	.2byte	0x53d
	.byte	0xb
	.4byte	0xcac
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1318
	.byte	0xb
	.2byte	0x541
	.byte	0xb
	.4byte	0xcac
	.byte	0x8
	.uleb128 0x16
	.4byte	.LASF1358
	.byte	0xb
	.2byte	0x545
	.byte	0xe
	.4byte	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1359
	.byte	0xb
	.2byte	0x546
	.byte	0x2
	.4byte	0x1667
	.uleb128 0x15
	.4byte	.LASF1360
	.byte	0xc
	.byte	0xb
	.2byte	0x54b
	.byte	0x10
	.4byte	0x1710
	.uleb128 0x16
	.4byte	.LASF1361
	.byte	0xb
	.2byte	0x550
	.byte	0xe
	.4byte	0x6c
	.byte	0
	.uleb128 0x16
	.4byte	.LASF1362
	.byte	0xb
	.2byte	0x554
	.byte	0xe
	.4byte	0x92
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF1145
	.byte	0xb
	.2byte	0x558
	.byte	0xe
	.4byte	0x92
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.4byte	.LASF1363
	.byte	0xb
	.2byte	0x559
	.byte	0x2
	.4byte	0x16d7
	.uleb128 0x10
	.4byte	0x48
	.4byte	0x172d
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x171d
	.uleb128 0x1f
	.4byte	.LASF1365
	.byte	0xc
	.2byte	0x12d
	.byte	0x16
	.4byte	0x172d
	.uleb128 0x5
	.byte	0x3
	.4byte	DataratesEU868
	.uleb128 0x10
	.4byte	0x9e
	.4byte	0x1755
	.uleb128 0x11
	.4byte	0xa3
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.4byte	0x1745
	.uleb128 0x1f
	.4byte	.LASF1366
	.byte	0xc
	.2byte	0x132
	.byte	0x17
	.4byte	0x1755
	.uleb128 0x5
	.byte	0x3
	.4byte	BandwidthsEU868
	.uleb128 0x1f
	.4byte	.LASF1367
	.byte	0xc
	.2byte	0x137
	.byte	0x16
	.4byte	0x172d
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxPayloadOfDatarateEU868
	.uleb128 0x1f
	.4byte	.LASF1368
	.byte	0xc
	.2byte	0x13c
	.byte	0x16
	.4byte	0x172d
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxPayloadOfDatarateRepeaterEU868
	.uleb128 0x22
	.4byte	.LASF1374
	.byte	0x1
	.2byte	0x422
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17db
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x422
	.byte	0x2b
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1370
	.byte	0x1
	.2byte	0x422
	.byte	0x44
	.4byte	0x17db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1371
	.byte	0x1
	.2byte	0x422
	.byte	0x5c
	.4byte	0x7f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1710
	.uleb128 0x24
	.4byte	.LASF1377
	.byte	0x1
	.2byte	0x40d
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x183c
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x40d
	.byte	0x2e
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1372
	.byte	0x1
	.2byte	0x40d
	.byte	0x3e
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x25
	.ascii	"dr\000"
	.byte	0x1
	.2byte	0x40d
	.byte	0x58
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x23
	.4byte	.LASF1373
	.byte	0x1
	.2byte	0x40d
	.byte	0x63
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1375
	.byte	0x1
	.2byte	0x3f8
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1874
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x3f8
	.byte	0x2f
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1376
	.byte	0x1
	.2byte	0x3f8
	.byte	0x4f
	.4byte	0x1874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x16ca
	.uleb128 0x24
	.4byte	.LASF1378
	.byte	0x1
	.2byte	0x3e3
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18b6
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x3e3
	.byte	0x2c
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1379
	.byte	0x1
	.2byte	0x3e3
	.byte	0x4b
	.4byte	0x18b6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x165a
	.uleb128 0x24
	.4byte	.LASF1380
	.byte	0x1
	.2byte	0x3ce
	.byte	0x11
	.4byte	0xd63
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f8
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x3ce
	.byte	0x33
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1381
	.byte	0x1
	.2byte	0x3ce
	.byte	0x4f
	.4byte	0x18f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1630
	.uleb128 0x24
	.4byte	.LASF1382
	.byte	0x1
	.2byte	0x3b9
	.byte	0x11
	.4byte	0xd63
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x196a
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x3b9
	.byte	0x34
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1383
	.byte	0x1
	.2byte	0x3b9
	.byte	0x4e
	.4byte	0x196a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1384
	.byte	0x1
	.2byte	0x3b9
	.byte	0x67
	.4byte	0x7f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF1385
	.byte	0x1
	.2byte	0x3b9
	.byte	0x7d
	.4byte	0x1970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF1386
	.byte	0x1
	.2byte	0x3b9
	.byte	0x90
	.4byte	0x1970
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x15f8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6ca
	.uleb128 0x22
	.4byte	.LASF1387
	.byte	0x1
	.2byte	0x3a4
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19ae
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x3a4
	.byte	0x29
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1388
	.byte	0x1
	.2byte	0x3a4
	.byte	0x46
	.4byte	0x19ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1596
	.uleb128 0x24
	.4byte	.LASF1389
	.byte	0x1
	.2byte	0x38f
	.byte	0x8
	.4byte	0x29
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a00
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x38f
	.byte	0x2b
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1390
	.byte	0x1
	.2byte	0x38f
	.byte	0x3a
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x23
	.4byte	.LASF1391
	.byte	0x1
	.2byte	0x38f
	.byte	0x57
	.4byte	0x1526
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1392
	.byte	0x1
	.2byte	0x37a
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a3c
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x37a
	.byte	0x2d
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1393
	.byte	0x1
	.2byte	0x37a
	.byte	0x4b
	.4byte	0x1a3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14f9
	.uleb128 0x24
	.4byte	.LASF1394
	.byte	0x1
	.2byte	0x365
	.byte	0x8
	.4byte	0x29
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a7e
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x365
	.byte	0x2f
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1395
	.byte	0x1
	.2byte	0x365
	.byte	0x50
	.4byte	0x1a7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x14c1
	.uleb128 0x24
	.4byte	.LASF1396
	.byte	0x1
	.2byte	0x350
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ac0
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x350
	.byte	0x2e
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1397
	.byte	0x1
	.2byte	0x350
	.byte	0x4d
	.4byte	0x1ac0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x147b
	.uleb128 0x24
	.4byte	.LASF1398
	.byte	0x1
	.2byte	0x33b
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b02
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x33b
	.byte	0x30
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1399
	.byte	0x1
	.2byte	0x33b
	.byte	0x51
	.4byte	0x1b02
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1443
	.uleb128 0x24
	.4byte	.LASF1400
	.byte	0x1
	.2byte	0x326
	.byte	0x9
	.4byte	0x3c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b84
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x326
	.byte	0x2b
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1401
	.byte	0x1
	.2byte	0x326
	.byte	0x47
	.4byte	0x1b84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1402
	.byte	0x1
	.2byte	0x326
	.byte	0x5b
	.4byte	0x1b8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF1403
	.byte	0x1
	.2byte	0x326
	.byte	0x6a
	.4byte	0x1b8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF1404
	.byte	0x1
	.2byte	0x326
	.byte	0x7d
	.4byte	0x7f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.4byte	.LASF1405
	.byte	0x1
	.2byte	0x326
	.byte	0x90
	.4byte	0x7f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x13fd
	.uleb128 0xe
	.byte	0x4
	.4byte	0x29
	.uleb128 0x24
	.4byte	.LASF1406
	.byte	0x1
	.2byte	0x311
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bec
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x311
	.byte	0x26
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1407
	.byte	0x1
	.2byte	0x311
	.byte	0x40
	.4byte	0x1bec
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1408
	.byte	0x1
	.2byte	0x311
	.byte	0x52
	.4byte	0x1b8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF1409
	.byte	0x1
	.2byte	0x311
	.byte	0x68
	.4byte	0x1970
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1371
	.uleb128 0x24
	.4byte	.LASF1410
	.byte	0x1
	.2byte	0x2fc
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c3e
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x2fc
	.byte	0x26
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1411
	.byte	0x1
	.2byte	0x2fc
	.byte	0x40
	.4byte	0x1c3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1412
	.byte	0x1
	.2byte	0x2fc
	.byte	0x52
	.4byte	0x1b8a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1301
	.uleb128 0x22
	.4byte	.LASF1413
	.byte	0x1
	.2byte	0x2e7
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cac
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x2e7
	.byte	0x37
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1412
	.byte	0x1
	.2byte	0x2e7
	.byte	0x46
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x23
	.4byte	.LASF1414
	.byte	0x1
	.2byte	0x2e7
	.byte	0x58
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x23
	.4byte	.LASF1415
	.byte	0x1
	.2byte	0x2e7
	.byte	0x6f
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1416
	.byte	0x1
	.2byte	0x2e7
	.byte	0x8a
	.4byte	0x1c3e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF1417
	.byte	0x1
	.2byte	0x2d2
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ce8
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x2d2
	.byte	0x29
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1418
	.byte	0x1
	.2byte	0x2d2
	.byte	0x46
	.4byte	0x1ce8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x124b
	.uleb128 0x22
	.4byte	.LASF1419
	.byte	0x1
	.2byte	0x2bd
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d26
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x2bd
	.byte	0x29
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1420
	.byte	0x1
	.2byte	0x2bd
	.byte	0x46
	.4byte	0x1d26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1213
	.uleb128 0x24
	.4byte	.LASF1421
	.byte	0x1
	.2byte	0x2a8
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d78
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x2a8
	.byte	0x24
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1422
	.byte	0x1
	.2byte	0x2a8
	.byte	0x3c
	.4byte	0x1d78
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF1423
	.byte	0x1
	.2byte	0x2a8
	.byte	0x53
	.4byte	0xf4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x11db
	.uleb128 0x24
	.4byte	.LASF1424
	.byte	0x1
	.2byte	0x293
	.byte	0x7
	.4byte	0x12c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dba
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x293
	.byte	0x28
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1425
	.byte	0x1
	.2byte	0x293
	.byte	0x43
	.4byte	0x1dba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1152
	.uleb128 0x22
	.4byte	.LASF1426
	.byte	0x1
	.2byte	0x27e
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1df8
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x27e
	.byte	0x2a
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1425
	.byte	0x1
	.2byte	0x27e
	.byte	0x48
	.4byte	0x1df8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1128
	.uleb128 0x22
	.4byte	.LASF1427
	.byte	0x1
	.2byte	0x269
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e36
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x269
	.byte	0x2b
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x23
	.4byte	.LASF1428
	.byte	0x1
	.2byte	0x269
	.byte	0x4a
	.4byte	0x1e36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x10f0
	.uleb128 0x24
	.4byte	.LASF1429
	.byte	0x1
	.2byte	0x253
	.byte	0xc
	.4byte	0x1056
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e88
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x253
	.byte	0x2f
	.4byte	0xdc0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x23
	.4byte	.LASF1430
	.byte	0x1
	.2byte	0x253
	.byte	0x47
	.4byte	0x1e88
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1f
	.4byte	.LASF1431
	.byte	0x1
	.2byte	0x255
	.byte	0x10
	.4byte	0x1056
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x10aa
	.uleb128 0x26
	.4byte	.LASF1432
	.byte	0x1
	.2byte	0x23e
	.byte	0x6
	.4byte	0x6dd
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.4byte	.LASF1369
	.byte	0x1
	.2byte	0x23e
	.byte	0x26
	.4byte	0xdc0
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x713
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1eb7
	.4byte	0xcd2
	.ascii	"LORAMAC_STATUS_OK\000"
	.4byte	0xcd8
	.ascii	"LORAMAC_STATUS_BUSY\000"
	.4byte	0xcde
	.ascii	"LORAMAC_STATUS_SERVICE_UNKNOWN\000"
	.4byte	0xce4
	.ascii	"LORAMAC_STATUS_PARAMETER_INVALID\000"
	.4byte	0xcea
	.ascii	"LORAMAC_STATUS_FREQUENCY_INVALID\000"
	.4byte	0xcf0
	.ascii	"LORAMAC_STATUS_DATARATE_INVALID\000"
	.4byte	0xcf6
	.ascii	"LORAMAC_STATUS_FREQ_AND_DR_INVALID\000"
	.4byte	0xcfc
	.ascii	"LORAMAC_STATUS_NO_NETWORK_JOINED\000"
	.4byte	0xd02
	.ascii	"LORAMAC_STATUS_LENGTH_ERROR\000"
	.4byte	0xd08
	.ascii	"LORAMAC_STATUS_REGION_NOT_SUPPORTED\000"
	.4byte	0xd0e
	.ascii	"LORAMAC_STATUS_SKIPPED_APP_DATA\000"
	.4byte	0xd14
	.ascii	"LORAMAC_STATUS_DUTYCYCLE_RESTRICTED\000"
	.4byte	0xd1a
	.ascii	"LORAMAC_STATUS_NO_CHANNEL_FOUND\000"
	.4byte	0xd20
	.ascii	"LORAMAC_STATUS_NO_FREE_CHANNEL_FOUND\000"
	.4byte	0xd26
	.ascii	"LORAMAC_STATUS_BUSY_BEACON_RESERVED_TIME\000"
	.4byte	0xd2c
	.ascii	"LORAMAC_STATUS_BUSY_PING_SLOT_WINDOW_TIME\000"
	.4byte	0xd32
	.ascii	"LORAMAC_STATUS_BUSY_UPLINK_COLLISION\000"
	.4byte	0xd38
	.ascii	"LORAMAC_STATUS_CRYPTO_ERROR\000"
	.4byte	0xd3e
	.ascii	"LORAMAC_STATUS_FCNT_HANDLER_ERROR\000"
	.4byte	0xd44
	.ascii	"LORAMAC_STATUS_MAC_COMMAD_ERROR\000"
	.4byte	0xd4a
	.ascii	"LORAMAC_STATUS_CLASS_B_ERROR\000"
	.4byte	0xd50
	.ascii	"LORAMAC_STATUS_CONFIRM_QUEUE_ERROR\000"
	.4byte	0xd56
	.ascii	"LORAMAC_STATUS_MC_GROUP_UNDEFINED\000"
	.4byte	0xd5c
	.ascii	"LORAMAC_STATUS_ERROR\000"
	.4byte	0xd83
	.ascii	"LORAMAC_REGION_AS923\000"
	.4byte	0xd89
	.ascii	"LORAMAC_REGION_AU915\000"
	.4byte	0xd8f
	.ascii	"LORAMAC_REGION_CN470\000"
	.4byte	0xd95
	.ascii	"LORAMAC_REGION_CN779\000"
	.4byte	0xd9b
	.ascii	"LORAMAC_REGION_EU433\000"
	.4byte	0xda1
	.ascii	"LORAMAC_REGION_EU868\000"
	.4byte	0xda7
	.ascii	"LORAMAC_REGION_KR920\000"
	.4byte	0xdad
	.ascii	"LORAMAC_REGION_IN865\000"
	.4byte	0xdb3
	.ascii	"LORAMAC_REGION_US915\000"
	.4byte	0xdb9
	.ascii	"LORAMAC_REGION_RU864\000"
	.4byte	0xde2
	.ascii	"LoRaMacMaxEirpTable\000"
	.4byte	0x1732
	.ascii	"DataratesEU868\000"
	.4byte	0x175a
	.ascii	"BandwidthsEU868\000"
	.4byte	0x176d
	.ascii	"MaxPayloadOfDatarateEU868\000"
	.4byte	0x1780
	.ascii	"MaxPayloadOfDatarateRepeaterEU868\000"
	.4byte	0x1793
	.ascii	"RegionRxBeaconSetup\000"
	.4byte	0x17e1
	.ascii	"RegionApplyDrOffset\000"
	.4byte	0x183c
	.ascii	"RegionSetContinuousWave\000"
	.4byte	0x187a
	.ascii	"RegionChannelsRemove\000"
	.4byte	0x18bc
	.ascii	"RegionChannelAdd\000"
	.4byte	0x18fe
	.ascii	"RegionNextChannel\000"
	.4byte	0x1976
	.ascii	"RegionCalcBackOff\000"
	.4byte	0x19b4
	.ascii	"RegionAlternateDr\000"
	.4byte	0x1a00
	.ascii	"RegionDlChannelReq\000"
	.4byte	0x1a42
	.ascii	"RegionTxParamSetupReq\000"
	.4byte	0x1a84
	.ascii	"RegionNewChannelReq\000"
	.4byte	0x1ac6
	.ascii	"RegionRxParamSetupReq\000"
	.4byte	0x1b08
	.ascii	"RegionLinkAdrReq\000"
	.4byte	0x1b90
	.ascii	"RegionTxConfig\000"
	.4byte	0x1bf2
	.ascii	"RegionRxConfig\000"
	.4byte	0x1c44
	.ascii	"RegionComputeRxWindowParameters\000"
	.4byte	0x1cac
	.ascii	"RegionChanMaskSet\000"
	.4byte	0x1cee
	.ascii	"RegionApplyCFList\000"
	.4byte	0x1d2c
	.ascii	"RegionVerify\000"
	.4byte	0x1d7e
	.ascii	"RegionGetNvmCtx\000"
	.4byte	0x1dc0
	.ascii	"RegionInitDefaults\000"
	.4byte	0x1dfe
	.ascii	"RegionSetBandTxDone\000"
	.4byte	0x1e3c
	.ascii	"RegionGetPhyParam\000"
	.4byte	0x1e8e
	.ascii	"RegionIsActive\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x7d1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1eb7
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
	.4byte	0x5dc
	.ascii	"timeval\000"
	.4byte	0x6e4
	.ascii	"SysTime_s\000"
	.4byte	0x70c
	.ascii	"SysTime_t\000"
	.4byte	0x733
	.ascii	"RadioModems_t\000"
	.4byte	0x766
	.ascii	"RadioState_t\000"
	.4byte	0x81f
	.ascii	"RadioEvents_t\000"
	.4byte	0x82b
	.ascii	"Radio_s\000"
	.4byte	0xbb3
	.ascii	"sFields\000"
	.4byte	0xbe1
	.ascii	"uDrRange\000"
	.4byte	0xc07
	.ascii	"DrRange_t\000"
	.4byte	0xc13
	.ascii	"sChannelParams\000"
	.4byte	0xc55
	.ascii	"ChannelParams_t\000"
	.4byte	0xc61
	.ascii	"eLoRaMacRxSlot\000"
	.4byte	0xc9f
	.ascii	"LoRaMacRxSlot_t\000"
	.4byte	0xcac
	.ascii	"float\000"
	.4byte	0xcbf
	.ascii	"eLoRaMacStatus\000"
	.4byte	0xd63
	.ascii	"LoRaMacStatus_t\000"
	.4byte	0xd70
	.ascii	"eLoRaMacRegion_t\000"
	.4byte	0xdc0
	.ascii	"LoRaMacRegion_t\000"
	.4byte	0xdf5
	.ascii	"ePhyAttribute\000"
	.4byte	0xf4d
	.ascii	"PhyAttribute_t\000"
	.4byte	0xf5a
	.ascii	"eInitType\000"
	.4byte	0xf80
	.ascii	"InitType_t\000"
	.4byte	0xf8d
	.ascii	"eChannelsMask\000"
	.4byte	0xfb3
	.ascii	"ChannelsMask_t\000"
	.4byte	0xfc0
	.ascii	"sBeaconFormat\000"
	.4byte	0xff9
	.ascii	"BeaconFormat_t\000"
	.4byte	0x1006
	.ascii	"uPhyParam\000"
	.4byte	0x1056
	.ascii	"PhyParam_t\000"
	.4byte	0x1063
	.ascii	"sGetPhyParams\000"
	.4byte	0x10aa
	.ascii	"GetPhyParams_t\000"
	.4byte	0x10b7
	.ascii	"sSetBandTxDoneParams\000"
	.4byte	0x10f0
	.ascii	"SetBandTxDoneParams_t\000"
	.4byte	0x10fd
	.ascii	"sInitDefaultsParams\000"
	.4byte	0x1128
	.ascii	"InitDefaultsParams_t\000"
	.4byte	0x1135
	.ascii	"sGetNvmCtxParams\000"
	.4byte	0x1152
	.ascii	"GetNvmCtxParams_t\000"
	.4byte	0x115f
	.ascii	"sDatarateParams\000"
	.4byte	0x1198
	.ascii	"uVerifyParams\000"
	.4byte	0x11db
	.ascii	"VerifyParams_t\000"
	.4byte	0x11e8
	.ascii	"sApplyCFListParams\000"
	.4byte	0x1213
	.ascii	"ApplyCFListParams_t\000"
	.4byte	0x1220
	.ascii	"sChanMaskSetParams\000"
	.4byte	0x124b
	.ascii	"ChanMaskSetParams_t\000"
	.4byte	0x1258
	.ascii	"sRxConfigParams\000"
	.4byte	0x1301
	.ascii	"RxConfigParams_t\000"
	.4byte	0x130e
	.ascii	"sTxConfigParams\000"
	.4byte	0x1371
	.ascii	"TxConfigParams_t\000"
	.4byte	0x137e
	.ascii	"sLinkAdrReqParams\000"
	.4byte	0x13fd
	.ascii	"LinkAdrReqParams_t\000"
	.4byte	0x140a
	.ascii	"sRxParamSetupReqParams\000"
	.4byte	0x1443
	.ascii	"RxParamSetupReqParams_t\000"
	.4byte	0x1450
	.ascii	"sNewChannelReqParams\000"
	.4byte	0x147b
	.ascii	"NewChannelReqParams_t\000"
	.4byte	0x1488
	.ascii	"sTxParamSetupReqParams\000"
	.4byte	0x14c1
	.ascii	"TxParamSetupReqParams_t\000"
	.4byte	0x14ce
	.ascii	"sDlChannelReqParams\000"
	.4byte	0x14f9
	.ascii	"DlChannelReqParams_t\000"
	.4byte	0x1506
	.ascii	"eAlternateDrType\000"
	.4byte	0x1526
	.ascii	"AlternateDrType_t\000"
	.4byte	0x1533
	.ascii	"sCalcBackOffParams\000"
	.4byte	0x1596
	.ascii	"CalcBackOffParams_t\000"
	.4byte	0x15a3
	.ascii	"sNextChanParams\000"
	.4byte	0x15f8
	.ascii	"NextChanParams_t\000"
	.4byte	0x1605
	.ascii	"sChannelAddParams\000"
	.4byte	0x1630
	.ascii	"ChannelAddParams_t\000"
	.4byte	0x163d
	.ascii	"sChannelRemoveParams\000"
	.4byte	0x165a
	.ascii	"ChannelRemoveParams_t\000"
	.4byte	0x1667
	.ascii	"sContinuousWaveParams\000"
	.4byte	0x16ca
	.ascii	"ContinuousWaveParams_t\000"
	.4byte	0x16d7
	.ascii	"sRxBeaconSetupParams\000"
	.4byte	0x1710
	.ascii	"RxBeaconSetup_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xd4
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
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF467
	.byte	0x3
	.uleb128 0x81
	.uleb128 0x2
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.file 13 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/stdbool.h"
	.byte	0x3
	.uleb128 0x82
	.uleb128 0xd
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x83
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF533
	.file 14 "../../../../nordic_sdk/nRF5_SDK_14.2.0_17b948a/components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x20
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 15 "../../../../lora/system/timer.h"
	.byte	0x3
	.uleb128 0x84
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF590
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF591
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
	.4byte	.LASF618
	.byte	0x4
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF623
	.file 16 "C:/Program Files/SEGGER/SEGGER Embedded Studio for ARM 5.32a/include/time.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF624
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF627
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x86
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF655
	.byte	0x4
	.file 17 "../../../../lora/mac/LoRaMacTypes.h"
	.byte	0x3
	.uleb128 0x87
	.uleb128 0x11
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x3
	.uleb128 0xa95
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF666
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro14
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF701
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF703
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF705
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF707
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF709
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF711
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF713
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF715
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF717
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF719
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF721
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF723
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF725
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF727
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF729
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF731
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF733
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF735
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF737
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF739
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF741
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF743
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF745
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF747
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF749
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF751
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF753
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF755
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF757
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF759
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF761
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF763
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF765
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF767
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF769
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF771
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF773
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF775
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF777
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF779
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF781
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF800
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF801
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF802
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF803
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF804
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF805
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF819
	.byte	0x3
	.uleb128 0x131
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF820
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro15
	.byte	0x4
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x182
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x183
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x184
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x185
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x186
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x188
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x189
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x18a
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x18b
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x18c
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x18d
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x18e
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x18f
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x190
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x191
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x192
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x195
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x196
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x198
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x199
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x1ba
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x1bc
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x1bd
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x1be
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x1bf
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x1c0
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x1c1
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x1c2
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x1c3
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x1c4
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x1c5
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x1c6
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x1c7
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x1c8
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x1c9
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x1ca
	.4byte	.LASF935
	.byte	0x5
	.uleb128 0x1cb
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x1cc
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x1cd
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x1ce
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x1cf
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x1ee
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x1ef
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x1f0
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x1f1
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x1f2
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x1f3
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x1f4
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x1f5
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x1f6
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x1f7
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x1f8
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x1f9
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x1fa
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x1fb
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x1fc
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x1fd
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x1fe
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x1ff
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x200
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x201
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x202
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x203
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x204
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x205
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x225
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x226
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x228
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x229
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x22a
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x22b
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x22d
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x22e
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x22f
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x230
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x231
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x232
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x233
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x234
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x235
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0x236
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0x237
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0x238
	.4byte	.LASF985
	.byte	0x5
	.uleb128 0x239
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x23a
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x23b
	.4byte	.LASF988
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
	.section	.debug_macro,"G",%progbits,wm4.stdbool.h.39.3758cb47b714dfcbf7837a03b10a6ad6,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF532
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.nordic_common.h.45.16eceeed31f8d5a54ec899dc2bdaca21,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF586
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.utilities.h.41.dd792736c5bcab64215dded6a6fa212f,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF589
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.__crossworks.h.39.ff21eb83ebfc80fb95245a821dd1e413,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF593
	.byte	0x6
	.uleb128 0x3d
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF612
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.stddef.h.44.3483ea4b5d43bc7237f8a88f13989923,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF616
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.rtcboard.h.42.b337a4ba498456f95ff10ff1362ea4fa,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF622
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.time.h.39.5b805c23b4e4a1b38dd0319ef439ea92,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF626
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.systime.h.39.79bbe2f9e5b0ad96b7ccf313967b6e2d,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF654
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.LoRaMacTypes.h.36.cb888bbbdda6e5b595bc1087d27e0153,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF658
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.LoRaMac.h.140.57e9e82b1e62bed8e8fee55a15ce5b7c,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF661
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF663
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF665
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF658
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.Region.h.69.56d1290d4a742c2f8b19d6cb1caa298b,comdat
.Ldebug_macro14:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF667
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF669
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF671
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF673
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF675
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF677
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF679
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF681
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF683
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF685
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x187
	.4byte	.LASF687
	.byte	0x5
	.uleb128 0x197
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x1a7
	.4byte	.LASF689
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x1c7
	.4byte	.LASF691
	.byte	0x5
	.uleb128 0x1d7
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF693
	.byte	0x5
	.uleb128 0x1f7
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF695
	.byte	0x5
	.uleb128 0x217
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x227
	.4byte	.LASF697
	.byte	0x5
	.uleb128 0x237
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x23c
	.4byte	.LASF699
	.byte	0
	.section	.debug_macro,"G",%progbits,wm4.RegionEU868.h.50.e65a9e69197575427a8ca3426b9eaa3c,comdat
.Ldebug_macro15:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF867
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF233:
	.ascii	"__FLT32X_HAS_QUIET_NAN__ 1\000"
.LASF1123:
	.ascii	"Send\000"
.LASF1135:
	.ascii	"GetWakeupTime\000"
.LASF835:
	.ascii	"EU868_DEFAULT_MAX_EIRP 16.0f\000"
.LASF1202:
	.ascii	"PHY_MAX_RX_DR\000"
.LASF182:
	.ascii	"__DECIMAL_DIG__ 17\000"
.LASF1338:
	.ascii	"DlChannelReqParams_t\000"
.LASF617:
	.ascii	"__RTC_BOARD_H__ \000"
.LASF921:
	.ascii	"IN865_GET_NVM_CTX() \000"
.LASF408:
	.ascii	"__ARM_FEATURE_CLZ 1\000"
.LASF989:
	.ascii	"int8_t\000"
.LASF253:
	.ascii	"__DEC128_EPSILON__ 1E-33DL\000"
.LASF910:
	.ascii	"KR920_CALC_BACKOFF() \000"
.LASF631:
	.ascii	"TM_SECONDS_IN_1HOUR ( ( uint32_t ) 3600U )\000"
.LASF900:
	.ascii	"KR920_CHAN_MASK_SET() \000"
.LASF1404:
	.ascii	"nbRepOut\000"
.LASF383:
	.ascii	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\000"
.LASF568:
	.ascii	"BIT_16 0x00010000\000"
.LASF362:
	.ascii	"__TA_IBIT__ 64\000"
.LASF1088:
	.ascii	"size_t\000"
.LASF255:
	.ascii	"__SFRACT_FBIT__ 7\000"
.LASF1100:
	.ascii	"RF_RX_RUNNING\000"
.LASF1060:
	.ascii	"__locale_s\000"
.LASF218:
	.ascii	"__FLT64_HAS_INFINITY__ 1\000"
.LASF593:
	.ascii	"__THREAD __thread\000"
.LASF686:
	.ascii	"TX_POWER_2 2\000"
.LASF327:
	.ascii	"__LLACCUM_MIN__ (-0X1P31LLK-0X1P31LLK)\000"
.LASF200:
	.ascii	"__FLT32_EPSILON__ 1.1\000"
.LASF319:
	.ascii	"__LACCUM_EPSILON__ 0x1P-31LK\000"
.LASF1150:
	.ascii	"RX_SLOT_WIN_1\000"
.LASF1051:
	.ascii	"__towupper\000"
.LASF1055:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF684:
	.ascii	"TX_POWER_0 0\000"
.LASF91:
	.ascii	"__INTMAX_C(c) c ## LL\000"
.LASF214:
	.ascii	"__FLT64_MIN__ 1.1\000"
.LASF1350:
	.ascii	"AggrTimeOff\000"
.LASF974:
	.ascii	"RU864_RX_CONFIG() \000"
.LASF240:
	.ascii	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\000"
.LASF344:
	.ascii	"__TQ_IBIT__ 0\000"
.LASF1410:
	.ascii	"RegionRxConfig\000"
.LASF212:
	.ascii	"__FLT64_DECIMAL_DIG__ 17\000"
.LASF654:
	.ascii	"UNIX_GPS_EPOCH_OFFSET 315964800\000"
.LASF1408:
	.ascii	"txPower\000"
.LASF14:
	.ascii	"__ATOMIC_CONSUME 1\000"
.LASF277:
	.ascii	"__LFRACT_MIN__ (-0.5LR-0.5LR)\000"
.LASF75:
	.ascii	"__WCHAR_MAX__ 0xffffffffU\000"
.LASF307:
	.ascii	"__ACCUM_MIN__ (-0X1P15K-0X1P15K)\000"
.LASF1357:
	.ascii	"sContinuousWaveParams\000"
.LASF1402:
	.ascii	"drOut\000"
.LASF870:
	.ascii	"EU868_GET_PHY_PARAM() EU868_CASE { return RegionEU8"
	.ascii	"68GetPhyParam( getPhy ); }\000"
.LASF864:
	.ascii	"EU868_LC1 { 868100000, 0, { ( ( DR_5 << 4 ) | DR_0 "
	.ascii	") }, 1 }\000"
.LASF922:
	.ascii	"IN865_VERIFY() \000"
.LASF997:
	.ascii	"int32_t\000"
.LASF988:
	.ascii	"RU864_RX_BEACON_SETUP() \000"
.LASF1251:
	.ascii	"PHY_BEACON_NB_CHANNELS\000"
.LASF18:
	.ascii	"__SIZEOF_LONG_LONG__ 8\000"
.LASF736:
	.ascii	"AU915_RX_PARAM_SETUP_REQ() \000"
.LASF167:
	.ascii	"__DBL_MAX_10_EXP__ 308\000"
.LASF964:
	.ascii	"US915_RX_BEACON_SETUP() \000"
.LASF267:
	.ascii	"__FRACT_MIN__ (-0.5R-0.5R)\000"
.LASF134:
	.ascii	"__UINT_FAST8_MAX__ 0xffffffffU\000"
.LASF333:
	.ascii	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULLK\000"
.LASF1110:
	.ascii	"CadDone\000"
.LASF954:
	.ascii	"US915_NEW_CHANNEL_REQ() \000"
.LASF1377:
	.ascii	"RegionApplyDrOffset\000"
.LASF237:
	.ascii	"__DEC32_MIN__ 1E-95DF\000"
.LASF94:
	.ascii	"__INTMAX_WIDTH__ 64\000"
.LASF971:
	.ascii	"RU864_APPLY_CF_LIST() \000"
.LASF303:
	.ascii	"__USACCUM_MAX__ 0XFFFFP-8UHK\000"
.LASF1283:
	.ascii	"Joined\000"
.LASF32:
	.ascii	"__SIZE_TYPE__ unsigned int\000"
.LASF243:
	.ascii	"__DEC64_MAX_EXP__ 385\000"
.LASF1273:
	.ascii	"BeaconFormat\000"
.LASF158:
	.ascii	"__FLT_HAS_DENORM__ 1\000"
.LASF41:
	.ascii	"__INT8_TYPE__ signed char\000"
.LASF414:
	.ascii	"__ARM_ARCH_PROFILE 77\000"
.LASF602:
	.ascii	"__CTYPE_SPACE 0x08\000"
.LASF302:
	.ascii	"__USACCUM_MIN__ 0.0UHK\000"
.LASF958:
	.ascii	"US915_CALC_BACKOFF() \000"
.LASF197:
	.ascii	"__FLT32_DECIMAL_DIG__ 9\000"
.LASF34:
	.ascii	"__WCHAR_TYPE__ unsigned int\000"
.LASF931:
	.ascii	"IN865_TX_PARAM_SETUP_REQ() \000"
.LASF178:
	.ascii	"__LDBL_MIN_EXP__ (-1021)\000"
.LASF394:
	.ascii	"__SIZEOF_PTRDIFF_T__ 4\000"
.LASF2:
	.ascii	"__STDC_UTF_16__ 1\000"
.LASF1249:
	.ascii	"PHY_BEACON_CHANNEL_DR\000"
.LASF1234:
	.ascii	"PHY_BEACON_INTERVAL\000"
.LASF411:
	.ascii	"__ARM_SIZEOF_MINIMAL_ENUM 1\000"
.LASF119:
	.ascii	"__UINT8_C(c) c\000"
.LASF986:
	.ascii	"RU864_SET_CONTINUOUS_WAVE() \000"
.LASF35:
	.ascii	"__WINT_TYPE__ unsigned int\000"
.LASF1044:
	.ascii	"time_format\000"
.LASF530:
	.ascii	"true 1\000"
.LASF1360:
	.ascii	"sRxBeaconSetupParams\000"
.LASF509:
	.ascii	"PTRDIFF_MAX INT32_MAX\000"
.LASF595:
	.ascii	"__RAL_SIZE_T unsigned\000"
.LASF1071:
	.ascii	"__RAL_data_utf8_period\000"
.LASF481:
	.ascii	"INTMAX_MIN (-9223372036854775807LL-1)\000"
.LASF1253:
	.ascii	"PhyAttribute_t\000"
.LASF773:
	.ascii	"CN779_GET_PHY_PARAM() \000"
.LASF515:
	.ascii	"UINT8_C(x) (x ##U)\000"
.LASF453:
	.ascii	"__SES_VERSION 53201\000"
.LASF1161:
	.ascii	"LORAMAC_STATUS_OK\000"
.LASF765:
	.ascii	"CN470_CALC_BACKOFF() \000"
.LASF614:
	.ascii	"NULL 0\000"
.LASF1209:
	.ascii	"PHY_DEF_TX_POWER\000"
.LASF376:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\000"
.LASF1130:
	.ascii	"Read\000"
.LASF57:
	.ascii	"__INT_FAST8_TYPE__ int\000"
.LASF1302:
	.ascii	"ApplyCFListParams_t\000"
.LASF821:
	.ascii	"EU868_MAX_NB_CHANNELS 16\000"
.LASF4:
	.ascii	"__STDC_HOSTED__ 1\000"
.LASF877:
	.ascii	"EU868_COMPUTE_RX_WINDOW_PARAMETERS() EU868_CASE { R"
	.ascii	"egionEU868ComputeRxWindowParameters( datarate, minR"
	.ascii	"xSymbols, rxError, rxConfigParams ); break; }\000"
.LASF582:
	.ascii	"BIT_30 0x40000000\000"
.LASF932:
	.ascii	"IN865_DL_CHANNEL_REQ() \000"
.LASF1040:
	.ascii	"month_names\000"
.LASF885:
	.ascii	"EU868_ALTERNATE_DR() EU868_CASE { return RegionEU86"
	.ascii	"8AlternateDr( currentDr, type ); }\000"
.LASF1180:
	.ascii	"LORAMAC_STATUS_MAC_COMMAD_ERROR\000"
.LASF472:
	.ascii	"UINT16_MAX 65535\000"
.LASF1072:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF1099:
	.ascii	"RF_IDLE\000"
.LASF1395:
	.ascii	"txParamSetupReq\000"
.LASF1017:
	.ascii	"int_curr_symbol\000"
.LASF1043:
	.ascii	"date_format\000"
.LASF46:
	.ascii	"__UINT16_TYPE__ short unsigned int\000"
.LASF560:
	.ascii	"BIT_8 0x0100\000"
.LASF899:
	.ascii	"KR920_APPLY_CF_LIST() \000"
.LASF263:
	.ascii	"__USFRACT_MAX__ 0XFFP-8UHR\000"
.LASF635:
	.ascii	"TM_MONTH_JANUARY ( ( uint8_t ) 0U )\000"
.LASF205:
	.ascii	"__FP_FAST_FMAF32 1\000"
.LASF140:
	.ascii	"__UINTPTR_MAX__ 0xffffffffU\000"
.LASF436:
	.ascii	"__ARM_NEON\000"
.LASF482:
	.ascii	"INTMAX_MAX 9223372036854775807LL\000"
.LASF1096:
	.ascii	"MODEM_FSK\000"
.LASF193:
	.ascii	"__FLT32_MIN_EXP__ (-125)\000"
.LASF1231:
	.ascii	"PHY_DEF_MAX_EIRP\000"
.LASF706:
	.ascii	"AS923_APPLY_CF_LIST() \000"
.LASF1284:
	.ascii	"LastTxDoneTime\000"
.LASF1391:
	.ascii	"type\000"
.LASF1028:
	.ascii	"n_cs_precedes\000"
.LASF1435:
	.ascii	"C:\\SES\\ISP4520-examples-master\\ISP4520-examples-"
	.ascii	"master\\src\\apps\\lorawan_class_A\\ISP4520\\ses\000"
.LASF629:
	.ascii	"TM_DAYS_IN_YEAR ( ( uint32_t ) 365U )\000"
.LASF608:
	.ascii	"__CTYPE_ALNUM (__CTYPE_UPPER | __CTYPE_LOWER | __CT"
	.ascii	"YPE_DIGIT)\000"
.LASF871:
	.ascii	"EU868_SET_BAND_TX_DONE() EU868_CASE { RegionEU868Se"
	.ascii	"tBandTxDone( txDone ); break; }\000"
.LASF469:
	.ascii	"UINT8_MAX 255\000"
.LASF1049:
	.ascii	"__tolower\000"
.LASF209:
	.ascii	"__FLT64_MIN_10_EXP__ (-307)\000"
.LASF904:
	.ascii	"KR920_LINK_ADR_REQ() \000"
.LASF711:
	.ascii	"AS923_LINK_ADR_REQ() \000"
.LASF658:
	.ascii	"LORAMAC_CRYPTO_MULTICAST_KEYS 127\000"
.LASF471:
	.ascii	"INT8_MIN (-128)\000"
.LASF133:
	.ascii	"__INT_FAST64_WIDTH__ 64\000"
.LASF1:
	.ascii	"__STDC_VERSION__ 199901L\000"
.LASF830:
	.ascii	"EU868_MAX_RX1_DR_OFFSET 5\000"
.LASF1212:
	.ascii	"PHY_MAX_PAYLOAD\000"
.LASF310:
	.ascii	"__UACCUM_FBIT__ 16\000"
.LASF1269:
	.ascii	"uPhyParam\000"
.LASF937:
	.ascii	"IN865_CHANNEL_REMOVE() \000"
.LASF1352:
	.ascii	"NextChanParams_t\000"
.LASF609:
	.ascii	"__CTYPE_GRAPH (__CTYPE_PUNCT | __CTYPE_UPPER | __CT"
	.ascii	"YPE_LOWER | __CTYPE_DIGIT)\000"
.LASF678:
	.ascii	"DR_10 10\000"
.LASF894:
	.ascii	"KR920_GET_PHY_PARAM() \000"
.LASF113:
	.ascii	"__INT32_C(c) c ## L\000"
.LASF1356:
	.ascii	"ChannelRemoveParams_t\000"
.LASF1024:
	.ascii	"int_frac_digits\000"
.LASF339:
	.ascii	"__SQ_FBIT__ 31\000"
.LASF936:
	.ascii	"IN865_CHANNEL_ADD() \000"
.LASF1386:
	.ascii	"aggregatedTimeOff\000"
.LASF369:
	.ascii	"__UTA_FBIT__ 64\000"
.LASF642:
	.ascii	"TM_MONTH_AUGUST ( ( uint8_t ) 7U )\000"
.LASF581:
	.ascii	"BIT_29 0x20000000\000"
.LASF651:
	.ascii	"TM_WEEKDAY_THURSDAY ( ( uint8_t )4U )\000"
.LASF347:
	.ascii	"__UHQ_FBIT__ 16\000"
.LASF1355:
	.ascii	"sChannelRemoveParams\000"
.LASF208:
	.ascii	"__FLT64_MIN_EXP__ (-1021)\000"
.LASF88:
	.ascii	"__PTRDIFF_WIDTH__ 32\000"
.LASF229:
	.ascii	"__FLT32X_EPSILON__ 1.1\000"
.LASF196:
	.ascii	"__FLT32_MAX_10_EXP__ 38\000"
.LASF616:
	.ascii	"offsetof(s,m) __builtin_offsetof(s, m)\000"
.LASF1022:
	.ascii	"positive_sign\000"
.LASF782:
	.ascii	"CN779_TX_CONFIG() \000"
.LASF239:
	.ascii	"__DEC32_EPSILON__ 1E-6DF\000"
.LASF455:
	.ascii	"DEBUG 1\000"
.LASF154:
	.ascii	"__FLT_MAX__ 1.1\000"
.LASF52:
	.ascii	"__INT_LEAST64_TYPE__ long long int\000"
.LASF702:
	.ascii	"AS923_SET_BAND_TX_DONE() \000"
.LASF761:
	.ascii	"CN470_NEW_CHANNEL_REQ() \000"
.LASF790:
	.ascii	"CN779_NEXT_CHANNEL() \000"
.LASF1291:
	.ascii	"nvmCtxSize\000"
.LASF129:
	.ascii	"__INT_FAST16_WIDTH__ 32\000"
.LASF1346:
	.ascii	"ElapsedTime\000"
.LASF902:
	.ascii	"KR920_RX_CONFIG() \000"
.LASF655:
	.ascii	"__RADIO_H__ \000"
.LASF425:
	.ascii	"__VFP_FP__ 1\000"
.LASF1245:
	.ascii	"PHY_MAX_BEACON_LESS_PERIOD\000"
.LASF661:
	.ascii	"DOWN_LINK 1\000"
.LASF138:
	.ascii	"__INTPTR_MAX__ 0x7fffffff\000"
.LASF1182:
	.ascii	"LORAMAC_STATUS_CONFIRM_QUEUE_ERROR\000"
.LASF135:
	.ascii	"__UINT_FAST16_MAX__ 0xffffffffU\000"
.LASF176:
	.ascii	"__LDBL_MANT_DIG__ 53\000"
.LASF565:
	.ascii	"BIT_13 0x2000\000"
.LASF783:
	.ascii	"CN779_LINK_ADR_REQ() \000"
.LASF788:
	.ascii	"CN779_ALTERNATE_DR() \000"
.LASF855:
	.ascii	"EU868_BEACON_CHANNEL_BW 0\000"
.LASF1275:
	.ascii	"sGetPhyParams\000"
.LASF935:
	.ascii	"IN865_NEXT_CHANNEL() \000"
.LASF1371:
	.ascii	"outDr\000"
.LASF67:
	.ascii	"__has_include(STR) __has_include__(STR)\000"
.LASF272:
	.ascii	"__UFRACT_MIN__ 0.0UR\000"
.LASF474:
	.ascii	"INT16_MAX 32767\000"
.LASF462:
	.ascii	"NO_VTOR_CONFIG 1\000"
.LASF521:
	.ascii	"UINT64_C(x) (x ##ULL)\000"
.LASF801:
	.ascii	"EU433_VERIFY() \000"
.LASF525:
	.ascii	"WCHAR_MAX __WCHAR_MAX__\000"
.LASF232:
	.ascii	"__FLT32X_HAS_INFINITY__ 1\000"
.LASF1309:
	.ascii	"DrOffset\000"
.LASF734:
	.ascii	"AU915_TX_CONFIG() \000"
.LASF840:
	.ascii	"EU868_MAX_RX_WINDOW 3000\000"
.LASF873:
	.ascii	"EU868_GET_NVM_CTX() EU868_CASE { return RegionEU868"
	.ascii	"GetNvmCtx( params ); }\000"
.LASF53:
	.ascii	"__UINT_LEAST8_TYPE__ unsigned char\000"
.LASF1019:
	.ascii	"mon_decimal_point\000"
.LASF305:
	.ascii	"__ACCUM_FBIT__ 15\000"
.LASF966:
	.ascii	"RU864_GET_PHY_PARAM() \000"
.LASF311:
	.ascii	"__UACCUM_IBIT__ 16\000"
.LASF1012:
	.ascii	"long int\000"
.LASF1157:
	.ascii	"LoRaMacRxSlot_t\000"
.LASF1418:
	.ascii	"chanMaskSet\000"
.LASF132:
	.ascii	"__INT_FAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF226:
	.ascii	"__FLT32X_DECIMAL_DIG__ 17\000"
.LASF598:
	.ascii	"__CODE \000"
.LASF353:
	.ascii	"__UTQ_FBIT__ 128\000"
.LASF1322:
	.ascii	"Version\000"
.LASF1270:
	.ascii	"fValue\000"
.LASF688:
	.ascii	"TX_POWER_4 4\000"
.LASF274:
	.ascii	"__UFRACT_EPSILON__ 0x1P-16UR\000"
.LASF1083:
	.ascii	"__RAL_error_decoder_s\000"
.LASF1086:
	.ascii	"__RAL_error_decoder_t\000"
.LASF1268:
	.ascii	"BeaconFormat_t\000"
.LASF1398:
	.ascii	"RegionRxParamSetupReq\000"
.LASF540:
	.ascii	"MIN(a,b) ((a) < (b) ? (a) : (b))\000"
.LASF809:
	.ascii	"EU433_NEW_CHANNEL_REQ() \000"
.LASF587:
	.ascii	"POW2(n) ( 1 << n )\000"
.LASF211:
	.ascii	"__FLT64_MAX_10_EXP__ 308\000"
.LASF1062:
	.ascii	"__RAL_global_locale\000"
.LASF93:
	.ascii	"__UINTMAX_C(c) c ## ULL\000"
.LASF1172:
	.ascii	"LORAMAC_STATUS_DUTYCYCLE_RESTRICTED\000"
.LASF31:
	.ascii	"__SIZEOF_POINTER__ 4\000"
.LASF49:
	.ascii	"__INT_LEAST8_TYPE__ signed char\000"
.LASF599:
	.ascii	"__CTYPE_UPPER 0x01\000"
.LASF868:
	.ascii	"EU868_CASE case LORAMAC_REGION_EU868:\000"
.LASF1082:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF672:
	.ascii	"DR_4 4\000"
.LASF721:
	.ascii	"AS923_SET_CONTINUOUS_WAVE() \000"
.LASF834:
	.ascii	"EU868_DEFAULT_TX_POWER TX_POWER_0\000"
.LASF435:
	.ascii	"__ARM_NEON__\000"
.LASF195:
	.ascii	"__FLT32_MAX_EXP__ 128\000"
.LASF361:
	.ascii	"__TA_FBIT__ 63\000"
.LASF438:
	.ascii	"__THUMB_INTERWORK__ 1\000"
.LASF1033:
	.ascii	"int_n_cs_precedes\000"
.LASF1155:
	.ascii	"RX_SLOT_WIN_CLASS_B_MULTICAST_SLOT\000"
.LASF1361:
	.ascii	"SymbolTimeout\000"
.LASF577:
	.ascii	"BIT_25 0x02000000\000"
.LASF1127:
	.ascii	"SetTxContinuousWave\000"
.LASF366:
	.ascii	"__USA_IBIT__ 16\000"
.LASF857:
	.ascii	"EU868_MAX_NB_BANDS 6\000"
.LASF223:
	.ascii	"__FLT32X_MIN_10_EXP__ (-307)\000"
.LASF677:
	.ascii	"DR_9 9\000"
.LASF984:
	.ascii	"RU864_CHANNEL_ADD() \000"
.LASF39:
	.ascii	"__CHAR32_TYPE__ long unsigned int\000"
.LASF1396:
	.ascii	"RegionNewChannelReq\000"
.LASF432:
	.ascii	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC\000"
.LASF1378:
	.ascii	"RegionChannelsRemove\000"
.LASF480:
	.ascii	"UINT64_MAX 18446744073709551615ULL\000"
.LASF136:
	.ascii	"__UINT_FAST32_MAX__ 0xffffffffU\000"
.LASF1206:
	.ascii	"PHY_RX_DR\000"
.LASF17:
	.ascii	"__SIZEOF_LONG__ 4\000"
.LASF1267:
	.ascii	"Rfu2Size\000"
.LASF622:
	.ascii	"RTC_TEMP_DEV_TURNOVER ( 5.0 )\000"
.LASF1147:
	.ascii	"DrRange\000"
.LASF810:
	.ascii	"EU433_TX_PARAM_SETUP_REQ() \000"
.LASF1282:
	.ascii	"Channel\000"
.LASF947:
	.ascii	"US915_APPLY_CF_LIST() \000"
.LASF777:
	.ascii	"CN779_VERIFY() \000"
.LASF21:
	.ascii	"__SIZEOF_DOUBLE__ 8\000"
.LASF1304:
	.ascii	"ChannelsMaskIn\000"
.LASF222:
	.ascii	"__FLT32X_MIN_EXP__ (-1021)\000"
.LASF494:
	.ascii	"UINT_LEAST32_MAX UINT32_MAX\000"
.LASF508:
	.ascii	"PTRDIFF_MIN INT32_MIN\000"
.LASF372:
	.ascii	"__USER_LABEL_PREFIX__ \000"
.LASF1362:
	.ascii	"RxTime\000"
.LASF712:
	.ascii	"AS923_RX_PARAM_SETUP_REQ() \000"
.LASF1215:
	.ascii	"PHY_MAX_RX_WINDOW\000"
.LASF245:
	.ascii	"__DEC64_MAX__ 9.999999999999999E384DD\000"
.LASF1054:
	.ascii	"__mbtowc\000"
.LASF927:
	.ascii	"IN865_TX_CONFIG() \000"
.LASF505:
	.ascii	"UINT_FAST16_MAX UINT32_MAX\000"
.LASF697:
	.ascii	"TX_POWER_13 13\000"
.LASF1347:
	.ascii	"TxTimeOnAir\000"
.LASF150:
	.ascii	"__FLT_MIN_10_EXP__ (-37)\000"
.LASF249:
	.ascii	"__DEC128_MIN_EXP__ (-6142)\000"
.LASF153:
	.ascii	"__FLT_DECIMAL_DIG__ 9\000"
.LASF1301:
	.ascii	"Size\000"
.LASF1306:
	.ascii	"ChanMaskSetParams_t\000"
.LASF501:
	.ascii	"INT_FAST16_MAX INT32_MAX\000"
.LASF991:
	.ascii	"signed char\000"
.LASF1238:
	.ascii	"PHY_BEACON_WINDOW_SLOTS\000"
.LASF740:
	.ascii	"AU915_ALTERNATE_DR() \000"
.LASF990:
	.ascii	"uint8_t\000"
.LASF434:
	.ascii	"__ARM_FEATURE_FMA 1\000"
.LASF186:
	.ascii	"__LDBL_EPSILON__ 1.1\000"
.LASF1229:
	.ascii	"PHY_DEF_UPLINK_DWELL_TIME\000"
.LASF373:
	.ascii	"__GNUC_STDC_INLINE__ 1\000"
.LASF845:
	.ascii	"EU868_MAX_FCNT_GAP 16384\000"
.LASF833:
	.ascii	"EU868_MAX_TX_POWER TX_POWER_0\000"
.LASF1053:
	.ascii	"__wctomb\000"
.LASF265:
	.ascii	"__FRACT_FBIT__ 15\000"
.LASF912:
	.ascii	"KR920_CHANNEL_ADD() \000"
.LASF1199:
	.ascii	"PHY_FREQUENCY\000"
.LASF572:
	.ascii	"BIT_20 0x00100000\000"
.LASF7:
	.ascii	"__GNUC_PATCHLEVEL__ 1\000"
.LASF382:
	.ascii	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\000"
.LASF865:
	.ascii	"EU868_LC2 { 868300000, 0, { ( ( DR_5 << 4 ) | DR_0 "
	.ascii	") }, 1 }\000"
.LASF1300:
	.ascii	"Payload\000"
.LASF120:
	.ascii	"__UINT_LEAST16_MAX__ 0xffff\000"
.LASF956:
	.ascii	"US915_DL_CHANNEL_REQ() \000"
.LASF671:
	.ascii	"DR_3 3\000"
.LASF460:
	.ascii	"FLOAT_ABI_HARD 1\000"
.LASF315:
	.ascii	"__LACCUM_FBIT__ 31\000"
.LASF1107:
	.ascii	"RxTimeout\000"
.LASF502:
	.ascii	"INT_FAST32_MAX INT32_MAX\000"
.LASF603:
	.ascii	"__CTYPE_PUNCT 0x10\000"
.LASF268:
	.ascii	"__FRACT_MAX__ 0X7FFFP-15R\000"
.LASF1246:
	.ascii	"PHY_BEACON_DELAY_BEACON_TIMING_ANS\000"
.LASF148:
	.ascii	"__FLT_DIG__ 6\000"
.LASF476:
	.ascii	"INT32_MAX 2147483647L\000"
.LASF733:
	.ascii	"AU915_RX_CONFIG() \000"
.LASF131:
	.ascii	"__INT_FAST32_WIDTH__ 32\000"
.LASF1108:
	.ascii	"RxError\000"
.LASF63:
	.ascii	"__UINT_FAST32_TYPE__ unsigned int\000"
.LASF992:
	.ascii	"unsigned char\000"
.LASF3:
	.ascii	"__STDC_UTF_32__ 1\000"
.LASF20:
	.ascii	"__SIZEOF_FLOAT__ 4\000"
.LASF296:
	.ascii	"__SACCUM_IBIT__ 8\000"
.LASF1336:
	.ascii	"TxParamSetupReqParams_t\000"
.LASF152:
	.ascii	"__FLT_MAX_10_EXP__ 38\000"
.LASF856:
	.ascii	"EU868_PING_SLOT_CHANNEL_DR DR_3\000"
.LASF1272:
	.ascii	"Channels\000"
.LASF250:
	.ascii	"__DEC128_MAX_EXP__ 6145\000"
.LASF1029:
	.ascii	"n_sep_by_space\000"
.LASF965:
	.ascii	"RU864_IS_ACTIVE() \000"
.LASF1334:
	.ascii	"NewChannelReqParams_t\000"
.LASF130:
	.ascii	"__INT_FAST32_MAX__ 0x7fffffff\000"
.LASF10:
	.ascii	"__ATOMIC_SEQ_CST 5\000"
.LASF818:
	.ascii	"EU433_APPLY_DR_OFFSET() \000"
.LASF766:
	.ascii	"CN470_NEXT_CHANNEL() \000"
.LASF979:
	.ascii	"RU864_TX_PARAM_SETUP_REQ() \000"
.LASF749:
	.ascii	"CN470_GET_PHY_PARAM() \000"
.LASF1260:
	.ascii	"CHANNELS_MASK\000"
.LASF863:
	.ascii	"EU868_BAND5 { 1000, EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF478:
	.ascii	"INT64_MIN (-9223372036854775807LL-1)\000"
.LASF923:
	.ascii	"IN865_APPLY_CF_LIST() \000"
.LASF461:
	.ascii	"INITIALIZE_USER_SECTIONS 1\000"
.LASF522:
	.ascii	"INTMAX_C(x) (x ##LL)\000"
.LASF103:
	.ascii	"__UINT16_MAX__ 0xffff\000"
.LASF1290:
	.ascii	"sGetNvmCtxParams\000"
.LASF343:
	.ascii	"__TQ_FBIT__ 127\000"
.LASF569:
	.ascii	"BIT_17 0x00020000\000"
.LASF421:
	.ascii	"__THUMBEL__ 1\000"
.LASF71:
	.ascii	"__SHRT_MAX__ 0x7fff\000"
.LASF1429:
	.ascii	"RegionGetPhyParam\000"
.LASF1073:
	.ascii	"__RAL_data_utf8_space\000"
.LASF349:
	.ascii	"__USQ_FBIT__ 32\000"
.LASF172:
	.ascii	"__DBL_DENORM_MIN__ ((double)1.1)\000"
.LASF551:
	.ascii	"IS_SET(W,B) (((W) >> (B)) & 1)\000"
.LASF534:
	.ascii	"NORDIC_COMMON_H__ \000"
.LASF473:
	.ascii	"INT16_MIN (-32767-1)\000"
.LASF19:
	.ascii	"__SIZEOF_SHORT__ 2\000"
.LASF330:
	.ascii	"__ULLACCUM_FBIT__ 32\000"
.LASF1169:
	.ascii	"LORAMAC_STATUS_LENGTH_ERROR\000"
.LASF1388:
	.ascii	"calcBackOff\000"
.LASF1403:
	.ascii	"txPowOut\000"
.LASF1091:
	.ascii	"_Bool\000"
.LASF962:
	.ascii	"US915_SET_CONTINUOUS_WAVE() \000"
.LASF1175:
	.ascii	"LORAMAC_STATUS_BUSY_BEACON_RESERVED_TIME\000"
.LASF1311:
	.ascii	"WindowOffset\000"
.LASF739:
	.ascii	"AU915_DL_CHANNEL_REQ() \000"
.LASF621:
	.ascii	"RTC_TEMP_TURNOVER ( 25.0 )\000"
.LASF934:
	.ascii	"IN865_CALC_BACKOFF() \000"
.LASF1305:
	.ascii	"ChannelsMaskType\000"
.LASF744:
	.ascii	"AU915_CHANNEL_REMOVE() \000"
.LASF573:
	.ascii	"BIT_21 0x00200000\000"
.LASF22:
	.ascii	"__SIZEOF_LONG_DOUBLE__ 8\000"
.LASF1195:
	.ascii	"LORAMAC_REGION_US915\000"
.LASF391:
	.ascii	"__PRAGMA_REDEFINE_EXTNAME 1\000"
.LASF1333:
	.ascii	"ChannelId\000"
.LASF732:
	.ascii	"AU915_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF169:
	.ascii	"__DBL_MAX__ ((double)1.1)\000"
.LASF789:
	.ascii	"CN779_CALC_BACKOFF() \000"
.LASF1013:
	.ascii	"char\000"
.LASF151:
	.ascii	"__FLT_MAX_EXP__ 128\000"
.LASF87:
	.ascii	"__WINT_WIDTH__ 32\000"
.LASF377:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\000"
.LASF1213:
	.ascii	"PHY_MAX_PAYLOAD_REPEATER\000"
.LASF1365:
	.ascii	"DataratesEU868\000"
.LASF613:
	.ascii	"__RAL_SIZE_T_DEFINED \000"
.LASF1434:
	.ascii	"C:\\SES\\ISP4520-examples-master\\ISP4520-examples-"
	.ascii	"master\\src\\lora\\mac\\region\\Region.c\000"
.LASF758:
	.ascii	"CN470_TX_CONFIG() \000"
.LASF64:
	.ascii	"__UINT_FAST64_TYPE__ long long unsigned int\000"
.LASF822:
	.ascii	"EU868_NUMB_DEFAULT_CHANNELS 3\000"
.LASF727:
	.ascii	"AU915_INIT_DEFAULTS() \000"
.LASF1165:
	.ascii	"LORAMAC_STATUS_FREQUENCY_INVALID\000"
.LASF355:
	.ascii	"__HA_FBIT__ 7\000"
.LASF827:
	.ascii	"EU868_RX_MAX_DATARATE DR_7\000"
.LASF1286:
	.ascii	"sInitDefaultsParams\000"
.LASF589:
	.ascii	"CRITICAL_SECTION_END() BoardCriticalSectionEnd( &ma"
	.ascii	"sk )\000"
.LASF849:
	.ascii	"EU868_RX_WND_2_DR DR_0\000"
.LASF230:
	.ascii	"__FLT32X_DENORM_MIN__ 1.1\000"
.LASF968:
	.ascii	"RU864_INIT_DEFAULTS() \000"
.LASF949:
	.ascii	"US915_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF590:
	.ascii	"__TIMER_H__ \000"
.LASF235:
	.ascii	"__DEC32_MIN_EXP__ (-94)\000"
.LASF1216:
	.ascii	"PHY_RECEIVE_DELAY1\000"
.LASF1217:
	.ascii	"PHY_RECEIVE_DELAY2\000"
.LASF919:
	.ascii	"IN865_SET_BAND_TX_DONE() \000"
.LASF755:
	.ascii	"CN470_CHAN_MASK_SET() \000"
.LASF792:
	.ascii	"CN779_CHANNEL_REMOVE() \000"
.LASF1031:
	.ascii	"n_sign_posn\000"
.LASF803:
	.ascii	"EU433_CHAN_MASK_SET() \000"
.LASF449:
	.ascii	"__SIZEOF_WCHAR_T 4\000"
.LASF1421:
	.ascii	"RegionVerify\000"
.LASF304:
	.ascii	"__USACCUM_EPSILON__ 0x1P-8UHK\000"
.LASF930:
	.ascii	"IN865_NEW_CHANNEL_REQ() \000"
.LASF1077:
	.ascii	"timeval\000"
.LASF745:
	.ascii	"AU915_SET_CONTINUOUS_WAVE() \000"
.LASF898:
	.ascii	"KR920_VERIFY() \000"
.LASF180:
	.ascii	"__LDBL_MAX_EXP__ 1024\000"
.LASF517:
	.ascii	"UINT16_C(x) (x ##U)\000"
.LASF906:
	.ascii	"KR920_NEW_CHANNEL_REQ() \000"
.LASF972:
	.ascii	"RU864_CHAN_MASK_SET() \000"
.LASF1406:
	.ascii	"RegionTxConfig\000"
.LASF173:
	.ascii	"__DBL_HAS_DENORM__ 1\000"
.LASF1358:
	.ascii	"Timeout\000"
.LASF723:
	.ascii	"AS923_RX_BEACON_SETUP() \000"
.LASF649:
	.ascii	"TM_WEEKDAY_TUESDAY ( ( uint8_t )2U )\000"
.LASF1093:
	.ascii	"Seconds\000"
.LASF1070:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF945:
	.ascii	"US915_GET_NVM_CTX() \000"
.LASF69:
	.ascii	"__GXX_ABI_VERSION 1013\000"
.LASF470:
	.ascii	"INT8_MAX 127\000"
.LASF824:
	.ascii	"EU868_TX_MIN_DATARATE DR_0\000"
.LASF893:
	.ascii	"KR920_IS_ACTIVE() \000"
.LASF643:
	.ascii	"TM_MONTH_SEPTEMBER ( ( uint8_t ) 8U )\000"
.LASF109:
	.ascii	"__INT_LEAST16_MAX__ 0x7fff\000"
.LASF247:
	.ascii	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\000"
.LASF618:
	.ascii	"TIMERTIME_T_MAX ( ( uint32_t )~0 )\000"
.LASF1133:
	.ascii	"SetMaxPayloadLength\000"
.LASF1020:
	.ascii	"mon_thousands_sep\000"
.LASF334:
	.ascii	"__ULLACCUM_EPSILON__ 0x1P-32ULLK\000"
.LASF1119:
	.ascii	"SetRxConfig\000"
.LASF97:
	.ascii	"__SIG_ATOMIC_WIDTH__ 32\000"
.LASF68:
	.ascii	"__has_include_next(STR) __has_include_next__(STR)\000"
.LASF484:
	.ascii	"INT_LEAST8_MIN INT8_MIN\000"
.LASF588:
	.ascii	"CRITICAL_SECTION_BEGIN() uint32_t mask; BoardCritic"
	.ascii	"alSectionBegin( &mask )\000"
.LASF123:
	.ascii	"__UINT32_C(c) c ## UL\000"
.LASF1112:
	.ascii	"Radio_s\000"
.LASF559:
	.ascii	"BIT_7 0x80\000"
.LASF292:
	.ascii	"__ULLFRACT_MIN__ 0.0ULLR\000"
.LASF312:
	.ascii	"__UACCUM_MIN__ 0.0UK\000"
.LASF1052:
	.ascii	"__towlower\000"
.LASF1023:
	.ascii	"negative_sign\000"
.LASF644:
	.ascii	"TM_MONTH_OCTOBER ( ( uint8_t ) 9U )\000"
.LASF918:
	.ascii	"IN865_GET_PHY_PARAM() \000"
.LASF1190:
	.ascii	"LORAMAC_REGION_CN779\000"
.LASF520:
	.ascii	"INT64_C(x) (x ##LL)\000"
.LASF459:
	.ascii	"CONFIG_GPIO_AS_PINRESET 1\000"
.LASF422:
	.ascii	"__ARM_ARCH_ISA_THUMB\000"
.LASF491:
	.ascii	"INT_LEAST64_MAX INT64_MAX\000"
.LASF925:
	.ascii	"IN865_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF1277:
	.ascii	"Datarate\000"
.LASF1159:
	.ascii	"eLoRaMacRxSlot\000"
.LASF1032:
	.ascii	"int_p_cs_precedes\000"
.LASF314:
	.ascii	"__UACCUM_EPSILON__ 0x1P-16UK\000"
.LASF950:
	.ascii	"US915_RX_CONFIG() \000"
.LASF620:
	.ascii	"RTC_TEMP_DEV_COEFFICIENT ( 0.006 )\000"
.LASF1084:
	.ascii	"decode\000"
.LASF384:
	.ascii	"__GCC_ATOMIC_SHORT_LOCK_FREE 2\000"
.LASF1143:
	.ascii	"DrRange_t\000"
.LASF1254:
	.ascii	"eInitType\000"
.LASF338:
	.ascii	"__HQ_IBIT__ 0\000"
.LASF714:
	.ascii	"AS923_TX_PARAM_SETUP_REQ() \000"
.LASF300:
	.ascii	"__USACCUM_FBIT__ 8\000"
.LASF500:
	.ascii	"INT_FAST8_MAX INT8_MAX\000"
.LASF388:
	.ascii	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\000"
.LASF679:
	.ascii	"DR_11 11\000"
.LASF532:
	.ascii	"__bool_true_false_are_defined 1\000"
.LASF1387:
	.ascii	"RegionCalcBackOff\000"
.LASF1266:
	.ascii	"Rfu1Size\000"
.LASF313:
	.ascii	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK\000"
.LASF1328:
	.ascii	"LinkAdrReqParams_t\000"
.LASF1193:
	.ascii	"LORAMAC_REGION_KR920\000"
.LASF722:
	.ascii	"AS923_APPLY_DR_OFFSET() \000"
.LASF454:
	.ascii	"__GNU_LINKER 1\000"
.LASF204:
	.ascii	"__FLT32_HAS_QUIET_NAN__ 1\000"
.LASF854:
	.ascii	"EU868_BEACON_CHANNEL_DR DR_3\000"
.LASF610:
	.ascii	"__CTYPE_PRINT (__CTYPE_BLANK | __CTYPE_PUNCT | __CT"
	.ascii	"YPE_UPPER | __CTYPE_LOWER | __CTYPE_DIGIT)\000"
.LASF784:
	.ascii	"CN779_RX_PARAM_SETUP_REQ() \000"
.LASF189:
	.ascii	"__LDBL_HAS_INFINITY__ 1\000"
.LASF579:
	.ascii	"BIT_27 0x08000000\000"
.LASF238:
	.ascii	"__DEC32_MAX__ 9.999999E96DF\000"
.LASF767:
	.ascii	"CN470_CHANNEL_ADD() \000"
.LASF1205:
	.ascii	"PHY_DEF_TX_DR\000"
.LASF681:
	.ascii	"DR_13 13\000"
.LASF225:
	.ascii	"__FLT32X_MAX_10_EXP__ 308\000"
.LASF442:
	.ascii	"__ARM_ARCH_EXT_IDIV__ 1\000"
.LASF897:
	.ascii	"KR920_GET_NVM_CTX() \000"
.LASF529:
	.ascii	"bool _Bool\000"
.LASF1106:
	.ascii	"RxDone\000"
.LASF1366:
	.ascii	"BandwidthsEU868\000"
.LASF100:
	.ascii	"__INT32_MAX__ 0x7fffffffL\000"
.LASF1261:
	.ascii	"CHANNELS_DEFAULT_MASK\000"
.LASF1002:
	.ascii	"Revision\000"
.LASF96:
	.ascii	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\000"
.LASF668:
	.ascii	"DR_0 0\000"
.LASF666:
	.ascii	"__REGION_H__ \000"
.LASF118:
	.ascii	"__UINT_LEAST8_MAX__ 0xff\000"
.LASF464:
	.ascii	"NRF52832_XXAA 1\000"
.LASF938:
	.ascii	"IN865_SET_CONTINUOUS_WAVE() \000"
.LASF683:
	.ascii	"DR_15 15\000"
.LASF1247:
	.ascii	"PHY_BEACON_CHANNEL_FREQ\000"
.LASF596:
	.ascii	"__RAL_SIZE_MAX 4294967295UL\000"
.LASF1064:
	.ascii	"__RAL_codeset_ascii\000"
.LASF1171:
	.ascii	"LORAMAC_STATUS_SKIPPED_APP_DATA\000"
.LASF467:
	.ascii	"__LORAMAC_H__ \000"
.LASF882:
	.ascii	"EU868_NEW_CHANNEL_REQ() EU868_CASE { return RegionE"
	.ascii	"U868NewChannelReq( newChannelReq ); }\000"
.LASF1314:
	.ascii	"RxSlot\000"
.LASF1079:
	.ascii	"tv_usec\000"
.LASF673:
	.ascii	"DR_5 5\000"
.LASF786:
	.ascii	"CN779_TX_PARAM_SETUP_REQ() \000"
.LASF570:
	.ascii	"BIT_18 0x00040000\000"
.LASF1059:
	.ascii	"__RAL_locale_t\000"
.LASF1162:
	.ascii	"LORAMAC_STATUS_BUSY\000"
.LASF1416:
	.ascii	"rxConfigParams\000"
.LASF111:
	.ascii	"__INT_LEAST16_WIDTH__ 16\000"
.LASF280:
	.ascii	"__ULFRACT_FBIT__ 32\000"
.LASF763:
	.ascii	"CN470_DL_CHANNEL_REQ() \000"
.LASF145:
	.ascii	"__DEC_EVAL_METHOD__ 2\000"
.LASF490:
	.ascii	"INT_LEAST32_MAX INT32_MAX\000"
.LASF433:
	.ascii	"__ARM_FEATURE_FP16_FML\000"
.LASF1211:
	.ascii	"PHY_DEF_ADR_ACK_DELAY\000"
.LASF511:
	.ascii	"INTPTR_MIN INT32_MIN\000"
.LASF1094:
	.ascii	"SubSeconds\000"
.LASF539:
	.ascii	"LSB_16(a) ((a) & 0x00FF)\000"
.LASF1399:
	.ascii	"rxParamSetupReq\000"
.LASF1376:
	.ascii	"continuousWave\000"
.LASF1102:
	.ascii	"RF_CAD\000"
.LASF340:
	.ascii	"__SQ_IBIT__ 0\000"
.LASF548:
	.ascii	"ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))\000"
.LASF951:
	.ascii	"US915_TX_CONFIG() \000"
.LASF1257:
	.ascii	"INIT_TYPE_RESTORE_CTX\000"
.LASF1255:
	.ascii	"INIT_TYPE_INIT\000"
.LASF1041:
	.ascii	"abbrev_month_names\000"
.LASF328:
	.ascii	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LLK\000"
.LASF982:
	.ascii	"RU864_CALC_BACKOFF() \000"
.LASF707:
	.ascii	"AS923_CHAN_MASK_SET() \000"
.LASF1114:
	.ascii	"GetStatus\000"
.LASF1008:
	.ascii	"Version_s\000"
.LASF1007:
	.ascii	"Version_t\000"
.LASF1141:
	.ascii	"Version_u\000"
.LASF812:
	.ascii	"EU433_ALTERNATE_DR() \000"
.LASF1058:
	.ascii	"codeset\000"
.LASF104:
	.ascii	"__UINT32_MAX__ 0xffffffffUL\000"
.LASF825:
	.ascii	"EU868_TX_MAX_DATARATE DR_7\000"
.LASF967:
	.ascii	"RU864_SET_BAND_TX_DONE() \000"
.LASF106:
	.ascii	"__INT_LEAST8_MAX__ 0x7f\000"
.LASF632:
	.ascii	"TM_SECONDS_IN_1MINUTE ( ( uint32_t ) 60U )\000"
.LASF389:
	.ascii	"__GCC_ATOMIC_POINTER_LOCK_FREE 2\000"
.LASF396:
	.ascii	"__ARM_FEATURE_QBIT 1\000"
.LASF323:
	.ascii	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK\000"
.LASF11:
	.ascii	"__ATOMIC_ACQUIRE 2\000"
.LASF1138:
	.ascii	"SetRxDutyCycle\000"
.LASF1187:
	.ascii	"LORAMAC_REGION_AS923\000"
.LASF872:
	.ascii	"EU868_INIT_DEFAULTS() EU868_CASE { RegionEU868InitD"
	.ascii	"efaults( params ); break; }\000"
.LASF973:
	.ascii	"RU864_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF1178:
	.ascii	"LORAMAC_STATUS_CRYPTO_ERROR\000"
.LASF1131:
	.ascii	"WriteBuffer\000"
.LASF440:
	.ascii	"__ARM_PCS_VFP 1\000"
.LASF412:
	.ascii	"__ARM_SIZEOF_WCHAR_T 4\000"
.LASF1348:
	.ascii	"CalcBackOffParams_t\000"
.LASF1303:
	.ascii	"sChanMaskSetParams\000"
.LASF741:
	.ascii	"AU915_CALC_BACKOFF() \000"
.LASF778:
	.ascii	"CN779_APPLY_CF_LIST() \000"
.LASF122:
	.ascii	"__UINT_LEAST32_MAX__ 0xffffffffUL\000"
.LASF1321:
	.ascii	"sLinkAdrReqParams\000"
.LASF117:
	.ascii	"__INT_LEAST64_WIDTH__ 64\000"
.LASF159:
	.ascii	"__FLT_HAS_INFINITY__ 1\000"
.LASF523:
	.ascii	"UINTMAX_C(x) (x ##ULL)\000"
.LASF796:
	.ascii	"EU433_IS_ACTIVE() \000"
.LASF308:
	.ascii	"__ACCUM_MAX__ 0X7FFFFFFFP-15K\000"
.LASF98:
	.ascii	"__INT8_MAX__ 0x7f\000"
.LASF1185:
	.ascii	"LoRaMacStatus_t\000"
.LASF1011:
	.ascii	"__wchar\000"
.LASF401:
	.ascii	"__ARM_FEATURE_CRC32\000"
.LASF257:
	.ascii	"__SFRACT_MIN__ (-0.5HR-0.5HR)\000"
.LASF1411:
	.ascii	"rxConfig\000"
.LASF358:
	.ascii	"__SA_IBIT__ 16\000"
.LASF163:
	.ascii	"__DBL_DIG__ 15\000"
.LASF142:
	.ascii	"__GCC_IEC_559_COMPLEX 0\000"
.LASF567:
	.ascii	"BIT_15 0x8000\000"
.LASF562:
	.ascii	"BIT_10 0x0400\000"
.LASF1087:
	.ascii	"__RAL_error_decoder_head\000"
.LASF428:
	.ascii	"__ARM_FP16_FORMAT_IEEE\000"
.LASF1115:
	.ascii	"SetModem\000"
.LASF576:
	.ascii	"BIT_24 0x01000000\000"
.LASF1046:
	.ascii	"__RAL_locale_data_t\000"
.LASF1109:
	.ascii	"FhssChangeChannel\000"
.LASF475:
	.ascii	"UINT32_MAX 4294967295UL\000"
.LASF817:
	.ascii	"EU433_SET_CONTINUOUS_WAVE() \000"
.LASF105:
	.ascii	"__UINT64_MAX__ 0xffffffffffffffffULL\000"
.LASF236:
	.ascii	"__DEC32_MAX_EXP__ 97\000"
.LASF1069:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF144:
	.ascii	"__FLT_EVAL_METHOD_TS_18661_3__ 0\000"
.LASF586:
	.ascii	"UNUSED_RETURN_VALUE(X) UNUSED_VARIABLE(X)\000"
.LASF81:
	.ascii	"__SCHAR_WIDTH__ 8\000"
.LASF826:
	.ascii	"EU868_RX_MIN_DATARATE DR_0\000"
.LASF861:
	.ascii	"EU868_BAND3 { 10 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF1384:
	.ascii	"channel\000"
.LASF61:
	.ascii	"__UINT_FAST8_TYPE__ unsigned int\000"
.LASF326:
	.ascii	"__LLACCUM_IBIT__ 32\000"
.LASF1424:
	.ascii	"RegionGetNvmCtx\000"
.LASF269:
	.ascii	"__FRACT_EPSILON__ 0x1P-15R\000"
.LASF940:
	.ascii	"IN865_RX_BEACON_SETUP() \000"
.LASF1218:
	.ascii	"PHY_JOIN_ACCEPT_DELAY1\000"
.LASF1219:
	.ascii	"PHY_JOIN_ACCEPT_DELAY2\000"
.LASF54:
	.ascii	"__UINT_LEAST16_TYPE__ short unsigned int\000"
.LASF60:
	.ascii	"__INT_FAST64_TYPE__ long long int\000"
.LASF447:
	.ascii	"__GXX_TYPEINFO_EQUALITY_INLINE 0\000"
.LASF1242:
	.ascii	"PHY_PING_SLOT_SYMBOL_TO_EXPANSION_MAX\000"
.LASF40:
	.ascii	"__SIG_ATOMIC_TYPE__ int\000"
.LASF535:
	.ascii	"NRF_MODULE_ENABLED(module) ((defined(module ## _ENA"
	.ascii	"BLED) && (module ## _ENABLED)) ? 1 : 0)\000"
.LASF640:
	.ascii	"TM_MONTH_JUNE ( ( uint8_t ) 5U )\000"
.LASF662:
	.ascii	"LORAMAC_MFR_LEN 4\000"
.LASF701:
	.ascii	"AS923_GET_PHY_PARAM() \000"
.LASF1232:
	.ascii	"PHY_DEF_ANTENNA_GAIN\000"
.LASF201:
	.ascii	"__FLT32_DENORM_MIN__ 1.1\000"
.LASF252:
	.ascii	"__DEC128_MAX__ 9.999999999999999999999999999999999E"
	.ascii	"6144DL\000"
.LASF1293:
	.ascii	"sDatarateParams\000"
.LASF731:
	.ascii	"AU915_CHAN_MASK_SET() \000"
.LASF527:
	.ascii	"WINT_MAX 2147483647L\000"
.LASF403:
	.ascii	"__ARM_FEATURE_COMPLEX\000"
.LASF56:
	.ascii	"__UINT_LEAST64_TYPE__ long long unsigned int\000"
.LASF524:
	.ascii	"WCHAR_MIN __WCHAR_MIN__\000"
.LASF674:
	.ascii	"DR_6 6\000"
.LASF260:
	.ascii	"__USFRACT_FBIT__ 8\000"
.LASF881:
	.ascii	"EU868_RX_PARAM_SETUP_REQ() EU868_CASE { return Regi"
	.ascii	"onEU868RxParamSetupReq( rxParamSetupReq ); }\000"
.LASF171:
	.ascii	"__DBL_EPSILON__ ((double)1.1)\000"
.LASF851:
	.ascii	"EU868_BEACON_SIZE 17\000"
.LASF1042:
	.ascii	"am_pm_indicator\000"
.LASF166:
	.ascii	"__DBL_MAX_EXP__ 1024\000"
.LASF735:
	.ascii	"AU915_LINK_ADR_REQ() \000"
.LASF1027:
	.ascii	"p_sep_by_space\000"
.LASF738:
	.ascii	"AU915_TX_PARAM_SETUP_REQ() \000"
.LASF231:
	.ascii	"__FLT32X_HAS_DENORM__ 1\000"
.LASF1163:
	.ascii	"LORAMAC_STATUS_SERVICE_UNKNOWN\000"
.LASF1280:
	.ascii	"GetPhyParams_t\000"
.LASF716:
	.ascii	"AS923_ALTERNATE_DR() \000"
.LASF59:
	.ascii	"__INT_FAST32_TYPE__ int\000"
.LASF890:
	.ascii	"EU868_SET_CONTINUOUS_WAVE() EU868_CASE { RegionEU86"
	.ascii	"8SetContinuousWave( continuousWave ); break; }\000"
.LASF51:
	.ascii	"__INT_LEAST32_TYPE__ long int\000"
.LASF450:
	.ascii	"__SES_ARM 1\000"
.LASF844:
	.ascii	"EU868_JOIN_ACCEPT_DELAY2 6000\000"
.LASF1145:
	.ascii	"Frequency\000"
.LASF889:
	.ascii	"EU868_CHANNEL_REMOVE() EU868_CASE { return RegionEU"
	.ascii	"868ChannelsRemove( channelRemove ); }\000"
.LASF1363:
	.ascii	"RxBeaconSetup_t\000"
.LASF828:
	.ascii	"EU868_DEFAULT_DATARATE DR_0\000"
.LASF843:
	.ascii	"EU868_JOIN_ACCEPT_DELAY1 5000\000"
.LASF957:
	.ascii	"US915_ALTERNATE_DR() \000"
.LASF867:
	.ascii	"EU868_JOIN_CHANNELS ( uint16_t )( LC( 1 ) | LC( 2 )"
	.ascii	" | LC( 3 ) )\000"
.LASF466:
	.ascii	"SWI_DISABLE0 1\000"
.LASF487:
	.ascii	"INT_LEAST64_MIN INT64_MIN\000"
.LASF317:
	.ascii	"__LACCUM_MIN__ (-0X1P31LK-0X1P31LK)\000"
.LASF1339:
	.ascii	"eAlternateDrType\000"
.LASF101:
	.ascii	"__INT64_MAX__ 0x7fffffffffffffffLL\000"
.LASF397:
	.ascii	"__ARM_FEATURE_SAT 1\000"
.LASF547:
	.ascii	"STRINGIFY(val) STRINGIFY_(val)\000"
.LASF626:
	.ascii	"CLOCK_MONOTONIC 1\000"
.LASF291:
	.ascii	"__ULLFRACT_IBIT__ 0\000"
.LASF869:
	.ascii	"EU868_IS_ACTIVE() EU868_CASE { return true; }\000"
.LASF628:
	.ascii	"TM_DAYS_IN_LEAP_YEAR ( ( uint32_t ) 366U )\000"
.LASF1035:
	.ascii	"int_n_sep_by_space\000"
.LASF911:
	.ascii	"KR920_NEXT_CHANNEL() \000"
.LASF883:
	.ascii	"EU868_TX_PARAM_SETUP_REQ() EU868_CASE { return Regi"
	.ascii	"onEU868TxParamSetupReq( txParamSetupReq ); }\000"
.LASF1080:
	.ascii	"__user_set_time_of_day\000"
.LASF1414:
	.ascii	"minRxSymbols\000"
.LASF896:
	.ascii	"KR920_INIT_DEFAULTS() \000"
.LASF1285:
	.ascii	"SetBandTxDoneParams_t\000"
.LASF84:
	.ascii	"__LONG_WIDTH__ 32\000"
.LASF555:
	.ascii	"BIT_3 0x08\000"
.LASF1128:
	.ascii	"Rssi\000"
.LASF905:
	.ascii	"KR920_RX_PARAM_SETUP_REQ() \000"
.LASF757:
	.ascii	"CN470_RX_CONFIG() \000"
.LASF102:
	.ascii	"__UINT8_MAX__ 0xff\000"
.LASF76:
	.ascii	"__WCHAR_MIN__ 0U\000"
.LASF187:
	.ascii	"__LDBL_DENORM_MIN__ 1.1\000"
.LASF1327:
	.ascii	"CurrentNbRep\000"
.LASF165:
	.ascii	"__DBL_MIN_10_EXP__ (-307)\000"
.LASF917:
	.ascii	"IN865_IS_ACTIVE() \000"
.LASF386:
	.ascii	"__GCC_ATOMIC_LONG_LOCK_FREE 2\000"
.LASF322:
	.ascii	"__ULACCUM_MIN__ 0.0ULK\000"
.LASF1310:
	.ascii	"WindowTimeout\000"
.LASF264:
	.ascii	"__USFRACT_EPSILON__ 0x1P-8UHR\000"
.LASF417:
	.ascii	"__ARM_ARCH 7\000"
.LASF909:
	.ascii	"KR920_ALTERNATE_DR() \000"
.LASF146:
	.ascii	"__FLT_RADIX__ 2\000"
.LASF1188:
	.ascii	"LORAMAC_REGION_AU915\000"
.LASF1000:
	.ascii	"long long int\000"
.LASF1009:
	.ascii	"__mbstate_s\000"
.LASF405:
	.ascii	"__ARM_FEATURE_CMSE\000"
.LASF1318:
	.ascii	"AntennaGain\000"
.LASF190:
	.ascii	"__LDBL_HAS_QUIET_NAN__ 1\000"
.LASF85:
	.ascii	"__LONG_LONG_WIDTH__ 64\000"
.LASF819:
	.ascii	"EU433_RX_BEACON_SETUP() \000"
.LASF1329:
	.ascii	"sRxParamSetupReqParams\000"
.LASF1337:
	.ascii	"sDlChannelReqParams\000"
.LASF775:
	.ascii	"CN779_INIT_DEFAULTS() \000"
.LASF575:
	.ascii	"BIT_23 0x00800000\000"
.LASF426:
	.ascii	"__ARM_FP\000"
.LASF1308:
	.ascii	"Bandwidth\000"
.LASF356:
	.ascii	"__HA_IBIT__ 8\000"
.LASF634:
	.ascii	"TM_HOURS_IN_1DAY ( ( uint32_t ) 24U )\000"
.LASF139:
	.ascii	"__INTPTR_WIDTH__ 32\000"
.LASF387:
	.ascii	"__GCC_ATOMIC_LLONG_LOCK_FREE 1\000"
.LASF1207:
	.ascii	"PHY_MAX_TX_POWER\000"
.LASF794:
	.ascii	"CN779_APPLY_DR_OFFSET() \000"
.LASF955:
	.ascii	"US915_TX_PARAM_SETUP_REQ() \000"
.LASF503:
	.ascii	"INT_FAST64_MAX INT64_MAX\000"
.LASF210:
	.ascii	"__FLT64_MAX_EXP__ 1024\000"
.LASF293:
	.ascii	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR\000"
.LASF1139:
	.ascii	"Radio\000"
.LASF1167:
	.ascii	"LORAMAC_STATUS_FREQ_AND_DR_INVALID\000"
.LASF552:
	.ascii	"BIT_0 0x01\000"
.LASF115:
	.ascii	"__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\000"
.LASF1148:
	.ascii	"Band\000"
.LASF980:
	.ascii	"RU864_DL_CHANNEL_REQ() \000"
.LASF1344:
	.ascii	"LastTxIsJoinRequest\000"
.LASF44:
	.ascii	"__INT64_TYPE__ long long int\000"
.LASF185:
	.ascii	"__LDBL_MIN__ 1.1\000"
.LASF1208:
	.ascii	"PHY_TX_POWER\000"
.LASF392:
	.ascii	"__SIZEOF_WCHAR_T__ 4\000"
.LASF1132:
	.ascii	"ReadBuffer\000"
.LASF1061:
	.ascii	"__category\000"
.LASF1428:
	.ascii	"txDone\000"
.LASF430:
	.ascii	"__ARM_FP16_ARGS\000"
.LASF1170:
	.ascii	"LORAMAC_STATUS_REGION_NOT_SUPPORTED\000"
.LASF1239:
	.ascii	"PHY_PING_SLOT_WINDOW\000"
.LASF545:
	.ascii	"CONCAT_3_(p1,p2,p3) p1 ##p2 ##p3\000"
.LASF557:
	.ascii	"BIT_5 0x20\000"
.LASF1164:
	.ascii	"LORAMAC_STATUS_PARAMETER_INVALID\000"
.LASF273:
	.ascii	"__UFRACT_MAX__ 0XFFFFP-16UR\000"
.LASF916:
	.ascii	"KR920_RX_BEACON_SETUP() \000"
.LASF652:
	.ascii	"TM_WEEKDAY_FRIDAY ( ( uint8_t )5U )\000"
.LASF55:
	.ascii	"__UINT_LEAST32_TYPE__ long unsigned int\000"
.LASF680:
	.ascii	"DR_12 12\000"
.LASF852:
	.ascii	"EU868_RFU1_SIZE 2\000"
.LASF363:
	.ascii	"__UHA_FBIT__ 8\000"
.LASF1156:
	.ascii	"RX_SLOT_NONE\000"
.LASF256:
	.ascii	"__SFRACT_IBIT__ 0\000"
.LASF1382:
	.ascii	"RegionNextChannel\000"
.LASF942:
	.ascii	"US915_GET_PHY_PARAM() \000"
.LASF625:
	.ascii	"_SYS_TIME_H \000"
.LASF564:
	.ascii	"BIT_12 0x1000\000"
.LASF1045:
	.ascii	"date_time_format\000"
.LASF29:
	.ascii	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF149:
	.ascii	"__FLT_MIN_EXP__ (-125)\000"
.LASF759:
	.ascii	"CN470_LINK_ADR_REQ() \000"
.LASF578:
	.ascii	"BIT_26 0x04000000\000"
.LASF1158:
	.ascii	"float\000"
.LASF693:
	.ascii	"TX_POWER_9 9\000"
.LASF1003:
	.ascii	"Minor\000"
.LASF685:
	.ascii	"TX_POWER_1 1\000"
.LASF12:
	.ascii	"__ATOMIC_RELEASE 3\000"
.LASF1397:
	.ascii	"newChannelReq\000"
.LASF351:
	.ascii	"__UDQ_FBIT__ 64\000"
.LASF157:
	.ascii	"__FLT_DENORM_MIN__ 1.1\000"
.LASF1405:
	.ascii	"nbBytesParsed\000"
.LASF580:
	.ascii	"BIT_28 0x10000000\000"
.LASF1224:
	.ascii	"PHY_DEF_RX2_DR\000"
.LASF79:
	.ascii	"__PTRDIFF_MAX__ 0x7fffffff\000"
.LASF694:
	.ascii	"TX_POWER_10 10\000"
.LASF1359:
	.ascii	"ContinuousWaveParams_t\000"
.LASF874:
	.ascii	"EU868_VERIFY() EU868_CASE { return RegionEU868Verif"
	.ascii	"y( verify, phyAttribute ); }\000"
.LASF477:
	.ascii	"INT32_MIN (-2147483647L-1)\000"
.LASF1278:
	.ascii	"UplinkDwellTime\000"
.LASF227:
	.ascii	"__FLT32X_MAX__ 1.1\000"
.LASF669:
	.ascii	"DR_1 1\000"
.LASF999:
	.ascii	"unsigned int\000"
.LASF1194:
	.ascii	"LORAMAC_REGION_IN865\000"
.LASF496:
	.ascii	"INT_FAST8_MIN INT8_MIN\000"
.LASF1325:
	.ascii	"CurrentDatarate\000"
.LASF114:
	.ascii	"__INT_LEAST32_WIDTH__ 32\000"
.LASF1098:
	.ascii	"RadioModems_t\000"
.LASF806:
	.ascii	"EU433_TX_CONFIG() \000"
.LASF279:
	.ascii	"__LFRACT_EPSILON__ 0x1P-31LR\000"
.LASF301:
	.ascii	"__USACCUM_IBIT__ 8\000"
.LASF538:
	.ascii	"MSB_16(a) (((a) & 0xFF00) >> 8)\000"
.LASF439:
	.ascii	"__ARM_ARCH_7EM__ 1\000"
.LASF698:
	.ascii	"TX_POWER_14 14\000"
.LASF1241:
	.ascii	"PHY_BEACON_SYMBOL_TO_EXPANSION_MAX\000"
.LASF367:
	.ascii	"__UDA_FBIT__ 32\000"
.LASF217:
	.ascii	"__FLT64_HAS_DENORM__ 1\000"
.LASF1297:
	.ascii	"DatarateParams\000"
.LASF37:
	.ascii	"__UINTMAX_TYPE__ long long unsigned int\000"
.LASF544:
	.ascii	"CONCAT_3(p1,p2,p3) CONCAT_3_(p1, p2, p3)\000"
.LASF1030:
	.ascii	"p_sign_posn\000"
.LASF914:
	.ascii	"KR920_SET_CONTINUOUS_WAVE() \000"
.LASF370:
	.ascii	"__UTA_IBIT__ 64\000"
.LASF24:
	.ascii	"__CHAR_BIT__ 8\000"
.LASF143:
	.ascii	"__FLT_EVAL_METHOD__ 0\000"
.LASF1137:
	.ascii	"RxBoosted\000"
.LASF70:
	.ascii	"__SCHAR_MAX__ 0x7f\000"
.LASF1237:
	.ascii	"PHY_BEACON_WINDOW\000"
.LASF127:
	.ascii	"__INT_FAST8_WIDTH__ 32\000"
.LASF497:
	.ascii	"INT_FAST16_MIN INT32_MIN\000"
.LASF1111:
	.ascii	"RadioEvents_t\000"
.LASF406:
	.ascii	"__ARM_FEATURE_LDREX\000"
.LASF836:
	.ascii	"EU868_DEFAULT_ANTENNA_GAIN 2.15f\000"
.LASF345:
	.ascii	"__UQQ_FBIT__ 8\000"
.LASF985:
	.ascii	"RU864_CHANNEL_REMOVE() \000"
.LASF829:
	.ascii	"EU868_MIN_RX1_DR_OFFSET 0\000"
.LASF600:
	.ascii	"__CTYPE_LOWER 0x02\000"
.LASF242:
	.ascii	"__DEC64_MIN_EXP__ (-382)\000"
.LASF141:
	.ascii	"__GCC_IEC_559 0\000"
.LASF1104:
	.ascii	"TxDone\000"
.LASF859:
	.ascii	"EU868_BAND1 { 100 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF1390:
	.ascii	"currentDr\000"
.LASF278:
	.ascii	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR\000"
.LASF1220:
	.ascii	"PHY_MAX_FCNT_GAP\000"
.LASF1081:
	.ascii	"__user_get_time_of_day\000"
.LASF0:
	.ascii	"__STDC__ 1\000"
.LASF961:
	.ascii	"US915_CHANNEL_REMOVE() \000"
.LASF451:
	.ascii	"__ARM_ARCH_FPV4_SP_D16__ 1\000"
.LASF443:
	.ascii	"__ARM_FEATURE_IDIV 1\000"
.LASF1243:
	.ascii	"PHY_BEACON_SYMBOL_TO_EXPANSION_FACTOR\000"
.LASF30:
	.ascii	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\000"
.LASF795:
	.ascii	"CN779_RX_BEACON_SETUP() \000"
.LASF1259:
	.ascii	"eChannelsMask\000"
.LASF45:
	.ascii	"__UINT8_TYPE__ unsigned char\000"
.LASF170:
	.ascii	"__DBL_MIN__ ((double)1.1)\000"
.LASF847:
	.ascii	"EU868_ACK_TIMEOUT_RND 1000\000"
.LASF495:
	.ascii	"UINT_LEAST64_MAX UINT64_MAX\000"
.LASF446:
	.ascii	"__ARM_FEATURE_COPROC 15\000"
.LASF665:
	.ascii	"LORAMAC_MAX_MC_CTX 4\000"
.LASF726:
	.ascii	"AU915_SET_BAND_TX_DONE() \000"
.LASF769:
	.ascii	"CN470_SET_CONTINUOUS_WAVE() \000"
.LASF531:
	.ascii	"false 0\000"
.LASF82:
	.ascii	"__SHRT_WIDTH__ 16\000"
.LASF28:
	.ascii	"__ORDER_PDP_ENDIAN__ 3412\000"
.LASF413:
	.ascii	"__ARM_ARCH_PROFILE\000"
.LASF248:
	.ascii	"__DEC128_MANT_DIG__ 34\000"
.LASF689:
	.ascii	"TX_POWER_5 5\000"
.LASF903:
	.ascii	"KR920_TX_CONFIG() \000"
.LASF1288:
	.ascii	"Type\000"
.LASF1065:
	.ascii	"__RAL_codeset_utf8\000"
.LASF365:
	.ascii	"__USA_FBIT__ 16\000"
.LASF458:
	.ascii	"REGION_EU868 1\000"
.LASF1063:
	.ascii	"__RAL_c_locale\000"
.LASF1201:
	.ascii	"PHY_MIN_TX_DR\000"
.LASF1113:
	.ascii	"Init\000"
.LASF179:
	.ascii	"__LDBL_MIN_10_EXP__ (-307)\000"
.LASF5:
	.ascii	"__GNUC__ 9\000"
.LASF725:
	.ascii	"AU915_GET_PHY_PARAM() \000"
.LASF160:
	.ascii	"__FLT_HAS_QUIET_NAN__ 1\000"
.LASF1181:
	.ascii	"LORAMAC_STATUS_CLASS_B_ERROR\000"
.LASF771:
	.ascii	"CN470_RX_BEACON_SETUP() \000"
.LASF1368:
	.ascii	"MaxPayloadOfDatarateRepeaterEU868\000"
.LASF1191:
	.ascii	"LORAMAC_REGION_EU433\000"
.LASF1292:
	.ascii	"GetNvmCtxParams_t\000"
.LASF1136:
	.ascii	"IrqProcess\000"
.LASF1379:
	.ascii	"channelRemove\000"
.LASF147:
	.ascii	"__FLT_MANT_DIG__ 24\000"
.LASF811:
	.ascii	"EU433_DL_CHANNEL_REQ() \000"
.LASF483:
	.ascii	"UINTMAX_MAX 18446744073709551615ULL\000"
.LASF1014:
	.ascii	"decimal_point\000"
.LASF1210:
	.ascii	"PHY_DEF_ADR_ACK_LIMIT\000"
.LASF1374:
	.ascii	"RegionRxBeaconSetup\000"
.LASF1389:
	.ascii	"RegionAlternateDr\000"
.LASF415:
	.ascii	"__arm__ 1\000"
.LASF728:
	.ascii	"AU915_GET_NVM_CTX() \000"
.LASF901:
	.ascii	"KR920_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF710:
	.ascii	"AS923_TX_CONFIG() \000"
.LASF1276:
	.ascii	"Attribute\000"
.LASF194:
	.ascii	"__FLT32_MIN_10_EXP__ (-37)\000"
.LASF748:
	.ascii	"CN470_IS_ACTIVE() \000"
.LASF764:
	.ascii	"CN470_ALTERNATE_DR() \000"
.LASF1274:
	.ascii	"PhyParam_t\000"
.LASF429:
	.ascii	"__ARM_FP16_FORMAT_ALTERNATIVE\000"
.LASF1393:
	.ascii	"dlChannelReq\000"
.LASF908:
	.ascii	"KR920_DL_CHANNEL_REQ() \000"
.LASF601:
	.ascii	"__CTYPE_DIGIT 0x04\000"
.LASF234:
	.ascii	"__DEC32_MANT_DIG__ 7\000"
.LASF359:
	.ascii	"__DA_FBIT__ 31\000"
.LASF875:
	.ascii	"EU868_APPLY_CF_LIST() EU868_CASE { RegionEU868Apply"
	.ascii	"CFList( applyCFList ); break; }\000"
.LASF953:
	.ascii	"US915_RX_PARAM_SETUP_REQ() \000"
.LASF25:
	.ascii	"__BIGGEST_ALIGNMENT__ 8\000"
.LASF880:
	.ascii	"EU868_LINK_ADR_REQ() EU868_CASE { return RegionEU86"
	.ascii	"8LinkAdrReq( linkAdrReq, drOut, txPowOut, nbRepOut,"
	.ascii	" nbBytesParsed ); }\000"
.LASF793:
	.ascii	"CN779_SET_CONTINUOUS_WAVE() \000"
.LASF1332:
	.ascii	"NewChannel\000"
.LASF841:
	.ascii	"EU868_RECEIVE_DELAY1 1000\000"
.LASF1375:
	.ascii	"RegionSetContinuousWave\000"
.LASF667:
	.ascii	"LC(channelIndex) ( uint16_t )( 1 << ( channelIndex "
	.ascii	"- 1 ) )\000"
.LASF842:
	.ascii	"EU868_RECEIVE_DELAY2 2000\000"
.LASF720:
	.ascii	"AS923_CHANNEL_REMOVE() \000"
.LASF1228:
	.ascii	"PHY_CHANNELS\000"
.LASF838:
	.ascii	"EU868_ADR_ACK_DELAY 32\000"
.LASF700:
	.ascii	"AS923_IS_ACTIVE() \000"
.LASF1233:
	.ascii	"PHY_NEXT_LOWER_TX_DR\000"
.LASF400:
	.ascii	"__ARM_FEATURE_QRDMX\000"
.LASF1236:
	.ascii	"PHY_BEACON_GUARD\000"
.LASF1298:
	.ascii	"VerifyParams_t\000"
.LASF752:
	.ascii	"CN470_GET_NVM_CTX() \000"
.LASF423:
	.ascii	"__ARM_ARCH_ISA_THUMB 2\000"
.LASF926:
	.ascii	"IN865_RX_CONFIG() \000"
.LASF74:
	.ascii	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL\000"
.LASF1089:
	.ascii	"long double\000"
.LASF646:
	.ascii	"TM_MONTH_DECEMBER ( ( uint8_t )11U )\000"
.LASF504:
	.ascii	"UINT_FAST8_MAX UINT8_MAX\000"
.LASF832:
	.ascii	"EU868_MIN_TX_POWER TX_POWER_7\000"
.LASF350:
	.ascii	"__USQ_IBIT__ 0\000"
.LASF884:
	.ascii	"EU868_DL_CHANNEL_REQ() EU868_CASE { return RegionEU"
	.ascii	"868DlChannelReq( dlChannelReq ); }\000"
.LASF760:
	.ascii	"CN470_RX_PARAM_SETUP_REQ() \000"
.LASF597:
	.ascii	"__RAL_PTRDIFF_T int\000"
.LASF1349:
	.ascii	"sNextChanParams\000"
.LASF1420:
	.ascii	"applyCFList\000"
.LASF404:
	.ascii	"__ARM_32BIT_STATE 1\000"
.LASF1326:
	.ascii	"CurrentTxPower\000"
.LASF1101:
	.ascii	"RF_TX_RUNNING\000"
.LASF107:
	.ascii	"__INT8_C(c) c\000"
.LASF276:
	.ascii	"__LFRACT_IBIT__ 0\000"
.LASF554:
	.ascii	"BIT_2 0x04\000"
.LASF1299:
	.ascii	"sApplyCFListParams\000"
.LASF261:
	.ascii	"__USFRACT_IBIT__ 0\000"
.LASF259:
	.ascii	"__SFRACT_EPSILON__ 0x1P-7HR\000"
.LASF612:
	.ascii	"__MAX_CATEGORY 5\000"
.LASF164:
	.ascii	"__DBL_MIN_EXP__ (-1021)\000"
.LASF188:
	.ascii	"__LDBL_HAS_DENORM__ 1\000"
.LASF493:
	.ascii	"UINT_LEAST16_MAX UINT16_MAX\000"
.LASF549:
	.ascii	"SET_BIT(W,B) ((W) |= (uint32_t)(1U << (B)))\000"
.LASF320:
	.ascii	"__ULACCUM_FBIT__ 32\000"
.LASF659:
	.ascii	"MAX_ACK_RETRIES 8\000"
.LASF853:
	.ascii	"EU868_RFU2_SIZE 0\000"
.LASF1105:
	.ascii	"TxTimeout\000"
.LASF498:
	.ascii	"INT_FAST32_MIN INT32_MIN\000"
.LASF161:
	.ascii	"__FP_FAST_FMAF 1\000"
.LASF1256:
	.ascii	"INIT_TYPE_RESTORE_DEFAULT_CHANNELS\000"
.LASF121:
	.ascii	"__UINT16_C(c) c\000"
.LASF770:
	.ascii	"CN470_APPLY_DR_OFFSET() \000"
.LASF1370:
	.ascii	"rxBeaconSetup\000"
.LASF1380:
	.ascii	"RegionChannelAdd\000"
.LASF756:
	.ascii	"CN470_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF1168:
	.ascii	"LORAMAC_STATUS_NO_NETWORK_JOINED\000"
.LASF390:
	.ascii	"__HAVE_SPECULATION_SAFE_VALUE 1\000"
.LASF675:
	.ascii	"DR_7 7\000"
.LASF1074:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF518:
	.ascii	"INT32_C(x) (x ##L)\000"
.LASF1222:
	.ascii	"PHY_DEF_DR1_OFFSET\000"
.LASF907:
	.ascii	"KR920_TX_PARAM_SETUP_REQ() \000"
.LASF125:
	.ascii	"__UINT64_C(c) c ## ULL\000"
.LASF876:
	.ascii	"EU868_CHAN_MASK_SET() EU868_CASE { return RegionEU8"
	.ascii	"68ChanMaskSet( chanMaskSet ); }\000"
.LASF1221:
	.ascii	"PHY_ACK_TIMEOUT\000"
.LASF398:
	.ascii	"__ARM_FEATURE_CRYPTO\000"
.LASF1134:
	.ascii	"SetPublicNetwork\000"
.LASF913:
	.ascii	"KR920_CHANNEL_REMOVE() \000"
.LASF1097:
	.ascii	"MODEM_LORA\000"
.LASF933:
	.ascii	"IN865_ALTERNATE_DR() \000"
.LASF768:
	.ascii	"CN470_CHANNEL_REMOVE() \000"
.LASF124:
	.ascii	"__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF137:
	.ascii	"__UINT_FAST64_MAX__ 0xffffffffffffffffULL\000"
.LASF636:
	.ascii	"TM_MONTH_FEBRUARY ( ( uint8_t ) 1U )\000"
.LASF730:
	.ascii	"AU915_APPLY_CF_LIST() \000"
.LASF83:
	.ascii	"__INT_WIDTH__ 32\000"
.LASF591:
	.ascii	"__stddef_H \000"
.LASF26:
	.ascii	"__ORDER_LITTLE_ENDIAN__ 1234\000"
.LASF1047:
	.ascii	"__isctype\000"
.LASF241:
	.ascii	"__DEC64_MANT_DIG__ 16\000"
.LASF1001:
	.ascii	"long long unsigned int\000"
.LASF959:
	.ascii	"US915_NEXT_CHANNEL() \000"
.LASF1425:
	.ascii	"params\000"
.LASF1203:
	.ascii	"PHY_MAX_TX_DR\000"
.LASF321:
	.ascii	"__ULACCUM_IBIT__ 32\000"
.LASF1341:
	.ascii	"ALTERNATE_DR_RESTORE\000"
.LASF1129:
	.ascii	"Write\000"
.LASF507:
	.ascii	"UINT_FAST64_MAX UINT64_MAX\000"
.LASF33:
	.ascii	"__PTRDIFF_TYPE__ int\000"
.LASF1034:
	.ascii	"int_p_sep_by_space\000"
.LASF418:
	.ascii	"__APCS_32__ 1\000"
.LASF77:
	.ascii	"__WINT_MAX__ 0xffffffffU\000"
.LASF887:
	.ascii	"EU868_NEXT_CHANNEL() EU868_CASE { return RegionEU86"
	.ascii	"8NextChannel( nextChanParams, channel, time, aggreg"
	.ascii	"atedTimeOff ); }\000"
.LASF1265:
	.ascii	"BeaconSize\000"
.LASF995:
	.ascii	"uint16_t\000"
.LASF341:
	.ascii	"__DQ_FBIT__ 63\000"
.LASF1004:
	.ascii	"Major\000"
.LASF605:
	.ascii	"__CTYPE_BLANK 0x40\000"
.LASF348:
	.ascii	"__UHQ_IBIT__ 0\000"
.LASF1144:
	.ascii	"sChannelParams\000"
.LASF1196:
	.ascii	"LORAMAC_REGION_RU864\000"
.LASF1095:
	.ascii	"SysTime_t\000"
.LASF378:
	.ascii	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\000"
.LASF58:
	.ascii	"__INT_FAST16_TYPE__ int\000"
.LASF804:
	.ascii	"EU433_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF814:
	.ascii	"EU433_NEXT_CHANNEL() \000"
.LASF297:
	.ascii	"__SACCUM_MIN__ (-0X1P7HK-0X1P7HK)\000"
.LASF283:
	.ascii	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR\000"
.LASF1383:
	.ascii	"nextChanParams\000"
.LASF156:
	.ascii	"__FLT_EPSILON__ 1.1\000"
.LASF318:
	.ascii	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-31LK\000"
.LASF38:
	.ascii	"__CHAR16_TYPE__ short unsigned int\000"
.LASF1186:
	.ascii	"eLoRaMacRegion_t\000"
.LASF1197:
	.ascii	"LoRaMacRegion_t\000"
.LASF221:
	.ascii	"__FLT32X_DIG__ 15\000"
.LASF699:
	.ascii	"TX_POWER_15 15\000"
.LASF647:
	.ascii	"TM_WEEKDAY_SUNDAY ( ( uint8_t )0U )\000"
.LASF1307:
	.ascii	"sRxConfigParams\000"
.LASF155:
	.ascii	"__FLT_MIN__ 1.1\000"
.LASF1319:
	.ascii	"PktLen\000"
.LASF553:
	.ascii	"BIT_1 0x02\000"
.LASF1189:
	.ascii	"LORAMAC_REGION_CN470\000"
.LASF329:
	.ascii	"__LLACCUM_EPSILON__ 0x1P-31LLK\000"
.LASF15:
	.ascii	"__FINITE_MATH_ONLY__ 0\000"
.LASF664:
	.ascii	"LORA_MAC_FRMPAYLOAD_OVERHEAD 13\000"
.LASF128:
	.ascii	"__INT_FAST16_MAX__ 0x7fffffff\000"
.LASF541:
	.ascii	"MAX(a,b) ((a) < (b) ? (b) : (a))\000"
.LASF1192:
	.ascii	"LORAMAC_REGION_EU868\000"
.LASF915:
	.ascii	"KR920_APPLY_DR_OFFSET() \000"
.LASF641:
	.ascii	"TM_MONTH_JULY ( ( uint8_t ) 6U )\000"
.LASF486:
	.ascii	"INT_LEAST32_MIN INT32_MIN\000"
.LASF691:
	.ascii	"TX_POWER_7 7\000"
.LASF585:
	.ascii	"UNUSED_PARAMETER(X) UNUSED_VARIABLE(X)\000"
.LASF650:
	.ascii	"TM_WEEKDAY_WEDNESDAY ( ( uint8_t )3U )\000"
.LASF850:
	.ascii	"EU868_BEACON_CHANNEL_FREQ 869525000\000"
.LASF1433:
	.ascii	"GNU C99 9.3.1 20200408 (release) -fmessage-length=0"
	.ascii	" -mcpu=cortex-m4 -mlittle-endian -mfloat-abi=hard -"
	.ascii	"mfpu=fpv4-sp-d16 -mthumb -mtp=soft -munaligned-acce"
	.ascii	"ss -std=gnu99 -g3 -gpubnames -fomit-frame-pointer -"
	.ascii	"fno-dwarf2-cfi-asm -fno-builtin -ffunction-sections"
	.ascii	" -fdata-sections -fshort-enums -fno-common\000"
.LASF1342:
	.ascii	"AlternateDrType_t\000"
.LASF110:
	.ascii	"__INT16_C(c) c\000"
.LASF823:
	.ascii	"EU868_NUMB_CHANNELS_CF_LIST 5\000"
.LASF574:
	.ascii	"BIT_22 0x00400000\000"
.LASF282:
	.ascii	"__ULFRACT_MIN__ 0.0ULR\000"
.LASF1330:
	.ascii	"RxParamSetupReqParams_t\000"
.LASF1142:
	.ascii	"uDrRange\000"
.LASF780:
	.ascii	"CN779_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF1419:
	.ascii	"RegionApplyCFList\000"
.LASF342:
	.ascii	"__DQ_IBIT__ 0\000"
.LASF1258:
	.ascii	"InitType_t\000"
.LASF561:
	.ascii	"BIT_9 0x0200\000"
.LASF648:
	.ascii	"TM_WEEKDAY_MONDAY ( ( uint8_t )1U )\000"
.LASF703:
	.ascii	"AS923_INIT_DEFAULTS() \000"
.LASF533:
	.ascii	"__UTILITIES_H__ \000"
.LASF737:
	.ascii	"AU915_NEW_CHANNEL_REQ() \000"
.LASF1005:
	.ascii	"Fields\000"
.LASF465:
	.ascii	"NRF52_PAN_74 1\000"
.LASF191:
	.ascii	"__FLT32_MANT_DIG__ 24\000"
.LASF941:
	.ascii	"US915_IS_ACTIVE() \000"
.LASF615:
	.ascii	"__RAL_WCHAR_T_DEFINED \000"
.LASF1372:
	.ascii	"downlinkDwellTime\000"
.LASF456:
	.ascii	"DEBUG_NRF 1\000"
.LASF785:
	.ascii	"CN779_NEW_CHANNEL_REQ() \000"
.LASF754:
	.ascii	"CN470_APPLY_CF_LIST() \000"
.LASF1369:
	.ascii	"region\000"
.LASF437:
	.ascii	"__ARM_NEON_FP\000"
.LASF779:
	.ascii	"CN779_CHAN_MASK_SET() \000"
.LASF592:
	.ascii	"__crossworks_H \000"
.LASF584:
	.ascii	"UNUSED_VARIABLE(X) ((void)(X))\000"
.LASF724:
	.ascii	"AU915_IS_ACTIVE() \000"
.LASF1312:
	.ascii	"RepeaterSupport\000"
.LASF354:
	.ascii	"__UTQ_IBIT__ 0\000"
.LASF357:
	.ascii	"__SA_FBIT__ 15\000"
.LASF963:
	.ascii	"US915_APPLY_DR_OFFSET() \000"
.LASF776:
	.ascii	"CN779_GET_NVM_CTX() \000"
.LASF528:
	.ascii	"__stdbool_h \000"
.LASF742:
	.ascii	"AU915_NEXT_CHANNEL() \000"
.LASF441:
	.ascii	"__ARM_EABI__ 1\000"
.LASF978:
	.ascii	"RU864_NEW_CHANNEL_REQ() \000"
.LASF489:
	.ascii	"INT_LEAST16_MAX INT16_MAX\000"
.LASF448:
	.ascii	"__ELF__ 1\000"
.LASF791:
	.ascii	"CN779_CHANNEL_ADD() \000"
.LASF1313:
	.ascii	"RxContinuous\000"
.LASF718:
	.ascii	"AS923_NEXT_CHANNEL() \000"
.LASF696:
	.ascii	"TX_POWER_12 12\000"
.LASF395:
	.ascii	"__ARM_FEATURE_DSP 1\000"
.LASF879:
	.ascii	"EU868_TX_CONFIG() EU868_CASE { return RegionEU868Tx"
	.ascii	"Config( txConfig, txPower, txTimeOnAir ); }\000"
.LASF670:
	.ascii	"DR_2 2\000"
.LASF663:
	.ascii	"LORA_MAC_MLME_CONFIRM_QUEUE_LEN 5\000"
.LASF987:
	.ascii	"RU864_APPLY_DR_OFFSET() \000"
.LASF336:
	.ascii	"__QQ_IBIT__ 0\000"
.LASF1198:
	.ascii	"ePhyAttribute\000"
.LASF924:
	.ascii	"IN865_CHAN_MASK_SET() \000"
.LASF846:
	.ascii	"EU868_ACKTIMEOUT 2000\000"
.LASF1385:
	.ascii	"time\000"
.LASF1427:
	.ascii	"RegionSetBandTxDone\000"
.LASF199:
	.ascii	"__FLT32_MIN__ 1.1\000"
.LASF1160:
	.ascii	"eLoRaMacStatus\000"
.LASF1090:
	.ascii	"TimerTime_t\000"
.LASF743:
	.ascii	"AU915_CHANNEL_ADD() \000"
.LASF1407:
	.ascii	"txConfig\000"
.LASF6:
	.ascii	"__GNUC_MINOR__ 3\000"
.LASF1432:
	.ascii	"RegionIsActive\000"
.LASF1039:
	.ascii	"abbrev_day_names\000"
.LASF604:
	.ascii	"__CTYPE_CNTRL 0x20\000"
.LASF1166:
	.ascii	"LORAMAC_STATUS_DATARATE_INVALID\000"
.LASF409:
	.ascii	"__ARM_FEATURE_NUMERIC_MAXMIN\000"
.LASF948:
	.ascii	"US915_CHAN_MASK_SET() \000"
.LASF36:
	.ascii	"__INTMAX_TYPE__ long long int\000"
.LASF645:
	.ascii	"TM_MONTH_NOVEMBER ( ( uint8_t )10U )\000"
.LASF385:
	.ascii	"__GCC_ATOMIC_INT_LOCK_FREE 2\000"
.LASF375:
	.ascii	"__CHAR_UNSIGNED__ 1\000"
.LASF1320:
	.ascii	"TxConfigParams_t\000"
.LASF1223:
	.ascii	"PHY_DEF_RX2_FREQUENCY\000"
.LASF774:
	.ascii	"CN779_SET_BAND_TX_DONE() \000"
.LASF1354:
	.ascii	"ChannelAddParams_t\000"
.LASF802:
	.ascii	"EU433_APPLY_CF_LIST() \000"
.LASF1066:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF228:
	.ascii	"__FLT32X_MIN__ 1.1\000"
.LASF715:
	.ascii	"AS923_DL_CHANNEL_REQ() \000"
.LASF709:
	.ascii	"AS923_RX_CONFIG() \000"
.LASF1015:
	.ascii	"thousands_sep\000"
.LASF536:
	.ascii	"MSB_32(a) (((a) & 0xFF000000) >> 24)\000"
.LASF1409:
	.ascii	"txTimeOnAir\000"
.LASF95:
	.ascii	"__SIG_ATOMIC_MAX__ 0x7fffffff\000"
.LASF1122:
	.ascii	"TimeOnAir\000"
.LASF1295:
	.ascii	"TxPower\000"
.LASF219:
	.ascii	"__FLT64_HAS_QUIET_NAN__ 1\000"
.LASF952:
	.ascii	"US915_LINK_ADR_REQ() \000"
.LASF946:
	.ascii	"US915_VERIFY() \000"
.LASF288:
	.ascii	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR\000"
.LASF202:
	.ascii	"__FLT32_HAS_DENORM__ 1\000"
.LASF399:
	.ascii	"__ARM_FEATURE_UNALIGNED 1\000"
.LASF888:
	.ascii	"EU868_CHANNEL_ADD() EU868_CASE { return RegionEU868"
	.ascii	"ChannelAdd( channelAdd ); }\000"
.LASF687:
	.ascii	"TX_POWER_3 3\000"
.LASF637:
	.ascii	"TM_MONTH_MARCH ( ( uint8_t ) 2U )\000"
.LASF928:
	.ascii	"IN865_LINK_ADR_REQ() \000"
.LASF485:
	.ascii	"INT_LEAST16_MIN INT16_MIN\000"
.LASF1248:
	.ascii	"PHY_BEACON_FORMAT\000"
.LASF298:
	.ascii	"__SACCUM_MAX__ 0X7FFFP-7HK\000"
.LASF65:
	.ascii	"__INTPTR_TYPE__ int\000"
.LASF1048:
	.ascii	"__toupper\000"
.LASF66:
	.ascii	"__UINTPTR_TYPE__ unsigned int\000"
.LASF660:
	.ascii	"UP_LINK 0\000"
.LASF1413:
	.ascii	"RegionComputeRxWindowParameters\000"
.LASF371:
	.ascii	"__REGISTER_PREFIX__ \000"
.LASF254:
	.ascii	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000"
	.ascii	"000000001E-6143DL\000"
.LASF1373:
	.ascii	"drOffset\000"
.LASF284:
	.ascii	"__ULFRACT_EPSILON__ 0x1P-32ULR\000"
.LASF1417:
	.ascii	"RegionChanMaskSet\000"
.LASF1422:
	.ascii	"verify\000"
.LASF891:
	.ascii	"EU868_APPLY_DR_OFFSET() EU868_CASE { return RegionE"
	.ascii	"U868ApplyDrOffset( downlinkDwellTime, dr, drOffset "
	.ascii	"); }\000"
.LASF807:
	.ascii	"EU433_LINK_ADR_REQ() \000"
.LASF23:
	.ascii	"__SIZEOF_SIZE_T__ 4\000"
.LASF1056:
	.ascii	"name\000"
.LASF48:
	.ascii	"__UINT64_TYPE__ long long unsigned int\000"
.LASF251:
	.ascii	"__DEC128_MIN__ 1E-6143DL\000"
.LASF116:
	.ascii	"__INT64_C(c) c ## LL\000"
.LASF316:
	.ascii	"__LACCUM_IBIT__ 32\000"
.LASF633:
	.ascii	"TM_MINUTES_IN_1HOUR ( ( uint32_t ) 60U )\000"
.LASF1400:
	.ascii	"RegionLinkAdrReq\000"
.LASF729:
	.ascii	"AU915_VERIFY() \000"
.LASF837:
	.ascii	"EU868_ADR_ACK_LIMIT 64\000"
.LASF713:
	.ascii	"AS923_NEW_CHANNEL_REQ() \000"
.LASF886:
	.ascii	"EU868_CALC_BACKOFF() EU868_CASE { RegionEU868CalcBa"
	.ascii	"ckOff( calcBackOff ); break; }\000"
.LASF787:
	.ascii	"CN779_DL_CHANNEL_REQ() \000"
.LASF858:
	.ascii	"EU868_BAND0 { 100 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF892:
	.ascii	"EU868_RX_BEACON_SETUP() EU868_CASE { RegionEU868RxB"
	.ascii	"eaconSetup( rxBeaconSetup, outDr ); break; }\000"
.LASF306:
	.ascii	"__ACCUM_IBIT__ 16\000"
.LASF1025:
	.ascii	"frac_digits\000"
.LASF970:
	.ascii	"RU864_VERIFY() \000"
.LASF266:
	.ascii	"__FRACT_IBIT__ 0\000"
.LASF878:
	.ascii	"EU868_RX_CONFIG() EU868_CASE { return RegionEU868Rx"
	.ascii	"Config( rxConfig, datarate ); }\000"
.LASF1018:
	.ascii	"currency_symbol\000"
.LASF381:
	.ascii	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\000"
.LASF468:
	.ascii	"__stdint_H \000"
.LASF499:
	.ascii	"INT_FAST64_MIN INT64_MIN\000"
.LASF977:
	.ascii	"RU864_RX_PARAM_SETUP_REQ() \000"
.LASF1244:
	.ascii	"PHY_PING_SLOT_SYMBOL_TO_EXPANSION_FACTOR\000"
.LASF994:
	.ascii	"short int\000"
.LASF346:
	.ascii	"__UQQ_IBIT__ 0\000"
.LASF705:
	.ascii	"AS923_VERIFY() \000"
.LASF270:
	.ascii	"__UFRACT_FBIT__ 16\000"
.LASF1116:
	.ascii	"SetChannel\000"
.LASF431:
	.ascii	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC\000"
.LASF1151:
	.ascii	"RX_SLOT_WIN_2\000"
.LASF368:
	.ascii	"__UDA_IBIT__ 32\000"
.LASF753:
	.ascii	"CN470_VERIFY() \000"
.LASF374:
	.ascii	"__NO_INLINE__ 1\000"
.LASF1252:
	.ascii	"PHY_PING_SLOT_CHANNEL_DR\000"
.LASF638:
	.ascii	"TM_MONTH_APRIL ( ( uint8_t ) 3U )\000"
.LASF611:
	.ascii	"__RAL_WCHAR_T __WCHAR_TYPE__\000"
.LASF9:
	.ascii	"__ATOMIC_RELAXED 0\000"
.LASF1010:
	.ascii	"__state\000"
.LASF445:
	.ascii	"__ARM_FEATURE_COPROC\000"
.LASF692:
	.ascii	"TX_POWER_8 8\000"
.LASF174:
	.ascii	"__DBL_HAS_INFINITY__ 1\000"
.LASF805:
	.ascii	"EU433_RX_CONFIG() \000"
.LASF993:
	.ascii	"int16_t\000"
.LASF206:
	.ascii	"__FLT64_MANT_DIG__ 53\000"
.LASF944:
	.ascii	"US915_INIT_DEFAULTS() \000"
.LASF943:
	.ascii	"US915_SET_BAND_TX_DONE() \000"
.LASF1149:
	.ascii	"ChannelParams_t\000"
.LASF772:
	.ascii	"CN779_IS_ACTIVE() \000"
.LASF262:
	.ascii	"__USFRACT_MIN__ 0.0UHR\000"
.LASF1340:
	.ascii	"ALTERNATE_DR\000"
.LASF379:
	.ascii	"__GCC_ATOMIC_BOOL_LOCK_FREE 2\000"
.LASF1289:
	.ascii	"InitDefaultsParams_t\000"
.LASF1140:
	.ascii	"sFields\000"
.LASF213:
	.ascii	"__FLT64_MAX__ 1.1\000"
.LASF244:
	.ascii	"__DEC64_MIN__ 1E-383DD\000"
.LASF1021:
	.ascii	"mon_grouping\000"
.LASF168:
	.ascii	"__DBL_DECIMAL_DIG__ 17\000"
.LASF619:
	.ascii	"RTC_TEMP_COEFFICIENT ( -0.034 )\000"
.LASF630:
	.ascii	"TM_SECONDS_IN_1DAY ( ( uint32_t )86400U )\000"
.LASF762:
	.ascii	"CN470_TX_PARAM_SETUP_REQ() \000"
.LASF510:
	.ascii	"SIZE_MAX INT32_MAX\000"
.LASF1426:
	.ascii	"RegionInitDefaults\000"
.LASF1235:
	.ascii	"PHY_BEACON_RESERVED\000"
.LASF526:
	.ascii	"WINT_MIN (-2147483647L-1)\000"
.LASF99:
	.ascii	"__INT16_MAX__ 0x7fff\000"
.LASF566:
	.ascii	"BIT_14 0x4000\000"
.LASF380:
	.ascii	"__GCC_ATOMIC_CHAR_LOCK_FREE 2\000"
.LASF839:
	.ascii	"EU868_DUTY_CYCLE_ENABLED 1\000"
.LASF1173:
	.ascii	"LORAMAC_STATUS_NO_CHANNEL_FOUND\000"
.LASF1154:
	.ascii	"RX_SLOT_WIN_CLASS_B_PING_SLOT\000"
.LASF410:
	.ascii	"__ARM_FEATURE_SIMD32 1\000"
.LASF198:
	.ascii	"__FLT32_MAX__ 1.1\000"
.LASF682:
	.ascii	"DR_14 14\000"
.LASF1126:
	.ascii	"StartCad\000"
.LASF542:
	.ascii	"CONCAT_2(p1,p2) CONCAT_2_(p1, p2)\000"
.LASF1316:
	.ascii	"sTxConfigParams\000"
.LASF1038:
	.ascii	"day_names\000"
.LASF860:
	.ascii	"EU868_BAND2 { 1000, EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF747:
	.ascii	"AU915_RX_BEACON_SETUP() \000"
.LASF1392:
	.ascii	"RegionDlChannelReq\000"
.LASF571:
	.ascii	"BIT_19 0x00080000\000"
.LASF1394:
	.ascii	"RegionTxParamSetupReq\000"
.LASF866:
	.ascii	"EU868_LC3 { 868500000, 0, { ( ( DR_5 << 4 ) | DR_0 "
	.ascii	") }, 1 }\000"
.LASF1075:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF800:
	.ascii	"EU433_GET_NVM_CTX() \000"
.LASF1415:
	.ascii	"rxError\000"
.LASF546:
	.ascii	"STRINGIFY_(val) #val\000"
.LASF1279:
	.ascii	"DownlinkDwellTime\000"
.LASF331:
	.ascii	"__ULLACCUM_IBIT__ 32\000"
.LASF1353:
	.ascii	"sChannelAddParams\000"
.LASF1036:
	.ascii	"int_p_sign_posn\000"
.LASF294:
	.ascii	"__ULLFRACT_EPSILON__ 0x1P-64ULLR\000"
.LASF983:
	.ascii	"RU864_NEXT_CHANNEL() \000"
.LASF1351:
	.ascii	"LastAggrTx\000"
.LASF1324:
	.ascii	"AdrEnabled\000"
.LASF393:
	.ascii	"__SIZEOF_WINT_T__ 4\000"
.LASF820:
	.ascii	"__REGION_EU868_H__ \000"
.LASF981:
	.ascii	"RU864_ALTERNATE_DR() \000"
.LASF112:
	.ascii	"__INT_LEAST32_MAX__ 0x7fffffffL\000"
.LASF287:
	.ascii	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)\000"
.LASF183:
	.ascii	"__LDBL_DECIMAL_DIG__ 17\000"
.LASF1204:
	.ascii	"PHY_TX_DR\000"
.LASF1431:
	.ascii	"phyParam\000"
.LASF271:
	.ascii	"__UFRACT_IBIT__ 0\000"
.LASF192:
	.ascii	"__FLT32_DIG__ 6\000"
.LASF1317:
	.ascii	"MaxEirp\000"
.LASF126:
	.ascii	"__INT_FAST8_MAX__ 0x7fffffff\000"
.LASF1050:
	.ascii	"__iswctype\000"
.LASF1250:
	.ascii	"PHY_BEACON_CHANNEL_STEPWIDTH\000"
.LASF1323:
	.ascii	"PayloadSize\000"
.LASF332:
	.ascii	"__ULLACCUM_MIN__ 0.0ULLK\000"
.LASF1262:
	.ascii	"CHANNELS_REINIT_MASK\000"
.LASF27:
	.ascii	"__ORDER_BIG_ENDIAN__ 4321\000"
.LASF1343:
	.ascii	"sCalcBackOffParams\000"
.LASF969:
	.ascii	"RU864_GET_NVM_CTX() \000"
.LASF848:
	.ascii	"EU868_RX_WND_2_FREQ 869525000\000"
.LASF606:
	.ascii	"__CTYPE_XDIGIT 0x80\000"
.LASF1125:
	.ascii	"Standby\000"
.LASF1264:
	.ascii	"sBeaconFormat\000"
.LASF1331:
	.ascii	"sNewChannelReqParams\000"
.LASF1174:
	.ascii	"LORAMAC_STATUS_NO_FREE_CHANNEL_FOUND\000"
.LASF1067:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF920:
	.ascii	"IN865_INIT_DEFAULTS() \000"
.LASF47:
	.ascii	"__UINT32_TYPE__ long unsigned int\000"
.LASF402:
	.ascii	"__ARM_FEATURE_DOTPROD\000"
.LASF976:
	.ascii	"RU864_LINK_ADR_REQ() \000"
.LASF420:
	.ascii	"__thumb2__ 1\000"
.LASF563:
	.ascii	"BIT_11 0x0800\000"
.LASF1153:
	.ascii	"RX_SLOT_WIN_CLASS_C_MULTICAST\000"
.LASF1214:
	.ascii	"PHY_DUTY_CYCLE\000"
.LASF175:
	.ascii	"__DBL_HAS_QUIET_NAN__ 1\000"
.LASF975:
	.ascii	"RU864_TX_CONFIG() \000"
.LASF1179:
	.ascii	"LORAMAC_STATUS_FCNT_HANDLER_ERROR\000"
.LASF275:
	.ascii	"__LFRACT_FBIT__ 31\000"
.LASF1117:
	.ascii	"IsChannelFree\000"
.LASF1103:
	.ascii	"RadioState_t\000"
.LASF1240:
	.ascii	"PHY_BEACON_SYMBOL_TO_DEFAULT\000"
.LASF627:
	.ascii	"CLOCKS_PER_SEC 1000\000"
.LASF1367:
	.ascii	"MaxPayloadOfDatarateEU868\000"
.LASF352:
	.ascii	"__UDQ_IBIT__ 0\000"
.LASF1006:
	.ascii	"Value\000"
.LASF16:
	.ascii	"__SIZEOF_INT__ 4\000"
.LASF799:
	.ascii	"EU433_INIT_DEFAULTS() \000"
.LASF286:
	.ascii	"__LLFRACT_IBIT__ 0\000"
.LASF781:
	.ascii	"CN779_RX_CONFIG() \000"
.LASF594:
	.ascii	"__RAL_SIZE_T\000"
.LASF998:
	.ascii	"uint32_t\000"
.LASF479:
	.ascii	"INT64_MAX 9223372036854775807LL\000"
.LASF929:
	.ascii	"IN865_RX_PARAM_SETUP_REQ() \000"
.LASF1271:
	.ascii	"ChannelsMask\000"
.LASF1037:
	.ascii	"int_n_sign_posn\000"
.LASF512:
	.ascii	"INTPTR_MAX INT32_MAX\000"
.LASF519:
	.ascii	"UINT32_C(x) (x ##UL)\000"
.LASF1120:
	.ascii	"SetTxConfig\000"
.LASF452:
	.ascii	"__HEAP_SIZE__ 512\000"
.LASF690:
	.ascii	"TX_POWER_6 6\000"
.LASF427:
	.ascii	"__ARM_FP 4\000"
.LASF488:
	.ascii	"INT_LEAST8_MAX INT8_MAX\000"
.LASF1152:
	.ascii	"RX_SLOT_WIN_CLASS_C\000"
.LASF815:
	.ascii	"EU433_CHANNEL_ADD() \000"
.LASF62:
	.ascii	"__UINT_FAST16_TYPE__ unsigned int\000"
.LASF8:
	.ascii	"__VERSION__ \"9.3.1 20200408 (release)\"\000"
.LASF364:
	.ascii	"__UHA_IBIT__ 8\000"
.LASF1263:
	.ascii	"ChannelsMask_t\000"
.LASF1076:
	.ascii	"__RAL_data_empty_string\000"
.LASF309:
	.ascii	"__ACCUM_EPSILON__ 0x1P-15K\000"
.LASF324:
	.ascii	"__ULACCUM_EPSILON__ 0x1P-32ULK\000"
.LASF1200:
	.ascii	"PHY_MIN_RX_DR\000"
.LASF177:
	.ascii	"__LDBL_DIG__ 15\000"
.LASF556:
	.ascii	"BIT_4 0x10\000"
.LASF89:
	.ascii	"__SIZE_WIDTH__ 32\000"
.LASF537:
	.ascii	"LSB_32(a) ((a) & 0x000000FF)\000"
.LASF798:
	.ascii	"EU433_SET_BAND_TX_DONE() \000"
.LASF78:
	.ascii	"__WINT_MIN__ 0U\000"
.LASF657:
	.ascii	"LORAMAC_CRYPTO_UNICAST_KEYS 0\000"
.LASF1335:
	.ascii	"sTxParamSetupReqParams\000"
.LASF704:
	.ascii	"AS923_GET_NVM_CTX() \000"
.LASF207:
	.ascii	"__FLT64_DIG__ 15\000"
.LASF246:
	.ascii	"__DEC64_EPSILON__ 1E-15DD\000"
.LASF1315:
	.ascii	"RxConfigParams_t\000"
.LASF1287:
	.ascii	"NvmCtx\000"
.LASF108:
	.ascii	"__INT_LEAST8_WIDTH__ 8\000"
.LASF463:
	.ascii	"NRF52 1\000"
.LASF1294:
	.ascii	"uVerifyParams\000"
.LASF50:
	.ascii	"__INT_LEAST16_TYPE__ short int\000"
.LASF1026:
	.ascii	"p_cs_precedes\000"
.LASF335:
	.ascii	"__QQ_FBIT__ 7\000"
.LASF1184:
	.ascii	"LORAMAC_STATUS_ERROR\000"
.LASF543:
	.ascii	"CONCAT_2_(p1,p2) p1 ##p2\000"
.LASF708:
	.ascii	"AS923_COMPUTE_RX_WINDOW_PARAMETERS() \000"
.LASF184:
	.ascii	"__LDBL_MAX__ 1.1\000"
.LASF996:
	.ascii	"short unsigned int\000"
.LASF285:
	.ascii	"__LLFRACT_FBIT__ 63\000"
.LASF203:
	.ascii	"__FLT32_HAS_INFINITY__ 1\000"
.LASF419:
	.ascii	"__thumb__ 1\000"
.LASF181:
	.ascii	"__LDBL_MAX_10_EXP__ 308\000"
.LASF1381:
	.ascii	"channelAdd\000"
.LASF1177:
	.ascii	"LORAMAC_STATUS_BUSY_UPLINK_COLLISION\000"
.LASF424:
	.ascii	"__ARMEL__ 1\000"
.LASF623:
	.ascii	"__SYS_TIME_H__ \000"
.LASF337:
	.ascii	"__HQ_FBIT__ 15\000"
.LASF1225:
	.ascii	"PHY_CHANNELS_MASK\000"
.LASF797:
	.ascii	"EU433_GET_PHY_PARAM() \000"
.LASF717:
	.ascii	"AS923_CALC_BACKOFF() \000"
.LASF1121:
	.ascii	"CheckRfFrequency\000"
.LASF80:
	.ascii	"__SIZE_MAX__ 0xffffffffU\000"
.LASF1226:
	.ascii	"PHY_CHANNELS_DEFAULT_MASK\000"
.LASF653:
	.ascii	"TM_WEEKDAY_SATURDAY ( ( uint8_t )6U )\000"
.LASF1345:
	.ascii	"DutyCycleEnabled\000"
.LASF583:
	.ascii	"BIT_31 0x80000000\000"
.LASF416:
	.ascii	"__ARM_ARCH\000"
.LASF73:
	.ascii	"__LONG_MAX__ 0x7fffffffL\000"
.LASF558:
	.ascii	"BIT_6 0x40\000"
.LASF550:
	.ascii	"CLR_BIT(W,B) ((W) &= (~(uint32_t)(1U << (B))))\000"
.LASF831:
	.ascii	"EU868_DEFAULT_RX1_DR_OFFSET 0\000"
.LASF1364:
	.ascii	"LoRaMacMaxEirpTable\000"
.LASF444:
	.ascii	"__ARM_ASM_SYNTAX_UNIFIED__ 1\000"
.LASF1118:
	.ascii	"Random\000"
.LASF695:
	.ascii	"TX_POWER_11 11\000"
.LASF895:
	.ascii	"KR920_SET_BAND_TX_DONE() \000"
.LASF960:
	.ascii	"US915_CHANNEL_ADD() \000"
.LASF862:
	.ascii	"EU868_BAND4 { 100 , EU868_MAX_TX_POWER, 0, 0, 0 }\000"
.LASF407:
	.ascii	"__ARM_FEATURE_LDREX 7\000"
.LASF746:
	.ascii	"AU915_APPLY_DR_OFFSET() \000"
.LASF1423:
	.ascii	"phyAttribute\000"
.LASF457:
	.ascii	"ISP4520_EU 1\000"
.LASF289:
	.ascii	"__LLFRACT_EPSILON__ 0x1P-63LLR\000"
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
.LASF813:
	.ascii	"EU433_CALC_BACKOFF() \000"
.LASF1230:
	.ascii	"PHY_DEF_DOWNLINK_DWELL_TIME\000"
.LASF1016:
	.ascii	"grouping\000"
.LASF1401:
	.ascii	"linkAdrReq\000"
.LASF360:
	.ascii	"__DA_IBIT__ 32\000"
.LASF1176:
	.ascii	"LORAMAC_STATUS_BUSY_PING_SLOT_WINDOW_TIME\000"
.LASF90:
	.ascii	"__INTMAX_MAX__ 0x7fffffffffffffffLL\000"
.LASF216:
	.ascii	"__FLT64_DENORM_MIN__ 1.1\000"
.LASF751:
	.ascii	"CN470_INIT_DEFAULTS() \000"
.LASF676:
	.ascii	"DR_8 8\000"
.LASF719:
	.ascii	"AS923_CHANNEL_ADD() \000"
.LASF13:
	.ascii	"__ATOMIC_ACQ_REL 4\000"
.LASF607:
	.ascii	"__CTYPE_ALPHA (__CTYPE_UPPER | __CTYPE_LOWER)\000"
.LASF624:
	.ascii	"__time_H \000"
.LASF43:
	.ascii	"__INT32_TYPE__ long int\000"
.LASF816:
	.ascii	"EU433_CHANNEL_REMOVE() \000"
.LASF1085:
	.ascii	"next\000"
.LASF1227:
	.ascii	"PHY_MAX_NB_CHANNELS\000"
.LASF939:
	.ascii	"IN865_APPLY_DR_OFFSET() \000"
.LASF1057:
	.ascii	"data\000"
.LASF290:
	.ascii	"__ULLFRACT_FBIT__ 64\000"
.LASF42:
	.ascii	"__INT16_TYPE__ short int\000"
.LASF506:
	.ascii	"UINT_FAST32_MAX UINT32_MAX\000"
.LASF1430:
	.ascii	"getPhy\000"
.LASF1412:
	.ascii	"datarate\000"
.LASF1078:
	.ascii	"tv_sec\000"
.LASF299:
	.ascii	"__SACCUM_EPSILON__ 0x1P-7HK\000"
.LASF656:
	.ascii	"__LORAMAC_TYPES_H__ \000"
.LASF215:
	.ascii	"__FLT64_EPSILON__ 1.1\000"
.LASF1183:
	.ascii	"LORAMAC_STATUS_MC_GROUP_UNDEFINED\000"
.LASF92:
	.ascii	"__UINTMAX_MAX__ 0xffffffffffffffffULL\000"
.LASF1124:
	.ascii	"Sleep\000"
.LASF162:
	.ascii	"__DBL_MANT_DIG__ 53\000"
.LASF281:
	.ascii	"__ULFRACT_IBIT__ 0\000"
.LASF639:
	.ascii	"TM_MONTH_MAY ( ( uint8_t ) 4U )\000"
.LASF1146:
	.ascii	"Rx1Frequency\000"
.LASF325:
	.ascii	"__LLACCUM_FBIT__ 31\000"
.LASF72:
	.ascii	"__INT_MAX__ 0x7fffffff\000"
.LASF1296:
	.ascii	"DutyCycle\000"
.LASF808:
	.ascii	"EU433_RX_PARAM_SETUP_REQ() \000"
.LASF513:
	.ascii	"UINTPTR_MAX UINT32_MAX\000"
.LASF516:
	.ascii	"INT16_C(x) (x)\000"
.LASF1281:
	.ascii	"sSetBandTxDoneParams\000"
.LASF295:
	.ascii	"__SACCUM_FBIT__ 7\000"
.LASF1092:
	.ascii	"SysTime_s\000"
.LASF1068:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF750:
	.ascii	"CN470_SET_BAND_TX_DONE() \000"
.LASF492:
	.ascii	"UINT_LEAST8_MAX UINT8_MAX\000"
	.ident	"GCC: (GNU) 9.3.1 20200408 (release)"
