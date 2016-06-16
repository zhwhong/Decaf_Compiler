_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 48 ;
	_tmp1 = 0 ;
	_tmp2 = 5 ;
	_tmp3 = _tmp1 - _tmp2 ;
	_tmp4 = 0 ;
	_tmp5 = 4 ;
	_tmp6 = _tmp4 < _tmp3 ;
	IfZ _tmp6 Goto _L0 ;
	Goto _L1 ;
_L0:
	_tmp7 = "Decaf runtime error: Array size is <= 0\n" ;
	PushParam _tmp7 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L1:
	_tmp8 = _tmp3 * _tmp5 ;
	_tmp9 = _tmp8 + _tmp5 ;
	PushParam _tmp9 ;
	_tmp10 = LCall _Alloc ;
	PopParams 4 ;
	*(_tmp10) = _tmp3 ;
	arr = _tmp10 ;
	_tmp11 = "shouldn't get here" ;
	PushParam _tmp11 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
