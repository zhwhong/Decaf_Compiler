_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.modmyint,
	f_A.printmyint,
; 
f_A.modmyint:
	BeginFunc 20 ;
	_tmp1 = 4 ;
	_tmp2 = this + _tmp1 ;
	_tmp3 = *(_tmp2) ;
	_tmp4 = 4 ;
	_tmp5 = this + _tmp4 ;
	*(_tmp5) = x ;
	EndFunc ;
f_A.printmyint:
	BeginFunc 16 ;
	_tmp6 = 4 ;
	_tmp7 = this + _tmp6 ;
	_tmp8 = *(_tmp7) ;
	PushParam _tmp8 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp9 = " " ;
	PushParam _tmp9 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp10 = 0 ;
	Return _tmp10 ;
	EndFunc ;
f_main:
main:
	BeginFunc 360 ;
	_tmp11 = 10 ;
	_tmp12 = 0 ;
	_tmp13 = 4 ;
	_tmp14 = _tmp12 < _tmp11 ;
	IfZ _tmp14 Goto _L0 ;
	Goto _L1 ;
_L0:
	_tmp15 = "Decaf runtime error: Array size is <= 0\n" ;
	PushParam _tmp15 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L1:
	_tmp16 = _tmp11 * _tmp13 ;
	_tmp17 = _tmp16 + _tmp13 ;
	PushParam _tmp17 ;
	_tmp18 = LCall _Alloc ;
	PopParams 4 ;
	*(_tmp18) = _tmp11 ;
	a = _tmp18 ;
	_tmp19 = 0 ;
	i = _tmp19 ;
_L2:
	_tmp20 = *(a) ;
	_tmp21 = i < _tmp20 ;
	IfZ _tmp21 Goto _L3 ;
	_tmp22 = 0 ;
	_tmp23 = 4 ;
	_tmp24 = *(a) ;
	_tmp25 = _tmp24 == i ;
	_tmp26 = _tmp24 < i ;
	_tmp27 = _tmp26 || _tmp25 ;
	_tmp28 = i < _tmp22 ;
	_tmp29 = _tmp28 || _tmp27 ;
	IfZ _tmp29 Goto _L4 ;
	_tmp30 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp30 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L4:
	_tmp31 = i * _tmp23 ;
	_tmp32 = _tmp31 + _tmp23 ;
	_tmp33 = a + _tmp32 ;
	_tmp34 = *(_tmp33) ;
	_tmp35 = 8 ;
	PushParam _tmp35 ;
	_tmp36 = LCall _Alloc ;
	PopParams 4 ;
	_tmp37 = A ;
	*(_tmp36) = _tmp37 ;
	_tmp38 = 0 ;
	_tmp39 = 4 ;
	_tmp40 = *(a) ;
	_tmp41 = _tmp40 == i ;
	_tmp42 = _tmp40 < i ;
	_tmp43 = _tmp42 || _tmp41 ;
	_tmp44 = i < _tmp38 ;
	_tmp45 = _tmp44 || _tmp43 ;
	IfZ _tmp45 Goto _L5 ;
	_tmp46 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp46 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L5:
	_tmp47 = i * _tmp39 ;
	_tmp48 = _tmp47 + _tmp39 ;
	_tmp49 = a + _tmp48 ;
	*(_tmp49) = _tmp36 ;
	_tmp50 = 0 ;
	_tmp51 = 4 ;
	_tmp52 = *(a) ;
	_tmp53 = _tmp52 == i ;
	_tmp54 = _tmp52 < i ;
	_tmp55 = _tmp54 || _tmp53 ;
	_tmp56 = i < _tmp50 ;
	_tmp57 = _tmp56 || _tmp55 ;
	IfZ _tmp57 Goto _L6 ;
	_tmp58 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp58 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L6:
	_tmp59 = i * _tmp51 ;
	_tmp60 = _tmp59 + _tmp51 ;
	_tmp61 = a + _tmp60 ;
	_tmp62 = *(_tmp61) ;
	_tmp63 = 2 ;
	_tmp64 = i * _tmp63 ;
	PushParam _tmp64 ;
	_tmp65 = *(_tmp62) ;
	_tmp66 = *(_tmp65) ;
	_tmp67 = ACall _tmp66 ;
	_tmp68 = _tmp62 - _tmp67 ;
	_tmp69 = *(_tmp65 + 4) ;
	PushParam _tmp68 ;
	ACall _tmp69 ;
	_tmp70 = 0 ;
	PopParams 8 ;
	_tmp71 = 1 ;
	_tmp72 = i ;
	_tmp73 = _tmp72 + _tmp71 ;
	i = _tmp73 ;
	Goto _L2 ;
_L3:
	_tmp74 = 0 ;
	i = _tmp74 ;
_L7:
	_tmp75 = *(a) ;
	_tmp76 = i < _tmp75 ;
	IfZ _tmp76 Goto _L8 ;
	_tmp77 = 0 ;
	_tmp78 = 4 ;
	_tmp79 = *(a) ;
	_tmp80 = _tmp79 == i ;
	_tmp81 = _tmp79 < i ;
	_tmp82 = _tmp81 || _tmp80 ;
	_tmp83 = i < _tmp77 ;
	_tmp84 = _tmp83 || _tmp82 ;
	IfZ _tmp84 Goto _L9 ;
	_tmp85 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp85 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L9:
	_tmp86 = i * _tmp78 ;
	_tmp87 = _tmp86 + _tmp78 ;
	_tmp88 = a + _tmp87 ;
	_tmp89 = *(_tmp88) ;
	_tmp90 = *(_tmp89) ;
	_tmp91 = *(_tmp90) ;
	_tmp92 = ACall _tmp91 ;
	_tmp93 = _tmp89 - _tmp92 ;
	_tmp94 = *(_tmp90 + 8) ;
	PushParam _tmp93 ;
	ACall _tmp94 ;
	_tmp95 = 0 ;
	PopParams 4 ;
	_tmp96 = 1 ;
	_tmp97 = i ;
	_tmp98 = _tmp97 + _tmp96 ;
	i = _tmp98 ;
	Goto _L7 ;
_L8:
	EndFunc ;
