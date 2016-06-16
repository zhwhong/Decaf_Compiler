_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 172 ;
	_tmp1 = 1 ;
	b = _tmp1 ;
_L0:
	_tmp2 = LCall _ReadInteger ;
	a = _tmp2 ;
	_tmp3 = 0 ;
	_tmp4 = 0 ;
	_tmp5 = a == _tmp3 ;
	_tmp6 = _tmp5 == _tmp4 ;
	IfZ _tmp6 Goto _L1 ;
	_tmp7 = 0 ;
	_tmp8 = a == b ;
	_tmp9 = _tmp8 == _tmp7 ;
	IfZ _tmp9 Goto _L4 ;
	_tmp10 = 1 ;
	_tmp11 = b + _tmp10 ;
	_tmp12 = a == _tmp11 ;
	_tmp13 = _tmp12 == _tmp7 ;
	IfZ _tmp13 Goto _L5 ;
	_tmp14 = 2 ;
	_tmp15 = b + _tmp14 ;
	_tmp16 = a == _tmp15 ;
	_tmp17 = _tmp16 == _tmp7 ;
	IfZ _tmp17 Goto _L6 ;
	_tmp18 = 3 ;
	_tmp19 = b + _tmp18 ;
	_tmp20 = a == _tmp19 ;
	_tmp21 = _tmp20 == _tmp7 ;
	IfZ _tmp21 Goto _L7 ;
	_tmp22 = 4 ;
	_tmp23 = b + _tmp22 ;
	_tmp24 = a == _tmp23 ;
	_tmp25 = _tmp24 == _tmp7 ;
	IfZ _tmp25 Goto _L8 ;
	_tmp26 = 5 ;
	_tmp27 = b + _tmp26 ;
	_tmp28 = a == _tmp27 ;
	_tmp29 = _tmp28 == _tmp7 ;
	IfZ _tmp29 Goto _L9 ;
	_tmp30 = 9 ;
	_tmp31 = b * _tmp30 ;
	_tmp32 = a == _tmp31 ;
	_tmp33 = _tmp32 == _tmp7 ;
	IfZ _tmp33 Goto _L10 ;
	Goto _L3 ;
_L4:
	_tmp34 = "Case B\n" ;
	PushParam _tmp34 ;
	LCall _PrintString ;
	PopParams 4 ;
	Goto _L2 ;
_L5:
	_tmp35 = "Case B+1\n" ;
	PushParam _tmp35 ;
	LCall _PrintString ;
	PopParams 4 ;
_L6:
	_tmp36 = "Case B+2\n" ;
	PushParam _tmp36 ;
	LCall _PrintString ;
	PopParams 4 ;
	Goto _L2 ;
_L7:
	_tmp37 = "Case B+3\n" ;
	PushParam _tmp37 ;
	LCall _PrintString ;
	PopParams 4 ;
_L8:
	_tmp38 = "Case B+4\n" ;
	PushParam _tmp38 ;
	LCall _PrintString ;
	PopParams 4 ;
_L9:
	_tmp39 = "Case B+5\n" ;
	PushParam _tmp39 ;
	LCall _PrintString ;
	PopParams 4 ;
	Goto _L2 ;
_L10:
	_tmp40 = "Case B*2\n" ;
	PushParam _tmp40 ;
	LCall _PrintString ;
	PopParams 4 ;
_L3:
	_tmp41 = "Default\n" ;
	PushParam _tmp41 ;
	LCall _PrintString ;
	PopParams 4 ;
_L2:
	Goto _L0 ;
_L1:
	EndFunc ;
