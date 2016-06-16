_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.fn1,
; 
f_A.fn1:
	BeginFunc 44 ;
	_tmp1 = 4 ;
	_tmp2 = this + _tmp1 ;
	_tmp3 = *(_tmp2) ;
	_tmp4 = 0 ;
	_tmp5 = 4 ;
	_tmp6 = this + _tmp5 ;
	*(_tmp6) = _tmp4 ;
	_tmp7 = "TEST!" ;
	PushParam _tmp7 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp8 = 4 ;
	_tmp9 = this + _tmp8 ;
	_tmp10 = *(_tmp9) ;
	PushParam _tmp10 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp11 = "\n" ;
	PushParam _tmp11 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_B_0:
	BeginFunc 4 ;
	_tmp12 = 0 ;
	Return _tmp12 ;
	EndFunc ;
VTable B =
	_offset_B_0,
	f_B.fn1,
; 
_offset_B_4:
	BeginFunc 4 ;
	_tmp13 = 4 ;
	Return _tmp13 ;
	EndFunc ;
VTable B_I =
	_offset_B_4,
	f_B.fn1,
; 
f_B.fn1:
	BeginFunc 44 ;
	_tmp14 = 8 ;
	_tmp15 = this + _tmp14 ;
	_tmp16 = *(_tmp15) ;
	_tmp17 = 0 ;
	_tmp18 = 8 ;
	_tmp19 = this + _tmp18 ;
	*(_tmp19) = _tmp17 ;
	_tmp20 = "TEST!" ;
	PushParam _tmp20 ;
	LCall _PrintString ;
	PopParams 4 ;
	_tmp21 = 8 ;
	_tmp22 = this + _tmp21 ;
	_tmp23 = *(_tmp22) ;
	PushParam _tmp23 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp24 = "\n" ;
	PushParam _tmp24 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp25 = 0 ;
	Return _tmp25 ;
	EndFunc ;
f_main:
main:
	BeginFunc 104 ;
	_tmp26 = 12 ;
	PushParam _tmp26 ;
	_tmp27 = LCall _Alloc ;
	PopParams 4 ;
	_tmp28 = B ;
	*(_tmp27) = _tmp28 ;
	_tmp29 = B_I ;
	*(_tmp27 + 4) = _tmp29 ;
	_tmp30 = 4 ;
	_tmp31 = _tmp27 + _tmp30 ;
	I = _tmp31 ;
	_tmp32 = *(I) ;
	_tmp33 = *(_tmp32) ;
	_tmp34 = ACall _tmp33 ;
	_tmp35 = I - _tmp34 ;
	_tmp36 = *(_tmp32 + 4) ;
	PushParam _tmp35 ;
	ACall _tmp36 ;
	_tmp37 = 0 ;
	PopParams 4 ;
	_tmp38 = 12 ;
	PushParam _tmp38 ;
	_tmp39 = LCall _Alloc ;
	PopParams 4 ;
	_tmp40 = B ;
	*(_tmp39) = _tmp40 ;
	_tmp41 = B_I ;
	*(_tmp39 + 4) = _tmp41 ;
	_tmp42 = 4 ;
	_tmp43 = _tmp39 + _tmp42 ;
	zz = _tmp43 ;
	_tmp44 = *(zz) ;
	_tmp45 = *(_tmp44) ;
	_tmp46 = ACall _tmp45 ;
	_tmp47 = zz - _tmp46 ;
	_tmp48 = *(_tmp44 + 4) ;
	PushParam _tmp47 ;
	ACall _tmp48 ;
	_tmp49 = 0 ;
	PopParams 4 ;
	EndFunc ;
