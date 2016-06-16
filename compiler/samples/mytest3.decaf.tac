_offset_C_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable C =
	_offset_C_0,
	f_C.a_fn,
	f_C.f_fn,
	f_C.g_fn,
	f_C.b_fn,
	f_C.c_fn,
	f_C.h_fn,
; 
_offset_C_4:
	BeginFunc 4 ;
	_tmp1 = 4 ;
	Return _tmp1 ;
	EndFunc ;
VTable C_F =
	_offset_C_4,
	f_C.f_fn,
; 
_offset_C_8:
	BeginFunc 4 ;
	_tmp2 = 8 ;
	Return _tmp2 ;
	EndFunc ;
VTable C_G =
	_offset_C_8,
	f_C.g_fn,
; 
_offset_C_12:
	BeginFunc 4 ;
	_tmp3 = 12 ;
	Return _tmp3 ;
	EndFunc ;
VTable C_H =
	_offset_C_12,
	f_C.h_fn,
; 
f_C.c_fn:
	BeginFunc 4 ;
	_tmp4 = "C:c_fn\n" ;
	PushParam _tmp4 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.h_fn:
	BeginFunc 4 ;
	_tmp5 = "C:h_fn\n" ;
	PushParam _tmp5 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.f_fn:
	BeginFunc 4 ;
	_tmp6 = "C:f_fn\n" ;
	PushParam _tmp6 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.a_fn:
	BeginFunc 4 ;
	_tmp7 = "A:a_fn\n" ;
	PushParam _tmp7 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.g_fn:
	BeginFunc 4 ;
	_tmp8 = "A:g_fn\n" ;
	PushParam _tmp8 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.b_fn:
	BeginFunc 4 ;
	_tmp9 = "B:b_fn\n" ;
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
	f_B.a_fn,
	f_B.f_fn,
	f_B.g_fn,
	f_B.b_fn,
; 
_offset_B_4:
	BeginFunc 4 ;
	_tmp11 = 4 ;
	Return _tmp11 ;
	EndFunc ;
VTable B_F =
	_offset_B_4,
	f_B.f_fn,
; 
_offset_B_8:
	BeginFunc 4 ;
	_tmp12 = 8 ;
	Return _tmp12 ;
	EndFunc ;
VTable B_G =
	_offset_B_8,
	f_B.g_fn,
; 
f_B.b_fn:
	BeginFunc 4 ;
	_tmp13 = "B:b_fn\n" ;
	PushParam _tmp13 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_B.a_fn:
	BeginFunc 4 ;
	_tmp14 = "A:a_fn\n" ;
	PushParam _tmp14 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_B.f_fn:
	BeginFunc 4 ;
	_tmp15 = "A:f_fn\n" ;
	PushParam _tmp15 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_B.g_fn:
	BeginFunc 4 ;
	_tmp16 = "A:g_fn\n" ;
	PushParam _tmp16 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_A_0:
	BeginFunc 4 ;
	_tmp17 = 0 ;
	Return _tmp17 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.a_fn,
	f_A.f_fn,
	f_A.g_fn,
; 
_offset_A_4:
	BeginFunc 4 ;
	_tmp18 = 4 ;
	Return _tmp18 ;
	EndFunc ;
VTable A_F =
	_offset_A_4,
	f_A.f_fn,
; 
_offset_A_8:
	BeginFunc 4 ;
	_tmp19 = 8 ;
	Return _tmp19 ;
	EndFunc ;
VTable A_G =
	_offset_A_8,
	f_A.g_fn,
; 
f_A.a_fn:
	BeginFunc 4 ;
	_tmp20 = "A:a_fn\n" ;
	PushParam _tmp20 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_A.f_fn:
	BeginFunc 4 ;
	_tmp21 = "A:f_fn\n" ;
	PushParam _tmp21 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_A.g_fn:
	BeginFunc 4 ;
	_tmp22 = "A:g_fn\n" ;
	PushParam _tmp22 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp23 = 0 ;
	Return _tmp23 ;
	EndFunc ;
f_main:
main:
	BeginFunc 184 ;
	_tmp24 = 12 ;
	PushParam _tmp24 ;
	_tmp25 = LCall _Alloc ;
	PopParams 4 ;
	_tmp26 = A ;
	*(_tmp25) = _tmp26 ;
	_tmp27 = A_F ;
	*(_tmp25 + 4) = _tmp27 ;
	_tmp28 = A_G ;
	*(_tmp25 + 8) = _tmp28 ;
	a = _tmp25 ;
	_tmp29 = 12 ;
	PushParam _tmp29 ;
	_tmp30 = LCall _Alloc ;
	PopParams 4 ;
	_tmp31 = B ;
	*(_tmp30) = _tmp31 ;
	_tmp32 = B_F ;
	*(_tmp30 + 4) = _tmp32 ;
	_tmp33 = B_G ;
	*(_tmp30 + 8) = _tmp33 ;
	b = _tmp30 ;
	_tmp34 = 16 ;
	PushParam _tmp34 ;
	_tmp35 = LCall _Alloc ;
	PopParams 4 ;
	_tmp36 = C ;
	*(_tmp35) = _tmp36 ;
	_tmp37 = C_F ;
	*(_tmp35 + 4) = _tmp37 ;
	_tmp38 = C_G ;
	*(_tmp35 + 8) = _tmp38 ;
	_tmp39 = C_H ;
	*(_tmp35 + 12) = _tmp39 ;
	c = _tmp35 ;
	_tmp40 = 12 ;
	_tmp41 = c + _tmp40 ;
	h = _tmp41 ;
	_tmp42 = *(h) ;
	_tmp43 = *(_tmp42) ;
	_tmp44 = ACall _tmp43 ;
	_tmp45 = h - _tmp44 ;
	_tmp46 = *(_tmp42 + 4) ;
	PushParam _tmp45 ;
	_tmp47 = ACall _tmp46 ;
	PopParams 4 ;
	_tmp48 = 4 ;
	_tmp49 = c + _tmp48 ;
	f = _tmp49 ;
	_tmp50 = *(f) ;
	_tmp51 = *(_tmp50) ;
	_tmp52 = ACall _tmp51 ;
	_tmp53 = f - _tmp52 ;
	_tmp54 = *(_tmp50 + 4) ;
	PushParam _tmp53 ;
	_tmp55 = ACall _tmp54 ;
	PopParams 4 ;
	_tmp56 = 4 ;
	_tmp57 = a + _tmp56 ;
	f = _tmp57 ;
	_tmp58 = *(f) ;
	_tmp59 = *(_tmp58) ;
	_tmp60 = ACall _tmp59 ;
	_tmp61 = f - _tmp60 ;
	_tmp62 = *(_tmp58 + 4) ;
	PushParam _tmp61 ;
	_tmp63 = ACall _tmp62 ;
	PopParams 4 ;
	EndFunc ;
