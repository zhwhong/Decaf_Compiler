_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 60 ;
	_tmp1 = 0 ;
	i = _tmp1 ;
	_tmp2 = 12 ;
	_tmp3 = _tmp2 < i ;
	_tmp4 = 12 ;
	_tmp5 = i < _tmp4 ;
	_tmp6 = _tmp3 || _tmp5 ;
	_tmp7 = 3 ;
	_tmp8 = 5 ;
	_tmp9 = _tmp7 == _tmp8 ;
	_tmp10 = 1 ;
	_tmp11 = _tmp9 && _tmp10 ;
	_tmp12 = _tmp6 || _tmp11 ;
	IfZ _tmp12 Goto _L0 ;
	_tmp13 = 1 ;
	PushParam _tmp13 ;
	LCall _PrintInt ;
	PopParams 4 ;
_L0:
	_tmp14 = 2 ;
	PushParam _tmp14 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
