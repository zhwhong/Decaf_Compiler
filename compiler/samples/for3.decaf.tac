_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 40 ;
	_tmp1 = 3 ;
	i = _tmp1 ;
	_tmp2 = 0 ;
	i = _tmp2 ;
_L0:
	_tmp3 = 10 ;
	_tmp4 = i < _tmp3 ;
	IfZ _tmp4 Goto _L1 ;
	PushParam i ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp5 = 1 ;
	_tmp6 = i + _tmp5 ;
	i = _tmp6 ;
	_tmp7 = 2 ;
	_tmp8 = i * _tmp7 ;
	i = _tmp8 ;
	Goto _L0 ;
_L1:
	_tmp9 = "done\n" ;
	PushParam _tmp9 ;
	LCall _PrintString ;
	PopParams 4 ;
	PushParam i ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
