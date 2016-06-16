_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 108 ;
	_tmp1 = 1 ;
	_tmp2 = 1 ;
	_tmp3 = _tmp1 == _tmp2 ;
	IfZ _tmp3 Goto _L1 ;
	_tmp4 = 1 ;
	PushParam _tmp4 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L0 ;
_L1:
	_tmp5 = 2 ;
	_tmp6 = 1 ;
	_tmp7 = _tmp5 == _tmp6 ;
	IfZ _tmp7 Goto _L3 ;
	_tmp8 = 2 ;
	PushParam _tmp8 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L2 ;
_L3:
	_tmp9 = 3 ;
	PushParam _tmp9 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L2:
_L0:
	_tmp10 = 1 ;
	_tmp11 = 2 ;
	_tmp12 = _tmp10 == _tmp11 ;
	IfZ _tmp12 Goto _L5 ;
	_tmp13 = 1 ;
	PushParam _tmp13 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L4 ;
_L5:
	_tmp14 = 2 ;
	_tmp15 = 2 ;
	_tmp16 = _tmp14 == _tmp15 ;
	IfZ _tmp16 Goto _L7 ;
	_tmp17 = 2 ;
	PushParam _tmp17 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L6 ;
_L7:
	_tmp18 = 3 ;
	PushParam _tmp18 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L6:
_L4:
	_tmp19 = 1 ;
	_tmp20 = 2 ;
	_tmp21 = _tmp19 == _tmp20 ;
	IfZ _tmp21 Goto _L9 ;
	_tmp22 = 1 ;
	PushParam _tmp22 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L8 ;
_L9:
	_tmp23 = 2 ;
	_tmp24 = 1 ;
	_tmp25 = _tmp23 == _tmp24 ;
	IfZ _tmp25 Goto _L11 ;
	_tmp26 = 2 ;
	PushParam _tmp26 ;
	LCall _PrintInt ;
	PopParams 4 ;
	Goto _L10 ;
_L11:
	_tmp27 = 3 ;
	PushParam _tmp27 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L10:
_L8:
	EndFunc ;
