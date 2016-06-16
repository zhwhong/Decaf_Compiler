_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.a_fn,
; 
_offset_A_4:
	BeginFunc 4 ;
	_tmp1 = 4 ;
	Return _tmp1 ;
	EndFunc ;
VTable A_F =
	_offset_A_4,
	f_A.a_fn,
; 
f_A.a_fn:
	BeginFunc 4 ;
	_tmp2 = "A_FN from A\n" ;
	PushParam _tmp2 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_B_0:
	BeginFunc 4 ;
	_tmp3 = 0 ;
	Return _tmp3 ;
	EndFunc ;
VTable B =
	_offset_B_0,
	f_B.a_fn,
	f_B.b_fn,
; 
_offset_B_4:
	BeginFunc 4 ;
	_tmp4 = 4 ;
	Return _tmp4 ;
	EndFunc ;
VTable B_F =
	_offset_B_4,
	f_B.a_fn,
; 
f_B.a_fn:
	BeginFunc 4 ;
	_tmp5 = "A_FN from B\n" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_B.b_fn:
	BeginFunc 4 ;
	_tmp6 = "B_FN from B\n" ;
	PushParam _tmp6 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp7 = 0 ;
	Return _tmp7 ;
	EndFunc ;
f_main:
main:
	BeginFunc 212 ;
	_tmp8 = 12 ;
	PushParam _tmp8 ;
	_tmp9 = LCall _Alloc ;
	PopParams 4 ;
	_tmp10 = A ;
	*(_tmp9) = _tmp10 ;
	_tmp11 = A_F ;
	*(_tmp9 + 4) = _tmp11 ;
	a = _tmp9 ;
	_tmp12 = 16 ;
	PushParam _tmp12 ;
	_tmp13 = LCall _Alloc ;
	PopParams 4 ;
	_tmp14 = B ;
	*(_tmp13) = _tmp14 ;
	_tmp15 = B_F ;
	*(_tmp13 + 4) = _tmp15 ;
	b = _tmp13 ;
	_tmp16 = *(a) ;
	_tmp17 = *(_tmp16) ;
	_tmp18 = ACall _tmp17 ;
	_tmp19 = a - _tmp18 ;
	_tmp20 = *(_tmp16 + 4) ;
	PushParam _tmp19 ;
	ACall _tmp20 ;
	_tmp21 = 0 ;
	PopParams 4 ;
	_tmp22 = *(b) ;
	_tmp23 = *(_tmp22) ;
	_tmp24 = ACall _tmp23 ;
	_tmp25 = b - _tmp24 ;
	_tmp26 = *(_tmp22 + 8) ;
	PushParam _tmp25 ;
	ACall _tmp26 ;
	_tmp27 = 0 ;
	PopParams 4 ;
	a = b ;
	_tmp28 = *(a) ;
	_tmp29 = *(_tmp28) ;
	_tmp30 = ACall _tmp29 ;
	_tmp31 = a - _tmp30 ;
	_tmp32 = *(_tmp28 + 4) ;
	PushParam _tmp31 ;
	ACall _tmp32 ;
	_tmp33 = 0 ;
	PopParams 4 ;
	_tmp34 = 16 ;
	PushParam _tmp34 ;
	_tmp35 = LCall _Alloc ;
	PopParams 4 ;
	_tmp36 = B ;
	*(_tmp35) = _tmp36 ;
	_tmp37 = B_F ;
	*(_tmp35 + 4) = _tmp37 ;
	b = _tmp35 ;
	_tmp38 = 4 ;
	_tmp39 = b + _tmp38 ;
	f = _tmp39 ;
	_tmp40 = *(f) ;
	_tmp41 = *(_tmp40) ;
	_tmp42 = ACall _tmp41 ;
	_tmp43 = f - _tmp42 ;
	_tmp44 = *(_tmp40 + 4) ;
	PushParam _tmp43 ;
	ACall _tmp44 ;
	_tmp45 = 0 ;
	PopParams 4 ;
	_tmp46 = 12 ;
	PushParam _tmp46 ;
	_tmp47 = LCall _Alloc ;
	PopParams 4 ;
	_tmp48 = A ;
	*(_tmp47) = _tmp48 ;
	_tmp49 = A_F ;
	*(_tmp47 + 4) = _tmp49 ;
	a = _tmp47 ;
	_tmp50 = 4 ;
	_tmp51 = a + _tmp50 ;
	f = _tmp51 ;
	_tmp52 = *(f) ;
	_tmp53 = *(_tmp52) ;
	_tmp54 = ACall _tmp53 ;
	_tmp55 = f - _tmp54 ;
	_tmp56 = *(_tmp52 + 4) ;
	PushParam _tmp55 ;
	ACall _tmp56 ;
	_tmp57 = 0 ;
	PopParams 4 ;
	EndFunc ;
