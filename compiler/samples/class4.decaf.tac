_offset_B_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable B =
	_offset_B_0,
	f_B.GetZ,
; 
f_B.GetZ:
	BeginFunc 12 ;
	_tmp1 = 4 ;
	_tmp2 = this + _tmp1 ;
	_tmp3 = *(_tmp2) ;
	Return _tmp3 ;
	EndFunc ;
_offset_c_0:
	BeginFunc 4 ;
	_tmp4 = 0 ;
	Return _tmp4 ;
	EndFunc ;
VTable c =
	_offset_c_0,
	f_c.binky,
; 
f_c.binky:
	BeginFunc 32 ;
	_tmp5 = "x = " ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp6 = *(x) ;
	_tmp7 = *(_tmp6) ;
	_tmp8 = ACall _tmp7 ;
	_tmp9 = x - _tmp8 ;
	_tmp10 = *(_tmp6 + 4) ;
	PushParam _tmp9 ;
	_tmp11 = ACall _tmp10 ;
	PopParams 4 ;
	PushParam _tmp11 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp12 = "\n" ;
	PushParam _tmp12 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_X_0:
	BeginFunc 4 ;
	_tmp13 = 0 ;
	Return _tmp13 ;
	EndFunc ;
VTable X =
	_offset_X_0,
	f_X.GetZ,
	f_X.f,
	f_X.compare,
; 
f_X.f:
	BeginFunc 64 ;
	_tmp14 = 4 ;
	PushParam _tmp14 ;
	_tmp15 = LCall _Alloc ;
	PopParams 4 ;
	_tmp16 = c ;
	*(_tmp15) = _tmp16 ;
	t = _tmp15 ;
	_tmp17 = 4 ;
	_tmp18 = this + _tmp17 ;
	_tmp19 = *(_tmp18) ;
	_tmp20 = 3 ;
	_tmp21 = 4 ;
	_tmp22 = this + _tmp21 ;
	*(_tmp22) = _tmp20 ;
	PushParam this ;
	_tmp23 = *(t) ;
	_tmp24 = *(_tmp23) ;
	_tmp25 = ACall _tmp24 ;
	_tmp26 = t - _tmp25 ;
	_tmp27 = *(_tmp23 + 4) ;
	PushParam _tmp26 ;
	ACall _tmp27 ;
	_tmp28 = 0 ;
	PopParams 8 ;
	EndFunc ;
f_X.compare:
	BeginFunc 4 ;
	_tmp29 = this == other ;
	Return _tmp29 ;
	EndFunc ;
f_X.GetZ:
	BeginFunc 12 ;
	_tmp30 = 4 ;
	_tmp31 = this + _tmp30 ;
	_tmp32 = *(_tmp31) ;
	Return _tmp32 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp33 = 0 ;
	Return _tmp33 ;
	EndFunc ;
f_main:
main:
	BeginFunc 72 ;
	_tmp34 = 8 ;
	PushParam _tmp34 ;
	_tmp35 = LCall _Alloc ;
	PopParams 4 ;
	_tmp36 = X ;
	*(_tmp35) = _tmp36 ;
	d = _tmp35 ;
	_tmp37 = *(d) ;
	_tmp38 = *(_tmp37) ;
	_tmp39 = ACall _tmp38 ;
	_tmp40 = d - _tmp39 ;
	_tmp41 = *(_tmp37 + 8) ;
	PushParam _tmp40 ;
	ACall _tmp41 ;
	_tmp42 = 0 ;
	PopParams 4 ;
	PushParam d ;
	_tmp43 = *(d) ;
	_tmp44 = *(_tmp43) ;
	_tmp45 = ACall _tmp44 ;
	_tmp46 = d - _tmp45 ;
	_tmp47 = *(_tmp43 + 12) ;
	PushParam _tmp46 ;
	_tmp48 = ACall _tmp47 ;
	PopParams 8 ;
	IfZ _tmp48 Goto _L1 ;
	_tmp49 = "Same" ;
	PushParam _tmp49 ;
	LCall _PrintString ;
	PopParams 4 ;
	Goto _L0 ;
_L1:
	_tmp50 = "Different" ;
	PushParam _tmp50 ;
	LCall _PrintString ;
	PopParams 4 ;
_L0:
	EndFunc ;
