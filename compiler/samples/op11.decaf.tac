_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 24 ;
	_tmp1 = 1 ;
	_tmp2 = 0 ;
	_tmp3 = _tmp1 == _tmp2 ;
	PushParam _tmp3 ;
	LCall _PrintBool ;
	PopParams 4 ;
	_tmp4 = 0 ;
	_tmp5 = 0 ;
	_tmp6 = _tmp4 == _tmp5 ;
	PushParam _tmp6 ;
	LCall _PrintBool ;
	PopParams 4 ;
	EndFunc ;
