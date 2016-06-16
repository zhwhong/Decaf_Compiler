_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 24 ;
	_tmp1 = 1 ;
	IfZ _tmp1 Goto _L1 ;
	_tmp2 = 1 ;
	PushParam _tmp2 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L0 ;
_L1:
	_tmp3 = 2 ;
	PushParam _tmp3 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L0:
	_tmp4 = 3 ;
	PushParam _tmp4 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp5 = 1 ;
	IfZ _tmp5 Goto _L2 ;
	_tmp6 = 4 ;
	PushParam _tmp6 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L2:
	EndFunc ;
