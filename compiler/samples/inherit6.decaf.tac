_offset_Barn_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Barn =
	_offset_Barn_0,
	f_Barn.AddCow,
; 
f_Barn.AddCow:
	BeginFunc 24 ;
	_tmp1 = *(cow) ;
	_tmp2 = *(_tmp1) ;
	_tmp3 = ACall _tmp2 ;
	_tmp4 = cow - _tmp3 ;
	_tmp5 = *(_tmp1 + 8) ;
	PushParam _tmp4 ;
	ACall _tmp5 ;
	_tmp6 = 0 ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp7 = 0 ;
	Return _tmp7 ;
	EndFunc ;
f_main:
main:
	BeginFunc 284 ;
	_tmp8 = 1 ;
	_tmp9 = 0 ;
	_tmp10 = 4 ;
	_tmp11 = _tmp9 < _tmp8 ;
	IfZ _tmp11 Goto _L0 ;
	Goto _L1 ;
_L0:
	_tmp12 = "Decaf runtime error: Array size is <= 0\n" ;
	PushParam _tmp12 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L1:
	_tmp13 = _tmp8 * _tmp10 ;
	_tmp14 = _tmp13 + _tmp10 ;
	PushParam _tmp14 ;
	_tmp15 = LCall _Alloc ;
	PopParams 4 ;
	*(_tmp15) = _tmp8 ;
	c = _tmp15 ;
	_tmp16 = 4 ;
	PushParam _tmp16 ;
	_tmp17 = LCall _Alloc ;
	PopParams 4 ;
	_tmp18 = Barn ;
	*(_tmp17) = _tmp18 ;
	b = _tmp17 ;
	_tmp19 = 8 ;
	PushParam _tmp19 ;
	_tmp20 = LCall _Alloc ;
	PopParams 4 ;
	_tmp21 = Cow ;
	*(_tmp20) = _tmp21 ;
	a = _tmp20 ;
	_tmp22 = 24 ;
	PushParam _tmp22 ;
	_tmp23 = *(a) ;
	_tmp24 = *(_tmp23) ;
	_tmp25 = ACall _tmp24 ;
	_tmp26 = a - _tmp25 ;
	_tmp27 = *(_tmp23 + 4) ;
	PushParam _tmp26 ;
	ACall _tmp27 ;
	_tmp28 = 0 ;
	PopParams 8 ;
	_tmp29 = *(a) ;
	_tmp30 = *(_tmp29) ;
	_tmp31 = ACall _tmp30 ;
	_tmp32 = a - _tmp31 ;
	_tmp33 = *(_tmp29 + 16) ;
	PushParam _tmp32 ;
	ACall _tmp33 ;
	_tmp34 = 0 ;
	PopParams 4 ;
	_tmp35 = 8 ;
	PushParam _tmp35 ;
	_tmp36 = LCall _Alloc ;
	PopParams 4 ;
	_tmp37 = Jersey ;
	*(_tmp36) = _tmp37 ;
	j = _tmp36 ;
	_tmp38 = 33 ;
	PushParam _tmp38 ;
	_tmp39 = *(j) ;
	_tmp40 = *(_tmp39) ;
	_tmp41 = ACall _tmp40 ;
	_tmp42 = j - _tmp41 ;
	_tmp43 = *(_tmp39 + 4) ;
	PushParam _tmp42 ;
	ACall _tmp43 ;
	_tmp44 = 0 ;
	PopParams 8 ;
	a = j ;
	_tmp45 = *(a) ;
	_tmp46 = *(_tmp45) ;
	_tmp47 = ACall _tmp46 ;
	_tmp48 = a - _tmp47 ;
	_tmp49 = *(_tmp45 + 16) ;
	PushParam _tmp48 ;
	ACall _tmp49 ;
	_tmp50 = 0 ;
	PopParams 4 ;
	_tmp51 = *(j) ;
	_tmp52 = *(_tmp51) ;
	_tmp53 = ACall _tmp52 ;
	_tmp54 = j - _tmp53 ;
	_tmp55 = *(_tmp51 + 16) ;
	PushParam _tmp54 ;
	ACall _tmp55 ;
	_tmp56 = 0 ;
	PopParams 4 ;
	_tmp57 = *(j) ;
	_tmp58 = *(_tmp57) ;
	_tmp59 = ACall _tmp58 ;
	_tmp60 = j - _tmp59 ;
	_tmp61 = *(_tmp57 + 20) ;
	PushParam _tmp60 ;
	ACall _tmp61 ;
	_tmp62 = 0 ;
	PopParams 4 ;
	PushParam a ;
	_tmp63 = *(b) ;
	_tmp64 = *(_tmp63) ;
	_tmp65 = ACall _tmp64 ;
	_tmp66 = b - _tmp65 ;
	_tmp67 = *(_tmp63 + 4) ;
	PushParam _tmp66 ;
	ACall _tmp67 ;
	_tmp68 = 0 ;
	PopParams 8 ;
	PushParam j ;
	_tmp69 = *(b) ;
	_tmp70 = *(_tmp69) ;
	_tmp71 = ACall _tmp70 ;
	_tmp72 = b - _tmp71 ;
	_tmp73 = *(_tmp69 + 4) ;
	PushParam _tmp72 ;
	ACall _tmp73 ;
	_tmp74 = 0 ;
	PopParams 8 ;
	EndFunc ;
_offset_Jersey_0:
	BeginFunc 4 ;
	_tmp75 = 0 ;
	Return _tmp75 ;
	EndFunc ;
VTable Jersey =
	_offset_Jersey_0,
	f_Jersey.Init,
	f_Jersey.Method1,
	f_Jersey.PrintSelf,
	f_Jersey.Method2,
	f_Jersey.Method3,
; 
f_Jersey.Method3:
	BeginFunc 28 ;
	_tmp76 = "Jersey3" ;
	PushParam _tmp76 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp77 = *(this) ;
	_tmp78 = *(_tmp77) ;
	_tmp79 = ACall _tmp78 ;
	_tmp80 = this - _tmp79 ;
	_tmp81 = *(_tmp77 + 16) ;
	PushParam _tmp80 ;
	ACall _tmp81 ;
	_tmp82 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.Method1:
	BeginFunc 28 ;
	_tmp83 = "Jersey" ;
	PushParam _tmp83 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp84 = *(this) ;
	_tmp85 = *(_tmp84) ;
	_tmp86 = ACall _tmp85 ;
	_tmp87 = this - _tmp86 ;
	_tmp88 = *(_tmp84 + 12) ;
	PushParam _tmp87 ;
	ACall _tmp88 ;
	_tmp89 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.Init:
	BeginFunc 20 ;
	_tmp90 = 4 ;
	_tmp91 = this + _tmp90 ;
	_tmp92 = *(_tmp91) ;
	_tmp93 = 4 ;
	_tmp94 = this + _tmp93 ;
	*(_tmp94) = n ;
	EndFunc ;
f_Jersey.PrintSelf:
	BeginFunc 20 ;
	_tmp95 = "num1 = " ;
	PushParam _tmp95 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp96 = 4 ;
	_tmp97 = this + _tmp96 ;
	_tmp98 = *(_tmp97) ;
	PushParam _tmp98 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp99 = "\n" ;
	PushParam _tmp99 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.Method2:
	BeginFunc 28 ;
	_tmp100 = "Cow2" ;
	PushParam _tmp100 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp101 = *(this) ;
	_tmp102 = *(_tmp101) ;
	_tmp103 = ACall _tmp102 ;
	_tmp104 = this - _tmp103 ;
	_tmp105 = *(_tmp101 + 8) ;
	PushParam _tmp104 ;
	ACall _tmp105 ;
	_tmp106 = 0 ;
	PopParams 4 ;
	EndFunc ;
_offset_Animal_0:
	BeginFunc 4 ;
	_tmp107 = 0 ;
	Return _tmp107 ;
	EndFunc ;
VTable Animal =
	_offset_Animal_0,
	f_Animal.Init,
	f_Animal.Method1,
	f_Animal.PrintSelf,
; 
f_Animal.Init:
	BeginFunc 20 ;
	_tmp108 = 4 ;
	_tmp109 = this + _tmp108 ;
	_tmp110 = *(_tmp109) ;
	_tmp111 = 4 ;
	_tmp112 = this + _tmp111 ;
	*(_tmp112) = n ;
	EndFunc ;
f_Animal.Method1:
	BeginFunc 28 ;
	_tmp113 = "Animal" ;
	PushParam _tmp113 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp114 = *(this) ;
	_tmp115 = *(_tmp114) ;
	_tmp116 = ACall _tmp115 ;
	_tmp117 = this - _tmp116 ;
	_tmp118 = *(_tmp114 + 12) ;
	PushParam _tmp117 ;
	ACall _tmp118 ;
	_tmp119 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Animal.PrintSelf:
	BeginFunc 20 ;
	_tmp120 = "num1 = " ;
	PushParam _tmp120 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp121 = 4 ;
	_tmp122 = this + _tmp121 ;
	_tmp123 = *(_tmp122) ;
	PushParam _tmp123 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp124 = "\n" ;
	PushParam _tmp124 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_Cow_0:
	BeginFunc 4 ;
	_tmp125 = 0 ;
	Return _tmp125 ;
	EndFunc ;
VTable Cow =
	_offset_Cow_0,
	f_Cow.Init,
	f_Cow.Method1,
	f_Cow.PrintSelf,
	f_Cow.Method2,
; 
f_Cow.Method2:
	BeginFunc 28 ;
	_tmp126 = "Cow2" ;
	PushParam _tmp126 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp127 = *(this) ;
	_tmp128 = *(_tmp127) ;
	_tmp129 = ACall _tmp128 ;
	_tmp130 = this - _tmp129 ;
	_tmp131 = *(_tmp127 + 8) ;
	PushParam _tmp130 ;
	ACall _tmp131 ;
	_tmp132 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Cow.Method1:
	BeginFunc 28 ;
	_tmp133 = "Cow" ;
	PushParam _tmp133 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp134 = *(this) ;
	_tmp135 = *(_tmp134) ;
	_tmp136 = ACall _tmp135 ;
	_tmp137 = this - _tmp136 ;
	_tmp138 = *(_tmp134 + 12) ;
	PushParam _tmp137 ;
	ACall _tmp138 ;
	_tmp139 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Cow.Init:
	BeginFunc 20 ;
	_tmp140 = 4 ;
	_tmp141 = this + _tmp140 ;
	_tmp142 = *(_tmp141) ;
	_tmp143 = 4 ;
	_tmp144 = this + _tmp143 ;
	*(_tmp144) = n ;
	EndFunc ;
f_Cow.PrintSelf:
	BeginFunc 20 ;
	_tmp145 = "num1 = " ;
	PushParam _tmp145 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp146 = 4 ;
	_tmp147 = this + _tmp146 ;
	_tmp148 = *(_tmp147) ;
	PushParam _tmp148 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp149 = "\n" ;
	PushParam _tmp149 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
