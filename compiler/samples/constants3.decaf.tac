_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 4 ;
	_tmp1 = "Winky Inky Binky Slinky Dinky\n" ;
	PushParam _tmp1 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
