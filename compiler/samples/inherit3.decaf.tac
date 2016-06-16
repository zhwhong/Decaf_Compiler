_offset_Animal_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Animal =
	_offset_Animal_0,
	f_Animal.MethodA,
	f_Animal.Method1,
; 
f_Animal.MethodA:
	BeginFunc 4 ;
	_tmp1 = "Not overridden\n" ;
	PushParam _tmp1 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Animal.Method1:
	BeginFunc 4 ;
	_tmp2 = "Animal" ;
	PushParam _tmp2 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_Cow_0:
	BeginFunc 4 ;
	_tmp3 = 0 ;
	Return _tmp3 ;
	EndFunc ;
VTable Cow =
	_offset_Cow_0,
	f_Cow.MethodA,
	f_Cow.Method1,
; 
f_Cow.Method1:
	BeginFunc 4 ;
	_tmp4 = "Cow" ;
	PushParam _tmp4 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Cow.MethodA:
	BeginFunc 4 ;
	_tmp5 = "Not overridden\n" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_Jersey_0:
	BeginFunc 4 ;
	_tmp6 = 0 ;
	Return _tmp6 ;
	EndFunc ;
VTable Jersey =
	_offset_Jersey_0,
	f_Jersey.MethodA,
	f_Jersey.Method1,
; 
f_Jersey.Method1:
	BeginFunc 4 ;
	_tmp7 = "Jersey" ;
	PushParam _tmp7 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.MethodA:
	BeginFunc 4 ;
	_tmp8 = "Not overridden\n" ;
	PushParam _tmp8 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp9 = 0 ;
	Return _tmp9 ;
	EndFunc ;
f_main:
main:
	BeginFunc 192 ;
	_tmp10 = 4 ;
	PushParam _tmp10 ;
	_tmp11 = LCall _Alloc ;
	PopParams 4 ;
	_tmp12 = Animal ;
	*(_tmp11) = _tmp12 ;
	a = _tmp11 ;
	_tmp13 = *(a) ;
	_tmp14 = *(_tmp13) ;
	_tmp15 = ACall _tmp14 ;
	_tmp16 = a - _tmp15 ;
	_tmp17 = *(_tmp13 + 4) ;
	PushParam _tmp16 ;
	ACall _tmp17 ;
	_tmp18 = 0 ;
	PopParams 4 ;
	_tmp19 = *(a) ;
	_tmp20 = *(_tmp19) ;
	_tmp21 = ACall _tmp20 ;
	_tmp22 = a - _tmp21 ;
	_tmp23 = *(_tmp19 + 8) ;
	PushParam _tmp22 ;
	ACall _tmp23 ;
	_tmp24 = 0 ;
	PopParams 4 ;
	_tmp25 = 4 ;
	PushParam _tmp25 ;
	_tmp26 = LCall _Alloc ;
	PopParams 4 ;
	_tmp27 = Cow ;
	*(_tmp26) = _tmp27 ;
	c = _tmp26 ;
	_tmp28 = *(c) ;
	_tmp29 = *(_tmp28) ;
	_tmp30 = ACall _tmp29 ;
	_tmp31 = c - _tmp30 ;
	_tmp32 = *(_tmp28 + 4) ;
	PushParam _tmp31 ;
	ACall _tmp32 ;
	_tmp33 = 0 ;
	PopParams 4 ;
	_tmp34 = *(c) ;
	_tmp35 = *(_tmp34) ;
	_tmp36 = ACall _tmp35 ;
	_tmp37 = c - _tmp36 ;
	_tmp38 = *(_tmp34 + 8) ;
	PushParam _tmp37 ;
	ACall _tmp38 ;
	_tmp39 = 0 ;
	PopParams 4 ;
	_tmp40 = 4 ;
	PushParam _tmp40 ;
	_tmp41 = LCall _Alloc ;
	PopParams 4 ;
	_tmp42 = Jersey ;
	*(_tmp41) = _tmp42 ;
	j = _tmp41 ;
	_tmp43 = *(j) ;
	_tmp44 = *(_tmp43) ;
	_tmp45 = ACall _tmp44 ;
	_tmp46 = j - _tmp45 ;
	_tmp47 = *(_tmp43 + 4) ;
	PushParam _tmp46 ;
	ACall _tmp47 ;
	_tmp48 = 0 ;
	PopParams 4 ;
	_tmp49 = *(j) ;
	_tmp50 = *(_tmp49) ;
	_tmp51 = ACall _tmp50 ;
	_tmp52 = j - _tmp51 ;
	_tmp53 = *(_tmp49 + 8) ;
	PushParam _tmp52 ;
	ACall _tmp53 ;
	_tmp54 = 0 ;
	PopParams 4 ;
	EndFunc ;
