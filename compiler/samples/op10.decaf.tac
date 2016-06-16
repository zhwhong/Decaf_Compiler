_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 32 ;
	_tmp1 = 0 ;
	_tmp2 = 5 ;
	_tmp3 = _tmp1 - _tmp2 ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp4 = 0 ;
	_tmp5 = 0 ;
	_tmp6 = 9 ;
	_tmp7 = _tmp5 - _tmp6 ;
	_tmp8 = _tmp4 - _tmp7 ;
	PushParam _tmp8 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
