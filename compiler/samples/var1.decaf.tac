_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 8 ;
	_tmp1 = 2 ;
	x = _tmp1 ;
	PushParam x ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
