_offset_Deck_0:
	BeginFunc 4 ;
	_tmp0 = 0 ;
	Return _tmp0 ;
	EndFunc ;
VTable Deck =
	_offset_Deck_0,
	f_Deck.Shuffle,
; 
f_Deck.Shuffle:
	BeginFunc 4 ;
	_tmp1 = "Shuffle" ;
	PushParam _tmp1 ;
	LCall _PrintString ;
	PopParams 4 ;
	EndFunc ;
_offset_Player_0:
	BeginFunc 4 ;
	_tmp2 = 0 ;
	Return _tmp2 ;
	EndFunc ;
VTable Player =
	_offset_Player_0,
	f_Player.Init,
	f_Player.GetDeck,
; 
f_Player.Init:
	BeginFunc 20 ;
	_tmp3 = 4 ;
	_tmp4 = this + _tmp3 ;
	_tmp5 = *(_tmp4) ;
	_tmp6 = 4 ;
	_tmp7 = this + _tmp6 ;
	*(_tmp7) = dj ;
	EndFunc ;
f_Player.GetDeck:
	BeginFunc 12 ;
	_tmp8 = 4 ;
	_tmp9 = this + _tmp8 ;
	_tmp10 = *(_tmp9) ;
	Return _tmp10 ;
	EndFunc ;
_offset_main_0:
	BeginFunc 4 ;
	_tmp11 = 0 ;
	Return _tmp11 ;
	EndFunc ;
f_main:
main:
	BeginFunc 100 ;
	_tmp12 = 8 ;
	PushParam _tmp12 ;
	_tmp13 = LCall _Alloc ;
	PopParams 4 ;
	_tmp14 = Player ;
	*(_tmp13) = _tmp14 ;
	p = _tmp13 ;
	_tmp15 = 4 ;
	PushParam _tmp15 ;
	_tmp16 = LCall _Alloc ;
	PopParams 4 ;
	_tmp17 = Deck ;
	*(_tmp16) = _tmp17 ;
	PushParam _tmp16 ;
	_tmp18 = *(p) ;
	_tmp19 = *(_tmp18) ;
	_tmp20 = ACall _tmp19 ;
	_tmp21 = p - _tmp20 ;
	_tmp22 = *(_tmp18 + 4) ;
	PushParam _tmp21 ;
	ACall _tmp22 ;
	_tmp23 = 0 ;
	PopParams 8 ;
	_tmp24 = *(p) ;
	_tmp25 = *(_tmp24) ;
	_tmp26 = ACall _tmp25 ;
	_tmp27 = p - _tmp26 ;
	_tmp28 = *(_tmp24 + 8) ;
	PushParam _tmp27 ;
	_tmp29 = ACall _tmp28 ;
	PopParams 4 ;
	_tmp30 = *(_tmp29) ;
	_tmp31 = *(_tmp30) ;
	_tmp32 = ACall _tmp31 ;
	_tmp33 = _tmp29 - _tmp32 ;
	_tmp34 = *(_tmp30 + 4) ;
	PushParam _tmp33 ;
	ACall _tmp34 ;
	_tmp35 = 0 ;
	PopParams 4 ;
	EndFunc ;
