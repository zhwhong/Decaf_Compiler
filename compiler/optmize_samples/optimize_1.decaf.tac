_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 44 ;
	_tmp1 = 1 ;
	x = _tmp1 ;
	_tmp2 = 2 ;
	y = _tmp2 ;
	_tmp3 = x + y ;
	a = _tmp3 ;
	PushParam a ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp4 = x + y ;
	b = _tmp4 ;
	PushParam b ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp5 = 3 ;
	x = _tmp5 ;
	_tmp6 = x + y ;
	c = _tmp6 ;
	PushParam c ;
	LCall _PrintInt ;
	PopParams 4 ;
	Return  ;
	EndFunc ;
