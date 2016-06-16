_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 48 ;
	_tmp1 = 0 ;
	_tmp2 = 1 ;
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
	_tmp7 = 1 ;
	_tmp8 = 1 ;
	_tmp9 = _tmp7 == _tmp8 ;
	PushParam _tmp9 ;
	LCall _PrintBool ;
	PopParams 4 ;
	_tmp10 = 1 ;
	_tmp11 = 0 ;
	_tmp12 = _tmp10 == _tmp11 ;
	PushParam _tmp12 ;
	LCall _PrintBool ;
	PopParams 4 ;
	EndFunc ;
