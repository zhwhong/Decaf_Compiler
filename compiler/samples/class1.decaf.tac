_offset_Binky_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Binky =
	_offset_Binky_0,
	f_Binky.Method,
; 
f_Binky.Method:
	BeginFunc 0 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp1 = 0 ;
	Return _tmp1 ;
	EndFunc ;
f_main:
main:
	BeginFunc 32 ;
	_tmp2 = 4 ;
	PushParam _tmp2 ;
	_tmp3 = LCall _Alloc ;
	PopParams 4 ;
	_tmp4 = Binky ;
	*(_tmp3) = _tmp4 ;
	d = _tmp3 ;
	_tmp5 = 4 ;
	PushParam _tmp5 ;
	_tmp6 = LCall _Alloc ;
	PopParams 4 ;
	_tmp7 = Binky ;
	*(_tmp6) = _tmp7 ;
	a = _tmp6 ;
	a = d ;
	EndFunc ;
