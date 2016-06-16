_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.modify_x,
; 
_offset_A_4:
	BeginFunc 4 ;
	_tmp1 = 4 ;
	Return _tmp1 ;
	EndFunc ;
VTable A_F =
	_offset_A_4,
	f_A.modify_x,
; 
f_A.modify_x:
	BeginFunc 56 ;
	_tmp2 = 8 ;
	_tmp3 = this + _tmp2 ;
	_tmp4 = *(_tmp3) ;
	PushParam _tmp4 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp5 = "\n" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp6 = 8 ;
	_tmp7 = this + _tmp6 ;
	_tmp8 = *(_tmp7) ;
	_tmp9 = 10 ;
	_tmp10 = 8 ;
	_tmp11 = this + _tmp10 ;
	*(_tmp11) = _tmp9 ;
	_tmp12 = 8 ;
	_tmp13 = this + _tmp12 ;
	_tmp14 = *(_tmp13) ;
	PushParam _tmp14 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp15 = "\n" ;
	PushParam _tmp15 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_B_0:
	BeginFunc 4 ;
	_tmp16 = 0 ;
	Return _tmp16 ;
	EndFunc ;
VTable B =
	_offset_B_0,
	f_B.modify_x,
	f_B.modify_both,
; 
_offset_B_4:
	BeginFunc 4 ;
	_tmp17 = 4 ;
	Return _tmp17 ;
	EndFunc ;
VTable B_F =
	_offset_B_4,
	f_B.modify_x,
; 
_offset_B_8:
	BeginFunc 4 ;
	_tmp18 = 8 ;
	Return _tmp18 ;
	EndFunc ;
VTable B_G =
	_offset_B_8,
	f_B.modify_both,
; 
f_B.modify_both:
	BeginFunc 112 ;
	_tmp19 = 12 ;
	_tmp20 = this + _tmp19 ;
	_tmp21 = *(_tmp20) ;
	PushParam _tmp21 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp22 = " " ;
	PushParam _tmp22 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp23 = 16 ;
	_tmp24 = this + _tmp23 ;
	_tmp25 = *(_tmp24) ;
	PushParam _tmp25 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp26 = "\n" ;
	PushParam _tmp26 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp27 = 12 ;
	_tmp28 = this + _tmp27 ;
	_tmp29 = *(_tmp28) ;
	_tmp30 = 42 ;
	_tmp31 = 12 ;
	_tmp32 = this + _tmp31 ;
	*(_tmp32) = _tmp30 ;
	_tmp33 = 16 ;
	_tmp34 = this + _tmp33 ;
	_tmp35 = *(_tmp34) ;
	_tmp36 = 35 ;
	_tmp37 = 16 ;
	_tmp38 = this + _tmp37 ;
	*(_tmp38) = _tmp36 ;
	_tmp39 = 12 ;
	_tmp40 = this + _tmp39 ;
	_tmp41 = *(_tmp40) ;
	PushParam _tmp41 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp42 = " " ;
	PushParam _tmp42 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp43 = 16 ;
	_tmp44 = this + _tmp43 ;
	_tmp45 = *(_tmp44) ;
	PushParam _tmp45 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp46 = "\n" ;
	PushParam _tmp46 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_B.modify_x:
	BeginFunc 56 ;
	_tmp47 = 12 ;
	_tmp48 = this + _tmp47 ;
	_tmp49 = *(_tmp48) ;
	PushParam _tmp49 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp50 = "\n" ;
	PushParam _tmp50 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp51 = 12 ;
	_tmp52 = this + _tmp51 ;
	_tmp53 = *(_tmp52) ;
	_tmp54 = 10 ;
	_tmp55 = 12 ;
	_tmp56 = this + _tmp55 ;
	*(_tmp56) = _tmp54 ;
	_tmp57 = 12 ;
	_tmp58 = this + _tmp57 ;
	_tmp59 = *(_tmp58) ;
	PushParam _tmp59 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp60 = "\n" ;
	PushParam _tmp60 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp61 = 0 ;
	Return _tmp61 ;
	EndFunc ;
f_main:
main:
	BeginFunc 192 ;
	_tmp62 = 20 ;
	PushParam _tmp62 ;
	_tmp63 = LCall _Alloc ;
	PopParams 4 ;
	_tmp64 = B ;
	*(_tmp63) = _tmp64 ;
	_tmp65 = B_F ;
	*(_tmp63 + 4) = _tmp65 ;
	_tmp66 = B_G ;
	*(_tmp63 + 8) = _tmp66 ;
	b = _tmp63 ;
	_tmp67 = 4 ;
	_tmp68 = b + _tmp67 ;
	f = _tmp68 ;
	_tmp69 = 8 ;
	_tmp70 = b + _tmp69 ;
	g = _tmp70 ;
	_tmp71 = *(f) ;
	_tmp72 = *(_tmp71) ;
	_tmp73 = ACall _tmp72 ;
	_tmp74 = f - _tmp73 ;
	_tmp75 = *(_tmp71 + 4) ;
	PushParam _tmp74 ;
	ACall _tmp75 ;
	_tmp76 = 0 ;
	PopParams 4 ;
	_tmp77 = *(g) ;
	_tmp78 = *(_tmp77) ;
	_tmp79 = ACall _tmp78 ;
	_tmp80 = g - _tmp79 ;
	_tmp81 = *(_tmp77 + 4) ;
	PushParam _tmp80 ;
	ACall _tmp81 ;
	_tmp82 = 0 ;
	PopParams 4 ;
	_tmp83 = *(f) ;
	_tmp84 = *(_tmp83) ;
	_tmp85 = ACall _tmp84 ;
	_tmp86 = f - _tmp85 ;
	_tmp87 = *(_tmp83 + 4) ;
	PushParam _tmp86 ;
	ACall _tmp87 ;
	_tmp88 = 0 ;
	PopParams 4 ;
	_tmp89 = 20 ;
	PushParam _tmp89 ;
	_tmp90 = LCall _Alloc ;
	PopParams 4 ;
	_tmp91 = B ;
	*(_tmp90) = _tmp91 ;
	_tmp92 = B_F ;
	*(_tmp90 + 4) = _tmp92 ;
	_tmp93 = B_G ;
	*(_tmp90 + 8) = _tmp93 ;
	b = _tmp90 ;
	a = b ;
	_tmp94 = *(a) ;
	_tmp95 = *(_tmp94) ;
	_tmp96 = ACall _tmp95 ;
	_tmp97 = a - _tmp96 ;
	_tmp98 = *(_tmp94 + 4) ;
	PushParam _tmp97 ;
	ACall _tmp98 ;
	_tmp99 = 0 ;
	PopParams 4 ;
	_tmp100 = *(b) ;
	_tmp101 = *(_tmp100) ;
	_tmp102 = ACall _tmp101 ;
	_tmp103 = b - _tmp102 ;
	_tmp104 = *(_tmp100 + 8) ;
	PushParam _tmp103 ;
	ACall _tmp104 ;
	_tmp105 = 0 ;
	PopParams 4 ;
	EndFunc ;
