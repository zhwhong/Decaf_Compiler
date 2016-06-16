_offset_A_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable A =
	_offset_A_0,
	f_A.modify_a,
	f_A.print_a,
; 
_offset_A_4:
	BeginFunc 4 ;
	_tmp1 = 4 ;
	Return _tmp1 ;
	EndFunc ;
VTable A_F =
	_offset_A_4,
	f_A.modify_a,
; 
_offset_A_8:
	BeginFunc 4 ;
	_tmp2 = 8 ;
	Return _tmp2 ;
	EndFunc ;
VTable A_G =
	_offset_A_8,
	f_A.print_a,
; 
f_A.modify_a:
	BeginFunc 20 ;
	_tmp3 = 12 ;
	_tmp4 = this + _tmp3 ;
	_tmp5 = *(_tmp4) ;
	_tmp6 = 12 ;
	_tmp7 = this + _tmp6 ;
	*(_tmp7) = x ;
	EndFunc ;
f_A.print_a:
	BeginFunc 16 ;
	_tmp8 = 12 ;
	_tmp9 = this + _tmp8 ;
	_tmp10 = *(_tmp9) ;
	PushParam _tmp10 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp11 = " " ;
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
	f_B.modify_a,
	f_B.print_a,
	f_B.modify_b,
	f_B.print_b,
; 
_offset_B_4:
	BeginFunc 4 ;
	_tmp13 = 4 ;
	Return _tmp13 ;
	EndFunc ;
VTable B_F =
	_offset_B_4,
	f_B.modify_a,
; 
_offset_B_8:
	BeginFunc 4 ;
	_tmp14 = 8 ;
	Return _tmp14 ;
	EndFunc ;
VTable B_G =
	_offset_B_8,
	f_B.print_a,
; 
f_B.modify_b:
	BeginFunc 20 ;
	_tmp15 = 16 ;
	_tmp16 = this + _tmp15 ;
	_tmp17 = *(_tmp16) ;
	_tmp18 = 16 ;
	_tmp19 = this + _tmp18 ;
	*(_tmp19) = x ;
	EndFunc ;
f_B.print_b:
	BeginFunc 16 ;
	_tmp20 = 16 ;
	_tmp21 = this + _tmp20 ;
	_tmp22 = *(_tmp21) ;
	PushParam _tmp22 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp23 = " " ;
	PushParam _tmp23 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_B.modify_a:
	BeginFunc 20 ;
	_tmp24 = 12 ;
	_tmp25 = this + _tmp24 ;
	_tmp26 = *(_tmp25) ;
	_tmp27 = 12 ;
	_tmp28 = this + _tmp27 ;
	*(_tmp28) = x ;
	EndFunc ;
f_B.print_a:
	BeginFunc 16 ;
	_tmp29 = 12 ;
	_tmp30 = this + _tmp29 ;
	_tmp31 = *(_tmp30) ;
	PushParam _tmp31 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp32 = " " ;
	PushParam _tmp32 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_C_0:
	BeginFunc 4 ;
	_tmp33 = 0 ;
	Return _tmp33 ;
	EndFunc ;
VTable C =
	_offset_C_0,
	f_C.modify_a,
	f_C.print_a,
	f_C.modify_b,
	f_C.print_b,
	f_C.modify_c,
	f_C.print_c,
; 
_offset_C_4:
	BeginFunc 4 ;
	_tmp34 = 4 ;
	Return _tmp34 ;
	EndFunc ;
VTable C_F =
	_offset_C_4,
	f_C.modify_a,
; 
_offset_C_8:
	BeginFunc 4 ;
	_tmp35 = 8 ;
	Return _tmp35 ;
	EndFunc ;
VTable C_G =
	_offset_C_8,
	f_C.print_a,
; 
_offset_C_12:
	BeginFunc 4 ;
	_tmp36 = 12 ;
	Return _tmp36 ;
	EndFunc ;
VTable C_H =
	_offset_C_12,
	f_C.modify_c,
	f_C.print_c,
; 
f_C.modify_c:
	BeginFunc 20 ;
	_tmp37 = 24 ;
	_tmp38 = this + _tmp37 ;
	_tmp39 = *(_tmp38) ;
	_tmp40 = 24 ;
	_tmp41 = this + _tmp40 ;
	*(_tmp41) = x ;
	EndFunc ;
f_C.modify_a:
	BeginFunc 24 ;
	_tmp42 = 16 ;
	_tmp43 = this + _tmp42 ;
	_tmp44 = *(_tmp43) ;
	_tmp45 = 16 ;
	_tmp46 = this + _tmp45 ;
	*(_tmp46) = x ;
	_tmp47 = "YOWZA! " ;
	PushParam _tmp47 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.print_c:
	BeginFunc 16 ;
	_tmp48 = 24 ;
	_tmp49 = this + _tmp48 ;
	_tmp50 = *(_tmp49) ;
	PushParam _tmp50 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp51 = " " ;
	PushParam _tmp51 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.print_a:
	BeginFunc 16 ;
	_tmp52 = 16 ;
	_tmp53 = this + _tmp52 ;
	_tmp54 = *(_tmp53) ;
	PushParam _tmp54 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp55 = " " ;
	PushParam _tmp55 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
f_C.modify_b:
	BeginFunc 20 ;
	_tmp56 = 20 ;
	_tmp57 = this + _tmp56 ;
	_tmp58 = *(_tmp57) ;
	_tmp59 = 20 ;
	_tmp60 = this + _tmp59 ;
	*(_tmp60) = x ;
	EndFunc ;
f_C.print_b:
	BeginFunc 16 ;
	_tmp61 = 20 ;
	_tmp62 = this + _tmp61 ;
	_tmp63 = *(_tmp62) ;
	PushParam _tmp63 ;
	LCall _PrintInt ;
	PopParams 4 ;
	_tmp64 = " " ;
	PushParam _tmp64 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp65 = 0 ;
	Return _tmp65 ;
	EndFunc ;
f_main:
main:
	BeginFunc 456 ;
	_tmp66 = 16 ;
	PushParam _tmp66 ;
	_tmp67 = LCall _Alloc ;
	PopParams 4 ;
	_tmp68 = A ;
	*(_tmp67) = _tmp68 ;
	_tmp69 = A_F ;
	*(_tmp67 + 4) = _tmp69 ;
	_tmp70 = A_G ;
	*(_tmp67 + 8) = _tmp70 ;
	a = _tmp67 ;
	_tmp71 = 20 ;
	PushParam _tmp71 ;
	_tmp72 = LCall _Alloc ;
	PopParams 4 ;
	_tmp73 = B ;
	*(_tmp72) = _tmp73 ;
	_tmp74 = B_F ;
	*(_tmp72 + 4) = _tmp74 ;
	_tmp75 = B_G ;
	*(_tmp72 + 8) = _tmp75 ;
	b = _tmp72 ;
	_tmp76 = 28 ;
	PushParam _tmp76 ;
	_tmp77 = LCall _Alloc ;
	PopParams 4 ;
	_tmp78 = C ;
	*(_tmp77) = _tmp78 ;
	_tmp79 = C_F ;
	*(_tmp77 + 4) = _tmp79 ;
	_tmp80 = C_G ;
	*(_tmp77 + 8) = _tmp80 ;
	_tmp81 = C_H ;
	*(_tmp77 + 12) = _tmp81 ;
	c = _tmp77 ;
	_tmp82 = 4 ;
	_tmp83 = a + _tmp82 ;
	f = _tmp83 ;
	_tmp84 = 8 ;
	_tmp85 = a + _tmp84 ;
	g = _tmp85 ;
	_tmp86 = 42 ;
	PushParam _tmp86 ;
	_tmp87 = *(f) ;
	_tmp88 = *(_tmp87) ;
	_tmp89 = ACall _tmp88 ;
	_tmp90 = f - _tmp89 ;
	_tmp91 = *(_tmp87 + 4) ;
	PushParam _tmp90 ;
	ACall _tmp91 ;
	_tmp92 = 0 ;
	PopParams 8 ;
	_tmp93 = *(g) ;
	_tmp94 = *(_tmp93) ;
	_tmp95 = ACall _tmp94 ;
	_tmp96 = g - _tmp95 ;
	_tmp97 = *(_tmp93 + 4) ;
	PushParam _tmp96 ;
	ACall _tmp97 ;
	_tmp98 = 0 ;
	PopParams 4 ;
	_tmp99 = 4 ;
	_tmp100 = b + _tmp99 ;
	f = _tmp100 ;
	_tmp101 = 8 ;
	_tmp102 = b + _tmp101 ;
	g = _tmp102 ;
	_tmp103 = 137 ;
	PushParam _tmp103 ;
	_tmp104 = *(b) ;
	_tmp105 = *(_tmp104) ;
	_tmp106 = ACall _tmp105 ;
	_tmp107 = b - _tmp106 ;
	_tmp108 = *(_tmp104 + 12) ;
	PushParam _tmp107 ;
	ACall _tmp108 ;
	_tmp109 = 0 ;
	PopParams 8 ;
	_tmp110 = 42 ;
	PushParam _tmp110 ;
	_tmp111 = *(f) ;
	_tmp112 = *(_tmp111) ;
	_tmp113 = ACall _tmp112 ;
	_tmp114 = f - _tmp113 ;
	_tmp115 = *(_tmp111 + 4) ;
	PushParam _tmp114 ;
	ACall _tmp115 ;
	_tmp116 = 0 ;
	PopParams 8 ;
	_tmp117 = *(g) ;
	_tmp118 = *(_tmp117) ;
	_tmp119 = ACall _tmp118 ;
	_tmp120 = g - _tmp119 ;
	_tmp121 = *(_tmp117 + 4) ;
	PushParam _tmp120 ;
	ACall _tmp121 ;
	_tmp122 = 0 ;
	PopParams 4 ;
	_tmp123 = *(b) ;
	_tmp124 = *(_tmp123) ;
	_tmp125 = ACall _tmp124 ;
	_tmp126 = b - _tmp125 ;
	_tmp127 = *(_tmp123 + 16) ;
	PushParam _tmp126 ;
	ACall _tmp127 ;
	_tmp128 = 0 ;
	PopParams 4 ;
	_tmp129 = 4 ;
	_tmp130 = c + _tmp129 ;
	f = _tmp130 ;
	_tmp131 = 8 ;
	_tmp132 = c + _tmp131 ;
	g = _tmp132 ;
	_tmp133 = 12 ;
	_tmp134 = c + _tmp133 ;
	h = _tmp134 ;
	a = c ;
	b = c ;
	_tmp135 = 1337 ;
	PushParam _tmp135 ;
	_tmp136 = *(a) ;
	_tmp137 = *(_tmp136) ;
	_tmp138 = ACall _tmp137 ;
	_tmp139 = a - _tmp138 ;
	_tmp140 = *(_tmp136 + 4) ;
	PushParam _tmp139 ;
	ACall _tmp140 ;
	_tmp141 = 0 ;
	PopParams 8 ;
	_tmp142 = 3333 ;
	PushParam _tmp142 ;
	_tmp143 = *(b) ;
	_tmp144 = *(_tmp143) ;
	_tmp145 = ACall _tmp144 ;
	_tmp146 = b - _tmp145 ;
	_tmp147 = *(_tmp143 + 12) ;
	PushParam _tmp146 ;
	ACall _tmp147 ;
	_tmp148 = 0 ;
	PopParams 8 ;
	_tmp149 = 1241 ;
	PushParam _tmp149 ;
	_tmp150 = *(c) ;
	_tmp151 = *(_tmp150) ;
	_tmp152 = ACall _tmp151 ;
	_tmp153 = c - _tmp152 ;
	_tmp154 = *(_tmp150 + 20) ;
	PushParam _tmp153 ;
	ACall _tmp154 ;
	_tmp155 = 0 ;
	PopParams 8 ;
	_tmp156 = *(g) ;
	_tmp157 = *(_tmp156) ;
	_tmp158 = ACall _tmp157 ;
	_tmp159 = g - _tmp158 ;
	_tmp160 = *(_tmp156 + 4) ;
	PushParam _tmp159 ;
	ACall _tmp160 ;
	_tmp161 = 0 ;
	PopParams 4 ;
	_tmp162 = *(b) ;
	_tmp163 = *(_tmp162) ;
	_tmp164 = ACall _tmp163 ;
	_tmp165 = b - _tmp164 ;
	_tmp166 = *(_tmp162 + 16) ;
	PushParam _tmp165 ;
	ACall _tmp166 ;
	_tmp167 = 0 ;
	PopParams 4 ;
	_tmp168 = *(h) ;
	_tmp169 = *(_tmp168) ;
	_tmp170 = ACall _tmp169 ;
	_tmp171 = h - _tmp170 ;
	_tmp172 = *(_tmp168 + 8) ;
	PushParam _tmp171 ;
	ACall _tmp172 ;
	_tmp173 = 0 ;
	PopParams 4 ;
	EndFunc ;
