_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.fn,
	f_A.fn2,
; 
f_A.fn:
	BeginFunc 20 ;
	PushParam a ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp1 = " " ;
	PushParam _tmp1 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp2 = 4 ;
	_tmp3 = this + _tmp2 ;
	_tmp4 = *(_tmp3) ;
	PushParam _tmp4 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp5 = "\n" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_A.fn2:
	BeginFunc 24 ;
	_tmp6 = 4 ;
	_tmp7 = this + _tmp6 ;
	_tmp8 = *(_tmp7) ;
	_tmp9 = 137 ;
	_tmp10 = 4 ;
	_tmp11 = this + _tmp10 ;
	*(_tmp11) = _tmp9 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp12 = 0 ;
	Return _tmp12 ;
	EndFunc ;
f_main:
main:
	BeginFunc 68 ;
	_tmp13 = 8 ;
	PushParam _tmp13 ;
	_tmp14 = LCall _Alloc ;
	PopParams 4 ;
	_tmp15 = A ;
	*(_tmp14) = _tmp15 ;
	a = _tmp14 ;
	_tmp16 = *(a) ;
	_tmp17 = *(_tmp16) ;
	_tmp18 = ACall _tmp17 ;
	_tmp19 = a - _tmp18 ;
	_tmp20 = *(_tmp16 + 8) ;
	PushParam _tmp19 ;
	ACall _tmp20 ;
	_tmp21 = 0 ;
	PopParams 4 ;
	_tmp22 = 42 ;
	PushParam _tmp22 ;
	_tmp23 = *(a) ;
	_tmp24 = *(_tmp23) ;
	_tmp25 = ACall _tmp24 ;
	_tmp26 = a - _tmp25 ;
	_tmp27 = *(_tmp23 + 4) ;
	PushParam _tmp26 ;
	ACall _tmp27 ;
	_tmp28 = 0 ;
	PopParams 8 ;
	EndFunc ;
