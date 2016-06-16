_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 68 ;
	_tmp1 = 2 ;
	i = _tmp1 ;
_L0:
	_tmp2 = 7 ;
	_tmp3 = i < _tmp2 ;
	IfZ _tmp3 Goto _L1 ;
	_tmp4 = 2 ;
	j = _tmp4 ;
_L2:
	_tmp5 = 6 ;
	_tmp6 = j < _tmp5 ;
	IfZ _tmp6 Goto _L3 ;
	_tmp7 = i * j ;
	_tmp8 = 10 ;
	_tmp9 = _tmp7 == _tmp8 ;
	IfZ _tmp9 Goto _L4 ;
	Goto _L3 ;
_L4:
	PushParam i ;
	LCall _PrintInt ;
	PopParams 4 ;
	PushParam j ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp10 = "\n" ;
	PushParam _tmp10 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp11 = 1 ;
	_tmp12 = j + _tmp11 ;
	j = _tmp12 ;
	Goto _L2 ;
_L3:
	_tmp13 = 1 ;
	_tmp14 = i + _tmp13 ;
	i = _tmp14 ;
	Goto _L0 ;
_L1:
	_tmp15 = "done" ;
	PushParam _tmp15 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
