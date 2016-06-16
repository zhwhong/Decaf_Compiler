_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 60 ;
	_tmp1 = 1 ;
	_tmp2 = 1 ;
	_tmp3 = _tmp1 + _tmp2 ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp4 = 10 ;
	_tmp5 = 5 ;
	_tmp6 = _tmp4 - _tmp5 ;
	PushParam _tmp6 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp7 = 21 ;
	_tmp8 = 3 ;
	_tmp9 = _tmp7 / _tmp8 ;
	PushParam _tmp9 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp10 = 345 ;
	_tmp11 = 56 ;
	_tmp12 = _tmp10 * _tmp11 ;
	PushParam _tmp12 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp13 = 82 ;
	_tmp14 = 9 ;
	_tmp15 = _tmp13 % _tmp14 ;
	PushParam _tmp15 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
