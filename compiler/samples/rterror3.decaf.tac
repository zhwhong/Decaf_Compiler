_offset_main_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
f_main:
main:
	BeginFunc 92 ;
	_tmp1 = 27 ;
	_tmp2 = 0 ;
	_tmp3 = 4 ;
	_tmp4 = _tmp2 < _tmp1 ;
	IfZ _tmp4 Goto _L0 ;
	Goto _L1 ;
_L0:
	_tmp5 = "Decaf runtime error: Array size is <= 0\n" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L1:
	_tmp6 = _tmp1 * _tmp3 ;
	_tmp7 = _tmp6 + _tmp3 ;
	PushParam _tmp7 ;
	_tmp8 = LCall _Alloc ;
	PopParams 4 ;
	*(_tmp8) = _tmp1 ;
	arr = _tmp8 ;
	_tmp9 = 120 ;
	_tmp10 = 0 ;
	_tmp11 = 4 ;
	_tmp12 = *(arr) ;
	_tmp13 = _tmp12 == _tmp9 ;
	_tmp14 = _tmp12 < _tmp9 ;
	_tmp15 = _tmp14 || _tmp13 ;
	_tmp16 = _tmp9 < _tmp10 ;
	_tmp17 = _tmp16 || _tmp15 ;
	IfZ _tmp17 Goto _L2 ;
	_tmp18 = "Decaf runtime error: Array subscript out of bound..." ;
	PushParam _tmp18 ;
	LCall _PrintString ;
	PopParams 4 ;
	LCall _Halt ;
_L2:
	_tmp19 = _tmp9 * _tmp11 ;
	_tmp20 = _tmp19 + _tmp11 ;
	_tmp21 = arr + _tmp20 ;
	_tmp22 = *(_tmp21) ;
	PushParam _tmp22 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
