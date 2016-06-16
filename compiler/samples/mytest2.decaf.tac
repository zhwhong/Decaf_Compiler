_offset_Garfield_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Garfield =
	_offset_Garfield_0,
	f_Garfield.meow,
	f_Garfield.reset,
; 
_offset_Garfield_4:
	BeginFunc 4 ;
	_tmp1 = 4 ;
	Return _tmp1 ;
	EndFunc ;
VTable Garfield_Cat =
	_offset_Garfield_4,
	f_Garfield.meow,
; 
f_Garfield.meow:
	BeginFunc 56 ;
	_tmp2 = 8 ;
	_tmp3 = this + _tmp2 ;
	_tmp4 = *(_tmp3) ;
	_tmp5 = 8 ;
	_tmp6 = this + _tmp5 ;
	_tmp7 = *(_tmp6) ;
	_tmp8 = 1 ;
	_tmp9 = _tmp7 - _tmp8 ;
	_tmp10 = 8 ;
	_tmp11 = this + _tmp10 ;
	*(_tmp11) = _tmp9 ;
	_tmp12 = 8 ;
	_tmp13 = this + _tmp12 ;
	_tmp14 = *(_tmp13) ;
	PushParam _tmp14 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp15 = "\n" ;
	PushParam _tmp15 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_Garfield.reset:
	BeginFunc 20 ;
	_tmp16 = 8 ;
	_tmp17 = this + _tmp16 ;
	_tmp18 = *(_tmp17) ;
	_tmp19 = 8 ;
	_tmp20 = this + _tmp19 ;
	*(_tmp20) = x ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp21 = 0 ;
	Return _tmp21 ;
	EndFunc ;
f_main:
main:
	BeginFunc 76 ;
	_tmp22 = 12 ;
	PushParam _tmp22 ;
	_tmp23 = LCall _Alloc ;
	PopParams 4 ;
	_tmp24 = Garfield ;
	*(_tmp23) = _tmp24 ;
	_tmp25 = Garfield_Cat ;
	*(_tmp23 + 4) = _tmp25 ;
	g = _tmp23 ;
	_tmp26 = 10 ;
	PushParam _tmp26 ;
	_tmp27 = *(g) ;
	_tmp28 = *(_tmp27) ;
	_tmp29 = ACall _tmp28 ;
	_tmp30 = g - _tmp29 ;
	_tmp31 = *(_tmp27 + 8) ;
	PushParam _tmp30 ;
	ACall _tmp31 ;
	_tmp32 = 0 ;
	PopParams 8 ;
	_tmp33 = *(g) ;
	_tmp34 = *(_tmp33) ;
	_tmp35 = ACall _tmp34 ;
	_tmp36 = g - _tmp35 ;
	_tmp37 = *(_tmp33 + 4) ;
	PushParam _tmp36 ;
	ACall _tmp37 ;
	_tmp38 = 0 ;
	PopParams 4 ;
	EndFunc ;
