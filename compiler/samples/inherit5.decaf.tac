_offset_Animal_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Animal =
	_offset_Animal_0,
	f_Animal.Method,
	f_Animal.Method1,
	f_Animal.AMethod,
; 
f_Animal.Method:
	BeginFunc 4 ;
	_tmp1 = "Hello from Animal\n" ;
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
f_Animal.AMethod:
	BeginFunc 4 ;
	_tmp3 = "not overridden\n" ;
	PushParam _tmp3 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_Cow_0:
	BeginFunc 4 ;
	_tmp4 = 0 ;
	Return _tmp4 ;
	EndFunc ;
VTable Cow =
	_offset_Cow_0,
	f_Cow.Method,
	f_Cow.Method1,
	f_Cow.AMethod,
	f_Cow.Method2,
; 
f_Cow.Method:
	BeginFunc 4 ;
	_tmp5 = "Hello from Cow" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Cow.Method2:
	BeginFunc 28 ;
	_tmp6 = "Cow2" ;
	PushParam _tmp6 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp7 = *(this) ;
	_tmp8 = *(_tmp7) ;
	_tmp9 = ACall _tmp8 ;
	_tmp10 = this - _tmp9 ;
	_tmp11 = *(_tmp7 + 8) ;
	PushParam _tmp10 ;
	ACall _tmp11 ;
	_tmp12 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Cow.Method1:
	BeginFunc 4 ;
	_tmp13 = "Cow" ;
	PushParam _tmp13 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Cow.AMethod:
	BeginFunc 0 ;
	EndFunc ;
_offset_Jersey_0:
	BeginFunc 4 ;
	_tmp14 = 0 ;
	Return _tmp14 ;
	EndFunc ;
VTable Jersey =
	_offset_Jersey_0,
	f_Jersey.Method,
	f_Jersey.Method1,
	f_Jersey.AMethod,
	f_Jersey.Method2,
	f_Jersey.Method3,
; 
f_Jersey.Method:
	BeginFunc 4 ;
	_tmp15 = "Hello from Jersey." ;
	PushParam _tmp15 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.Method3:
	BeginFunc 28 ;
	_tmp16 = "Jersey3" ;
	PushParam _tmp16 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp17 = *(this) ;
	_tmp18 = *(_tmp17) ;
	_tmp19 = ACall _tmp18 ;
	_tmp20 = this - _tmp19 ;
	_tmp21 = *(_tmp17 + 16) ;
	PushParam _tmp20 ;
	ACall _tmp21 ;
	_tmp22 = 0 ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.Method1:
	BeginFunc 4 ;
	_tmp23 = "Jersey" ;
	PushParam _tmp23 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Jersey.AMethod:
	BeginFunc 0 ;
	EndFunc ;
f_Jersey.Method2:
	BeginFunc 28 ;
	_tmp24 = "Cow2" ;
	PushParam _tmp24 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp25 = *(this) ;
	_tmp26 = *(_tmp25) ;
	_tmp27 = ACall _tmp26 ;
	_tmp28 = this - _tmp27 ;
	_tmp29 = *(_tmp25 + 8) ;
	PushParam _tmp28 ;
	ACall _tmp29 ;
	_tmp30 = 0 ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp31 = 0 ;
	Return _tmp31 ;
	EndFunc ;
f_main:
main:
	BeginFunc 128 ;
	_tmp32 = 4 ;
	PushParam _tmp32 ;
	_tmp33 = LCall _Alloc ;
	PopParams 4 ;
	_tmp34 = Cow ;
	*(_tmp33) = _tmp34 ;
	a = _tmp33 ;
	_tmp35 = *(a) ;
	_tmp36 = *(_tmp35) ;
	_tmp37 = ACall _tmp36 ;
	_tmp38 = a - _tmp37 ;
	_tmp39 = *(_tmp35 + 16) ;
	PushParam _tmp38 ;
	ACall _tmp39 ;
	_tmp40 = 0 ;
	PopParams 4 ;
	_tmp41 = 4 ;
	PushParam _tmp41 ;
	_tmp42 = LCall _Alloc ;
	PopParams 4 ;
	_tmp43 = Jersey ;
	*(_tmp42) = _tmp43 ;
	j = _tmp42 ;
	a = j ;
	_tmp44 = *(a) ;
	_tmp45 = *(_tmp44) ;
	_tmp46 = ACall _tmp45 ;
	_tmp47 = a - _tmp46 ;
	_tmp48 = *(_tmp44 + 16) ;
	PushParam _tmp47 ;
	ACall _tmp48 ;
	_tmp49 = 0 ;
	PopParams 4 ;
	_tmp50 = *(j) ;
	_tmp51 = *(_tmp50) ;
	_tmp52 = ACall _tmp51 ;
	_tmp53 = j - _tmp52 ;
	_tmp54 = *(_tmp50 + 20) ;
	PushParam _tmp53 ;
	ACall _tmp54 ;
	_tmp55 = 0 ;
	PopParams 4 ;
	_tmp56 = *(a) ;
	_tmp57 = *(_tmp56) ;
	_tmp58 = ACall _tmp57 ;
	_tmp59 = a - _tmp58 ;
	_tmp60 = *(_tmp56 + 4) ;
	PushParam _tmp59 ;
	ACall _tmp60 ;
	_tmp61 = 0 ;
	PopParams 4 ;
	EndFunc ;
