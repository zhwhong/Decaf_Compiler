_offset_Binky_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Binky =
	_offset_Binky_0,
	f_Binky.Method1,
	f_Binky.Method2,
	f_Binky.Method3,
; 
f_Binky.Method1:
	BeginFunc 4 ;
	_tmp1 = 1 ;
	PushParam _tmp1 ;
	LCall _PrintInt ;
	PopParams 4 ;
	EndFunc ;
f_Binky.Method2:
	BeginFunc 52 ;
	_tmp2 = *(this) ;
	_tmp3 = *(_tmp2) ;
	_tmp4 = ACall _tmp3 ;
	_tmp5 = this - _tmp4 ;
	_tmp6 = *(_tmp2 + 4) ;
	PushParam _tmp5 ;
	ACall _tmp6 ;
	_tmp7 = 0 ;
	PopParams 4 ;
	_tmp8 = 2 ;
	PushParam _tmp8 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp9 = *(this) ;
	_tmp10 = *(_tmp9) ;
	_tmp11 = ACall _tmp10 ;
	_tmp12 = this - _tmp11 ;
	_tmp13 = *(_tmp9 + 4) ;
	PushParam _tmp12 ;
	ACall _tmp13 ;
	_tmp14 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Binky.Method3:
	BeginFunc 52 ;
	_tmp15 = *(b) ;
	_tmp16 = *(_tmp15) ;
	_tmp17 = ACall _tmp16 ;
	_tmp18 = b - _tmp17 ;
	_tmp19 = *(_tmp15 + 4) ;
	PushParam _tmp18 ;
	ACall _tmp19 ;
	_tmp20 = 0 ;
	PopParams 4 ;
	_tmp21 = 2 ;
	PushParam _tmp21 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp22 = *(this) ;
	_tmp23 = *(_tmp22) ;
	_tmp24 = ACall _tmp23 ;
	_tmp25 = this - _tmp24 ;
	_tmp26 = *(_tmp22 + 8) ;
	PushParam _tmp25 ;
	ACall _tmp26 ;
	_tmp27 = 0 ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp28 = 0 ;
	Return _tmp28 ;
	EndFunc ;
f_main:
main:
	BeginFunc 56 ;
	_tmp29 = 4 ;
	PushParam _tmp29 ;
	_tmp30 = LCall _Alloc ;
	PopParams 4 ;
	_tmp31 = Binky ;
	*(_tmp30) = _tmp31 ;
	b = _tmp30 ;
	_tmp32 = 4 ;
	PushParam _tmp32 ;
	_tmp33 = LCall _Alloc ;
	PopParams 4 ;
	_tmp34 = Binky ;
	*(_tmp33) = _tmp34 ;
	c = _tmp33 ;
	PushParam c ;
	_tmp35 = *(b) ;
	_tmp36 = *(_tmp35) ;
	_tmp37 = ACall _tmp36 ;
	_tmp38 = b - _tmp37 ;
	_tmp39 = *(_tmp35 + 12) ;
	PushParam _tmp38 ;
	ACall _tmp39 ;
	_tmp40 = 0 ;
	PopParams 8 ;
	EndFunc ;
