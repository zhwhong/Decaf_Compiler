_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.a,
	f_A.b,
; 
f_A.a:
	BeginFunc 64 ;
	_tmp1 = 4 ;
	_tmp2 = this + _tmp1 ;
	_tmp3 = *(_tmp2) ;
	_tmp4 = 0 ;
	_tmp5 = 4 ;
	_tmp6 = this + _tmp5 ;
	*(_tmp6) = _tmp4 ;
	_tmp7 = *(this) ;
	_tmp8 = *(_tmp7) ;
	_tmp9 = ACall _tmp8 ;
	_tmp10 = this - _tmp9 ;
	_tmp11 = *(_tmp7 + 8) ;
	PushParam _tmp10 ;
	ACall _tmp11 ;
	_tmp12 = 0 ;
	PopParams 4 ;
	_tmp13 = 4 ;
	_tmp14 = this + _tmp13 ;
	_tmp15 = *(_tmp14) ;
	PushParam _tmp15 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp16 = "\n" ;
	PushParam _tmp16 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_A.b:
	BeginFunc 24 ;
	_tmp17 = 4 ;
	_tmp18 = this + _tmp17 ;
	_tmp19 = *(_tmp18) ;
	_tmp20 = 1 ;
	_tmp21 = 4 ;
	_tmp22 = this + _tmp21 ;
	*(_tmp22) = _tmp20 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp23 = 0 ;
	Return _tmp23 ;
	EndFunc ;
f_main:
main:
	BeginFunc 40 ;
	_tmp24 = 8 ;
	PushParam _tmp24 ;
	_tmp25 = LCall _Alloc ;
	PopParams 4 ;
	_tmp26 = A ;
	*(_tmp25) = _tmp26 ;
	a = _tmp25 ;
	_tmp27 = *(a) ;
	_tmp28 = *(_tmp27) ;
	_tmp29 = ACall _tmp28 ;
	_tmp30 = a - _tmp29 ;
	_tmp31 = *(_tmp27 + 4) ;
	PushParam _tmp30 ;
	ACall _tmp31 ;
	_tmp32 = 0 ;
	PopParams 4 ;
	EndFunc ;
