_offset_Cow_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Cow =
	_offset_Cow_0,
	f_Cow.Init,
; 
f_Cow.Init:
	BeginFunc 4 ;
	_tmp1 = "Moo" ;
	PushParam _tmp1 ;
	LCall _PrintString ;
	PopParams 4 ;
	Return  ;
	EndFunc ;
_offset_Barn_0:
	BeginFunc 4 ;
	_tmp2 = 0 ;
	Return _tmp2 ;
	EndFunc ;
VTable Barn =
	_offset_Barn_0,
	f_Barn.Init,
; 
f_Barn.Init:
	BeginFunc 40 ;
	_tmp3 = 4 ;
	PushParam _tmp3 ;
	_tmp4 = LCall _Alloc ;
	PopParams 4 ;
	_tmp5 = Cow ;
	*(_tmp4) = _tmp5 ;
	_tmp6 = *(_tmp4) ;
	_tmp7 = *(_tmp6) ;
	_tmp8 = ACall _tmp7 ;
	_tmp9 = _tmp4 - _tmp8 ;
	_tmp10 = *(_tmp6 + 4) ;
	PushParam _tmp9 ;
	_tmp11 = ACall _tmp10 ;
	PopParams 4 ;
	b = _tmp11 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp12 = 0 ;
	Return _tmp12 ;
	EndFunc ;
f_main:
main:
	BeginFunc 36 ;
	_tmp13 = 4 ;
	PushParam _tmp13 ;
	_tmp14 = LCall _Alloc ;
	PopParams 4 ;
	_tmp15 = Barn ;
	*(_tmp14) = _tmp15 ;
	_tmp16 = *(_tmp14) ;
	_tmp17 = *(_tmp16) ;
	_tmp18 = ACall _tmp17 ;
	_tmp19 = _tmp14 - _tmp18 ;
	_tmp20 = *(_tmp16 + 4) ;
	PushParam _tmp19 ;
	ACall _tmp20 ;
	_tmp21 = 0 ;
	PopParams 4 ;
	EndFunc ;
