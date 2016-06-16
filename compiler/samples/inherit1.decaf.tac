_offset_Animal_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Animal =
	_offset_Animal_0,
	f_Animal.Method1,
; 
f_Animal.Method1:
	BeginFunc 24 ;
	_tmp1 = 4 ;
	_tmp2 = this + _tmp1 ;
	_tmp3 = *(_tmp2) ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp4 = 8 ;
	_tmp5 = this + _tmp4 ;
	_tmp6 = *(_tmp5) ;
	PushParam _tmp6 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
_offset_Cow_0:
	BeginFunc 4 ;
	_tmp7 = 0 ;
	Return _tmp7 ;
	EndFunc ;
VTable Cow =
	_offset_Cow_0,
	f_Cow.Method1,
	f_Cow.Init,
	f_Cow.Method2,
; 
f_Cow.Init:
	BeginFunc 120 ;
	_tmp8 = 4 ;
	_tmp9 = this + _tmp8 ;
	_tmp10 = *(_tmp9) ;
	_tmp11 = 10 ;
	_tmp12 = 4 ;
	_tmp13 = this + _tmp12 ;
	*(_tmp13) = _tmp11 ;
	_tmp14 = 8 ;
	_tmp15 = this + _tmp14 ;
	_tmp16 = *(_tmp15) ;
	_tmp17 = 4 ;
	_tmp18 = this + _tmp17 ;
	_tmp19 = *(_tmp18) ;
	_tmp20 = 2 ;
	_tmp21 = _tmp19 * _tmp20 ;
	_tmp22 = 8 ;
	_tmp23 = this + _tmp22 ;
	*(_tmp23) = _tmp21 ;
	_tmp24 = 12 ;
	_tmp25 = this + _tmp24 ;
	_tmp26 = *(_tmp25) ;
	_tmp27 = 28 ;
	_tmp28 = 12 ;
	_tmp29 = this + _tmp28 ;
	*(_tmp29) = _tmp27 ;
	_tmp30 = 16 ;
	_tmp31 = this + _tmp30 ;
	_tmp32 = *(_tmp31) ;
	_tmp33 = 0 ;
	_tmp34 = 9 ;
	_tmp35 = _tmp33 - _tmp34 ;
	_tmp36 = 16 ;
	_tmp37 = this + _tmp36 ;
	*(_tmp37) = _tmp35 ;
	EndFunc ;
f_Cow.Method2:
	BeginFunc 72 ;
	_tmp38 = 4 ;
	_tmp39 = this + _tmp38 ;
	_tmp40 = *(_tmp39) ;
	PushParam _tmp40 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp41 = 8 ;
	_tmp42 = this + _tmp41 ;
	_tmp43 = *(_tmp42) ;
	PushParam _tmp43 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp44 = 12 ;
	_tmp45 = this + _tmp44 ;
	_tmp46 = *(_tmp45) ;
	PushParam _tmp46 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp47 = 16 ;
	_tmp48 = this + _tmp47 ;
	_tmp49 = *(_tmp48) ;
	PushParam _tmp49 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp50 = *(this) ;
	_tmp51 = *(_tmp50) ;
	_tmp52 = ACall _tmp51 ;
	_tmp53 = this - _tmp52 ;
	_tmp54 = *(_tmp50 + 4) ;
	PushParam _tmp53 ;
	ACall _tmp54 ;
	_tmp55 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Cow.Method1:
	BeginFunc 24 ;
	_tmp56 = 4 ;
	_tmp57 = this + _tmp56 ;
	_tmp58 = *(_tmp57) ;
	PushParam _tmp58 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp59 = 8 ;
	_tmp60 = this + _tmp59 ;
	_tmp61 = *(_tmp60) ;
	PushParam _tmp61 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp62 = 0 ;
	Return _tmp62 ;
	EndFunc ;
f_main:
main:
	BeginFunc 64 ;
	_tmp63 = 20 ;
	PushParam _tmp63 ;
	_tmp64 = LCall _Alloc ;
	PopParams 4 ;
	_tmp65 = Cow ;
	*(_tmp64) = _tmp65 ;
	b = _tmp64 ;
	_tmp66 = *(b) ;
	_tmp67 = *(_tmp66) ;
	_tmp68 = ACall _tmp67 ;
	_tmp69 = b - _tmp68 ;
	_tmp70 = *(_tmp66 + 8) ;
	PushParam _tmp69 ;
	ACall _tmp70 ;
	_tmp71 = 0 ;
	PopParams 4 ;
	_tmp72 = *(b) ;
	_tmp73 = *(_tmp72) ;
	_tmp74 = ACall _tmp73 ;
	_tmp75 = b - _tmp74 ;
	_tmp76 = *(_tmp72 + 12) ;
	PushParam _tmp75 ;
	ACall _tmp76 ;
	_tmp77 = 0 ;
	PopParams 4 ;
	EndFunc ;
