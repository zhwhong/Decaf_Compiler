_offset_exp_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable exp =
	_offset_exp_0,
	f_exp.f,
	f_exp.ff,
	f_exp.g,
; 
f_exp.f:
	BeginFunc 0 ;
	PushParam fe ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
f_exp.ff:
	BeginFunc 28 ;
	_tmp1 = 34 ;
	PushParam _tmp1 ;
	_tmp2 = *(this) ;
	_tmp3 = *(_tmp2) ;
	_tmp4 = ACall _tmp3 ;
	_tmp5 = this - _tmp4 ;
	_tmp6 = *(_tmp2 + 4) ;
	PushParam _tmp5 ;
	ACall _tmp6 ;
	_tmp7 = 0 ;
	PopParams 8 ;
	EndFunc ;
f_exp.g:
	BeginFunc 0 ;
	PushParam c ;
	LCall _PrintBool ;
	PopParams 4 ;
	PushParam b ;
	LCall _PrintString ;
	PopParams 4 ;
	PushParam a ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp8 = 0 ;
	Return _tmp8 ;
	EndFunc ;
f_main:
main:
	BeginFunc 156 ;
	_tmp9 = 4 ;
	PushParam _tmp9 ;
	_tmp10 = LCall _Alloc ;
	PopParams 4 ;
	_tmp11 = exp ;
	*(_tmp10) = _tmp11 ;
	a = _tmp10 ;
	_tmp12 = 12 ;
	PushParam _tmp12 ;
	_tmp13 = *(a) ;
	_tmp14 = *(_tmp13) ;
	_tmp15 = ACall _tmp14 ;
	_tmp16 = a - _tmp15 ;
	_tmp17 = *(_tmp13 + 4) ;
	PushParam _tmp16 ;
	ACall _tmp17 ;
	_tmp18 = 0 ;
	PopParams 8 ;
	_tmp19 = *(a) ;
	_tmp20 = *(_tmp19) ;
	_tmp21 = ACall _tmp20 ;
	_tmp22 = a - _tmp21 ;
	_tmp23 = *(_tmp19 + 8) ;
	PushParam _tmp22 ;
	ACall _tmp23 ;
	_tmp24 = 0 ;
	PopParams 4 ;
	_tmp25 = 1 ;
	PushParam _tmp25 ;
	_tmp26 = " and " ;
	PushParam _tmp26 ;
	_tmp27 = 2 ;
	PushParam _tmp27 ;
	_tmp28 = *(a) ;
	_tmp29 = *(_tmp28) ;
	_tmp30 = ACall _tmp29 ;
	_tmp31 = a - _tmp30 ;
	_tmp32 = *(_tmp28 + 12) ;
	PushParam _tmp31 ;
	ACall _tmp32 ;
	_tmp33 = 0 ;
	PopParams 16 ;
	_tmp34 = 10 ;
	_tmp35 = 3 ;
	_tmp36 = 2 ;
	_tmp37 = _tmp35 % _tmp36 ;
	_tmp38 = _tmp34 + _tmp37 ;
	_tmp39 = 5 ;
	_tmp40 = _tmp38 + _tmp39 ;
	PushParam _tmp40 ;
	_tmp41 = *(a) ;
	_tmp42 = *(_tmp41) ;
	_tmp43 = ACall _tmp42 ;
	_tmp44 = a - _tmp43 ;
	_tmp45 = *(_tmp41 + 4) ;
	PushParam _tmp44 ;
	ACall _tmp45 ;
	_tmp46 = 0 ;
	PopParams 8 ;
	EndFunc ;
