_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 44 ;
	_tmp1 = 1 ;
	_tmp2 = 2 ;
	_tmp3 = _tmp1 + _tmp2 ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
	b = _tmp3 ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp5 = 3 ;
	_tmp6 = _tmp5 + _tmp2 ;
	c = _tmp6 ;
	PushParam _tmp6 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Return  ;
	EndFunc ;
