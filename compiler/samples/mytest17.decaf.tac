_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.p,
	f_A.q,
; 
f_A.p:
	BeginFunc 28 ;
	_tmp1 = "HEY!" ;
	PushParam _tmp1 ;
	LCall _PrintString ;
	PopParams 4 ;
	PushParam a ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp2 = "\n" ;
	PushParam _tmp2 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp3 = 4 ;
	_tmp4 = this + _tmp3 ;
	_tmp5 = *(_tmp4) ;
	_tmp6 = 4 ;
	_tmp7 = this + _tmp6 ;
	*(_tmp7) = a ;
	EndFunc ;
f_A.q:
	BeginFunc 20 ;
	_tmp8 = "BLAH!" ;
	PushParam _tmp8 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp9 = 4 ;
	_tmp10 = this + _tmp9 ;
	_tmp11 = *(_tmp10) ;
	PushParam _tmp11 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp12 = "\n" ;
	PushParam _tmp12 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp13 = 0 ;
	Return _tmp13 ;
	EndFunc ;
f_main:
main:
	BeginFunc 352 ;
	_tmp14 = 100 ;
	_tmp15 = 0 ;
	_tmp16 = 4 ;
	_tmp17 = _tmp15 < _tmp14 ;
	IfZ _tmp17 Goto _L0 ;
	Goto _L1 ;
_L0:
	_tmp18 = "Decaf runtime error: Array size is <= 0\n" ;
	PushParam _tmp18 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L1:
	_tmp19 = _tmp14 * _tmp16 ;
	_tmp20 = _tmp19 + _tmp16 ;
	PushParam _tmp20 ;
	_tmp21 = LCall _Alloc ;
	PopParams 4 ;
	*(_tmp21) = _tmp14 ;
	b = _tmp21 ;
	_tmp22 = 0 ;
	i = _tmp22 ;
_L2:
	_tmp23 = 100 ;
	_tmp24 = i < _tmp23 ;
	IfZ _tmp24 Goto _L3 ;
	_tmp25 = 0 ;
	_tmp26 = 4 ;
	_tmp27 = *(b) ;
	_tmp28 = _tmp27 == i ;
	_tmp29 = _tmp27 < i ;
	_tmp30 = _tmp29 || _tmp28 ;
	_tmp31 = i < _tmp25 ;
	_tmp32 = _tmp31 || _tmp30 ;
	IfZ _tmp32 Goto _L4 ;
	_tmp33 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp33 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L4:
	_tmp34 = i * _tmp26 ;
	_tmp35 = _tmp34 + _tmp26 ;
	_tmp36 = b + _tmp35 ;
	_tmp37 = *(_tmp36) ;
	_tmp38 = 8 ;
	PushParam _tmp38 ;
	_tmp39 = LCall _Alloc ;
	PopParams 4 ;
	_tmp40 = A ;
	*(_tmp39) = _tmp40 ;
	_tmp41 = 0 ;
	_tmp42 = 4 ;
	_tmp43 = *(b) ;
	_tmp44 = _tmp43 == i ;
	_tmp45 = _tmp43 < i ;
	_tmp46 = _tmp45 || _tmp44 ;
	_tmp47 = i < _tmp41 ;
	_tmp48 = _tmp47 || _tmp46 ;
	IfZ _tmp48 Goto _L5 ;
	_tmp49 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp49 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L5:
	_tmp50 = i * _tmp42 ;
	_tmp51 = _tmp50 + _tmp42 ;
	_tmp52 = b + _tmp51 ;
	*(_tmp52) = _tmp39 ;
	_tmp53 = 0 ;
	_tmp54 = 4 ;
	_tmp55 = *(b) ;
	_tmp56 = _tmp55 == i ;
	_tmp57 = _tmp55 < i ;
	_tmp58 = _tmp57 || _tmp56 ;
	_tmp59 = i < _tmp53 ;
	_tmp60 = _tmp59 || _tmp58 ;
	IfZ _tmp60 Goto _L6 ;
	_tmp61 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp61 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L6:
	_tmp62 = i * _tmp54 ;
	_tmp63 = _tmp62 + _tmp54 ;
	_tmp64 = b + _tmp63 ;
	_tmp65 = *(_tmp64) ;
	PushParam i ;
	_tmp66 = *(_tmp65) ;
	_tmp67 = *(_tmp66) ;
	_tmp68 = ACall _tmp67 ;
	_tmp69 = _tmp65 - _tmp68 ;
	_tmp70 = *(_tmp66 + 4) ;
	PushParam _tmp69 ;
	ACall _tmp70 ;
	_tmp71 = 0 ;
	PopParams 8 ;
	_tmp72 = 1 ;
	_tmp73 = i ;
	_tmp74 = _tmp73 + _tmp72 ;
	i = _tmp74 ;
	Goto _L2 ;
_L3:
	_tmp75 = 0 ;
	i = _tmp75 ;
_L7:
	_tmp76 = 100 ;
	_tmp77 = i < _tmp76 ;
	IfZ _tmp77 Goto _L8 ;
	_tmp78 = 0 ;
	_tmp79 = 4 ;
	_tmp80 = *(b) ;
	_tmp81 = _tmp80 == i ;
	_tmp82 = _tmp80 < i ;
	_tmp83 = _tmp82 || _tmp81 ;
	_tmp84 = i < _tmp78 ;
	_tmp85 = _tmp84 || _tmp83 ;
	IfZ _tmp85 Goto _L9 ;
	_tmp86 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp86 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L9:
	_tmp87 = i * _tmp79 ;
	_tmp88 = _tmp87 + _tmp79 ;
	_tmp89 = b + _tmp88 ;
	_tmp90 = *(_tmp89) ;
	_tmp91 = *(_tmp90) ;
	_tmp92 = *(_tmp91) ;
	_tmp93 = ACall _tmp92 ;
	_tmp94 = _tmp90 - _tmp93 ;
	_tmp95 = *(_tmp91 + 8) ;
	PushParam _tmp94 ;
	ACall _tmp95 ;
	_tmp96 = 0 ;
	PopParams 4 ;
	_tmp97 = 1 ;
	_tmp98 = i ;
	_tmp99 = _tmp98 + _tmp97 ;
	i = _tmp99 ;
	Goto _L7 ;
_L8:
	EndFunc ;
