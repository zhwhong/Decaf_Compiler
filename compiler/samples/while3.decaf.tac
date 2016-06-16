_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 8 ;
_L0:
	_tmp1 = 1 ;
	IfZ _tmp1 Goto _L1 ;
	Goto _L1 ;
	Goto _L0 ;
_L1:
	_tmp2 = 1 ;
	PushParam _tmp2 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
