_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 28 ;
	_tmp1 = 10 ;
	i = _tmp1 ;
_L0:
	_tmp2 = 0 ;
	_tmp3 = _tmp2 < i ;
	IfZ _tmp3 Goto _L1 ;
	PushParam i ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp4 = 2 ;
	_tmp5 = i - _tmp4 ;
	i = _tmp5 ;
	Goto _L0 ;
_L1:
	_tmp6 = "done\n" ;
	PushParam _tmp6 ;
	LCall _PrintString ;
	PopParams 4 ;
	PushParam i ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
