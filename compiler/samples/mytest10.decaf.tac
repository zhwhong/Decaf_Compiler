_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.modifymyint,
	f_A.printmyint,
; 
f_A.modifymyint:
	BeginFunc 20 ;
	_tmp1 = 4 ;
	_tmp2 = this + _tmp1 ;
	_tmp3 = *(_tmp2) ;
	_tmp4 = 4 ;
	_tmp5 = this + _tmp4 ;
	*(_tmp5) = x ;
	EndFunc ;
f_A.printmyint:
	BeginFunc 16 ;
	_tmp6 = 4 ;
	_tmp7 = this + _tmp6 ;
	_tmp8 = *(_tmp7) ;
	PushParam _tmp8 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp9 = "\n" ;
	PushParam _tmp9 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_B_0:
	BeginFunc 4 ;
	_tmp10 = 0 ;
	Return _tmp10 ;
	EndFunc ;
VTable B =
	_offset_B_0,
	f_B.returnClassA,
; 
f_B.returnClassA:
	BeginFunc 44 ;
	_tmp11 = 8 ;
	PushParam _tmp11 ;
	_tmp12 = LCall _Alloc ;
	PopParams 4 ;
	_tmp13 = A ;
	*(_tmp12) = _tmp13 ;
	a = _tmp12 ;
	_tmp14 = 42 ;
	PushParam _tmp14 ;
	_tmp15 = *(a) ;
	_tmp16 = *(_tmp15) ;
	_tmp17 = ACall _tmp16 ;
	_tmp18 = a - _tmp17 ;
	_tmp19 = *(_tmp15 + 4) ;
	PushParam _tmp18 ;
	ACall _tmp19 ;
	_tmp20 = 0 ;
	PopParams 8 ;
	Return a ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp21 = 0 ;
	Return _tmp21 ;
	EndFunc ;
f_main:
main:
	BeginFunc 120 ;
	_tmp22 = 4 ;
	PushParam _tmp22 ;
	_tmp23 = LCall _Alloc ;
	PopParams 4 ;
	_tmp24 = B ;
	*(_tmp23) = _tmp24 ;
	b = _tmp23 ;
	_tmp25 = *(b) ;
	_tmp26 = *(_tmp25) ;
	_tmp27 = ACall _tmp26 ;
	_tmp28 = b - _tmp27 ;
	_tmp29 = *(_tmp25 + 4) ;
	PushParam _tmp28 ;
	_tmp30 = ACall _tmp29 ;
	PopParams 4 ;
	a = _tmp30 ;
	_tmp31 = *(a) ;
	_tmp32 = *(_tmp31) ;
	_tmp33 = ACall _tmp32 ;
	_tmp34 = a - _tmp33 ;
	_tmp35 = *(_tmp31 + 8) ;
	PushParam _tmp34 ;
	ACall _tmp35 ;
	_tmp36 = 0 ;
	PopParams 4 ;
	_tmp37 = 137 ;
	PushParam _tmp37 ;
	_tmp38 = *(a) ;
	_tmp39 = *(_tmp38) ;
	_tmp40 = ACall _tmp39 ;
	_tmp41 = a - _tmp40 ;
	_tmp42 = *(_tmp38 + 4) ;
	PushParam _tmp41 ;
	ACall _tmp42 ;
	_tmp43 = 0 ;
	PopParams 8 ;
	_tmp44 = *(a) ;
	_tmp45 = *(_tmp44) ;
	_tmp46 = ACall _tmp45 ;
	_tmp47 = a - _tmp46 ;
	_tmp48 = *(_tmp44 + 8) ;
	PushParam _tmp47 ;
	ACall _tmp48 ;
	_tmp49 = 0 ;
	PopParams 4 ;
	EndFunc ;
