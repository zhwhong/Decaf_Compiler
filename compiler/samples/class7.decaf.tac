_offset_Cow_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Cow =
	_offset_Cow_0,
	f_Cow.Moo,
	f_Cow.Method,
; 
f_Cow.Moo:
	BeginFunc 20 ;
	_tmp1 = i + j ;
	_tmp2 = _tmp1 + k ;
	_tmp3 = _tmp2 + l ;
	_tmp4 = _tmp3 + m ;
	_tmp5 = _tmp4 + n ;
	Return _tmp5 ;
	EndFunc ;
f_Cow.Method:
	BeginFunc 36 ;
	_tmp6 = 0 ;
	IfZ _tmp6 Goto _L0 ;
	PushParam a ;
	PushParam a ;
	PushParam a ;
	PushParam a ;
	PushParam a ;
	PushParam a ;
	_tmp7 = *(this) ;
	_tmp8 = *(_tmp7) ;
	_tmp9 = ACall _tmp8 ;
	_tmp10 = this - _tmp9 ;
	_tmp11 = *(_tmp7 + 4) ;
	PushParam _tmp10 ;
	_tmp12 = ACall _tmp11 ;
	PopParams 28 ;
_L0:
	_tmp13 = 3 ;
	PushParam _tmp13 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp14 = 4 ;
	PushParam _tmp14 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp15 = 0 ;
	Return _tmp15 ;
	EndFunc ;
f_main:
main:
	BeginFunc 44 ;
	_tmp16 = 4 ;
	PushParam _tmp16 ;
	_tmp17 = LCall _Alloc ;
	PopParams 4 ;
	_tmp18 = Cow ;
	*(_tmp17) = _tmp18 ;
	c = _tmp17 ;
	_tmp19 = 6 ;
	PushParam _tmp19 ;
	_tmp20 = *(c) ;
	_tmp21 = *(_tmp20) ;
	_tmp22 = ACall _tmp21 ;
	_tmp23 = c - _tmp22 ;
	_tmp24 = *(_tmp20 + 8) ;
	PushParam _tmp23 ;
	ACall _tmp24 ;
	_tmp25 = 0 ;
	PopParams 8 ;
	EndFunc ;
