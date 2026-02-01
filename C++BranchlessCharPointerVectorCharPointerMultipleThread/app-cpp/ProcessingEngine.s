	.text
	.intel_syntax noprefix
	.file	"ProcessingEngine.cpp"
	.intel_syntax noprefix
	.globl	_ZN16ProcessingEngineC2Ei       # -- Begin function _ZN16ProcessingEngineC2Ei
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngineC2Ei,@function
_ZN16ProcessingEngineC2Ei:              # 
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rdi], offset _ZTV16ProcessingEngine+16
	mov	dword ptr [rdi + 8], esi
	ret
.Lfunc_end0:
	.size	_ZN16ProcessingEngineC2Ei, .Lfunc_end0-_ZN16ProcessingEngineC2Ei
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN16ProcessingEngine10indexFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI1_0:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI1_1:
	.quad	0x4330000000000000              #  4503599627370496
	.quad	0x4530000000000000              #  1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI1_2:
	.quad	0x3eb0000000000000              #  9.5367431640625E-7
	.text
	.globl	_ZN16ProcessingEngine10indexFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine10indexFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN16ProcessingEngine10indexFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # 
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 728
	.cfi_def_cfa_offset 784
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rdi        # 8-byte Spill
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str
	mov	edx, 31
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rsp + 16], rbx       # 8-byte Spill
	mov	rdx, qword ptr [rbx + 8]
	mov	edi, offset _ZSt4cout
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	rcx, qword ptr [rax]
	mov	rcx, qword ptr [rcx - 24]
	mov	rbx, qword ptr [rax + rcx + 240]
	test	rbx, rbx
	je	.LBB1_254
# %bb.1:
	cmp	byte ptr [rbx + 56], 0
	je	.LBB1_3
# %bb.2:
	movzx	ecx, byte ptr [rbx + 67]
	jmp	.LBB1_4
.LBB1_3:
	mov	rdi, rbx
	mov	r14, rax
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, qword ptr [rbx]
	mov	rdi, rbx
	mov	esi, 10
	call	qword ptr [rax + 48]
	mov	ecx, eax
	mov	rax, r14
.LBB1_4:
	movsx	esi, cl
	mov	rdi, rax
	call	_ZNSo3putEc
	mov	rdi, rax
	call	_ZNSo5flushEv
	mov	qword ptr [rsp + 72], 0
	mov	qword ptr [rsp + 152], 0
	lea	rdi, [rsp + 512]
	mov	rsi, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	call	_ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp0:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.1
	mov	edx, 34
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp1:
# %bb.5:
	mov	rax, qword ptr [rsp + 584]
	mov	rcx, rax
	sub	rcx, qword ptr [rsp + 552]
	shr	rcx, 3
	cmp	rax, 1
	adc	rcx, -1
	shl	rcx, 4
	mov	rsi, qword ptr [rsp + 544]
	mov	rax, qword ptr [rsp + 560]
	sub	rax, qword ptr [rsp + 568]
	sub	rsi, qword ptr [rsp + 528]
	sar	rax, 5
	sar	rsi, 5
	add	rsi, rax
	add	rsi, rcx
.Ltmp2:
	mov	edi, offset _ZSt4cout
	call	_ZNSo9_M_insertImEERSoT_
.Ltmp3:
# %bb.6:
	mov	rbx, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	r14, qword ptr [rbx + rax + 240]
	test	r14, r14
	je	.LBB1_255
# %bb.7:
	cmp	byte ptr [r14 + 56], 0
	je	.LBB1_9
# %bb.8:
	movzx	eax, byte ptr [r14 + 67]
	jmp	.LBB1_11
.LBB1_9:
.Ltmp4:
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp5:
# %bb.10:
	mov	rax, qword ptr [r14]
.Ltmp6:
	mov	rdi, r14
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp7:
.LBB1_11:
.Ltmp8:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp9:
# %bb.12:
.Ltmp10:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp11:
# %bb.13:
	lea	rax, [rsp + 136]
	mov	qword ptr [rsp + 120], rax
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	rbx, qword ptr [rcx]
	mov	r14, qword ptr [rcx + 8]
	mov	qword ptr [rsp + 256], r14
	cmp	r14, 16
	jb	.LBB1_16
# %bb.14:
.Ltmp12:
	lea	rdi, [rsp + 120]
	lea	rsi, [rsp + 256]
	xor	edx, edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp13:
# %bb.15:
	mov	qword ptr [rsp + 120], rax
	mov	rcx, qword ptr [rsp + 256]
	mov	qword ptr [rsp + 136], rcx
.LBB1_16:
	test	r14, r14
	je	.LBB1_20
# %bb.17:
	cmp	r14, 1
	jne	.LBB1_19
# %bb.18:
	movzx	ecx, byte ptr [rbx]
	mov	byte ptr [rax], cl
	jmp	.LBB1_20
.LBB1_19:
	mov	rdi, rax
	mov	rsi, rbx
	mov	rdx, r14
	call	_intel_fast_memcpy@PLT
.LBB1_20:
	mov	rax, qword ptr [rsp + 256]
	mov	qword ptr [rsp + 128], rax
	mov	rcx, qword ptr [rsp + 120]
	mov	byte ptr [rcx + rax], 0
	mov	r15, qword ptr [rsp + 120]
	mov	r14, qword ptr [rsp + 128]
	cmp	byte ptr [r15 + r14 - 1], 47
	jne	.LBB1_23
# %bb.21:
.Ltmp15:
	dec	r14
	lea	rdi, [rsp + 120]
	mov	edx, 1
	mov	rsi, r14
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm
.Ltmp16:
# %bb.22:
	mov	r15, qword ptr [rsp + 120]
	mov	r14, qword ptr [rsp + 128]
.LBB1_23:
	lea	rax, [rsp + 48]
	mov	qword ptr [rsp + 32], rax
	mov	qword ptr [rsp + 256], r14
	cmp	r14, 16
	jb	.LBB1_26
# %bb.24:
.Ltmp18:
	lea	rdi, [rsp + 32]
	lea	rsi, [rsp + 256]
	xor	edx, edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp19:
# %bb.25:
	mov	qword ptr [rsp + 32], rax
	mov	rcx, qword ptr [rsp + 256]
	mov	qword ptr [rsp + 48], rcx
.LBB1_26:
	test	r14, r14
	je	.LBB1_30
# %bb.27:
	cmp	r14, 1
	jne	.LBB1_29
# %bb.28:
	movzx	ecx, byte ptr [r15]
	mov	byte ptr [rax], cl
	jmp	.LBB1_30
.LBB1_29:
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r14
	call	_intel_fast_memcpy@PLT
.LBB1_30:
	mov	rax, qword ptr [rsp + 256]
	mov	qword ptr [rsp + 40], rax
	mov	rcx, qword ptr [rsp + 32]
	mov	byte ptr [rcx + rax], 0
	movabs	rax, -4611686018427387844
	add	rax, qword ptr [rsp + 40]
	cmp	rax, 59
	jbe	.LBB1_257
# %bb.31:
.Ltmp21:
	lea	rdi, [rsp + 32]
	mov	esi, offset .L.str.2
	mov	edx, 60
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm
.Ltmp22:
# %bb.32:
.Ltmp23:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.3
	mov	edx, 13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp24:
# %bb.33:
	mov	rsi, qword ptr [rsp + 32]
	mov	rdx, qword ptr [rsp + 40]
.Ltmp25:
	mov	edi, offset _ZSt4cout
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp26:
# %bb.34:
	mov	rbx, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	r14, qword ptr [rbx + rax + 240]
	test	r14, r14
	je	.LBB1_259
# %bb.35:
	cmp	byte ptr [r14 + 56], 0
	je	.LBB1_37
# %bb.36:
	movzx	eax, byte ptr [r14 + 67]
	jmp	.LBB1_39
.LBB1_37:
.Ltmp27:
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp28:
# %bb.38:
	mov	rax, qword ptr [r14]
.Ltmp29:
	mov	rdi, r14
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp30:
.LBB1_39:
.Ltmp31:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp32:
# %bb.40:
.Ltmp33:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp34:
# %bb.41:
.Ltmp35:
	lea	rdi, [rsp + 256]
	lea	rsi, [rsp + 32]
	mov	edx, 2
	call	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
.Ltmp36:
# %bb.42:
.Ltmp38:
	lea	rdi, [rsp + 256]
	call	_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE
.Ltmp39:
# %bb.43:
	lea	rbx, [rsp + 288]
	mov	rsi, qword ptr [rsp + 288]
	test	rsi, rsi
	je	.LBB1_45
# %bb.44:
	mov	rdi, rbx
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB1_45:
	mov	qword ptr [rbx], 0
	mov	rdi, qword ptr [rsp + 256]
	lea	rax, [rsp + 272]
	cmp	rdi, rax
	je	.LBB1_47
# %bb.46:
	call	_ZdlPv
.LBB1_47:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 496], xmm0
	movdqa	xmmword ptr [rsp + 480], xmm0
	movdqa	xmmword ptr [rsp + 464], xmm0
	movdqa	xmmword ptr [rsp + 448], xmm0
	movdqa	xmmword ptr [rsp + 432], xmm0
	movdqa	xmmword ptr [rsp + 416], xmm0
	movdqa	xmmword ptr [rsp + 400], xmm0
	movdqa	xmmword ptr [rsp + 384], xmm0
	movdqa	xmmword ptr [rsp + 368], xmm0
	movdqa	xmmword ptr [rsp + 352], xmm0
	movdqa	xmmword ptr [rsp + 336], xmm0
	movdqa	xmmword ptr [rsp + 320], xmm0
	movdqa	xmmword ptr [rsp + 304], xmm0
	movdqa	xmmword ptr [rsp + 288], xmm0
	movdqa	xmmword ptr [rsp + 272], xmm0
	movdqa	xmmword ptr [rsp + 256], xmm0
	xor	ebx, ebx
	jmp	.LBB1_49
	.p2align	4, 0x90
.LBB1_48:                               #   in Loop: Header=BB1_49 Depth=1
	add	rbx, 8
	cmp	rbx, 256
	je	.LBB1_65
.LBB1_49:                               # =>This Inner Loop Header: Depth=1
	movsx	edi, bl
	call	isalnum
	test	eax, eax
	jne	.LBB1_51
# %bb.50:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 256], 0
.LBB1_51:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 1]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_53
# %bb.52:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 257], 0
.LBB1_53:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 2]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_55
# %bb.54:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 258], 0
.LBB1_55:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 3]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_57
# %bb.56:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 259], 0
.LBB1_57:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 4]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_59
# %bb.58:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 260], 0
.LBB1_59:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 5]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_61
# %bb.60:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 261], 0
.LBB1_61:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 6]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 262], 0
.LBB1_63:                               #   in Loop: Header=BB1_49 Depth=1
	lea	eax, [rbx + 7]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB1_48
# %bb.64:                               #   in Loop: Header=BB1_49 Depth=1
	mov	byte ptr [rsp + rbx + 263], 0
	jmp	.LBB1_48
.LBB1_65:
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 704], xmm0
	movdqa	xmmword ptr [rsp + 688], xmm0
	mov	qword ptr [rsp + 720], 0
	movdqa	xmmword ptr [rsp + 656], xmm0
	movdqa	xmmword ptr [rsp + 640], xmm0
	mov	qword ptr [rsp + 672], 0
	movdqa	xmmword ptr [rsp + 608], xmm0
	movdqa	xmmword ptr [rsp + 592], xmm0
	mov	qword ptr [rsp + 624], 0
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movsxd	r14, dword ptr [rax + 8]
	test	r14, r14
	js	.LBB1_261
# %bb.66:
	test	r14d, r14d
	je	.LBB1_70
# %bb.67:
	lea	rbx, [8*r14]
.Ltmp41:
	mov	rdi, rbx
	call	_Znwm
.Ltmp42:
# %bb.68:
	mov	qword ptr [rsp + 192], rax
	lea	r15, [rax + 8*r14]
	mov	qword ptr [rsp + 208], r15
	mov	rdi, rax
	xor	esi, esi
	mov	rdx, rbx
	call	_intel_fast_memset@PLT
	mov	qword ptr [rsp + 200], r15
.Ltmp43:
	mov	rdi, rbx
	call	_Znwm
.Ltmp44:
# %bb.69:
	lea	r15, [rsp + 160]
	mov	qword ptr [rsp + 160], rax
	lea	r14, [rax + 8*r14]
	mov	qword ptr [rsp + 176], r14
	mov	rdi, rax
	xor	esi, esi
	mov	rdx, rbx
	call	_intel_fast_memset@PLT
	jmp	.LBB1_71
.LBB1_70:
	movdqa	xmmword ptr [rsp + 192], xmm0
	mov	qword ptr [rsp + 208], 0
	movdqa	xmmword ptr [rsp + 160], xmm0
	mov	qword ptr [rsp + 176], 0
	lea	r15, [rsp + 160]
	xor	r14d, r14d
.LBB1_71:
	mov	qword ptr [r15 + 8], r14
.Ltmp46:
	call	numa_available
.Ltmp47:
# %bb.72:
	test	eax, eax
	js	.LBB1_75
# %bb.73:
.Ltmp60:
	call	numa_max_node
.Ltmp61:
# %bb.74:
	mov	ebx, eax
	inc	ebx
	jmp	.LBB1_83
.LBB1_75:
.Ltmp48:
	mov	edi, offset _ZSt4cerr
	mov	esi, offset .L.str.4
	mov	edx, 50
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp49:
# %bb.76:
	mov	rax, qword ptr [rip + _ZSt4cerr]
	mov	rax, qword ptr [rax - 24]
	mov	rbx, qword ptr [rax + _ZSt4cerr+240]
	test	rbx, rbx
	je	.LBB1_265
# %bb.77:
	cmp	byte ptr [rbx + 56], 0
	je	.LBB1_79
# %bb.78:
	movzx	eax, byte ptr [rbx + 67]
	jmp	.LBB1_81
.LBB1_79:
.Ltmp50:
	mov	rdi, rbx
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp51:
# %bb.80:
	mov	rax, qword ptr [rbx]
.Ltmp52:
	mov	rdi, rbx
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp53:
.LBB1_81:
.Ltmp54:
	movsx	esi, al
	mov	edi, offset _ZSt4cerr
	call	_ZNSo3putEc
.Ltmp55:
# %bb.82:
	mov	ebx, -1
.Ltmp56:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp57:
.LBB1_83:
	mov	dword ptr [rsp + 28], ebx       # 4-byte Spill
	pxor	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 224], xmm0
	mov	qword ptr [rsp + 240], 0
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	dword ptr [rax + 8], 0
	jle	.LBB1_121
# %bb.84:
	xor	r15d, r15d
	xor	r12d, r12d
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.LBB1_87
	.p2align	4, 0x90
.LBB1_85:                               #   in Loop: Header=BB1_87 Depth=1
	add	r14, 8
	mov	qword ptr [rsp + 232], r14
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	edx, dword ptr [rax + 8]
	cmp	ebp, edx
	jge	.LBB1_114
.LBB1_87:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_104 Depth 2
                                        #     Child Loop BB1_112 Depth 2
	inc	ebp
	cmp	r14, r12
	je	.LBB1_92
# %bb.88:                               #   in Loop: Header=BB1_87 Depth=1
	mov	qword ptr [r14], 0
.Ltmp63:
	mov	edi, 136
	call	_Znwm
.Ltmp64:
# %bb.89:                               #   in Loop: Header=BB1_87 Depth=1
	mov	qword ptr [rax], offset _ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE+16
	mov	ecx, dword ptr [rsp + 28]       # 4-byte Reload
	mov	dword ptr [rax + 8], ecx
	lea	rcx, [rsp + 160]
	mov	qword ptr [rax + 16], rcx
	lea	rcx, [rsp + 192]
	mov	qword ptr [rax + 24], rcx
	lea	rcx, [rsp + 152]
	mov	qword ptr [rax + 32], rcx
	lea	rcx, [rsp + 72]
	mov	qword ptr [rax + 40], rcx
	lea	rcx, [rsp + 32]
	mov	qword ptr [rax + 48], rcx
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rax + 56], rcx
	lea	rcx, [rsp + 256]
	mov	qword ptr [rax + 64], rcx
	lea	rcx, [rsp + 592]
	mov	qword ptr [rax + 72], rcx
	lea	rcx, [rsp + 640]
	mov	qword ptr [rax + 80], rcx
	lea	rcx, [rsp + 688]
	mov	qword ptr [rax + 88], rcx
	lea	rcx, [rsp + 512]
	mov	qword ptr [rax + 96], rcx
	mov	dword ptr [rax + 104], ebp
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rax + 112], rcx
	mov	qword ptr [rax + 120], offset _ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi
	mov	qword ptr [rax + 128], 0
	mov	qword ptr [rsp + 80], rax
.Ltmp65:
	mov	rdi, r14
	lea	rsi, [rsp + 80]
	xor	edx, edx
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp66:
# %bb.90:                               #   in Loop: Header=BB1_87 Depth=1
	mov	rdi, qword ptr [rsp + 80]
	test	rdi, rdi
	je	.LBB1_85
# %bb.91:                               #   in Loop: Header=BB1_87 Depth=1
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax + 8]
	jmp	.LBB1_85
	.p2align	4, 0x90
.LBB1_92:                               #   in Loop: Header=BB1_87 Depth=1
	mov	rbx, r12
	sub	rbx, r15
	movabs	rax, 9223372036854775800
	cmp	rbx, rax
	je	.LBB1_248
# %bb.93:                               #   in Loop: Header=BB1_87 Depth=1
	mov	dword ptr [rsp + 68], ebp       # 4-byte Spill
	mov	r14, rbx
	sar	r14, 3
	cmp	r14, 1
	mov	rax, r14
	adc	rax, 0
	lea	rbp, [rax + r14]
	movabs	rcx, 1152921504606846975
	cmp	rbp, rcx
	cmovae	rbp, rcx
	add	rax, r14
	cmovb	rbp, rcx
	test	rbp, rbp
	je	.LBB1_95
# %bb.94:                               #   in Loop: Header=BB1_87 Depth=1
	lea	rdi, [8*rbp]
.Ltmp68:
	call	_Znwm
	mov	r13, rax
.Ltmp69:
	jmp	.LBB1_96
.LBB1_95:                               #   in Loop: Header=BB1_87 Depth=1
	xor	r13d, r13d
.LBB1_96:                               #   in Loop: Header=BB1_87 Depth=1
	mov	qword ptr [r13 + 8*r14], 0
.Ltmp71:
	mov	edi, 136
	call	_Znwm
.Ltmp72:
# %bb.97:                               #   in Loop: Header=BB1_87 Depth=1
	mov	qword ptr [rax], offset _ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE+16
	mov	ecx, dword ptr [rsp + 28]       # 4-byte Reload
	mov	dword ptr [rax + 8], ecx
	lea	rcx, [rsp + 160]
	mov	qword ptr [rax + 16], rcx
	lea	rcx, [rsp + 192]
	mov	qword ptr [rax + 24], rcx
	lea	rcx, [rsp + 152]
	mov	qword ptr [rax + 32], rcx
	lea	rcx, [rsp + 72]
	mov	qword ptr [rax + 40], rcx
	lea	rcx, [rsp + 32]
	mov	qword ptr [rax + 48], rcx
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	mov	qword ptr [rax + 56], rcx
	lea	rcx, [rsp + 256]
	mov	qword ptr [rax + 64], rcx
	lea	rcx, [rsp + 592]
	mov	qword ptr [rax + 72], rcx
	lea	rcx, [rsp + 640]
	mov	qword ptr [rax + 80], rcx
	lea	rcx, [rsp + 688]
	mov	qword ptr [rax + 88], rcx
	lea	rcx, [rsp + 512]
	mov	qword ptr [rax + 96], rcx
	mov	ecx, dword ptr [rsp + 68]       # 4-byte Reload
	mov	dword ptr [rax + 104], ecx
	mov	rcx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	qword ptr [rax + 112], rcx
	mov	qword ptr [rax + 120], offset _ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi
	mov	qword ptr [rax + 128], 0
	mov	qword ptr [rsp + 80], rax
	lea	rdi, [8*r14]
	add	rdi, r13
.Ltmp74:
	lea	rsi, [rsp + 80]
	xor	edx, edx
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE
.Ltmp75:
# %bb.98:                               #   in Loop: Header=BB1_87 Depth=1
	mov	rdi, qword ptr [rsp + 80]
	test	rdi, rdi
	je	.LBB1_100
# %bb.99:                               #   in Loop: Header=BB1_87 Depth=1
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax + 8]
.LBB1_100:                              #   in Loop: Header=BB1_87 Depth=1
	mov	r14, r13
	cmp	r15, r12
	je	.LBB1_108
# %bb.101:                              #   in Loop: Header=BB1_87 Depth=1
	add	rbx, -8
	mov	r14, rbx
	and	r14, -8
	lea	rax, [r15 + r14]
	mov	r12, rbx
	shr	r12, 3
	cmp	rax, r13
	jb	.LBB1_106
# %bb.102:                              #   in Loop: Header=BB1_87 Depth=1
	lea	rax, [r14 + r13]
	cmp	rax, r15
	jb	.LBB1_106
# %bb.103:                              #   in Loop: Header=BB1_87 Depth=1
	lea	rax, [r12 + 1]
	xor	ecx, ecx
	.p2align	4, 0x90
.LBB1_104:                              #   Parent Loop BB1_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rdx, qword ptr [r15 + 8*rcx]
	mov	qword ptr [r13 + 8*rcx], rdx
	mov	qword ptr [r15 + 8*rcx], 0
	inc	rcx
	cmp	rax, rcx
	jne	.LBB1_104
# %bb.105:                              #   in Loop: Header=BB1_87 Depth=1
	lea	r14, [8*r12 + 8]
	add	r14, r13
	test	r15, r15
	jne	.LBB1_109
	jmp	.LBB1_110
.LBB1_106:                              #   in Loop: Header=BB1_87 Depth=1
	inc	r12
	cmp	rbx, 95
	jbe	.LBB1_111
# %bb.107:                              #   in Loop: Header=BB1_87 Depth=1
	add	r14, 8
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	_intel_fast_memcpy@PLT
	mov	rdi, r15
	xor	esi, esi
	mov	rdx, r14
	call	_intel_fast_memset@PLT
	lea	r14, [8*r12]
	add	r14, r13
	.p2align	4, 0x90
.LBB1_108:                              #   in Loop: Header=BB1_87 Depth=1
	test	r15, r15
	je	.LBB1_110
.LBB1_109:                              #   in Loop: Header=BB1_87 Depth=1
	mov	rdi, r15
	call	_ZdlPv
.LBB1_110:                              #   in Loop: Header=BB1_87 Depth=1
	add	r14, 8
	mov	qword ptr [rsp + 224], r13
	mov	qword ptr [rsp + 232], r14
	lea	r12, [8*rbp]
	add	r12, r13
	mov	qword ptr [rsp + 240], r12
	mov	r15, r13
	mov	ebp, dword ptr [rsp + 68]       # 4-byte Reload
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	edx, dword ptr [rax + 8]
	cmp	ebp, edx
	jl	.LBB1_87
	jmp	.LBB1_114
.LBB1_111:                              #   in Loop: Header=BB1_87 Depth=1
	xor	eax, eax
	.p2align	4, 0x90
.LBB1_112:                              #   Parent Loop BB1_87 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	rcx, qword ptr [r15 + 8*rax]
	mov	qword ptr [r13 + 8*rax], rcx
	mov	qword ptr [r15 + 8*rax], 0
	inc	rax
	cmp	r12, rax
	jne	.LBB1_112
# %bb.113:                              #   in Loop: Header=BB1_87 Depth=1
	lea	r14, [8*r12]
	add	r14, r13
	test	r15, r15
	jne	.LBB1_109
	jmp	.LBB1_110
.LBB1_114:
	cmp	r15, r14
	je	.LBB1_118
	.p2align	4, 0x90
.LBB1_115:                              # =>This Inner Loop Header: Depth=1
.Ltmp83:
	mov	rdi, r15
	call	_ZNSt6thread4joinEv
.Ltmp84:
# %bb.116:                              #   in Loop: Header=BB1_115 Depth=1
	add	r15, 8
	cmp	r15, r14
	jne	.LBB1_115
# %bb.117:
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	mov	edx, dword ptr [rax + 8]
.LBB1_118:
	test	edx, edx
	jle	.LBB1_121
# %bb.119:
	mov	rax, qword ptr [rsp + 192]
	mov	ecx, edx
	cmp	edx, 8
	jae	.LBB1_122
# %bb.120:
	pxor	xmm0, xmm0
	xor	r14d, r14d
	jmp	.LBB1_124
.LBB1_121:
	xor	r14d, r14d
	xorpd	xmm1, xmm1
	jmp	.LBB1_127
.LBB1_122:
	mov	edx, ecx
	and	edx, -8
	pxor	xmm0, xmm0
	xor	esi, esi
	xor	r14d, r14d
	.p2align	4, 0x90
.LBB1_123:                              # =>This Inner Loop Header: Depth=1
	lea	edi, [rsi + 1]
	movsd	xmm1, qword ptr [rax + 8*rsi]   # xmm1 = mem[0],zero
	ucomisd	xmm1, xmm0
	movsd	xmm2, qword ptr [rax + 8*rsi + 8] # xmm2 = mem[0],zero
	cmovbe	edi, r14d
	maxsd	xmm1, xmm0
	lea	r8d, [rsi + 2]
	ucomisd	xmm2, xmm1
	cmovbe	r8d, edi
	maxsd	xmm2, xmm1
	movsd	xmm0, qword ptr [rax + 8*rsi + 16] # xmm0 = mem[0],zero
	lea	edi, [rsi + 3]
	ucomisd	xmm0, xmm2
	cmovbe	edi, r8d
	maxsd	xmm0, xmm2
	movsd	xmm1, qword ptr [rax + 8*rsi + 24] # xmm1 = mem[0],zero
	lea	r8d, [rsi + 4]
	ucomisd	xmm1, xmm0
	cmovbe	r8d, edi
	maxsd	xmm1, xmm0
	movsd	xmm0, qword ptr [rax + 8*rsi + 32] # xmm0 = mem[0],zero
	lea	edi, [rsi + 5]
	ucomisd	xmm0, xmm1
	cmovbe	edi, r8d
	maxsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rax + 8*rsi + 40] # xmm1 = mem[0],zero
	lea	r8d, [rsi + 6]
	ucomisd	xmm1, xmm0
	cmovbe	r8d, edi
	maxsd	xmm1, xmm0
	movsd	xmm2, qword ptr [rax + 8*rsi + 48] # xmm2 = mem[0],zero
	lea	edi, [rsi + 7]
	ucomisd	xmm2, xmm1
	cmovbe	edi, r8d
	maxsd	xmm2, xmm1
	movsd	xmm0, qword ptr [rax + 8*rsi + 56] # xmm0 = mem[0],zero
	add	rsi, 8
	ucomisd	xmm0, xmm2
	mov	r14d, esi
	cmovbe	r14d, edi
	maxsd	xmm0, xmm2
	cmp	rdx, rsi
	jne	.LBB1_123
.LBB1_124:
	mov	edx, ecx
	and	edx, 2147483640
	cmp	rdx, rcx
	jne	.LBB1_126
# %bb.125:
	movapd	xmm1, xmm0
	jmp	.LBB1_127
	.p2align	4, 0x90
.LBB1_126:                              # =>This Inner Loop Header: Depth=1
	movsd	xmm1, qword ptr [rax + 8*rdx]   # xmm1 = mem[0],zero
	inc	rdx
	ucomisd	xmm1, xmm0
	cmova	r14d, edx
	maxsd	xmm1, xmm0
	movapd	xmm0, xmm1
	cmp	rcx, rdx
	jne	.LBB1_126
.LBB1_127:
	movsd	qword ptr [rsp + 16], xmm1      # 8-byte Spill
	xor	r12d, r12d
	.p2align	4, 0x90
.LBB1_128:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	movsxd	rax, dword ptr [rax + 8]
	cmp	r12, rax
	jge	.LBB1_157
# %bb.129:                              #   in Loop: Header=BB1_128 Depth=1
	mov	ecx, dword ptr [rsp + 28]       # 4-byte Reload
	test	ecx, ecx
	jle	.LBB1_131
# %bb.130:                              #   in Loop: Header=BB1_128 Depth=1
	mov	eax, r12d
	cdq
	idiv	ecx
	mov	r13d, edx
	jmp	.LBB1_132
	.p2align	4, 0x90
.LBB1_131:                              #   in Loop: Header=BB1_128 Depth=1
	mov	r13d, -1
.LBB1_132:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp193:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.5
	mov	edx, 7
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp194:
# %bb.133:                              #   in Loop: Header=BB1_128 Depth=1
	lea	r15, [r12 + 1]
.Ltmp195:
	mov	edi, offset _ZSt4cout
	mov	esi, r15d
	call	_ZNSolsEi
.Ltmp196:
# %bb.134:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp197:
	mov	rbx, rax
	mov	esi, offset .L.str.6
	mov	edx, 20
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp198:
# %bb.135:                              #   in Loop: Header=BB1_128 Depth=1
	mov	rax, qword ptr [rsp + 192]
	movsd	xmm0, qword ptr [rax + 8*r12]   # xmm0 = mem[0],zero
.Ltmp199:
	mov	rdi, rbx
	call	_ZNSo9_M_insertIdEERSoT_
.Ltmp200:
# %bb.136:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp201:
	mov	rbx, rax
	mov	esi, offset .L.str.7
	mov	edx, 8
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp202:
# %bb.137:                              #   in Loop: Header=BB1_128 Depth=1
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax - 24]
	mov	rbp, qword ptr [rbx + rax + 240]
	test	rbp, rbp
	je	.LBB1_245
# %bb.138:                              #   in Loop: Header=BB1_128 Depth=1
	cmp	byte ptr [rbp + 56], 0
	je	.LBB1_140
# %bb.139:                              #   in Loop: Header=BB1_128 Depth=1
	movzx	eax, byte ptr [rbp + 67]
	jmp	.LBB1_142
	.p2align	4, 0x90
.LBB1_140:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp203:
	mov	rdi, rbp
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp204:
# %bb.141:                              #   in Loop: Header=BB1_128 Depth=1
	mov	rax, qword ptr [rbp]
.Ltmp205:
	mov	rdi, rbp
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp206:
.LBB1_142:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp207:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp208:
# %bb.143:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp209:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp210:
# %bb.144:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp211:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.5
	mov	edx, 7
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp212:
# %bb.145:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp213:
	mov	edi, offset _ZSt4cout
	mov	esi, r15d
	call	_ZNSolsEi
.Ltmp214:
# %bb.146:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp215:
	mov	rbx, rax
	mov	esi, offset .L.str.8
	mov	edx, 11
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp216:
# %bb.147:                              #   in Loop: Header=BB1_128 Depth=1
	mov	rax, qword ptr [rsp + 160]
	mov	rsi, qword ptr [rax + 8*r12]
.Ltmp217:
	mov	rdi, rbx
	call	_ZNSo9_M_insertImEERSoT_
.Ltmp218:
# %bb.148:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp219:
	mov	rbx, rax
	mov	esi, offset .L.str.9
	mov	edx, 20
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp220:
# %bb.149:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp221:
	mov	rdi, rbx
	mov	esi, r13d
	call	_ZNSolsEi
.Ltmp222:
# %bb.150:                              #   in Loop: Header=BB1_128 Depth=1
	mov	rbx, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	r12, qword ptr [rbx + rax + 240]
	test	r12, r12
	je	.LBB1_245
# %bb.151:                              #   in Loop: Header=BB1_128 Depth=1
	cmp	byte ptr [r12 + 56], 0
	je	.LBB1_153
# %bb.152:                              #   in Loop: Header=BB1_128 Depth=1
	movzx	eax, byte ptr [r12 + 67]
	jmp	.LBB1_155
	.p2align	4, 0x90
.LBB1_153:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp223:
	mov	rdi, r12
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp224:
# %bb.154:                              #   in Loop: Header=BB1_128 Depth=1
	mov	rax, qword ptr [r12]
.Ltmp225:
	mov	rdi, r12
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp226:
.LBB1_155:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp227:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp228:
# %bb.156:                              #   in Loop: Header=BB1_128 Depth=1
.Ltmp229:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp230:
	mov	r12, r15
	jmp	.LBB1_128
.LBB1_157:
.Ltmp86:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.5
	mov	edx, 7
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp87:
# %bb.158:
.Ltmp88:
	mov	edi, offset _ZSt4cout
	mov	esi, r14d
	call	_ZNSolsEi
.Ltmp89:
# %bb.159:
.Ltmp90:
	mov	rbx, rax
	mov	esi, offset .L.str.10
	mov	edx, 41
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp91:
# %bb.160:
.Ltmp92:
	mov	rdi, rbx
	movsd	xmm0, qword ptr [rsp + 16]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	call	_ZNSo9_M_insertIdEERSoT_
.Ltmp93:
# %bb.161:
.Ltmp94:
	mov	rbx, rax
	mov	esi, offset .L.str.7
	mov	edx, 8
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp95:
# %bb.162:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax - 24]
	mov	r14, qword ptr [rbx + rax + 240]
	test	r14, r14
	je	.LBB1_250
# %bb.163:
	cmp	byte ptr [r14 + 56], 0
	je	.LBB1_165
# %bb.164:
	movzx	eax, byte ptr [r14 + 67]
	jmp	.LBB1_167
.LBB1_165:
.Ltmp96:
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp97:
# %bb.166:
	mov	rax, qword ptr [r14]
.Ltmp98:
	mov	rdi, r14
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp99:
.LBB1_167:
.Ltmp100:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp101:
# %bb.168:
.Ltmp102:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp103:
# %bb.169:
.Ltmp104:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.11
	mov	edx, 19
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp105:
# %bb.170:
	mov	rsi, qword ptr [rsp + 72]
.Ltmp106:
	mov	edi, offset _ZSt4cout
	call	_ZNSo9_M_insertImEERSoT_
.Ltmp107:
# %bb.171:
.Ltmp108:
	mov	rbx, rax
	mov	esi, offset .L.str.12
	mov	edx, 14
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp109:
# %bb.172:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax - 24]
	mov	r14, qword ptr [rbx + rax + 240]
	test	r14, r14
	je	.LBB1_250
# %bb.173:
	cmp	byte ptr [r14 + 56], 0
	je	.LBB1_175
# %bb.174:
	movzx	eax, byte ptr [r14 + 67]
	jmp	.LBB1_177
.LBB1_175:
.Ltmp110:
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp111:
# %bb.176:
	mov	rax, qword ptr [r14]
.Ltmp112:
	mov	rdi, r14
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp113:
.LBB1_177:
.Ltmp114:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp115:
# %bb.178:
.Ltmp116:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp117:
# %bb.179:
.Ltmp118:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.11
	mov	edx, 19
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp119:
# %bb.180:
	mov	rsi, qword ptr [rsp + 152]
.Ltmp120:
	mov	edi, offset _ZSt4cout
	call	_ZNSo9_M_insertImEERSoT_
.Ltmp121:
# %bb.181:
.Ltmp122:
	mov	rbx, rax
	mov	esi, offset .L.str.13
	mov	edx, 7
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp123:
# %bb.182:
	mov	rax, qword ptr [rbx]
	mov	rax, qword ptr [rax - 24]
	mov	r14, qword ptr [rbx + rax + 240]
	test	r14, r14
	je	.LBB1_250
# %bb.183:
	cmp	byte ptr [r14 + 56], 0
	je	.LBB1_185
# %bb.184:
	movzx	eax, byte ptr [r14 + 67]
	jmp	.LBB1_187
.LBB1_185:
.Ltmp124:
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp125:
# %bb.186:
	mov	rax, qword ptr [r14]
.Ltmp126:
	mov	rdi, r14
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp127:
.LBB1_187:
.Ltmp128:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp129:
# %bb.188:
.Ltmp130:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp131:
# %bb.189:
.Ltmp132:
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 32]
	mov	edx, 2
	call	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
.Ltmp133:
# %bb.190:
.Ltmp135:
	lea	rsi, [rsp + 80]
	call	_ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE
.Ltmp136:
# %bb.191:
	mov	r14, rax
	lea	rbx, [rsp + 112]
	mov	rsi, qword ptr [rsp + 112]
	test	rsi, rsi
	je	.LBB1_193
# %bb.192:
	mov	rdi, rbx
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB1_193:
	mov	qword ptr [rbx], 0
	mov	rdi, qword ptr [rsp + 80]
	lea	r12, [rsp + 96]
	cmp	rdi, r12
	je	.LBB1_195
# %bb.194:
	call	_ZdlPv
.LBB1_195:
.Ltmp138:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.14
	mov	edx, 32
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp139:
# %bb.196:
.Ltmp140:
	mov	edi, offset _ZSt4cout
	mov	rsi, r14
	call	_ZNSo9_M_insertImEERSoT_
.Ltmp141:
# %bb.197:
.Ltmp142:
	mov	r14, rax
	mov	esi, offset .L.str.15
	mov	edx, 6
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp143:
# %bb.198:
	mov	rax, qword ptr [r14]
	mov	rax, qword ptr [rax - 24]
	mov	r15, qword ptr [r14 + rax + 240]
	test	r15, r15
	je	.LBB1_263
# %bb.199:
	cmp	byte ptr [r15 + 56], 0
	je	.LBB1_201
# %bb.200:
	movzx	eax, byte ptr [r15 + 67]
	jmp	.LBB1_203
.LBB1_201:
.Ltmp144:
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp145:
# %bb.202:
	mov	rax, qword ptr [r15]
.Ltmp146:
	mov	rdi, r15
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp147:
.LBB1_203:
.Ltmp148:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc
.Ltmp149:
# %bb.204:
.Ltmp150:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp151:
# %bb.205:
	mov	r14, qword ptr [rsp + 72]
	mov	rax, qword ptr [rip + _ZSt4cout]
	mov	rcx, qword ptr [rax - 24]
	mov	edx, -261
	and	edx, dword ptr [rcx + _ZSt4cout+24]
	or	edx, 4
	mov	dword ptr [rcx + _ZSt4cout+24], edx
	mov	rax, qword ptr [rax - 24]
	mov	qword ptr [rax + _ZSt4cout+8], 2
.Ltmp152:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.16
	mov	edx, 51
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp153:
# %bb.206:
	movq	xmm1, r14
	punpckldq	xmm1, xmmword ptr [rip + .LCPI1_0] # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	xmm1, xmmword ptr [rip + .LCPI1_1]
	movapd	xmm0, xmm1
	unpckhpd	xmm0, xmm1                      # xmm0 = xmm0[1],xmm1[1]
	addsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + .LCPI1_2]
	divsd	xmm0, qword ptr [rsp + 16]      # 8-byte Folded Reload
.Ltmp154:
	mov	edi, offset _ZSt4cout
	call	_ZNSo9_M_insertIdEERSoT_
.Ltmp155:
# %bb.207:
.Ltmp156:
	mov	r14, rax
	mov	esi, offset .L.str.17
	mov	edx, 5
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp157:
# %bb.208:
	mov	rax, qword ptr [r14]
	mov	rax, qword ptr [rax - 24]
	mov	r15, qword ptr [r14 + rax + 240]
	test	r15, r15
	je	.LBB1_252
# %bb.209:
	cmp	byte ptr [r15 + 56], 0
	je	.LBB1_211
# %bb.210:
	movzx	eax, byte ptr [r15 + 67]
	jmp	.LBB1_213
.LBB1_211:
.Ltmp158:
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp159:
# %bb.212:
	mov	rax, qword ptr [r15]
.Ltmp160:
	mov	rdi, r15
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp161:
.LBB1_213:
.Ltmp162:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc
.Ltmp163:
# %bb.214:
.Ltmp164:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp165:
# %bb.215:
.Ltmp166:
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 32]
	mov	edx, 2
	call	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
.Ltmp167:
# %bb.216:
.Ltmp169:
	lea	rdi, [rsp + 80]
	call	_ZNSt10filesystem10remove_allERKNS_7__cxx114pathE
.Ltmp170:
# %bb.217:
	mov	rsi, qword ptr [rsp + 112]
	test	rsi, rsi
	je	.LBB1_219
# %bb.218:
	mov	rdi, rbx
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB1_219:
	mov	qword ptr [rbx], 0
	mov	rdi, qword ptr [rsp + 80]
	cmp	rdi, r12
	je	.LBB1_221
# %bb.220:
	call	_ZdlPv
.LBB1_221:
.Ltmp172:
	mov	edi, offset _ZSt4cout
	mov	esi, offset .L.str.18
	mov	edx, 32
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp173:
# %bb.222:
	mov	rsi, qword ptr [rsp + 32]
	mov	rdx, qword ptr [rsp + 40]
.Ltmp174:
	mov	edi, offset _ZSt4cout
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp175:
# %bb.223:
	mov	rbx, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	r14, qword ptr [rbx + rax + 240]
	test	r14, r14
	je	.LBB1_252
# %bb.224:
	cmp	byte ptr [r14 + 56], 0
	je	.LBB1_226
# %bb.225:
	movzx	eax, byte ptr [r14 + 67]
	jmp	.LBB1_228
.LBB1_226:
.Ltmp176:
	mov	rdi, r14
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp177:
# %bb.227:
	mov	rax, qword ptr [r14]
.Ltmp178:
	mov	rdi, r14
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp179:
.LBB1_228:
.Ltmp180:
	movsx	esi, al
	mov	rdi, rbx
	call	_ZNSo3putEc
.Ltmp181:
# %bb.229:
.Ltmp182:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp183:
# %bb.230:
	mov	rdi, qword ptr [rsp + 224]
	mov	rax, qword ptr [rsp + 232]
	cmp	rdi, rax
	je	.LBB1_234
# %bb.231:
	mov	rcx, rdi
	.p2align	4, 0x90
.LBB1_232:                              # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rcx], 0
	jne	.LBB1_247
# %bb.233:                              #   in Loop: Header=BB1_232 Depth=1
	add	rcx, 8
	cmp	rcx, rax
	jne	.LBB1_232
.LBB1_234:
	test	rdi, rdi
	je	.LBB1_236
# %bb.235:
	call	_ZdlPv
.LBB1_236:
	mov	rdi, qword ptr [rsp + 160]
	test	rdi, rdi
	je	.LBB1_238
# %bb.237:
	call	_ZdlPv
.LBB1_238:
	mov	rdi, qword ptr [rsp + 192]
	test	rdi, rdi
	je	.LBB1_240
# %bb.239:
	call	_ZdlPv
.LBB1_240:
	mov	rdi, qword ptr [rsp + 32]
	lea	rax, [rsp + 48]
	cmp	rdi, rax
	je	.LBB1_242
# %bb.241:
	call	_ZdlPv
.LBB1_242:
	mov	rdi, qword ptr [rsp + 120]
	lea	rax, [rsp + 136]
	cmp	rdi, rax
	je	.LBB1_244
# %bb.243:
	call	_ZdlPv
.LBB1_244:
	lea	rdi, [rsp + 512]
	call	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	add	rsp, 728
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB1_245:
	.cfi_def_cfa_offset 784
.Ltmp232:
	call	_ZSt16__throw_bad_castv
.Ltmp233:
# %bb.246:
.LBB1_247:
	call	_ZSt9terminatev
.LBB1_248:
.Ltmp235:
	mov	edi, offset .L.str.28
	call	_ZSt20__throw_length_errorPKc
.Ltmp236:
# %bb.249:
.LBB1_250:
.Ltmp190:
	call	_ZSt16__throw_bad_castv
.Ltmp191:
# %bb.251:
.LBB1_252:
.Ltmp184:
	call	_ZSt16__throw_bad_castv
.Ltmp185:
# %bb.253:
.LBB1_254:
	call	_ZSt16__throw_bad_castv
.LBB1_255:
.Ltmp247:
	call	_ZSt16__throw_bad_castv
.Ltmp248:
# %bb.256:
.LBB1_257:
.Ltmp244:
	mov	edi, offset .L.str.26
	call	_ZSt20__throw_length_errorPKc
.Ltmp245:
# %bb.258:
.LBB1_259:
.Ltmp241:
	call	_ZSt16__throw_bad_castv
.Ltmp242:
# %bb.260:
.LBB1_261:
.Ltmp238:
	mov	edi, offset .L.str.27
	call	_ZSt20__throw_length_errorPKc
.Ltmp239:
# %bb.262:
.LBB1_263:
.Ltmp187:
	call	_ZSt16__throw_bad_castv
.Ltmp188:
# %bb.264:
.LBB1_265:
.Ltmp58:
	call	_ZSt16__throw_bad_castv
.Ltmp59:
# %bb.266:
.LBB1_267:
.Ltmp20:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 120]
	lea	rax, [rsp + 136]
	cmp	rdi, rax
	je	.LBB1_308
	jmp	.LBB1_312
.LBB1_268:
.Ltmp17:
	mov	rdi, rax
	call	__clang_call_terminate
.LBB1_269:
.Ltmp14:
	jmp	.LBB1_284
.LBB1_270:
.Ltmp45:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 192]
	test	rdi, rdi
	je	.LBB1_306
	jmp	.LBB1_310
.LBB1_271:
.Ltmp171:
	jmp	.LBB1_274
.LBB1_272:
.Ltmp168:
	jmp	.LBB1_302
.LBB1_273:
.Ltmp137:
.LBB1_274:
	mov	rbx, rax
	lea	rdi, [rsp + 80]
	call	_ZNSt10filesystem7__cxx114pathD2Ev
	jmp	.LBB1_303
.LBB1_275:
.Ltmp134:
	jmp	.LBB1_302
.LBB1_276:
.Ltmp40:
	mov	rbx, rax
	lea	rdi, [rsp + 256]
	call	_ZNSt10filesystem7__cxx114pathD2Ev
	mov	rdi, qword ptr [rsp + 32]
	lea	rax, [rsp + 48]
	cmp	rdi, rax
	je	.LBB1_307
	jmp	.LBB1_311
.LBB1_277:
.Ltmp37:
	jmp	.LBB1_280
.LBB1_278:
.Ltmp240:
	jmp	.LBB1_280
.LBB1_279:
.Ltmp246:
	jmp	.LBB1_280
.LBB1_281:
.Ltmp62:
	mov	rbx, rax
	jmp	.LBB1_304
.LBB1_282:
.Ltmp243:
.LBB1_280:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 32]
	lea	rax, [rsp + 48]
	cmp	rdi, rax
	je	.LBB1_307
	jmp	.LBB1_311
.LBB1_283:
.Ltmp249:
.LBB1_284:
	mov	rbx, rax
	lea	rdi, [rsp + 512]
	call	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB1_285:
.Ltmp189:
	jmp	.LBB1_302
.LBB1_286:
.Ltmp76:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 80]
	test	rdi, rdi
	je	.LBB1_289
# %bb.287:
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax + 8]
	jmp	.LBB1_289
.LBB1_288:
.Ltmp73:
	mov	rbx, rax
.LBB1_289:
	mov	rdi, rbx
	call	__cxa_begin_catch
	mov	rdi, r13
	call	_ZdlPv
.Ltmp77:
	call	__cxa_rethrow
.Ltmp78:
# %bb.290:
.LBB1_291:
.Ltmp237:
	jmp	.LBB1_302
.LBB1_292:
.Ltmp186:
	jmp	.LBB1_302
.LBB1_293:
.Ltmp85:
	jmp	.LBB1_302
.LBB1_294:
.Ltmp67:
	mov	rbx, rax
	mov	rdi, qword ptr [rsp + 80]
	test	rdi, rdi
	je	.LBB1_303
# %bb.295:
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax + 8]
	jmp	.LBB1_303
.LBB1_296:
.Ltmp79:
	mov	rbx, rax
.Ltmp80:
	call	__cxa_end_catch
.Ltmp81:
	jmp	.LBB1_303
.LBB1_297:
.Ltmp82:
	mov	rdi, rax
	call	__clang_call_terminate
.LBB1_298:
.Ltmp70:
	jmp	.LBB1_302
.LBB1_299:
.Ltmp192:
	jmp	.LBB1_302
.LBB1_300:
.Ltmp234:
	jmp	.LBB1_302
.LBB1_301:
.Ltmp231:
.LBB1_302:
	mov	rbx, rax
.LBB1_303:
	lea	rdi, [rsp + 224]
	call	_ZNSt6vectorISt6threadSaIS0_EED2Ev
.LBB1_304:
	mov	rdi, qword ptr [rsp + 160]
	test	rdi, rdi
	jne	.LBB1_309
# %bb.305:
	mov	rdi, qword ptr [rsp + 192]
	test	rdi, rdi
	jne	.LBB1_310
.LBB1_306:
	mov	rdi, qword ptr [rsp + 32]
	lea	rax, [rsp + 48]
	cmp	rdi, rax
	jne	.LBB1_311
.LBB1_307:
	mov	rdi, qword ptr [rsp + 120]
	lea	rax, [rsp + 136]
	cmp	rdi, rax
	jne	.LBB1_312
.LBB1_308:
	lea	rdi, [rsp + 512]
	call	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.LBB1_309:
	call	_ZdlPv
	mov	rdi, qword ptr [rsp + 192]
	test	rdi, rdi
	je	.LBB1_306
.LBB1_310:
	call	_ZdlPv
	mov	rdi, qword ptr [rsp + 32]
	lea	rax, [rsp + 48]
	cmp	rdi, rax
	je	.LBB1_307
.LBB1_311:
	call	_ZdlPv
	mov	rdi, qword ptr [rsp + 120]
	lea	rax, [rsp + 136]
	cmp	rdi, rax
	je	.LBB1_308
.LBB1_312:
	call	_ZdlPv
	lea	rdi, [rsp + 512]
	call	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	_ZN16ProcessingEngine10indexFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end1-_ZN16ProcessingEngine10indexFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp249-.Lfunc_begin0         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp246-.Lfunc_begin0         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp34-.Ltmp23                #   Call between .Ltmp23 and .Ltmp34
	.uleb128 .Ltmp243-.Lfunc_begin0         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin0          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin0          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp240-.Lfunc_begin0         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin0          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp46-.Ltmp44                #   Call between .Ltmp44 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp57-.Ltmp46                #   Call between .Ltmp46 and .Ltmp57
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp68-.Ltmp66                #   Call between .Ltmp66 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp75-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp83-.Ltmp75                #   Call between .Ltmp75 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp230-.Ltmp193              #   Call between .Ltmp193 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin0         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp131-.Ltmp86               #   Call between .Ltmp86 and .Ltmp131
	.uleb128 .Ltmp192-.Lfunc_begin0         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin0         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin0         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp151-.Ltmp138              #   Call between .Ltmp138 and .Ltmp151
	.uleb128 .Ltmp189-.Lfunc_begin0         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp165-.Ltmp152              #   Call between .Ltmp152 and .Ltmp165
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin0         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin0         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp183-.Ltmp172              #   Call between .Ltmp172 and .Ltmp183
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin0         #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin0         #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin0         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp247-.Ltmp185              #   Call between .Ltmp185 and .Ltmp247
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin0         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin0         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin0         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin0         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin0         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 44 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp62-.Lfunc_begin0          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 45 <<
	.uleb128 .Ltmp77-.Ltmp59                #   Call between .Ltmp59 and .Ltmp77
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 46 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin0          # >> Call Site 47 <<
	.uleb128 .Ltmp80-.Ltmp78                #   Call between .Ltmp78 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 48 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin0          # >> Call Site 49 <<
	.uleb128 .Lfunc_end1-.Ltmp81            #   Call between .Ltmp81 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.intel_syntax noprefix
	.text
	.globl	_ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # 
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 48
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	r14, rdx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 64], xmm0
	movups	xmmword ptr [rdi + 48], xmm0
	movups	xmmword ptr [rdi + 32], xmm0
	movups	xmmword ptr [rdi + 16], xmm0
	mov	qword ptr [rdi + 8], 8
	mov	edi, 64
	call	_Znwm
	mov	r15, rax
	mov	qword ptr [rbx], rax
.Ltmp250:
	mov	edi, 512
	call	_Znwm
.Ltmp251:
# %bb.1:
	mov	rcx, r15
	add	rcx, 24
	mov	qword ptr [r15 + 24], rax
	mov	qword ptr [rbx + 40], rcx
	mov	qword ptr [rbx + 24], rax
	mov	rdx, rax
	add	rdx, 512
	mov	qword ptr [rbx + 32], rdx
	mov	qword ptr [rbx + 72], rcx
	mov	qword ptr [rbx + 56], rax
	mov	qword ptr [rbx + 64], rdx
	mov	qword ptr [rbx + 16], rax
	mov	qword ptr [rbx + 48], rax
.Ltmp265:
	lea	rdi, [rsp + 8]
	mov	rsi, r14
	mov	edx, 2
	call	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
.Ltmp266:
# %bb.2:
.Ltmp268:
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	_ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE
.Ltmp269:
# %bb.3:
	lea	r14, [rsp + 40]
	mov	rsi, qword ptr [rsp + 40]
	test	rsi, rsi
	je	.LBB2_5
# %bb.4:
	mov	rdi, r14
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB2_5:
	mov	qword ptr [r14], 0
	mov	rdi, qword ptr [rsp + 8]
	lea	rax, [rsp + 24]
	cmp	rdi, rax
	je	.LBB2_22
# %bb.6:
	call	_ZdlPv
.LBB2_22:
	mov	rax, rbx
	add	rsp, 48
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB2_16:
	.cfi_def_cfa_offset 80
.Ltmp270:
	mov	r15, rdx
	mov	r14, rax
	lea	rdi, [rsp + 8]
	call	_ZNSt10filesystem7__cxx114pathD2Ev
	jmp	.LBB2_17
.LBB2_15:
.Ltmp267:
	mov	r15, rdx
	mov	r14, rax
.LBB2_17:
	cmp	r15d, 2
	jne	.LBB2_24
# %bb.18:
	mov	rdi, r14
	call	__cxa_begin_catch
	mov	r14, rax
.Ltmp271:
	mov	edi, offset _ZSt4cerr
	mov	esi, offset .L.str.24
	mov	edx, 18
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp272:
# %bb.19:
	mov	rax, qword ptr [r14]
	mov	rdi, r14
	call	qword ptr [rax + 16]
.Ltmp273:
	mov	edi, offset _ZSt4cerr
	mov	rsi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
.Ltmp274:
# %bb.20:
.Ltmp275:
	mov	rdi, rax
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
.Ltmp276:
# %bb.21:
.Ltmp281:
	call	__cxa_end_catch
.Ltmp282:
	jmp	.LBB2_22
.LBB2_27:
.Ltmp283:
	mov	r14, rax
	mov	rdi, rbx
	call	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB2_23:
.Ltmp277:
	mov	r14, rax
.Ltmp278:
	call	__cxa_end_catch
.Ltmp279:
.LBB2_24:
	mov	rdi, rbx
	call	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB2_25:
.Ltmp280:
	mov	rdi, rax
	call	__clang_call_terminate
.LBB2_8:
.Ltmp252:
	mov	rdi, rax
	call	__cxa_begin_catch
.Ltmp253:
	call	__cxa_rethrow
.Ltmp254:
# %bb.9:
.LBB2_10:
.Ltmp255:
	mov	r14, rax
.Ltmp256:
	call	__cxa_end_catch
.Ltmp257:
# %bb.11:
	mov	rdi, r14
	call	__cxa_begin_catch
	mov	rdi, qword ptr [rbx]
	call	_ZdlPv
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.Ltmp259:
	call	__cxa_rethrow
.Ltmp260:
# %bb.12:
.LBB2_13:
.Ltmp261:
	mov	r14, rax
.Ltmp262:
	call	__cxa_end_catch
.Ltmp263:
# %bb.14:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.LBB2_26:
.Ltmp264:
	mov	rdi, rax
	call	__clang_call_terminate
.LBB2_7:
.Ltmp258:
	mov	rdi, rax
	call	__clang_call_terminate
.Lfunc_end2:
	.size	_ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end2-_ZN16ProcessingEngine12crawlDatasetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp250-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp250
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp265-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin1         #     jumps to .Ltmp267
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp268-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp270-.Lfunc_begin1         #     jumps to .Ltmp270
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp269-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp271-.Ltmp269              #   Call between .Ltmp269 and .Ltmp271
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin1         # >> Call Site 7 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin1         # >> Call Site 8 <<
	.uleb128 .Ltmp276-.Ltmp273              #   Call between .Ltmp273 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin1         #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin1         # >> Call Site 9 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin1         #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin1         # >> Call Site 10 <<
	.uleb128 .Ltmp278-.Ltmp282              #   Call between .Ltmp282 and .Ltmp278
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin1         # >> Call Site 11 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin1         #     jumps to .Ltmp280
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp279-.Lfunc_begin1         # >> Call Site 12 <<
	.uleb128 .Ltmp253-.Ltmp279              #   Call between .Ltmp279 and .Ltmp253
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 13 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin1         #     jumps to .Ltmp255
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp256-.Lfunc_begin1         # >> Call Site 14 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 15 <<
	.uleb128 .Ltmp259-.Ltmp257              #   Call between .Ltmp257 and .Ltmp259
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin1         # >> Call Site 16 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin1         # >> Call Site 17 <<
	.uleb128 .Ltmp263-.Ltmp262              #   Call between .Ltmp262 and .Ltmp263
	.uleb128 .Ltmp264-.Lfunc_begin1         #     jumps to .Ltmp264
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp263-.Lfunc_begin1         # >> Call Site 18 <<
	.uleb128 .Lfunc_end2-.Ltmp263           #   Call between .Ltmp263 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	0                               # >> Action Record 1 <<
                                        #   Cleanup
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	1                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	_ZTISt9exception                # TypeInfo 2
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE,"axG",@progbits,_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE,comdat
	.weak	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE # -- Begin function _ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE,@function
_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE: # 
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	r12
	.cfi_def_cfa_offset 32
	push	rbx
	.cfi_def_cfa_offset 40
	push	rax
	.cfi_def_cfa_offset 48
	.cfi_offset rbx, -40
	.cfi_offset r12, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rbx, rdi
	mov	r14, qword ptr [rsi]
	mov	r15, qword ptr [rsi + 8]
	lea	r12, [rdi + 16]
	mov	qword ptr [rdi], r12
	test	r14, r14
	jne	.LBB3_2
# %bb.1:
	test	r15, r15
	jne	.LBB3_18
.LBB3_2:
	mov	qword ptr [rsp], r15
	mov	rax, r12
	cmp	r15, 16
	jb	.LBB3_4
# %bb.3:
	mov	rsi, rsp
	mov	rdi, rbx
	xor	edx, edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	mov	qword ptr [rbx], rax
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rbx + 16], rcx
.LBB3_4:
	test	r15, r15
	je	.LBB3_8
# %bb.5:
	cmp	r15, 1
	jne	.LBB3_7
# %bb.6:
	movzx	ecx, byte ptr [r14]
	mov	byte ptr [rax], cl
	jmp	.LBB3_8
.LBB3_7:
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r15
	call	_intel_fast_memcpy@PLT
.LBB3_8:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rcx, qword ptr [rbx]
	mov	byte ptr [rcx + rax], 0
	lea	r15, [rbx + 32]
.Ltmp284:
	mov	rdi, r15
	call	_ZNSt10filesystem7__cxx114path5_ListC1Ev
.Ltmp285:
# %bb.9:
.Ltmp287:
	mov	rdi, rbx
	call	_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv
.Ltmp288:
# %bb.10:
	add	rsp, 8
	.cfi_def_cfa_offset 40
	pop	rbx
	.cfi_def_cfa_offset 32
	pop	r12
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB3_18:
	.cfi_def_cfa_offset 48
	mov	edi, offset .L.str.25
	call	_ZSt19__throw_logic_errorPKc
.LBB3_12:
.Ltmp289:
	mov	r14, rax
	mov	rsi, qword ptr [r15]
	test	rsi, rsi
	je	.LBB3_14
# %bb.13:
	mov	rdi, r15
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB3_14:
	mov	qword ptr [r15], 0
	jmp	.LBB3_15
.LBB3_11:
.Ltmp286:
	mov	r14, rax
.LBB3_15:
	mov	rdi, qword ptr [rbx]
	cmp	rdi, r12
	je	.LBB3_17
# %bb.16:
	call	_ZdlPv
.LBB3_17:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE, .Lfunc_end3-_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
	.cfi_endproc
	.section	.gcc_except_table._ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE,"aG",@progbits,_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp284-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp286-.Lfunc_begin2         #     jumps to .Ltmp286
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.uleb128 .Ltmp289-.Lfunc_begin2         #     jumps to .Ltmp289
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp288           #   Call between .Ltmp288 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZNSt10filesystem7__cxx114pathD2Ev,"axG",@progbits,_ZNSt10filesystem7__cxx114pathD2Ev,comdat
	.weak	_ZNSt10filesystem7__cxx114pathD2Ev # -- Begin function _ZNSt10filesystem7__cxx114pathD2Ev
	.p2align	4, 0x90
	.type	_ZNSt10filesystem7__cxx114pathD2Ev,@function
_ZNSt10filesystem7__cxx114pathD2Ev:     # 
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rdi
	lea	r14, [rdi + 32]
	mov	rsi, qword ptr [rdi + 32]
	test	rsi, rsi
	je	.LBB4_2
# %bb.1:
	mov	rdi, r14
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB4_2:
	mov	qword ptr [r14], 0
	mov	rdi, qword ptr [rbx]
	add	rbx, 16
	add	rsp, 8
	cmp	rdi, rbx
	je	.LBB4_3
# %bb.4:
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.LBB4_3:
	.cfi_def_cfa_offset 32
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end4:
	.size	_ZNSt10filesystem7__cxx114pathD2Ev, .Lfunc_end4-_ZNSt10filesystem7__cxx114pathD2Ev
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.text
	.globl	_ZN16ProcessingEngine18initializeCharDictEPc # -- Begin function _ZN16ProcessingEngine18initializeCharDictEPc
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine18initializeCharDictEPc,@function
_ZN16ProcessingEngine18initializeCharDictEPc: # 
	.cfi_startproc
# %bb.0:
	push	r14
	.cfi_def_cfa_offset 16
	push	rbx
	.cfi_def_cfa_offset 24
	push	rax
	.cfi_def_cfa_offset 32
	.cfi_offset rbx, -24
	.cfi_offset r14, -16
	mov	rbx, rsi
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rsi + 240], xmm0
	movdqu	xmmword ptr [rsi + 224], xmm0
	movdqu	xmmword ptr [rsi + 208], xmm0
	movdqu	xmmword ptr [rsi + 192], xmm0
	movdqu	xmmword ptr [rsi + 176], xmm0
	movdqu	xmmword ptr [rsi + 160], xmm0
	movdqu	xmmword ptr [rsi + 144], xmm0
	movdqu	xmmword ptr [rsi + 128], xmm0
	movdqu	xmmword ptr [rsi + 112], xmm0
	movdqu	xmmword ptr [rsi + 96], xmm0
	movdqu	xmmword ptr [rsi + 80], xmm0
	movdqu	xmmword ptr [rsi + 64], xmm0
	movdqu	xmmword ptr [rsi + 48], xmm0
	movdqu	xmmword ptr [rsi + 32], xmm0
	movdqu	xmmword ptr [rsi + 16], xmm0
	movdqu	xmmword ptr [rsi], xmm0
	xor	r14d, r14d
	jmp	.LBB5_1
	.p2align	4, 0x90
.LBB5_17:                               #   in Loop: Header=BB5_1 Depth=1
	add	r14, 8
	cmp	r14, 256
	je	.LBB5_18
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movsx	edi, r14b
	call	isalnum
	test	eax, eax
	jne	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14], 0
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 1]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_5
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 1], 0
.LBB5_5:                                #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 2]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 2], 0
.LBB5_7:                                #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 3]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 3], 0
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 4]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_11
# %bb.10:                               #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 4], 0
.LBB5_11:                               #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 5]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_13
# %bb.12:                               #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 5], 0
.LBB5_13:                               #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 6]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 6], 0
.LBB5_15:                               #   in Loop: Header=BB5_1 Depth=1
	lea	eax, [r14 + 7]
	movsx	edi, al
	call	isalnum
	test	eax, eax
	jne	.LBB5_17
# %bb.16:                               #   in Loop: Header=BB5_1 Depth=1
	mov	byte ptr [rbx + r14 + 7], 0
	jmp	.LBB5_17
.LBB5_18:
	add	rsp, 8
	.cfi_def_cfa_offset 24
	pop	rbx
	.cfi_def_cfa_offset 16
	pop	r14
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end5:
	.size	_ZN16ProcessingEngine18initializeCharDictEPc, .Lfunc_end5-_ZN16ProcessingEngine18initializeCharDictEPc
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi
.LCPI6_0:
	.quad	0x3e112e0be826d695              #  1.0000000000000001E-9
	.text
	.globl	_ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi,@function
_ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi: # 
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 1592
	.cfi_def_cfa_offset 1648
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	qword ptr [rsp + 152], r9       # 8-byte Spill
	mov	rbx, r8
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	mov	r12, rdx
	mov	ebp, esi
	mov	ecx, dword ptr [rsp + 1704]
	test	ecx, ecx
	jle	.LBB6_8
# %bb.1:
	mov	eax, ebp
	cdq
	idiv	ecx
	mov	r14d, edx
	mov	edi, edx
	call	numa_run_on_node
	test	eax, eax
	jns	.LBB6_7
# %bb.2:
	mov	edi, offset _ZSt4cerr
	mov	esi, offset .L.str.19
	mov	edx, 47
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	mov	rax, qword ptr [rip + _ZSt4cerr]
	mov	rax, qword ptr [rax - 24]
	mov	r15, qword ptr [rax + _ZSt4cerr+240]
	test	r15, r15
	je	.LBB6_135
# %bb.3:
	cmp	byte ptr [r15 + 56], 0
	je	.LBB6_5
# %bb.4:
	movzx	eax, byte ptr [r15 + 67]
	jmp	.LBB6_6
.LBB6_5:
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	mov	rax, qword ptr [r15]
	mov	rdi, r15
	mov	esi, 10
	call	qword ptr [rax + 48]
.LBB6_6:
	movsx	esi, al
	mov	edi, offset _ZSt4cerr
	call	_ZNSo3putEc
	mov	rdi, rax
	call	_ZNSo5flushEv
.LBB6_7:
	mov	edi, r14d
	call	numa_set_preferred
.LBB6_8:
	mov	qword ptr [rsp + 176], rbx      # 8-byte Spill
	lea	rbx, [rsp + 40]
	mov	qword ptr [rsp + 24], rbx
	mov	qword ptr [rsp + 32], 0
	mov	byte ptr [rsp + 40], 0
	mov	rdi, qword ptr [rsp + 72]       # 8-byte Reload
	call	pthread_mutex_lock
	test	eax, eax
	jne	.LBB6_127
# %bb.9:
	dec	ebp
	movsxd	rax, ebp
	mov	qword ptr [rsp + 160], rax      # 8-byte Spill
	xorpd	xmm0, xmm0
	movsd	qword ptr [rsp + 64], xmm0      # 8-byte Spill
	mov	r13, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rbp, qword ptr [rsp + 152]      # 8-byte Reload
	jmp	.LBB6_12
.LBB6_10:                               #   in Loop: Header=BB6_12 Depth=1
	movsd	xmm0, qword ptr [rsp + 64]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	xmm0, qword ptr [rsp + 56]      # 8-byte Folded Reload
	movsd	qword ptr [rsp + 64], xmm0      # 8-byte Spill
	.p2align	4, 0x90
.LBB6_11:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [rsp + 24], rbx
	mov	qword ptr [rsp + 32], 0
	mov	byte ptr [rsp + 40], 0
	mov	rdi, r13
	call	pthread_mutex_lock
	test	eax, eax
	jne	.LBB6_127
.LBB6_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_51 Depth 2
                                        #     Child Loop BB6_100 Depth 2
	mov	rsi, qword ptr [r12 + 16]
	cmp	qword ptr [r12 + 48], rsi
	je	.LBB6_124
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp290:
	lea	rdi, [rsp + 24]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.Ltmp291:
# %bb.14:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [r12 + 16]
	mov	rdx, qword ptr [r12 + 32]
	add	rdx, -32
	lea	rcx, [rax + 16]
	mov	rdi, qword ptr [rax]
	cmp	rax, rdx
	je	.LBB6_18
# %bb.15:                               #   in Loop: Header=BB6_12 Depth=1
	cmp	rdi, rcx
	je	.LBB6_17
# %bb.16:                               #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
	mov	rax, qword ptr [r12 + 16]
.LBB6_17:                               #   in Loop: Header=BB6_12 Depth=1
	add	rax, 32
	jmp	.LBB6_21
	.p2align	4, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_12 Depth=1
	cmp	rdi, rcx
	je	.LBB6_20
# %bb.19:                               #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_20:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, qword ptr [r12 + 24]
	call	_ZdlPv
	mov	rax, qword ptr [r12 + 40]
	lea	rcx, [rax + 8]
	mov	qword ptr [r12 + 40], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [r12 + 24], rax
	lea	rcx, [rax + 512]
	mov	qword ptr [r12 + 32], rcx
.LBB6_21:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [r12 + 16], rax
	mov	rdi, r13
	call	pthread_mutex_unlock
	cmp	qword ptr [rsp + 32], 0
	je	.LBB6_23
# %bb.22:                               #   in Loop: Header=BB6_12 Depth=1
	mov	esi, offset .L.str.20
	mov	ecx, 2
	lea	rdi, [rsp + 24]
	xor	edx, edx
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm
	cmp	rax, -1
	je	.LBB6_25
.LBB6_23:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, qword ptr [rsp + 24]
	cmp	rdi, rbx
	je	.LBB6_11
.LBB6_24:                               #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_25:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp293:
	lea	r14, [rsp + 1072]
	mov	rdi, r14
	lea	rsi, [rsp + 24]
	mov	edx, 2
	call	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
.Ltmp294:
# %bb.26:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp296:
	mov	rdi, r14
	call	_ZNSt10filesystem9file_sizeERKNS_7__cxx114pathE
.Ltmp297:
# %bb.27:                               #   in Loop: Header=BB6_12 Depth=1
	mov	r15, rax
	lea	r14, [rsp + 1104]
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.LBB6_29
# %bb.28:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, r14
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB6_29:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [r14], 0
	mov	rdi, qword ptr [rsp + 1072]
	lea	rax, [rsp + 1088]
	cmp	rdi, rax
	je	.LBB6_31
# %bb.30:                               #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_31:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, rbp
	call	pthread_mutex_lock
	test	eax, eax
	jne	.LBB6_129
# %bb.32:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [rsp + 1672]
	add	qword ptr [rax], r15
	mov	rdi, rbp
	call	pthread_mutex_unlock
	mov	rax, qword ptr [rsp + 1696]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 160]      # 8-byte Reload
	add	qword ptr [rax + 8*rcx], r15
.Ltmp302:
	lea	rdi, [rsp + 1072]
	lea	rsi, [rsp + 24]
	mov	edx, 4
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
.Ltmp303:
# %bb.33:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [rsp + 1072]
	mov	rax, qword ptr [rax - 24]
	test	byte ptr [rsp + rax + 1104], 5
	je	.LBB6_44
# %bb.34:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp305:
	mov	edi, offset _ZSt4cerr
	mov	esi, offset .L.str.21
	mov	edx, 20
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp306:
# %bb.35:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rsi, qword ptr [rsp + 24]
	mov	rdx, qword ptr [rsp + 32]
.Ltmp307:
	mov	edi, offset _ZSt4cerr
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp308:
# %bb.36:                               #   in Loop: Header=BB6_12 Depth=1
	mov	r14, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	r15, qword ptr [r14 + rax + 240]
	test	r15, r15
	je	.LBB6_131
# %bb.37:                               #   in Loop: Header=BB6_12 Depth=1
	cmp	byte ptr [r15 + 56], 0
	je	.LBB6_39
# %bb.38:                               #   in Loop: Header=BB6_12 Depth=1
	movzx	eax, byte ptr [r15 + 67]
	jmp	.LBB6_41
.LBB6_39:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp309:
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp310:
# %bb.40:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [r15]
.Ltmp311:
	mov	rdi, r15
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp312:
.LBB6_41:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp313:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc
.Ltmp314:
# %bb.42:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp315:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp316:
# %bb.43:                               #   in Loop: Header=BB6_12 Depth=1
	lea	rdi, [rsp + 1072]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	rdi, qword ptr [rsp + 24]
	cmp	rdi, rbx
	jne	.LBB6_24
	jmp	.LBB6_11
.LBB6_44:                               #   in Loop: Header=BB6_12 Depth=1
	lea	rdi, [r15 + 1]
.Ltmp321:
	call	_Znam
.Ltmp322:
# %bb.45:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp323:
	mov	r14, rax
	lea	rdi, [rsp + 1072]
	mov	rsi, rax
	mov	rdx, r15
	call	_ZNSi4readEPcl
.Ltmp324:
# %bb.46:                               #   in Loop: Header=BB6_12 Depth=1
	mov	byte ptr [r14 + r15], 0
	call	_ZNSt6chrono3_V212system_clock3nowEv
	mov	qword ptr [rsp + 168], rax      # 8-byte Spill
	movzx	eax, byte ptr [r14]
	mov	rcx, qword ptr [rsp + 1648]
	movzx	ebp, byte ptr [rcx + rax]
	mov	ecx, ebp
	and	cl, al
	mov	byte ptr [r14], cl
	cmp	bpl, -1
	je	.LBB6_67
# %bb.47:                               #   in Loop: Header=BB6_12 Depth=1
	xor	eax, eax
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	xor	r13d, r13d
	cmp	r15, 2
	mov	qword ptr [rsp + 144], r14      # 8-byte Spill
	jb	.LBB6_69
.LBB6_48:                               #   in Loop: Header=BB6_12 Depth=1
	dec	r15
	inc	r14
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	jmp	.LBB6_51
	.p2align	4, 0x90
.LBB6_49:                               #   in Loop: Header=BB6_51 Depth=2
	mov	qword ptr [rcx], r14
	add	rcx, 8
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
.LBB6_50:                               #   in Loop: Header=BB6_51 Depth=2
	inc	r14
	mov	rcx, r13
	dec	r15
	je	.LBB6_70
.LBB6_51:                               #   Parent Loop BB6_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	ecx, ebp
	movzx	edx, byte ptr [r14]
	mov	rsi, qword ptr [rsp + 1648]
	movzx	ebp, byte ptr [rsi + rdx]
	mov	esi, ebp
	and	sil, dl
	mov	byte ptr [r14], sil
	test	cl, cl
	jne	.LBB6_50
# %bb.52:                               #   in Loop: Header=BB6_51 Depth=2
	cmp	bpl, -1
	movabs	rdx, 1152921504606846975
	jne	.LBB6_50
# %bb.53:                               #   in Loop: Header=BB6_51 Depth=2
	mov	rcx, qword ptr [rsp + 16]       # 8-byte Reload
	cmp	rcx, rax
	jne	.LBB6_49
# %bb.54:                               #   in Loop: Header=BB6_51 Depth=2
	sub	rcx, r13
	movabs	rax, 9223372036854775800
	cmp	rcx, rax
	je	.LBB6_133
# %bb.55:                               #   in Loop: Header=BB6_51 Depth=2
	mov	rax, rcx
	mov	qword ptr [rsp + 16], rcx       # 8-byte Spill
	mov	rbx, rcx
	sar	rbx, 3
	cmp	rbx, 1
	mov	rax, rbx
	adc	rax, 0
	lea	rcx, [rax + rbx]
	cmp	rcx, rdx
	jb	.LBB6_56
# %bb.64:                               #   in Loop: Header=BB6_51 Depth=2
	mov	rcx, rdx
	add	rax, rbx
	jae	.LBB6_65
.LBB6_57:                               #   in Loop: Header=BB6_51 Depth=2
	mov	byte ptr [rsp + 56], bpl        # 1-byte Spill
	test	rdx, rdx
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	je	.LBB6_66
.LBB6_58:                               #   in Loop: Header=BB6_51 Depth=2
	lea	rdi, [8*rdx]
.Ltmp329:
	call	_Znwm
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
	mov	rbp, rax
.Ltmp330:
# %bb.59:                               #   in Loop: Header=BB6_51 Depth=2
	mov	qword ptr [rbp + 8*rbx], r14
	test	rbx, rbx
	jle	.LBB6_61
.LBB6_60:                               #   in Loop: Header=BB6_51 Depth=2
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 16]       # 8-byte Reload
	call	_intel_fast_memcpy@PLT
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
.LBB6_61:                               #   in Loop: Header=BB6_51 Depth=2
	test	r13, r13
	lea	rbx, [rsp + 40]
	je	.LBB6_63
# %bb.62:                               #   in Loop: Header=BB6_51 Depth=2
	mov	rdi, r13
	call	_ZdlPv
	mov	rdx, qword ptr [rsp + 8]        # 8-byte Reload
.LBB6_63:                               #   in Loop: Header=BB6_51 Depth=2
	mov	r13, rbp
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	add	rax, rbp
	add	rax, 8
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	lea	rax, [8*rdx]
	add	rax, rbp
	movzx	ebp, byte ptr [rsp + 56]        # 1-byte Folded Reload
	jmp	.LBB6_50
.LBB6_56:                               #   in Loop: Header=BB6_51 Depth=2
	add	rax, rbx
	jb	.LBB6_57
.LBB6_65:                               #   in Loop: Header=BB6_51 Depth=2
	mov	rdx, rcx
	mov	byte ptr [rsp + 56], bpl        # 1-byte Spill
	test	rdx, rdx
	mov	qword ptr [rsp + 8], rdx        # 8-byte Spill
	jne	.LBB6_58
.LBB6_66:                               #   in Loop: Header=BB6_51 Depth=2
	xor	ebp, ebp
	mov	qword ptr [rbp + 8*rbx], r14
	test	rbx, rbx
	jg	.LBB6_60
	jmp	.LBB6_61
.LBB6_67:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp326:
	mov	edi, 8
	call	_Znwm
.Ltmp327:
# %bb.68:                               #   in Loop: Header=BB6_12 Depth=1
	mov	r13, rax
	mov	qword ptr [rax], r14
	add	rax, 8
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	cmp	r15, 2
	mov	qword ptr [rsp + 144], r14      # 8-byte Spill
	jae	.LBB6_48
.LBB6_69:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rcx, r13
.LBB6_70:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [rsp + 8], rcx        # 8-byte Spill
	call	_ZNSt6chrono3_V212system_clock3nowEv
	sub	rax, qword ptr [rsp + 168]      # 8-byte Folded Reload
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, qword ptr [rip + .LCPI6_0]
	movsd	qword ptr [rsp + 56], xmm0      # 8-byte Spill
	mov	r14, qword ptr [rsp + 176]      # 8-byte Reload
	mov	rdi, r14
	call	pthread_mutex_lock
	test	eax, eax
	jne	.LBB6_136
# %bb.71:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [rsp + 16]       # 8-byte Reload
	sub	rax, qword ptr [rsp + 8]        # 8-byte Folded Reload
	sar	rax, 3
	mov	rcx, qword ptr [rsp + 1680]
	add	qword ptr [rcx], rax
	mov	rdi, r14
	call	pthread_mutex_unlock
	lea	rax, [rsp + 96]
	mov	qword ptr [rsp + 80], rax
	mov	r15, qword ptr [rsp + 24]
	mov	r13, qword ptr [rsp + 32]
	mov	qword ptr [rsp + 560], r13
	cmp	r13, 16
	jb	.LBB6_74
# %bb.72:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp335:
	lea	rdi, [rsp + 80]
	lea	rsi, [rsp + 560]
	xor	edx, edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp336:
# %bb.73:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [rsp + 80], rax
	mov	rcx, qword ptr [rsp + 560]
	mov	qword ptr [rsp + 96], rcx
.LBB6_74:                               #   in Loop: Header=BB6_12 Depth=1
	test	r13, r13
	je	.LBB6_78
# %bb.75:                               #   in Loop: Header=BB6_12 Depth=1
	cmp	r13, 1
	jne	.LBB6_77
# %bb.76:                               #   in Loop: Header=BB6_12 Depth=1
	movzx	ecx, byte ptr [r15]
	mov	byte ptr [rax], cl
	jmp	.LBB6_78
.LBB6_77:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r13
	call	_intel_fast_memcpy@PLT
.LBB6_78:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [rsp + 560]
	mov	qword ptr [rsp + 88], rax
	mov	rcx, qword ptr [rsp + 80]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rsp + 1656]
	mov	rdx, qword ptr [rax + 8]
	mov	rax, qword ptr [rsp + 88]
	mov	rsi, qword ptr [rsp + 1664]
	mov	rcx, qword ptr [rsi]
	mov	r8, qword ptr [rsi + 8]
	cmp	rax, rdx
	cmovb	rdx, rax
.Ltmp338:
	lea	r14, [rsp + 80]
	mov	rdi, r14
	xor	esi, esi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.Ltmp339:
# %bb.79:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp341:
	lea	r13, [rsp + 184]
	mov	rdi, r13
	mov	rsi, r14
	mov	edx, 2
	call	_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE
.Ltmp342:
	lea	r14, [rsp + 592]
	lea	r15, [rsp + 216]
# %bb.80:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp344:
	lea	rbp, [rsp + 560]
	mov	rdi, rbp
	mov	rsi, r13
	call	_ZNKSt10filesystem7__cxx114path11parent_pathEv
.Ltmp345:
# %bb.81:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp347:
	mov	rdi, rbp
	call	_ZNSt10filesystem18create_directoriesERKNS_7__cxx114pathE
.Ltmp348:
# %bb.82:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.LBB6_84
# %bb.83:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, r14
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB6_84:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [r14], 0
	mov	rdi, qword ptr [rsp + 560]
	lea	rax, [rsp + 576]
	cmp	rdi, rax
	je	.LBB6_86
# %bb.85:                               #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_86:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rsi, qword ptr [r15]
	test	rsi, rsi
	lea	r14, [rsp + 80]
	je	.LBB6_88
# %bb.87:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, r15
	call	_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE
.LBB6_88:                               #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [r15], 0
	mov	rdi, qword ptr [rsp + 184]
	lea	rax, [rsp + 200]
	cmp	rdi, rax
	je	.LBB6_90
# %bb.89:                               #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_90:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp350:
	lea	rdi, [rsp + 560]
	mov	rsi, r14
	mov	edx, 16
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode
.Ltmp351:
# %bb.91:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [rsp + 560]
	mov	rax, qword ptr [rax - 24]
	test	byte ptr [rsp + rax + 592], 5
	je	.LBB6_97
# %bb.92:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp353:
	mov	edi, offset _ZSt4cerr
	mov	esi, offset .L.str.22
	mov	edx, 28
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp354:
	lea	r13, [rsp + 560]
# %bb.93:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rsi, qword ptr [rsp + 80]
	mov	rdx, qword ptr [rsp + 88]
.Ltmp355:
	mov	edi, offset _ZSt4cerr
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp356:
# %bb.94:                               #   in Loop: Header=BB6_12 Depth=1
	mov	r14, rax
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax - 24]
	mov	r15, qword ptr [r14 + rax + 240]
	test	r15, r15
	je	.LBB6_138
# %bb.95:                               #   in Loop: Header=BB6_12 Depth=1
	cmp	byte ptr [r15 + 56], 0
	je	.LBB6_107
# %bb.96:                               #   in Loop: Header=BB6_12 Depth=1
	movzx	eax, byte ptr [r15 + 67]
	jmp	.LBB6_109
.LBB6_97:                               #   in Loop: Header=BB6_12 Depth=1
.Ltmp369:
	lea	rdi, [rsp + 184]
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev
.Ltmp370:
	lea	r13, [rsp + 560]
# %bb.98:                               #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [rsp + 8]        # 8-byte Reload
	cmp	rax, qword ptr [rsp + 16]       # 8-byte Folded Reload
	je	.LBB6_105
# %bb.99:                               #   in Loop: Header=BB6_12 Depth=1
	mov	r14, rax
	.p2align	4, 0x90
.LBB6_100:                              #   Parent Loop BB6_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	mov	r15, qword ptr [r14]
	test	r15, r15
	je	.LBB6_102
# %bb.101:                              #   in Loop: Header=BB6_100 Depth=2
	mov	rdi, r15
	call	strlen
.Ltmp372:
	lea	rdi, [rsp + 184]
	mov	rsi, r15
	mov	rdx, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp373:
	jmp	.LBB6_103
	.p2align	4, 0x90
.LBB6_102:                              #   in Loop: Header=BB6_100 Depth=2
	mov	rax, qword ptr [rsp + 184]
	mov	rax, qword ptr [rax - 24]
	lea	rdi, [rsp + rax]
	add	rdi, 184
	mov	esi, dword ptr [rsp + rax + 216]
	or	esi, 1
.Ltmp374:
	call	_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate
.Ltmp375:
.LBB6_103:                              #   in Loop: Header=BB6_100 Depth=2
.Ltmp376:
	mov	esi, offset .L.str.23
	mov	edx, 1
	lea	rdi, [rsp + 184]
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp377:
# %bb.104:                              #   in Loop: Header=BB6_100 Depth=2
	add	r14, 8
	cmp	r14, qword ptr [rsp + 16]       # 8-byte Folded Reload
	jne	.LBB6_100
.LBB6_105:                              #   in Loop: Header=BB6_12 Depth=1
	lea	rax, [rsp + 128]
	mov	qword ptr [rsp + 112], rax
	mov	qword ptr [rsp + 120], 0
	mov	byte ptr [rsp + 128], 0
	mov	rax, qword ptr [rsp + 232]
	test	rax, rax
	je	.LBB6_111
# %bb.106:                              #   in Loop: Header=BB6_12 Depth=1
	mov	r8, qword ptr [rsp + 216]
	mov	rcx, qword ptr [rsp + 224]
	cmp	rax, r8
	cmova	r8, rax
	sub	r8, rcx
.Ltmp379:
	lea	rdi, [rsp + 112]
	xor	esi, esi
	xor	edx, edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm
.Ltmp380:
	mov	r14, qword ptr [rsp + 144]      # 8-byte Reload
	jmp	.LBB6_112
.LBB6_107:                              #   in Loop: Header=BB6_12 Depth=1
.Ltmp357:
	mov	rdi, r15
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
.Ltmp358:
# %bb.108:                              #   in Loop: Header=BB6_12 Depth=1
	mov	rax, qword ptr [r15]
.Ltmp359:
	mov	rdi, r15
	mov	esi, 10
	call	qword ptr [rax + 48]
.Ltmp360:
.LBB6_109:                              #   in Loop: Header=BB6_12 Depth=1
.Ltmp361:
	movsx	esi, al
	mov	rdi, r14
	call	_ZNSo3putEc
.Ltmp362:
# %bb.110:                              #   in Loop: Header=BB6_12 Depth=1
.Ltmp363:
	mov	rdi, rax
	call	_ZNSo5flushEv
.Ltmp364:
	jmp	.LBB6_118
.LBB6_111:                              #   in Loop: Header=BB6_12 Depth=1
.Ltmp381:
	lea	rdi, [rsp + 112]
	lea	rsi, [rsp + 264]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_
.Ltmp382:
	mov	r14, qword ptr [rsp + 144]      # 8-byte Reload
.LBB6_112:                              #   in Loop: Header=BB6_12 Depth=1
	mov	rsi, qword ptr [rsp + 112]
	mov	rdx, qword ptr [rsp + 120]
.Ltmp384:
	mov	rdi, r13
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
.Ltmp385:
# %bb.113:                              #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, qword ptr [rsp + 112]
	lea	rax, [rsp + 128]
	cmp	rdi, rax
	je	.LBB6_115
# %bb.114:                              #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_115:                              #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, r14
	call	_ZdaPv
	mov	rax, qword ptr [rip + _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE]
	mov	qword ptr [rsp + 184], rax
	mov	rax, qword ptr [rax - 24]
	mov	rcx, qword ptr [rip + _ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE+24]
	mov	qword ptr [rsp + rax + 184], rcx
	mov	qword ptr [rsp + 192], offset _ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE+16
	mov	rdi, qword ptr [rsp + 264]
	lea	rax, [rsp + 280]
	cmp	rdi, rax
	je	.LBB6_117
# %bb.116:                              #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_117:                              #   in Loop: Header=BB6_12 Depth=1
	mov	qword ptr [rsp + 192], offset _ZTVSt15basic_streambufIcSt11char_traitsIcEE+16
	lea	rdi, [rsp + 248]
	call	_ZNSt6localeD1Ev
	lea	rdi, [rsp + 296]
	call	_ZNSt8ios_baseD2Ev
.LBB6_118:                              #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, r13
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
	mov	rdi, qword ptr [rsp + 80]
	lea	rax, [rsp + 96]
	cmp	rdi, rax
	je	.LBB6_120
# %bb.119:                              #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_120:                              #   in Loop: Header=BB6_12 Depth=1
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 72]       # 8-byte Reload
	mov	rbp, qword ptr [rsp + 152]      # 8-byte Reload
	je	.LBB6_122
# %bb.121:                              #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
.LBB6_122:                              #   in Loop: Header=BB6_12 Depth=1
	lea	rdi, [rsp + 1072]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
	mov	rdi, qword ptr [rsp + 24]
	cmp	rdi, rbx
	je	.LBB6_10
# %bb.123:                              #   in Loop: Header=BB6_12 Depth=1
	call	_ZdlPv
	jmp	.LBB6_10
.LBB6_124:
	mov	rdi, r13
	call	pthread_mutex_unlock
	mov	rdi, qword ptr [rsp + 24]
	cmp	rdi, rbx
	je	.LBB6_126
# %bb.125:
	call	_ZdlPv
.LBB6_126:
	mov	rax, qword ptr [rsp + 1688]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 160]      # 8-byte Reload
	movsd	xmm0, qword ptr [rsp + 64]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rax + 8*rcx], xmm0
	add	rsp, 1592
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB6_127:
	.cfi_def_cfa_offset 1648
.Ltmp390:
	mov	edi, eax
	call	_ZSt20__throw_system_errori
.Ltmp391:
# %bb.128:
.LBB6_129:
.Ltmp299:
	mov	edi, eax
	call	_ZSt20__throw_system_errori
.Ltmp300:
# %bb.130:
.LBB6_131:
.Ltmp318:
	call	_ZSt16__throw_bad_castv
.Ltmp319:
# %bb.132:
.LBB6_133:
.Ltmp387:
	mov	edi, offset .L.str.28
	call	_ZSt20__throw_length_errorPKc
.Ltmp388:
# %bb.134:
.LBB6_135:
	call	_ZSt16__throw_bad_castv
.LBB6_136:
.Ltmp332:
	mov	edi, eax
	call	_ZSt20__throw_system_errori
.Ltmp333:
# %bb.137:
.LBB6_138:
.Ltmp366:
	call	_ZSt16__throw_bad_castv
.Ltmp367:
# %bb.139:
.LBB6_140:
.Ltmp386:
	jmp	.LBB6_142
.LBB6_141:
.Ltmp383:
.LBB6_142:
	mov	r14, rax
	mov	rdi, qword ptr [rsp + 112]
	lea	rax, [rsp + 128]
	cmp	rdi, rax
	je	.LBB6_161
# %bb.143:
	call	_ZdlPv
	jmp	.LBB6_161
.LBB6_144:
.Ltmp371:
	mov	r14, rax
	jmp	.LBB6_162
.LBB6_145:
.Ltmp328:
	jmp	.LBB6_175
.LBB6_146:
.Ltmp337:
	mov	r14, rax
	jmp	.LBB6_165
.LBB6_147:
.Ltmp368:
	mov	r14, rax
	jmp	.LBB6_162
.LBB6_148:
.Ltmp352:
	mov	r14, rax
	jmp	.LBB6_163
.LBB6_149:
.Ltmp349:
	mov	r14, rax
	lea	rdi, [rsp + 560]
	call	_ZNSt10filesystem7__cxx114pathD2Ev
	jmp	.LBB6_151
.LBB6_150:
.Ltmp346:
	mov	r14, rax
.LBB6_151:
	lea	rdi, [rsp + 184]
	call	_ZNSt10filesystem7__cxx114pathD2Ev
	jmp	.LBB6_163
.LBB6_152:
.Ltmp343:
	mov	r14, rax
	jmp	.LBB6_163
.LBB6_153:
.Ltmp340:
	mov	r14, rax
	jmp	.LBB6_163
.LBB6_154:
.Ltmp334:
	mov	r14, rax
	jmp	.LBB6_165
.LBB6_155:
.Ltmp331:
	jmp	.LBB6_159
.LBB6_156:
.Ltmp325:
	jmp	.LBB6_175
.LBB6_157:
.Ltmp365:
	mov	r14, rax
	jmp	.LBB6_162
.LBB6_158:
.Ltmp389:
.LBB6_159:
	mov	r14, rax
	mov	qword ptr [rsp + 8], r13        # 8-byte Spill
	jmp	.LBB6_165
.LBB6_160:
.Ltmp378:
	mov	r14, rax
.LBB6_161:
	lea	rdi, [rsp + 184]
	call	_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev
.LBB6_162:
	lea	rdi, [rsp + 560]
	call	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev
.LBB6_163:
	mov	rdi, qword ptr [rsp + 80]
	lea	rax, [rsp + 96]
	cmp	rdi, rax
	je	.LBB6_165
# %bb.164:
	call	_ZdlPv
.LBB6_165:
	cmp	qword ptr [rsp + 8], 0          # 8-byte Folded Reload
	je	.LBB6_176
# %bb.166:
	mov	rdi, qword ptr [rsp + 8]        # 8-byte Reload
	call	_ZdlPv
	jmp	.LBB6_176
.LBB6_167:
.Ltmp320:
	jmp	.LBB6_175
.LBB6_168:
.Ltmp295:
	mov	r14, rax
	jmp	.LBB6_178
.LBB6_169:
.Ltmp304:
	mov	r14, rax
	jmp	.LBB6_177
.LBB6_170:
.Ltmp301:
	mov	r14, rax
	jmp	.LBB6_178
.LBB6_171:
.Ltmp298:
	mov	r14, rax
	lea	rdi, [rsp + 1072]
	call	_ZNSt10filesystem7__cxx114pathD2Ev
	jmp	.LBB6_178
.LBB6_172:
.Ltmp292:
	mov	r14, rax
	mov	rdi, r13
	call	pthread_mutex_unlock
	jmp	.LBB6_178
.LBB6_173:
.Ltmp392:
	mov	r14, rax
	jmp	.LBB6_178
.LBB6_174:
.Ltmp317:
.LBB6_175:
	mov	r14, rax
.LBB6_176:
	lea	rdi, [rsp + 1072]
	call	_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev
.LBB6_177:
	lea	rbx, [rsp + 40]
.LBB6_178:
	mov	rdi, qword ptr [rsp + 24]
	cmp	rdi, rbx
	je	.LBB6_180
# %bb.179:
	call	_ZdlPv
.LBB6_180:
	mov	rdi, r14
	call	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi, .Lfunc_end6-_ZN16ProcessingEngine11processFileEiRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS6_SaIS6_EEERSt5mutexSD_SD_PcRKS6_SG_RmSH_RSt6vectorIdSaIdEERSI_ImSaImEEi
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp290-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin3         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin3         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp297-.Ltmp296              #   Call between .Ltmp296 and .Ltmp297
	.uleb128 .Ltmp298-.Lfunc_begin3         #     jumps to .Ltmp298
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp302-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp303-.Ltmp302              #   Call between .Ltmp302 and .Ltmp303
	.uleb128 .Ltmp304-.Lfunc_begin3         #     jumps to .Ltmp304
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp305-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp316-.Ltmp305              #   Call between .Ltmp305 and .Ltmp316
	.uleb128 .Ltmp317-.Lfunc_begin3         #     jumps to .Ltmp317
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp321-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp324-.Ltmp321              #   Call between .Ltmp321 and .Ltmp324
	.uleb128 .Ltmp325-.Lfunc_begin3         #     jumps to .Ltmp325
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp329-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp330-.Ltmp329              #   Call between .Ltmp329 and .Ltmp330
	.uleb128 .Ltmp331-.Lfunc_begin3         #     jumps to .Ltmp331
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp330-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp326-.Ltmp330              #   Call between .Ltmp330 and .Ltmp326
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp326-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp327-.Ltmp326              #   Call between .Ltmp326 and .Ltmp327
	.uleb128 .Ltmp328-.Lfunc_begin3         #     jumps to .Ltmp328
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp335-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp336-.Ltmp335              #   Call between .Ltmp335 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin3         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp336-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp338-.Ltmp336              #   Call between .Ltmp336 and .Ltmp338
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp340-.Lfunc_begin3         #     jumps to .Ltmp340
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.uleb128 .Ltmp343-.Lfunc_begin3         #     jumps to .Ltmp343
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin3         #     jumps to .Ltmp346
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.uleb128 .Ltmp349-.Lfunc_begin3         #     jumps to .Ltmp349
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp350-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp351-.Ltmp350              #   Call between .Ltmp350 and .Ltmp351
	.uleb128 .Ltmp352-.Lfunc_begin3         #     jumps to .Ltmp352
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp356-.Ltmp353              #   Call between .Ltmp353 and .Ltmp356
	.uleb128 .Ltmp365-.Lfunc_begin3         #     jumps to .Ltmp365
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin3         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp377-.Ltmp372              #   Call between .Ltmp372 and .Ltmp377
	.uleb128 .Ltmp378-.Lfunc_begin3         #     jumps to .Ltmp378
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp379-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp380-.Ltmp379              #   Call between .Ltmp379 and .Ltmp380
	.uleb128 .Ltmp383-.Lfunc_begin3         #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp364-.Ltmp357              #   Call between .Ltmp357 and .Ltmp364
	.uleb128 .Ltmp365-.Lfunc_begin3         #     jumps to .Ltmp365
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp381-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp382-.Ltmp381              #   Call between .Ltmp381 and .Ltmp382
	.uleb128 .Ltmp383-.Lfunc_begin3         #     jumps to .Ltmp383
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp384-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp385-.Ltmp384              #   Call between .Ltmp384 and .Ltmp385
	.uleb128 .Ltmp386-.Lfunc_begin3         #     jumps to .Ltmp386
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp390-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp391-.Ltmp390              #   Call between .Ltmp390 and .Ltmp391
	.uleb128 .Ltmp392-.Lfunc_begin3         #     jumps to .Ltmp392
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp299-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp300-.Ltmp299              #   Call between .Ltmp299 and .Ltmp300
	.uleb128 .Ltmp301-.Lfunc_begin3         #     jumps to .Ltmp301
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp318-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp319-.Ltmp318              #   Call between .Ltmp318 and .Ltmp319
	.uleb128 .Ltmp320-.Lfunc_begin3         #     jumps to .Ltmp320
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp387-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp388-.Ltmp387              #   Call between .Ltmp387 and .Ltmp388
	.uleb128 .Ltmp389-.Lfunc_begin3         #     jumps to .Ltmp389
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp332-.Ltmp388              #   Call between .Ltmp388 and .Ltmp332
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp332-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp333-.Ltmp332              #   Call between .Ltmp332 and .Ltmp333
	.uleb128 .Ltmp334-.Lfunc_begin3         #     jumps to .Ltmp334
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin3         #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Lfunc_end6-.Ltmp367           #   Call between .Ltmp367 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.intel_syntax noprefix
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE
.LCPI7_0:
	.zero	16
	.text
	.globl	_ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE,@function
_ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE: # 
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	push	r15
	.cfi_def_cfa_offset 16
	push	r14
	.cfi_def_cfa_offset 24
	push	rbx
	.cfi_def_cfa_offset 32
	sub	rsp, 80
	.cfi_def_cfa_offset 112
	.cfi_offset rbx, -32
	.cfi_offset r14, -24
	.cfi_offset r15, -16
	mov	rdi, rsp
	xor	edx, edx
	xor	ecx, ecx
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 16], rax
	mov	qword ptr [rsp + 24], rcx
	test	rcx, rcx
	je	.LBB7_1
# %bb.2:
	cmp	byte ptr [rip + __libc_single_threaded], 0
	je	.LBB7_4
# %bb.3:
	inc	dword ptr [rcx + 8]
	jmp	.LBB7_5
.LBB7_1:
	xor	ecx, ecx
	jmp	.LBB7_5
.LBB7_4:
	lock		inc	dword ptr [rcx + 8]
	mov	rax, qword ptr [rsp + 16]
	mov	rcx, qword ptr [rsp + 24]
.LBB7_5:
	mov	qword ptr [rsp + 32], rax
	mov	qword ptr [rsp + 40], rcx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 16], xmm0
	lea	rdi, [rsp + 16]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 64], rcx
	mov	qword ptr [rsp + 72], rax
	test	rax, rax
	je	.LBB7_9
# %bb.6:
	cmp	byte ptr [rip + __libc_single_threaded], 0
	je	.LBB7_8
# %bb.7:
	inc	dword ptr [rax + 8]
	jmp	.LBB7_9
.LBB7_8:
	lock		inc	dword ptr [rax + 8]
.LBB7_9:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 48], xmm0
	lea	rdi, [rsp + 64]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	xor	ebx, ebx
	lea	r14, [rsp + 32]
	jmp	.LBB7_10
	.p2align	4, 0x90
.LBB7_17:                               #   in Loop: Header=BB7_10 Depth=1
.Ltmp398:
	mov	rdi, r14
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorppEv
.Ltmp399:
.LBB7_10:                               # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsp + 40]
	cmp	rax, qword ptr [rsp + 56]
	je	.LBB7_20
# %bb.11:                               #   in Loop: Header=BB7_10 Depth=1
	mov	rdi, r14
	call	_ZNKSt10filesystem7__cxx1128recursive_directory_iteratordeEv
	mov	r15, rax
	movzx	eax, byte ptr [rax + 40]
	cmp	eax, 3
	je	.LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_10 Depth=1
	test	eax, eax
	jne	.LBB7_14
.LBB7_13:                               #   in Loop: Header=BB7_10 Depth=1
.Ltmp393:
	mov	rdi, r15
	call	_ZNSt10filesystem6statusERKNS_7__cxx114pathE
.Ltmp394:
.LBB7_14:                               #   in Loop: Header=BB7_10 Depth=1
	cmp	al, 1
	jne	.LBB7_17
# %bb.15:                               #   in Loop: Header=BB7_10 Depth=1
.Ltmp395:
	mov	rdi, r15
	call	_ZNSt10filesystem9file_sizeERKNS_7__cxx114pathE
.Ltmp396:
# %bb.16:                               #   in Loop: Header=BB7_10 Depth=1
	add	rbx, rax
	jmp	.LBB7_17
.LBB7_20:
	lea	rdi, [rsp + 48]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	rdi, [rsp + 32]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rdi, rsp
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rax, rbx
	add	rsp, 80
	.cfi_def_cfa_offset 32
	pop	rbx
	.cfi_def_cfa_offset 24
	pop	r14
	.cfi_def_cfa_offset 16
	pop	r15
	.cfi_def_cfa_offset 8
	ret
.LBB7_18:
	.cfi_def_cfa_offset 112
.Ltmp400:
	jmp	.LBB7_19
.LBB7_21:
.Ltmp397:
.LBB7_19:
	mov	rbx, rax
	lea	rdi, [rsp + 48]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	rdi, [rsp + 32]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rdi, rsp
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE, .Lfunc_end7-_ZN16ProcessingEngine22calculateDirectorySizeERKNSt10filesystem7__cxx114pathE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp398-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp398
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin4         #     jumps to .Ltmp400
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp393-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp396-.Ltmp393              #   Call between .Ltmp393 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin4         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp396-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Lfunc_end7-.Ltmp396           #   Call between .Ltmp396 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.intel_syntax noprefix
	.text
	.globl	_ZN16ProcessingEngine15deleteDirectoryERKNSt10filesystem7__cxx114pathE # -- Begin function _ZN16ProcessingEngine15deleteDirectoryERKNSt10filesystem7__cxx114pathE
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine15deleteDirectoryERKNSt10filesystem7__cxx114pathE,@function
_ZN16ProcessingEngine15deleteDirectoryERKNSt10filesystem7__cxx114pathE: # 
	.cfi_startproc
# %bb.0:
	mov	rdi, rsi
	jmp	_ZNSt10filesystem10remove_allERKNS_7__cxx114pathE # TAILCALL
.Lfunc_end8:
	.size	_ZN16ProcessingEngine15deleteDirectoryERKNSt10filesystem7__cxx114pathE, .Lfunc_end8-_ZN16ProcessingEngine15deleteDirectoryERKNSt10filesystem7__cxx114pathE
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZNSt6vectorISt6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EED2Ev,comdat
	.weak	_ZNSt6vectorISt6threadSaIS0_EED2Ev # -- Begin function _ZNSt6vectorISt6threadSaIS0_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt6vectorISt6threadSaIS0_EED2Ev,@function
_ZNSt6vectorISt6threadSaIS0_EED2Ev:     # 
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	rax, rdi
	mov	rdi, qword ptr [rdi]
	mov	rax, qword ptr [rax + 8]
	cmp	rdi, rax
	je	.LBB9_5
# %bb.1:
	mov	rcx, rdi
	.p2align	4, 0x90
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	cmp	qword ptr [rcx], 0
	jne	.LBB9_4
# %bb.2:                                #   in Loop: Header=BB9_3 Depth=1
	add	rcx, 8
	cmp	rcx, rax
	jne	.LBB9_3
.LBB9_5:
	test	rdi, rdi
	je	.LBB9_6
# %bb.7:
	pop	rax
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.LBB9_6:
	.cfi_def_cfa_offset 16
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.LBB9_4:
	.cfi_def_cfa_offset 16
	call	_ZSt9terminatev
.Lfunc_end9:
	.size	_ZNSt6vectorISt6threadSaIS0_EED2Ev, .Lfunc_end9-_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev,"axG",@progbits,_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev,comdat
	.weak	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev # -- Begin function _ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev,@function
_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev: # 
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 24
	.cfi_def_cfa_offset 80
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	r15, qword ptr [rdi + 16]
	mov	rax, qword ptr [rdi + 32]
	mov	qword ptr [rsp + 8], rax        # 8-byte Spill
	mov	rax, qword ptr [rdi + 40]
	mov	r14, qword ptr [rdi + 48]
	mov	r12, qword ptr [rdi + 56]
	mov	qword ptr [rsp], rdi            # 8-byte Spill
	mov	rbp, qword ptr [rdi + 72]
	mov	qword ptr [rsp + 16], rax       # 8-byte Spill
	lea	rbx, [rax + 8]
	jmp	.LBB10_1
	.p2align	4, 0x90
.LBB10_52:                              #   in Loop: Header=BB10_1 Depth=1
	add	rbx, 8
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	cmp	rbx, rbp
	jae	.LBB10_2
# %bb.20:                               #   in Loop: Header=BB10_1 Depth=1
	mov	r13, qword ptr [rbx]
	mov	rdi, qword ptr [r13]
	lea	rax, [r13 + 16]
	cmp	rdi, rax
	je	.LBB10_22
# %bb.21:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_22:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 32]
	lea	rax, [r13 + 48]
	cmp	rdi, rax
	je	.LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_24:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 64]
	lea	rax, [r13 + 80]
	cmp	rdi, rax
	je	.LBB10_26
# %bb.25:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_26:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 96]
	lea	rax, [r13 + 112]
	cmp	rdi, rax
	je	.LBB10_28
# %bb.27:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_28:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 128]
	lea	rax, [r13 + 144]
	cmp	rdi, rax
	je	.LBB10_30
# %bb.29:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_30:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 160]
	lea	rax, [r13 + 176]
	cmp	rdi, rax
	je	.LBB10_32
# %bb.31:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_32:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 192]
	lea	rax, [r13 + 208]
	cmp	rdi, rax
	je	.LBB10_34
# %bb.33:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_34:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 224]
	lea	rax, [r13 + 240]
	cmp	rdi, rax
	je	.LBB10_36
# %bb.35:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_36:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 256]
	lea	rax, [r13 + 272]
	cmp	rdi, rax
	je	.LBB10_38
# %bb.37:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_38:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 288]
	lea	rax, [r13 + 304]
	cmp	rdi, rax
	je	.LBB10_40
# %bb.39:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_40:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 320]
	lea	rax, [r13 + 336]
	cmp	rdi, rax
	je	.LBB10_42
# %bb.41:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_42:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 352]
	lea	rax, [r13 + 368]
	cmp	rdi, rax
	je	.LBB10_44
# %bb.43:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_44:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 384]
	lea	rax, [r13 + 400]
	cmp	rdi, rax
	je	.LBB10_46
# %bb.45:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_46:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 416]
	lea	rax, [r13 + 432]
	cmp	rdi, rax
	je	.LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_48:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 448]
	lea	rax, [r13 + 464]
	cmp	rdi, rax
	je	.LBB10_50
# %bb.49:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
.LBB10_50:                              #   in Loop: Header=BB10_1 Depth=1
	mov	rdi, qword ptr [r13 + 480]
	add	r13, 496
	cmp	rdi, r13
	je	.LBB10_52
# %bb.51:                               #   in Loop: Header=BB10_1 Depth=1
	call	_ZdlPv
	jmp	.LBB10_52
.LBB10_2:
	cmp	qword ptr [rsp + 16], rbp       # 8-byte Folded Reload
	je	.LBB10_12
# %bb.3:
	mov	rbx, qword ptr [rsp + 8]        # 8-byte Reload
	jmp	.LBB10_4
	.p2align	4, 0x90
.LBB10_7:                               #   in Loop: Header=BB10_4 Depth=1
	add	r15, 16
.LBB10_4:                               # =>This Inner Loop Header: Depth=1
	cmp	r15, rbx
	je	.LBB10_8
# %bb.5:                                #   in Loop: Header=BB10_4 Depth=1
	mov	rdi, qword ptr [r15]
	add	r15, 16
	cmp	rdi, r15
	je	.LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_4 Depth=1
	call	_ZdlPv
	jmp	.LBB10_7
	.p2align	4, 0x90
.LBB10_11:                              #   in Loop: Header=BB10_8 Depth=1
	add	r12, 16
.LBB10_8:                               # =>This Inner Loop Header: Depth=1
	cmp	r12, r14
	je	.LBB10_16
# %bb.9:                                #   in Loop: Header=BB10_8 Depth=1
	mov	rdi, qword ptr [r12]
	add	r12, 16
	cmp	rdi, r12
	je	.LBB10_11
# %bb.10:                               #   in Loop: Header=BB10_8 Depth=1
	call	_ZdlPv
	jmp	.LBB10_11
	.p2align	4, 0x90
.LBB10_15:                              #   in Loop: Header=BB10_12 Depth=1
	add	r15, 16
.LBB10_12:                              # =>This Inner Loop Header: Depth=1
	cmp	r15, r14
	je	.LBB10_16
# %bb.13:                               #   in Loop: Header=BB10_12 Depth=1
	mov	rdi, qword ptr [r15]
	add	r15, 16
	cmp	rdi, r15
	je	.LBB10_15
# %bb.14:                               #   in Loop: Header=BB10_12 Depth=1
	call	_ZdlPv
	jmp	.LBB10_15
.LBB10_16:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
	test	rdi, rdi
	je	.LBB10_19
# %bb.17:
	mov	rbx, qword ptr [rax + 40]
	mov	rax, qword ptr [rax + 72]
	lea	rcx, [rax + 8]
	cmp	rbx, rcx
	jae	.LBB10_18
# %bb.53:
	xor	r14d, r14d
	sub	rax, rbx
	cmovae	r14, rax
	lea	r12, [r14 + 15]
	mov	r15, r12
	shr	r15, 6
	cmp	r12, 64
	jb	.LBB10_56
# %bb.54:
	lea	r13, [rbx + 56]
	mov	rbp, r15
	.p2align	4, 0x90
.LBB10_55:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [r13 - 56]
	call	_ZdlPv
	mov	rdi, qword ptr [r13 - 48]
	call	_ZdlPv
	mov	rdi, qword ptr [r13 - 40]
	call	_ZdlPv
	mov	rdi, qword ptr [r13 - 32]
	call	_ZdlPv
	mov	rdi, qword ptr [r13 - 24]
	call	_ZdlPv
	mov	rdi, qword ptr [r13 - 16]
	call	_ZdlPv
	mov	rdi, qword ptr [r13 - 8]
	call	_ZdlPv
	mov	rdi, qword ptr [r13]
	call	_ZdlPv
	add	r13, 64
	dec	rbp
	jne	.LBB10_55
.LBB10_56:
	shl	r15, 3
	shr	r12, 3
	cmp	r15, r12
	jae	.LBB10_59
# %bb.57:
	add	r14, 7
	shr	r14, 3
	inc	r14
	.p2align	4, 0x90
.LBB10_58:                              # =>This Inner Loop Header: Depth=1
	mov	rdi, qword ptr [rbx + 8*r15]
	call	_ZdlPv
	inc	r15
	cmp	r14, r15
	jne	.LBB10_58
.LBB10_59:
	mov	rax, qword ptr [rsp]            # 8-byte Reload
	mov	rdi, qword ptr [rax]
.LBB10_18:
	add	rsp, 24
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.LBB10_19:
	.cfi_def_cfa_offset 80
	add	rsp, 24
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end10:
	.size	_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev, .Lfunc_end10-_ZNSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEED2Ev
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE
.LCPI11_0:
	.zero	16
	.text
	.globl	_ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE,@function
_ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE: # 
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception5
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	push	r15
	.cfi_def_cfa_offset 24
	push	r14
	.cfi_def_cfa_offset 32
	push	r13
	.cfi_def_cfa_offset 40
	push	r12
	.cfi_def_cfa_offset 48
	push	rbx
	.cfi_def_cfa_offset 56
	sub	rsp, 152
	.cfi_def_cfa_offset 208
	.cfi_offset rbx, -56
	.cfi_offset r12, -48
	.cfi_offset r13, -40
	.cfi_offset r14, -32
	.cfi_offset r15, -24
	.cfi_offset rbp, -16
	mov	rbx, rdx
	lea	rdi, [rsp + 64]
	xor	edx, edx
	xor	ecx, ecx
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorC2ERKNS0_4pathENS_17directory_optionsEPSt10error_code
	mov	rax, qword ptr [rsp + 64]
	mov	rcx, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 80], rax
	mov	qword ptr [rsp + 88], rcx
	test	rcx, rcx
	je	.LBB11_1
# %bb.2:
	cmp	byte ptr [rip + __libc_single_threaded], 0
	je	.LBB11_4
# %bb.3:
	inc	dword ptr [rcx + 8]
	jmp	.LBB11_5
.LBB11_1:
	xor	ecx, ecx
	jmp	.LBB11_5
.LBB11_4:
	lock		inc	dword ptr [rcx + 8]
	mov	rax, qword ptr [rsp + 80]
	mov	rcx, qword ptr [rsp + 88]
.LBB11_5:
	mov	qword ptr [rsp + 40], rax
	mov	qword ptr [rsp + 48], rcx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 80], xmm0
	lea	rdi, [rsp + 80]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rcx, qword ptr [rsp + 64]
	mov	rax, qword ptr [rsp + 72]
	mov	qword ptr [rsp + 136], rcx
	mov	qword ptr [rsp + 144], rax
	test	rax, rax
	je	.LBB11_9
# %bb.6:
	cmp	byte ptr [rip + __libc_single_threaded], 0
	je	.LBB11_8
# %bb.7:
	inc	dword ptr [rax + 8]
	jmp	.LBB11_9
.LBB11_8:
	lock		inc	dword ptr [rax + 8]
.LBB11_9:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 96], xmm0
	lea	rdi, [rsp + 136]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	r13, [rsp + 16]
	lea	rbp, [rbx + 48]
	lea	r14, [rsp + 40]
	mov	qword ptr [rsp + 128], rbp      # 8-byte Spill
	jmp	.LBB11_10
.LBB11_58:                              #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [r14 + 16], rax
	mov	r15, qword ptr [rsp + 8]
.LBB11_59:                              #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [r14 + 8], r15
	add	qword ptr [rbp], 32
.LBB11_56:                              #   in Loop: Header=BB11_10 Depth=1
	lea	r14, [rsp + 40]
.LBB11_57:                              #   in Loop: Header=BB11_10 Depth=1
.Ltmp416:
	mov	rdi, r14
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorppEv
.Ltmp417:
.LBB11_10:                              # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rsp + 48]
	cmp	rax, qword ptr [rsp + 104]
	je	.LBB11_70
# %bb.11:                               #   in Loop: Header=BB11_10 Depth=1
	mov	rdi, r14
	call	_ZNKSt10filesystem7__cxx1128recursive_directory_iteratordeEv
	mov	r12, rax
	movzx	eax, byte ptr [rax + 40]
	cmp	eax, 3
	je	.LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_10 Depth=1
	test	eax, eax
	jne	.LBB11_14
.LBB11_13:                              #   in Loop: Header=BB11_10 Depth=1
.Ltmp401:
	mov	rdi, r12
	call	_ZNSt10filesystem6statusERKNS_7__cxx114pathE
.Ltmp402:
.LBB11_14:                              #   in Loop: Header=BB11_10 Depth=1
	cmp	al, 1
	jne	.LBB11_57
# %bb.15:                               #   in Loop: Header=BB11_10 Depth=1
	mov	r14, qword ptr [r12]
	mov	r12, qword ptr [r12 + 8]
	mov	qword ptr [rsp], r13
	test	r14, r14
	jne	.LBB11_19
# %bb.16:                               #   in Loop: Header=BB11_10 Depth=1
	test	r12, r12
	jne	.LBB11_17
.LBB11_19:                              #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [rsp + 56], r12
	mov	rax, r13
	cmp	r12, 16
	jb	.LBB11_22
# %bb.20:                               #   in Loop: Header=BB11_10 Depth=1
.Ltmp404:
	mov	rdi, rsp
	lea	rsi, [rsp + 56]
	xor	edx, edx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
.Ltmp405:
# %bb.21:                               #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [rsp], rax
	mov	rcx, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 16], rcx
.LBB11_22:                              #   in Loop: Header=BB11_10 Depth=1
	test	r12, r12
	je	.LBB11_26
# %bb.23:                               #   in Loop: Header=BB11_10 Depth=1
	cmp	r12, 1
	jne	.LBB11_25
# %bb.24:                               #   in Loop: Header=BB11_10 Depth=1
	movzx	ecx, byte ptr [r14]
	mov	byte ptr [rax], cl
	jmp	.LBB11_26
.LBB11_25:                              #   in Loop: Header=BB11_10 Depth=1
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, r12
	call	_intel_fast_memcpy@PLT
.LBB11_26:                              #   in Loop: Header=BB11_10 Depth=1
	mov	rax, qword ptr [rsp + 56]
	mov	qword ptr [rsp + 8], rax
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 0
	mov	r14, qword ptr [rbx + 48]
	mov	rax, qword ptr [rbx + 64]
	add	rax, -32
	cmp	r14, rax
	je	.LBB11_29
# %bb.27:                               #   in Loop: Header=BB11_10 Depth=1
	lea	rdi, [r14 + 16]
	mov	qword ptr [r14], rdi
	mov	rax, qword ptr [rsp]
	cmp	rax, r13
	jne	.LBB11_58
# %bb.28:                               #   in Loop: Header=BB11_10 Depth=1
	mov	r15, qword ptr [rsp + 8]
	lea	rdx, [r15 + 1]
	mov	rsi, r13
	call	_intel_fast_memcpy@PLT
	jmp	.LBB11_59
.LBB11_29:                              #   in Loop: Header=BB11_10 Depth=1
	mov	r15, qword ptr [rbx + 72]
	mov	rax, qword ptr [rbx + 32]
	mov	r12, qword ptr [rbx + 40]
	mov	rbp, r15
	sub	rbp, r12
	sar	rbp, 3
	cmp	r15, 1
	mov	rcx, rbp
	adc	rcx, -1
	sub	r14, qword ptr [rbx + 56]
	shl	rcx, 4
	sar	r14, 5
	sub	rax, qword ptr [rbx + 16]
	sar	rax, 5
	add	rax, r14
	add	rax, rcx
	movabs	rcx, 288230376151711743
	cmp	rax, rcx
	je	.LBB11_30
# %bb.32:                               #   in Loop: Header=BB11_10 Depth=1
	mov	r14, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, r15
	sub	rcx, r14
	sar	rcx, 3
	mov	rdx, rax
	sub	rdx, rcx
	cmp	rdx, 1
	ja	.LBB11_51
# %bb.33:                               #   in Loop: Header=BB11_10 Depth=1
	lea	rdx, [rbp + 2]
	lea	rcx, [2*rbp + 4]
	cmp	rax, rcx
	jbe	.LBB11_40
# %bb.34:                               #   in Loop: Header=BB11_10 Depth=1
	sub	rax, rdx
	and	rax, -2
	lea	r13, [r14 + 4*rax]
	add	r15, 8
	cmp	r13, r12
	jae	.LBB11_38
# %bb.35:                               #   in Loop: Header=BB11_10 Depth=1
	sub	r15, r12
	je	.LBB11_50
# %bb.36:                               #   in Loop: Header=BB11_10 Depth=1
	mov	rdi, r13
	jmp	.LBB11_37
.LBB11_40:                              #   in Loop: Header=BB11_10 Depth=1
	cmp	rax, 1
	mov	rcx, rax
	adc	rcx, 0
	lea	r13, [rax + rcx]
	add	r13, 2
	mov	rax, r13
	shr	rax, 60
	jne	.LBB11_41
# %bb.46:                               #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [rsp + 32], rdx       # 8-byte Spill
	lea	rdi, [8*r13]
.Ltmp407:
	call	_Znwm
.Ltmp408:
# %bb.47:                               #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [rsp + 120], r13      # 8-byte Spill
	sub	r13, qword ptr [rsp + 32]       # 8-byte Folded Reload
	and	r13, -2
	mov	qword ptr [rsp + 32], rax       # 8-byte Spill
	lea	r13, [rax + 4*r13]
	add	r15, 8
	sub	r15, r12
	je	.LBB11_49
# %bb.48:                               #   in Loop: Header=BB11_10 Depth=1
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	_intel_fast_memcpy@PLT
.LBB11_49:                              #   in Loop: Header=BB11_10 Depth=1
	mov	rdi, r14
	call	_ZdlPv
	mov	rax, qword ptr [rsp + 32]       # 8-byte Reload
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 120]      # 8-byte Reload
	mov	qword ptr [rbx + 8], rax
	jmp	.LBB11_50
.LBB11_38:                              #   in Loop: Header=BB11_10 Depth=1
	sub	r15, r12
	je	.LBB11_50
# %bb.39:                               #   in Loop: Header=BB11_10 Depth=1
	lea	rax, [rbp + 1]
	lea	rdi, [8*rax]
	add	rdi, r13
	sub	rdi, r15
.LBB11_37:                              #   in Loop: Header=BB11_10 Depth=1
	mov	rsi, r12
	mov	rdx, r15
	call	memmove@PLT
.LBB11_50:                              #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [rbx + 40], r13
	mov	rax, qword ptr [r13]
	mov	qword ptr [rbx + 24], rax
	add	rax, 512
	mov	qword ptr [rbx + 32], rax
	lea	r15, [8*rbp]
	add	r15, r13
	mov	qword ptr [rbx + 72], r15
	mov	rax, qword ptr [r13 + 8*rbp]
	mov	qword ptr [rbx + 56], rax
	add	rax, 512
	mov	qword ptr [rbx + 64], rax
.LBB11_51:                              #   in Loop: Header=BB11_10 Depth=1
.Ltmp413:
	mov	edi, 512
	call	_Znwm
.Ltmp414:
# %bb.52:                               #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [r15 + 8], rax
	mov	rbp, qword ptr [rsp + 128]      # 8-byte Reload
	mov	r14, qword ptr [rbp]
	lea	rdi, [r14 + 16]
	mov	qword ptr [r14], rdi
	mov	rax, qword ptr [rsp]
	lea	r13, [rsp + 16]
	cmp	rax, r13
	je	.LBB11_53
# %bb.54:                               #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [r14 + 16], rax
	mov	r15, qword ptr [rsp + 8]
	jmp	.LBB11_55
.LBB11_53:                              #   in Loop: Header=BB11_10 Depth=1
	mov	r15, qword ptr [rsp + 8]
	lea	rdx, [r15 + 1]
	mov	rsi, r13
	call	_intel_fast_memcpy@PLT
.LBB11_55:                              #   in Loop: Header=BB11_10 Depth=1
	mov	qword ptr [r14 + 8], r15
	mov	qword ptr [rsp], r13
	mov	qword ptr [rsp + 8], 0
	mov	byte ptr [r13], 0
	mov	rax, qword ptr [rbx + 72]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 72], rcx
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbx + 56], rax
	lea	rcx, [rax + 512]
	mov	qword ptr [rbx + 64], rcx
	mov	qword ptr [rbp], rax
	jmp	.LBB11_56
.LBB11_70:
	lea	rdi, [rsp + 96]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	rdi, [rsp + 40]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	rdi, [rsp + 64]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	add	rsp, 152
	.cfi_def_cfa_offset 56
	pop	rbx
	.cfi_def_cfa_offset 48
	pop	r12
	.cfi_def_cfa_offset 40
	pop	r13
	.cfi_def_cfa_offset 32
	pop	r14
	.cfi_def_cfa_offset 24
	pop	r15
	.cfi_def_cfa_offset 16
	pop	rbp
	.cfi_def_cfa_offset 8
	ret
.LBB11_41:
	.cfi_def_cfa_offset 208
	shr	r13, 61
	je	.LBB11_44
# %bb.42:
.Ltmp411:
	lea	r13, [rsp + 16]
	call	_ZSt28__throw_bad_array_new_lengthv
.Ltmp412:
# %bb.43:
.LBB11_44:
.Ltmp409:
	lea	r13, [rsp + 16]
	call	_ZSt17__throw_bad_allocv
.Ltmp410:
# %bb.45:
.LBB11_17:
.Ltmp422:
	mov	edi, offset .L.str.25
	call	_ZSt19__throw_logic_errorPKc
.Ltmp423:
# %bb.18:
.LBB11_30:
.Ltmp419:
	mov	edi, offset .L.str.31
	call	_ZSt20__throw_length_errorPKc
.Ltmp420:
# %bb.31:
.LBB11_63:
.Ltmp415:
	mov	rbx, rax
	lea	r13, [rsp + 16]
	jmp	.LBB11_65
.LBB11_61:
.Ltmp406:
	jmp	.LBB11_68
.LBB11_62:
.Ltmp424:
	jmp	.LBB11_68
.LBB11_60:
.Ltmp403:
	jmp	.LBB11_68
.LBB11_67:
.Ltmp418:
.LBB11_68:
	mov	rbx, rax
	jmp	.LBB11_69
.LBB11_64:
.Ltmp421:
	mov	rbx, rax
.LBB11_65:
	mov	rdi, qword ptr [rsp]
	cmp	rdi, r13
	je	.LBB11_69
# %bb.66:
	call	_ZdlPv
.LBB11_69:
	lea	rdi, [rsp + 96]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	rdi, [rsp + 40]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	lea	rdi, [rsp + 64]
	call	_ZNSt10filesystem7__cxx1128recursive_directory_iteratorD1Ev
	mov	rdi, rbx
	call	_Unwind_Resume@PLT
.Lfunc_end11:
	.size	_ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE, .Lfunc_end11-_ZN16ProcessingEngine5crawlERKNSt10filesystem7__cxx114pathERSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISB_SaISB_EEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp416-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp416
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp417-.Ltmp416              #   Call between .Ltmp416 and .Ltmp417
	.uleb128 .Ltmp418-.Lfunc_begin5         #     jumps to .Ltmp418
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.uleb128 .Ltmp403-.Lfunc_begin5         #     jumps to .Ltmp403
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp404-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp405-.Ltmp404              #   Call between .Ltmp404 and .Ltmp405
	.uleb128 .Ltmp406-.Lfunc_begin5         #     jumps to .Ltmp406
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp407-.Ltmp405              #   Call between .Ltmp405 and .Ltmp407
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp407-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp408-.Ltmp407              #   Call between .Ltmp407 and .Ltmp408
	.uleb128 .Ltmp415-.Lfunc_begin5         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp408-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp413-.Ltmp408              #   Call between .Ltmp408 and .Ltmp413
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp413-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Ltmp414-.Ltmp413              #   Call between .Ltmp413 and .Ltmp414
	.uleb128 .Ltmp415-.Lfunc_begin5         #     jumps to .Ltmp415
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp414-.Lfunc_begin5         # >> Call Site 9 <<
	.uleb128 .Ltmp411-.Ltmp414              #   Call between .Ltmp414 and .Ltmp411
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp411-.Lfunc_begin5         # >> Call Site 10 <<
	.uleb128 .Ltmp410-.Ltmp411              #   Call between .Ltmp411 and .Ltmp410
	.uleb128 .Ltmp421-.Lfunc_begin5         #     jumps to .Ltmp421
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin5         # >> Call Site 11 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp424-.Lfunc_begin5         #     jumps to .Ltmp424
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin5         # >> Call Site 12 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.uleb128 .Ltmp421-.Lfunc_begin5         #     jumps to .Ltmp421
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin5         # >> Call Site 13 <<
	.uleb128 .Lfunc_end11-.Ltmp420          #   Call between .Ltmp420 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.intel_syntax noprefix
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # 
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	call	__cxa_begin_catch
	call	_ZSt9terminatev
.Lfunc_end12:
	.size	__clang_call_terminate, .Lfunc_end12-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.text
	.globl	_ZN16ProcessingEngine11searchFilesEv # -- Begin function _ZN16ProcessingEngine11searchFilesEv
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngine11searchFilesEv,@function
_ZN16ProcessingEngine11searchFilesEv:   # 
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end13:
	.size	_ZN16ProcessingEngine11searchFilesEv, .Lfunc_end13-_ZN16ProcessingEngine11searchFilesEv
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZN16ProcessingEngineD2Ev,"axG",@progbits,_ZN16ProcessingEngineD2Ev,comdat
	.weak	_ZN16ProcessingEngineD2Ev       # -- Begin function _ZN16ProcessingEngineD2Ev
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngineD2Ev,@function
_ZN16ProcessingEngineD2Ev:              # 
	.cfi_startproc
# %bb.0:
	ret
.Lfunc_end14:
	.size	_ZN16ProcessingEngineD2Ev, .Lfunc_end14-_ZN16ProcessingEngineD2Ev
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZN16ProcessingEngineD0Ev,"axG",@progbits,_ZN16ProcessingEngineD0Ev,comdat
	.weak	_ZN16ProcessingEngineD0Ev       # -- Begin function _ZN16ProcessingEngineD0Ev
	.p2align	4, 0x90
	.type	_ZN16ProcessingEngineD0Ev,@function
_ZN16ProcessingEngineD0Ev:              # 
	.cfi_startproc
# %bb.0:
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end15:
	.size	_ZN16ProcessingEngineD0Ev, .Lfunc_end15-_ZN16ProcessingEngineD0Ev
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev: # 
	.cfi_startproc
# %bb.0:
	push	rbx
	.cfi_def_cfa_offset 16
	.cfi_offset rbx, -16
	mov	rbx, rdi
	call	_ZNSt6thread6_StateD2Ev
	mov	rdi, rbx
	pop	rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv                          # TAILCALL
.Lfunc_end16:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev, .Lfunc_end16-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv,comdat
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv # -- Begin function _ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv
	.p2align	4, 0x90
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv,@function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv: # 
	.cfi_startproc
# %bb.0:
	mov	rax, rdi
	mov	rdi, qword ptr [rdi + 112]
	mov	r10, qword ptr [rax + 120]
	add	rdi, qword ptr [rax + 128]
	test	r10b, 1
	je	.LBB17_2
# %bb.1:
	mov	rcx, qword ptr [rdi]
	mov	r10, qword ptr [r10 + rcx - 1]
.LBB17_2:
	push	rax
	.cfi_def_cfa_offset 16
	mov	esi, dword ptr [rax + 104]
	mov	rdx, qword ptr [rax + 96]
	mov	rcx, qword ptr [rax + 88]
	mov	r8, qword ptr [rax + 80]
	mov	r9, qword ptr [rax + 72]
	mov	r11d, dword ptr [rax + 8]
	push	r11
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 16]
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 24]
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 32]
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 40]
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 48]
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 56]
	.cfi_adjust_cfa_offset 8
	push	qword ptr [rax + 64]
	.cfi_adjust_cfa_offset 8
	call	r10
	add	rsp, 64
	.cfi_adjust_cfa_offset -64
	pop	rax
	.cfi_def_cfa_offset 8
	ret
.Lfunc_end17:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv, .Lfunc_end17-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv
	.cfi_endproc
                                        # -- End function
	.intel_syntax noprefix
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_ProcessingEngine.cpp
	.type	_GLOBAL__sub_I_ProcessingEngine.cpp,@function
_GLOBAL__sub_I_ProcessingEngine.cpp:    # 
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	edi, offset _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	mov	edi, offset _ZNSt8ios_base4InitD1Ev
	mov	esi, offset _ZStL8__ioinit
	mov	edx, offset __dso_handle
	pop	rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit                    # TAILCALL
.Lfunc_end18:
	.size	_GLOBAL__sub_I_ProcessingEngine.cpp, .Lfunc_end18-_GLOBAL__sub_I_ProcessingEngine.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # 
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	_ZTV16ProcessingEngine,@object  # 
	.section	.rodata._ZTV16ProcessingEngine,"aG",@progbits,_ZTV16ProcessingEngine,comdat
	.weak	_ZTV16ProcessingEngine
	.p2align	3, 0x0
_ZTV16ProcessingEngine:
	.quad	0
	.quad	_ZTI16ProcessingEngine
	.quad	_ZN16ProcessingEngineD2Ev
	.quad	_ZN16ProcessingEngineD0Ev
	.size	_ZTV16ProcessingEngine, 32

	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Starting indexFiles with path: "
	.size	.L.str, 32

	.type	.L.str.1,@object                # 
.L.str.1:
	.asciz	"Crawled dataset. Number of files: "
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"TokenC++BranchlessCharPointerVectorPointerCharMultipleThread"
	.size	.L.str.2, 61

	.type	.L.str.3,@object                # 
.L.str.3:
	.asciz	"Result path: "
	.size	.L.str.3, 14

	.type	.L.str.4,@object                # 
.L.str.4:
	.asciz	"WARN: NUMA is not available on the current system!"
	.size	.L.str.4, 51

	.type	.L.str.5,@object                # 
.L.str.5:
	.asciz	"Thread "
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # 
.L.str.6:
	.asciz	" tokenization time: "
	.size	.L.str.6, 21

	.type	.L.str.7,@object                # 
.L.str.7:
	.asciz	" seconds"
	.size	.L.str.7, 9

	.type	.L.str.8,@object                # 
.L.str.8:
	.asciz	" processed "
	.size	.L.str.8, 12

	.type	.L.str.9,@object                # 
.L.str.9:
	.asciz	" bytes on NUMA node "
	.size	.L.str.9, 21

	.type	.L.str.10,@object               # 
.L.str.10:
	.asciz	" took the longest time for tokenization: "
	.size	.L.str.10, 42

	.type	.L.str.11,@object               # 
.L.str.11:
	.asciz	"Completed indexing "
	.size	.L.str.11, 20

	.type	.L.str.12,@object               # 
.L.str.12:
	.asciz	" bytes of data"
	.size	.L.str.12, 15

	.type	.L.str.13,@object               # 
.L.str.13:
	.asciz	" tokens"
	.size	.L.str.13, 8

	.type	.L.str.14,@object               # 
.L.str.14:
	.asciz	"Size of the destination folder: "
	.size	.L.str.14, 33

	.type	.L.str.15,@object               # 
.L.str.15:
	.asciz	" bytes"
	.size	.L.str.15, 7

	.type	.L.str.16,@object               # 
.L.str.16:
	.asciz	"Throughput based on the longest tokenization time: "
	.size	.L.str.16, 52

	.type	.L.str.17,@object               # 
.L.str.17:
	.asciz	" MB/s"
	.size	.L.str.17, 6

	.type	.L.str.18,@object               # 
.L.str.18:
	.asciz	"Deleted the destination folder: "
	.size	.L.str.18, 33

	.type	.L.str.19,@object               # 
.L.str.19:
	.asciz	"WARN: Could not set thread to run on NUMA node!"
	.size	.L.str.19, 48

	.type	.L.str.20,@object               # 
.L.str.20:
	.asciz	"/."
	.size	.L.str.20, 3

	.type	.L.str.21,@object               # 
.L.str.21:
	.asciz	"Error opening file: "
	.size	.L.str.21, 21

	.type	.L.str.22,@object               # 
.L.str.22:
	.asciz	"Error creating result file: "
	.size	.L.str.22, 29

	.type	.L.str.23,@object               # 
.L.str.23:
	.asciz	" "
	.size	.L.str.23, 2

	.type	.L.str.24,@object               # 
.L.str.24:
	.asciz	"Filesystem error: "
	.size	.L.str.24, 19

	.type	_ZTS16ProcessingEngine,@object  # 
	.section	.rodata._ZTS16ProcessingEngine,"aG",@progbits,_ZTS16ProcessingEngine,comdat
	.weak	_ZTS16ProcessingEngine
_ZTS16ProcessingEngine:
	.asciz	"16ProcessingEngine"
	.size	_ZTS16ProcessingEngine, 19

	.type	_ZTI16ProcessingEngine,@object  # 
	.section	.rodata._ZTI16ProcessingEngine,"aG",@progbits,_ZTI16ProcessingEngine,comdat
	.weak	_ZTI16ProcessingEngine
	.p2align	3, 0x0
_ZTI16ProcessingEngine:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS16ProcessingEngine
	.size	_ZTI16ProcessingEngine, 16

	.type	.L.str.25,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.25:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.25, 50

	.type	.L.str.26,@object               # 
.L.str.26:
	.asciz	"basic_string::append"
	.size	.L.str.26, 21

	.type	.L.str.27,@object               # 
.L.str.27:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.27, 49

	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,@object # 
	.section	.rodata._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,"aG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,comdat
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE
	.p2align	3, 0x0
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE
	.quad	_ZNSt6thread6_StateD2Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEE6_M_runEv
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE, 40

	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,@object # 
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,comdat
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE:
	.asciz	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE"
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE, 312

	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,@object # 
	.section	.rodata._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,"aG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE,comdat
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE
	.p2align	3, 0x0
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE
	.quad	_ZTINSt6thread6_StateE
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJM16ProcessingEngineFviRSt5queueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeISA_SaISA_EEERSt5mutexSH_SH_PcRKSA_SK_RmSL_RSt6vectorIdSaIdEERSM_ImSaImEEiEPS3_iSt17reference_wrapperISE_ESW_ISG_ESY_SY_SI_SW_ISJ_ESW_ISA_ESW_ImES11_SW_ISO_ESW_ISR_EiEEEEEE, 24

	.type	.L.str.28,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"vector::_M_realloc_insert"
	.size	.L.str.28, 26

	.type	.L.str.31,@object               # 
.L.str.31:
	.asciz	"cannot create std::deque larger than max_size()"
	.size	.L.str.31, 48

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.quad	_GLOBAL__sub_I_ProcessingEngine.cpp
	.globl	_ZN16ProcessingEngineC1Ei
	.type	_ZN16ProcessingEngineC1Ei,@function
.set _ZN16ProcessingEngineC1Ei, _ZN16ProcessingEngineC2Ei
	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2024.2.0 (2024.2.0.20240602)"
	.section	".note.GNU-stack","",@progbits
