_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 20 ;
	_tmp1 = 1 ;
	IfZ _tmp1 Goto _L1 ;
	_tmp2 = 0 ;
	IfZ _tmp2 Goto _L3 ;
	_tmp3 = 1 ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L2 ;
_L3:
	_tmp4 = 2 ;
	PushParam _tmp4 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L2:
	Goto _L0 ;
_L1:
	_tmp5 = 3 ;
	PushParam _tmp5 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L0:
	EndFunc ;
