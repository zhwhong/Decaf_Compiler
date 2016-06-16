	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_main_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp0 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp0
	  move $v0, $t0		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_main:
  main:
	# BeginFunc 1564
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 1564	# decrement sp to make space for locals/temps
	# _tmp1 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp2 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp3 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp4 = _tmp2 < _tmp1
	  slt $t3, $t1, $t0	
	# IfZ _tmp4 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp1 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp2 from $t1 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp3 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp4 from $t3 to $fp-28
	  beqz $t3, _L0	# branch if _tmp4 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp5 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp5 from $t0 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp6 = _tmp1 * _tmp3
	  lw $t0, -16($fp)	# load _tmp1 from $fp-16 into $t0
	  lw $t1, -24($fp)	# load _tmp3 from $fp-24 into $t1
	  mul $t2, $t0, $t1	
	# _tmp7 = _tmp6 + _tmp3
	  add $t3, $t2, $t1	
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp8 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -36($fp)	# spill _tmp6 from $t2 to $fp-36
	  sw $t3, -40($fp)	# spill _tmp7 from $t3 to $fp-40
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp8) = _tmp1
	  lw $t1, -16($fp)	# load _tmp1 from $fp-16 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# arr = _tmp8
	  move $t2, $t0		# copy value
	# _tmp9 = 5
	  li $t3, 5		# load constant value 5 into $t3
	# _tmp10 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp11 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp12 = *(arr)
	  lw $t6, 0($t2) 	# load with offset
	# _tmp13 = _tmp12 == _tmp9
	  seq $t7, $t6, $t3	
	# _tmp14 = _tmp12 < _tmp9
	  slt $s0, $t6, $t3	
	# _tmp15 = _tmp14 || _tmp13
	  or $s1, $s0, $t7	
	# _tmp16 = _tmp9 < _tmp10
	  slt $s2, $t3, $t4	
	# _tmp17 = _tmp16 || _tmp15
	  or $s3, $s2, $s1	
	# IfZ _tmp17 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp8 from $t0 to $fp-44
	  sw $t2, -8($fp)	# spill arr from $t2 to $fp-8
	  sw $t3, -48($fp)	# spill _tmp9 from $t3 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp10 from $t4 to $fp-52
	  sw $t5, -56($fp)	# spill _tmp11 from $t5 to $fp-56
	  sw $t6, -60($fp)	# spill _tmp12 from $t6 to $fp-60
	  sw $t7, -64($fp)	# spill _tmp13 from $t7 to $fp-64
	  sw $s0, -68($fp)	# spill _tmp14 from $s0 to $fp-68
	  sw $s1, -72($fp)	# spill _tmp15 from $s1 to $fp-72
	  sw $s2, -76($fp)	# spill _tmp16 from $s2 to $fp-76
	  sw $s3, -80($fp)	# spill _tmp17 from $s3 to $fp-80
	  beqz $s3, _L2	# branch if _tmp17 is zero 
	# _tmp18 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp18 from $t0 to $fp-84
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L2:
	# _tmp19 = _tmp9 * _tmp11
	  lw $t0, -48($fp)	# load _tmp9 from $fp-48 into $t0
	  lw $t1, -56($fp)	# load _tmp11 from $fp-56 into $t1
	  mul $t2, $t0, $t1	
	# _tmp20 = _tmp19 + _tmp11
	  add $t3, $t2, $t1	
	# _tmp21 = arr + _tmp20
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp22 = *(_tmp21)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp23 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp24 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp25 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp26 = _tmp24 < _tmp23
	  slt $s2, $s0, $t7	
	# IfZ _tmp26 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t2, -88($fp)	# spill _tmp19 from $t2 to $fp-88
	  sw $t3, -92($fp)	# spill _tmp20 from $t3 to $fp-92
	  sw $t5, -96($fp)	# spill _tmp21 from $t5 to $fp-96
	  sw $t6, -100($fp)	# spill _tmp22 from $t6 to $fp-100
	  sw $t7, -104($fp)	# spill _tmp23 from $t7 to $fp-104
	  sw $s0, -108($fp)	# spill _tmp24 from $s0 to $fp-108
	  sw $s1, -112($fp)	# spill _tmp25 from $s1 to $fp-112
	  sw $s2, -116($fp)	# spill _tmp26 from $s2 to $fp-116
	  beqz $s2, _L3	# branch if _tmp26 is zero 
	# Goto _L4
	  b _L4		# unconditional branch
  _L3:
	# _tmp27 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp27
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -120($fp)	# spill _tmp27 from $t0 to $fp-120
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp28 = _tmp23 * _tmp25
	  lw $t0, -104($fp)	# load _tmp23 from $fp-104 into $t0
	  lw $t1, -112($fp)	# load _tmp25 from $fp-112 into $t1
	  mul $t2, $t0, $t1	
	# _tmp29 = _tmp28 + _tmp25
	  add $t3, $t2, $t1	
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp30 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -124($fp)	# spill _tmp28 from $t2 to $fp-124
	  sw $t3, -128($fp)	# spill _tmp29 from $t3 to $fp-128
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp30) = _tmp23
	  lw $t1, -104($fp)	# load _tmp23 from $fp-104 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# _tmp31 = 5
	  li $t2, 5		# load constant value 5 into $t2
	# _tmp32 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp33 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp34 = *(arr)
	  lw $t5, -8($fp)	# load arr from $fp-8 into $t5
	  lw $t6, 0($t5) 	# load with offset
	# _tmp35 = _tmp34 == _tmp31
	  seq $t7, $t6, $t2	
	# _tmp36 = _tmp34 < _tmp31
	  slt $s0, $t6, $t2	
	# _tmp37 = _tmp36 || _tmp35
	  or $s1, $s0, $t7	
	# _tmp38 = _tmp31 < _tmp32
	  slt $s2, $t2, $t3	
	# _tmp39 = _tmp38 || _tmp37
	  or $s3, $s2, $s1	
	# IfZ _tmp39 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t0, -132($fp)	# spill _tmp30 from $t0 to $fp-132
	  sw $t2, -136($fp)	# spill _tmp31 from $t2 to $fp-136
	  sw $t3, -140($fp)	# spill _tmp32 from $t3 to $fp-140
	  sw $t4, -144($fp)	# spill _tmp33 from $t4 to $fp-144
	  sw $t6, -148($fp)	# spill _tmp34 from $t6 to $fp-148
	  sw $t7, -152($fp)	# spill _tmp35 from $t7 to $fp-152
	  sw $s0, -156($fp)	# spill _tmp36 from $s0 to $fp-156
	  sw $s1, -160($fp)	# spill _tmp37 from $s1 to $fp-160
	  sw $s2, -164($fp)	# spill _tmp38 from $s2 to $fp-164
	  sw $s3, -168($fp)	# spill _tmp39 from $s3 to $fp-168
	  beqz $s3, _L5	# branch if _tmp39 is zero 
	# _tmp40 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -172($fp)	# spill _tmp40 from $t0 to $fp-172
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp41 = _tmp31 * _tmp33
	  lw $t0, -136($fp)	# load _tmp31 from $fp-136 into $t0
	  lw $t1, -144($fp)	# load _tmp33 from $fp-144 into $t1
	  mul $t2, $t0, $t1	
	# _tmp42 = _tmp41 + _tmp33
	  add $t3, $t2, $t1	
	# _tmp43 = arr + _tmp42
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp43) = _tmp30
	  lw $t6, -132($fp)	# load _tmp30 from $fp-132 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp44 = 9
	  li $t7, 9		# load constant value 9 into $t7
	# _tmp45 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp46 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp47 = _tmp45 < _tmp44
	  slt $s2, $s0, $t7	
	# IfZ _tmp47 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t2, -176($fp)	# spill _tmp41 from $t2 to $fp-176
	  sw $t3, -180($fp)	# spill _tmp42 from $t3 to $fp-180
	  sw $t5, -184($fp)	# spill _tmp43 from $t5 to $fp-184
	  sw $t7, -188($fp)	# spill _tmp44 from $t7 to $fp-188
	  sw $s0, -192($fp)	# spill _tmp45 from $s0 to $fp-192
	  sw $s1, -196($fp)	# spill _tmp46 from $s1 to $fp-196
	  sw $s2, -200($fp)	# spill _tmp47 from $s2 to $fp-200
	  beqz $s2, _L6	# branch if _tmp47 is zero 
	# Goto _L7
	  b _L7		# unconditional branch
  _L6:
	# _tmp48 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp48
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp48 from $t0 to $fp-204
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L7:
	# _tmp49 = _tmp44 * _tmp46
	  lw $t0, -188($fp)	# load _tmp44 from $fp-188 into $t0
	  lw $t1, -196($fp)	# load _tmp46 from $fp-196 into $t1
	  mul $t2, $t0, $t1	
	# _tmp50 = _tmp49 + _tmp46
	  add $t3, $t2, $t1	
	# PushParam _tmp50
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp51 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -208($fp)	# spill _tmp49 from $t2 to $fp-208
	  sw $t3, -212($fp)	# spill _tmp50 from $t3 to $fp-212
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp51) = _tmp44
	  lw $t1, -188($fp)	# load _tmp44 from $fp-188 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# in = _tmp51
	  move $t2, $t0		# copy value
	# _tmp52 = 5
	  li $t3, 5		# load constant value 5 into $t3
	# _tmp53 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp54 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp55 = *(arr)
	  lw $t6, -8($fp)	# load arr from $fp-8 into $t6
	  lw $t7, 0($t6) 	# load with offset
	# _tmp56 = _tmp55 == _tmp52
	  seq $s0, $t7, $t3	
	# _tmp57 = _tmp55 < _tmp52
	  slt $s1, $t7, $t3	
	# _tmp58 = _tmp57 || _tmp56
	  or $s2, $s1, $s0	
	# _tmp59 = _tmp52 < _tmp53
	  slt $s3, $t3, $t4	
	# _tmp60 = _tmp59 || _tmp58
	  or $s4, $s3, $s2	
	# IfZ _tmp60 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -216($fp)	# spill _tmp51 from $t0 to $fp-216
	  sw $t2, -12($fp)	# spill in from $t2 to $fp-12
	  sw $t3, -220($fp)	# spill _tmp52 from $t3 to $fp-220
	  sw $t4, -224($fp)	# spill _tmp53 from $t4 to $fp-224
	  sw $t5, -228($fp)	# spill _tmp54 from $t5 to $fp-228
	  sw $t7, -232($fp)	# spill _tmp55 from $t7 to $fp-232
	  sw $s0, -236($fp)	# spill _tmp56 from $s0 to $fp-236
	  sw $s1, -240($fp)	# spill _tmp57 from $s1 to $fp-240
	  sw $s2, -244($fp)	# spill _tmp58 from $s2 to $fp-244
	  sw $s3, -248($fp)	# spill _tmp59 from $s3 to $fp-248
	  sw $s4, -252($fp)	# spill _tmp60 from $s4 to $fp-252
	  beqz $s4, _L8	# branch if _tmp60 is zero 
	# _tmp61 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp61
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -256($fp)	# spill _tmp61 from $t0 to $fp-256
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L8:
	# _tmp62 = _tmp52 * _tmp54
	  lw $t0, -220($fp)	# load _tmp52 from $fp-220 into $t0
	  lw $t1, -228($fp)	# load _tmp54 from $fp-228 into $t1
	  mul $t2, $t0, $t1	
	# _tmp63 = _tmp62 + _tmp54
	  add $t3, $t2, $t1	
	# _tmp64 = arr + _tmp63
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp65 = *(_tmp64)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp66 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp67 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp68 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp69 = *(_tmp65)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp70 = _tmp69 == _tmp66
	  seq $s3, $s2, $t7	
	# _tmp71 = _tmp69 < _tmp66
	  slt $s4, $s2, $t7	
	# _tmp72 = _tmp71 || _tmp70
	  or $s5, $s4, $s3	
	# _tmp73 = _tmp66 < _tmp67
	  slt $s6, $t7, $s0	
	# _tmp74 = _tmp73 || _tmp72
	  or $s7, $s6, $s5	
	# IfZ _tmp74 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t2, -260($fp)	# spill _tmp62 from $t2 to $fp-260
	  sw $t3, -264($fp)	# spill _tmp63 from $t3 to $fp-264
	  sw $t5, -268($fp)	# spill _tmp64 from $t5 to $fp-268
	  sw $t6, -272($fp)	# spill _tmp65 from $t6 to $fp-272
	  sw $t7, -276($fp)	# spill _tmp66 from $t7 to $fp-276
	  sw $s0, -280($fp)	# spill _tmp67 from $s0 to $fp-280
	  sw $s1, -284($fp)	# spill _tmp68 from $s1 to $fp-284
	  sw $s2, -288($fp)	# spill _tmp69 from $s2 to $fp-288
	  sw $s3, -292($fp)	# spill _tmp70 from $s3 to $fp-292
	  sw $s4, -296($fp)	# spill _tmp71 from $s4 to $fp-296
	  sw $s5, -300($fp)	# spill _tmp72 from $s5 to $fp-300
	  sw $s6, -304($fp)	# spill _tmp73 from $s6 to $fp-304
	  sw $s7, -308($fp)	# spill _tmp74 from $s7 to $fp-308
	  beqz $s7, _L9	# branch if _tmp74 is zero 
	# _tmp75 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp75
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -312($fp)	# spill _tmp75 from $t0 to $fp-312
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L9:
	# _tmp76 = _tmp66 * _tmp68
	  lw $t0, -276($fp)	# load _tmp66 from $fp-276 into $t0
	  lw $t1, -284($fp)	# load _tmp68 from $fp-284 into $t1
	  mul $t2, $t0, $t1	
	# _tmp77 = _tmp76 + _tmp68
	  add $t3, $t2, $t1	
	# _tmp78 = _tmp65 + _tmp77
	  lw $t4, -272($fp)	# load _tmp65 from $fp-272 into $t4
	  add $t5, $t4, $t3	
	# _tmp79 = *(_tmp78)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp80 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp81 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp82 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp83 = *(arr)
	  lw $s2, -8($fp)	# load arr from $fp-8 into $s2
	  lw $s3, 0($s2) 	# load with offset
	# _tmp84 = _tmp83 == _tmp80
	  seq $s4, $s3, $t7	
	# _tmp85 = _tmp83 < _tmp80
	  slt $s5, $s3, $t7	
	# _tmp86 = _tmp85 || _tmp84
	  or $s6, $s5, $s4	
	# _tmp87 = _tmp80 < _tmp81
	  slt $s7, $t7, $s0	
	# _tmp88 = _tmp87 || _tmp86
	  or $t8, $s7, $s6	
	# IfZ _tmp88 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t2, -316($fp)	# spill _tmp76 from $t2 to $fp-316
	  sw $t3, -320($fp)	# spill _tmp77 from $t3 to $fp-320
	  sw $t5, -324($fp)	# spill _tmp78 from $t5 to $fp-324
	  sw $t6, -328($fp)	# spill _tmp79 from $t6 to $fp-328
	  sw $t7, -332($fp)	# spill _tmp80 from $t7 to $fp-332
	  sw $s0, -336($fp)	# spill _tmp81 from $s0 to $fp-336
	  sw $s1, -340($fp)	# spill _tmp82 from $s1 to $fp-340
	  sw $s3, -344($fp)	# spill _tmp83 from $s3 to $fp-344
	  sw $s4, -348($fp)	# spill _tmp84 from $s4 to $fp-348
	  sw $s5, -352($fp)	# spill _tmp85 from $s5 to $fp-352
	  sw $s6, -356($fp)	# spill _tmp86 from $s6 to $fp-356
	  sw $s7, -360($fp)	# spill _tmp87 from $s7 to $fp-360
	  sw $t8, -364($fp)	# spill _tmp88 from $t8 to $fp-364
	  beqz $t8, _L10	# branch if _tmp88 is zero 
	# _tmp89 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string8: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp89
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -368($fp)	# spill _tmp89 from $t0 to $fp-368
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L10:
	# _tmp90 = _tmp80 * _tmp82
	  lw $t0, -332($fp)	# load _tmp80 from $fp-332 into $t0
	  lw $t1, -340($fp)	# load _tmp82 from $fp-340 into $t1
	  mul $t2, $t0, $t1	
	# _tmp91 = _tmp90 + _tmp82
	  add $t3, $t2, $t1	
	# _tmp92 = arr + _tmp91
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp93 = *(_tmp92)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp94 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp95 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp96 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp97 = *(_tmp93)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp98 = _tmp97 == _tmp94
	  seq $s3, $s2, $t7	
	# _tmp99 = _tmp97 < _tmp94
	  slt $s4, $s2, $t7	
	# _tmp100 = _tmp99 || _tmp98
	  or $s5, $s4, $s3	
	# _tmp101 = _tmp94 < _tmp95
	  slt $s6, $t7, $s0	
	# _tmp102 = _tmp101 || _tmp100
	  or $s7, $s6, $s5	
	# IfZ _tmp102 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t2, -372($fp)	# spill _tmp90 from $t2 to $fp-372
	  sw $t3, -376($fp)	# spill _tmp91 from $t3 to $fp-376
	  sw $t5, -380($fp)	# spill _tmp92 from $t5 to $fp-380
	  sw $t6, -384($fp)	# spill _tmp93 from $t6 to $fp-384
	  sw $t7, -388($fp)	# spill _tmp94 from $t7 to $fp-388
	  sw $s0, -392($fp)	# spill _tmp95 from $s0 to $fp-392
	  sw $s1, -396($fp)	# spill _tmp96 from $s1 to $fp-396
	  sw $s2, -400($fp)	# spill _tmp97 from $s2 to $fp-400
	  sw $s3, -404($fp)	# spill _tmp98 from $s3 to $fp-404
	  sw $s4, -408($fp)	# spill _tmp99 from $s4 to $fp-408
	  sw $s5, -412($fp)	# spill _tmp100 from $s5 to $fp-412
	  sw $s6, -416($fp)	# spill _tmp101 from $s6 to $fp-416
	  sw $s7, -420($fp)	# spill _tmp102 from $s7 to $fp-420
	  beqz $s7, _L11	# branch if _tmp102 is zero 
	# _tmp103 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string9: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp103
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -424($fp)	# spill _tmp103 from $t0 to $fp-424
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L11:
	# _tmp104 = _tmp94 * _tmp96
	  lw $t0, -388($fp)	# load _tmp94 from $fp-388 into $t0
	  lw $t1, -396($fp)	# load _tmp96 from $fp-396 into $t1
	  mul $t2, $t0, $t1	
	# _tmp105 = _tmp104 + _tmp96
	  add $t3, $t2, $t1	
	# _tmp106 = _tmp93 + _tmp105
	  lw $t4, -384($fp)	# load _tmp93 from $fp-384 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp106) = in
	  lw $t6, -12($fp)	# load in from $fp-12 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp107 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp108 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp109 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp110 = *(arr)
	  lw $s2, -8($fp)	# load arr from $fp-8 into $s2
	  lw $s3, 0($s2) 	# load with offset
	# _tmp111 = _tmp110 == _tmp107
	  seq $s4, $s3, $t7	
	# _tmp112 = _tmp110 < _tmp107
	  slt $s5, $s3, $t7	
	# _tmp113 = _tmp112 || _tmp111
	  or $s6, $s5, $s4	
	# _tmp114 = _tmp107 < _tmp108
	  slt $s7, $t7, $s0	
	# _tmp115 = _tmp114 || _tmp113
	  or $t8, $s7, $s6	
	# IfZ _tmp115 Goto _L12
	# (save modified registers before flow of control change)
	  sw $t2, -428($fp)	# spill _tmp104 from $t2 to $fp-428
	  sw $t3, -432($fp)	# spill _tmp105 from $t3 to $fp-432
	  sw $t5, -436($fp)	# spill _tmp106 from $t5 to $fp-436
	  sw $t7, -440($fp)	# spill _tmp107 from $t7 to $fp-440
	  sw $s0, -444($fp)	# spill _tmp108 from $s0 to $fp-444
	  sw $s1, -448($fp)	# spill _tmp109 from $s1 to $fp-448
	  sw $s3, -452($fp)	# spill _tmp110 from $s3 to $fp-452
	  sw $s4, -456($fp)	# spill _tmp111 from $s4 to $fp-456
	  sw $s5, -460($fp)	# spill _tmp112 from $s5 to $fp-460
	  sw $s6, -464($fp)	# spill _tmp113 from $s6 to $fp-464
	  sw $s7, -468($fp)	# spill _tmp114 from $s7 to $fp-468
	  sw $t8, -472($fp)	# spill _tmp115 from $t8 to $fp-472
	  beqz $t8, _L12	# branch if _tmp115 is zero 
	# _tmp116 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp116
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -476($fp)	# spill _tmp116 from $t0 to $fp-476
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L12:
	# _tmp117 = _tmp107 * _tmp109
	  lw $t0, -440($fp)	# load _tmp107 from $fp-440 into $t0
	  lw $t1, -448($fp)	# load _tmp109 from $fp-448 into $t1
	  mul $t2, $t0, $t1	
	# _tmp118 = _tmp117 + _tmp109
	  add $t3, $t2, $t1	
	# _tmp119 = arr + _tmp118
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp120 = *(_tmp119)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp121 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp122 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp123 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp124 = *(_tmp120)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp125 = _tmp124 == _tmp121
	  seq $s3, $s2, $t7	
	# _tmp126 = _tmp124 < _tmp121
	  slt $s4, $s2, $t7	
	# _tmp127 = _tmp126 || _tmp125
	  or $s5, $s4, $s3	
	# _tmp128 = _tmp121 < _tmp122
	  slt $s6, $t7, $s0	
	# _tmp129 = _tmp128 || _tmp127
	  or $s7, $s6, $s5	
	# IfZ _tmp129 Goto _L13
	# (save modified registers before flow of control change)
	  sw $t2, -480($fp)	# spill _tmp117 from $t2 to $fp-480
	  sw $t3, -484($fp)	# spill _tmp118 from $t3 to $fp-484
	  sw $t5, -488($fp)	# spill _tmp119 from $t5 to $fp-488
	  sw $t6, -492($fp)	# spill _tmp120 from $t6 to $fp-492
	  sw $t7, -496($fp)	# spill _tmp121 from $t7 to $fp-496
	  sw $s0, -500($fp)	# spill _tmp122 from $s0 to $fp-500
	  sw $s1, -504($fp)	# spill _tmp123 from $s1 to $fp-504
	  sw $s2, -508($fp)	# spill _tmp124 from $s2 to $fp-508
	  sw $s3, -512($fp)	# spill _tmp125 from $s3 to $fp-512
	  sw $s4, -516($fp)	# spill _tmp126 from $s4 to $fp-516
	  sw $s5, -520($fp)	# spill _tmp127 from $s5 to $fp-520
	  sw $s6, -524($fp)	# spill _tmp128 from $s6 to $fp-524
	  sw $s7, -528($fp)	# spill _tmp129 from $s7 to $fp-528
	  beqz $s7, _L13	# branch if _tmp129 is zero 
	# _tmp130 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp130
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -532($fp)	# spill _tmp130 from $t0 to $fp-532
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L13:
	# _tmp131 = _tmp121 * _tmp123
	  lw $t0, -496($fp)	# load _tmp121 from $fp-496 into $t0
	  lw $t1, -504($fp)	# load _tmp123 from $fp-504 into $t1
	  mul $t2, $t0, $t1	
	# _tmp132 = _tmp131 + _tmp123
	  add $t3, $t2, $t1	
	# _tmp133 = _tmp120 + _tmp132
	  lw $t4, -492($fp)	# load _tmp120 from $fp-492 into $t4
	  add $t5, $t4, $t3	
	# _tmp134 = *(_tmp133)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp135 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp136 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp137 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp138 = *(_tmp134)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp139 = _tmp138 == _tmp135
	  seq $s3, $s2, $t7	
	# _tmp140 = _tmp138 < _tmp135
	  slt $s4, $s2, $t7	
	# _tmp141 = _tmp140 || _tmp139
	  or $s5, $s4, $s3	
	# _tmp142 = _tmp135 < _tmp136
	  slt $s6, $t7, $s0	
	# _tmp143 = _tmp142 || _tmp141
	  or $s7, $s6, $s5	
	# IfZ _tmp143 Goto _L14
	# (save modified registers before flow of control change)
	  sw $t2, -536($fp)	# spill _tmp131 from $t2 to $fp-536
	  sw $t3, -540($fp)	# spill _tmp132 from $t3 to $fp-540
	  sw $t5, -544($fp)	# spill _tmp133 from $t5 to $fp-544
	  sw $t6, -548($fp)	# spill _tmp134 from $t6 to $fp-548
	  sw $t7, -552($fp)	# spill _tmp135 from $t7 to $fp-552
	  sw $s0, -556($fp)	# spill _tmp136 from $s0 to $fp-556
	  sw $s1, -560($fp)	# spill _tmp137 from $s1 to $fp-560
	  sw $s2, -564($fp)	# spill _tmp138 from $s2 to $fp-564
	  sw $s3, -568($fp)	# spill _tmp139 from $s3 to $fp-568
	  sw $s4, -572($fp)	# spill _tmp140 from $s4 to $fp-572
	  sw $s5, -576($fp)	# spill _tmp141 from $s5 to $fp-576
	  sw $s6, -580($fp)	# spill _tmp142 from $s6 to $fp-580
	  sw $s7, -584($fp)	# spill _tmp143 from $s7 to $fp-584
	  beqz $s7, _L14	# branch if _tmp143 is zero 
	# _tmp144 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string12: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string12	# load label
	# PushParam _tmp144
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -588($fp)	# spill _tmp144 from $t0 to $fp-588
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L14:
	# _tmp145 = _tmp135 * _tmp137
	  lw $t0, -552($fp)	# load _tmp135 from $fp-552 into $t0
	  lw $t1, -560($fp)	# load _tmp137 from $fp-560 into $t1
	  mul $t2, $t0, $t1	
	# _tmp146 = _tmp145 + _tmp137
	  add $t3, $t2, $t1	
	# _tmp147 = _tmp134 + _tmp146
	  lw $t4, -548($fp)	# load _tmp134 from $fp-548 into $t4
	  add $t5, $t4, $t3	
	# _tmp148 = *(_tmp147)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp149 = 234
	  li $t7, 234		# load constant value 234 into $t7
	# _tmp150 = 5
	  li $s0, 5		# load constant value 5 into $s0
	# _tmp151 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp152 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp153 = *(arr)
	  lw $s3, -8($fp)	# load arr from $fp-8 into $s3
	  lw $s4, 0($s3) 	# load with offset
	# _tmp154 = _tmp153 == _tmp150
	  seq $s5, $s4, $s0	
	# _tmp155 = _tmp153 < _tmp150
	  slt $s6, $s4, $s0	
	# _tmp156 = _tmp155 || _tmp154
	  or $s7, $s6, $s5	
	# _tmp157 = _tmp150 < _tmp151
	  slt $t8, $s0, $s1	
	# _tmp158 = _tmp157 || _tmp156
	  or $t9, $t8, $s7	
	# IfZ _tmp158 Goto _L15
	# (save modified registers before flow of control change)
	  sw $t2, -592($fp)	# spill _tmp145 from $t2 to $fp-592
	  sw $t3, -596($fp)	# spill _tmp146 from $t3 to $fp-596
	  sw $t5, -600($fp)	# spill _tmp147 from $t5 to $fp-600
	  sw $t6, -604($fp)	# spill _tmp148 from $t6 to $fp-604
	  sw $t7, -608($fp)	# spill _tmp149 from $t7 to $fp-608
	  sw $s0, -612($fp)	# spill _tmp150 from $s0 to $fp-612
	  sw $s1, -616($fp)	# spill _tmp151 from $s1 to $fp-616
	  sw $s2, -620($fp)	# spill _tmp152 from $s2 to $fp-620
	  sw $s4, -624($fp)	# spill _tmp153 from $s4 to $fp-624
	  sw $s5, -628($fp)	# spill _tmp154 from $s5 to $fp-628
	  sw $s6, -632($fp)	# spill _tmp155 from $s6 to $fp-632
	  sw $s7, -636($fp)	# spill _tmp156 from $s7 to $fp-636
	  sw $t8, -640($fp)	# spill _tmp157 from $t8 to $fp-640
	  sw $t9, -644($fp)	# spill _tmp158 from $t9 to $fp-644
	  beqz $t9, _L15	# branch if _tmp158 is zero 
	# _tmp159 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string13: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string13	# load label
	# PushParam _tmp159
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -648($fp)	# spill _tmp159 from $t0 to $fp-648
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L15:
	# _tmp160 = _tmp150 * _tmp152
	  lw $t0, -612($fp)	# load _tmp150 from $fp-612 into $t0
	  lw $t1, -620($fp)	# load _tmp152 from $fp-620 into $t1
	  mul $t2, $t0, $t1	
	# _tmp161 = _tmp160 + _tmp152
	  add $t3, $t2, $t1	
	# _tmp162 = arr + _tmp161
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp163 = *(_tmp162)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp164 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp165 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp166 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp167 = *(_tmp163)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp168 = _tmp167 == _tmp164
	  seq $s3, $s2, $t7	
	# _tmp169 = _tmp167 < _tmp164
	  slt $s4, $s2, $t7	
	# _tmp170 = _tmp169 || _tmp168
	  or $s5, $s4, $s3	
	# _tmp171 = _tmp164 < _tmp165
	  slt $s6, $t7, $s0	
	# _tmp172 = _tmp171 || _tmp170
	  or $s7, $s6, $s5	
	# IfZ _tmp172 Goto _L16
	# (save modified registers before flow of control change)
	  sw $t2, -652($fp)	# spill _tmp160 from $t2 to $fp-652
	  sw $t3, -656($fp)	# spill _tmp161 from $t3 to $fp-656
	  sw $t5, -660($fp)	# spill _tmp162 from $t5 to $fp-660
	  sw $t6, -664($fp)	# spill _tmp163 from $t6 to $fp-664
	  sw $t7, -668($fp)	# spill _tmp164 from $t7 to $fp-668
	  sw $s0, -672($fp)	# spill _tmp165 from $s0 to $fp-672
	  sw $s1, -676($fp)	# spill _tmp166 from $s1 to $fp-676
	  sw $s2, -680($fp)	# spill _tmp167 from $s2 to $fp-680
	  sw $s3, -684($fp)	# spill _tmp168 from $s3 to $fp-684
	  sw $s4, -688($fp)	# spill _tmp169 from $s4 to $fp-688
	  sw $s5, -692($fp)	# spill _tmp170 from $s5 to $fp-692
	  sw $s6, -696($fp)	# spill _tmp171 from $s6 to $fp-696
	  sw $s7, -700($fp)	# spill _tmp172 from $s7 to $fp-700
	  beqz $s7, _L16	# branch if _tmp172 is zero 
	# _tmp173 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string14: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string14	# load label
	# PushParam _tmp173
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -704($fp)	# spill _tmp173 from $t0 to $fp-704
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L16:
	# _tmp174 = _tmp164 * _tmp166
	  lw $t0, -668($fp)	# load _tmp164 from $fp-668 into $t0
	  lw $t1, -676($fp)	# load _tmp166 from $fp-676 into $t1
	  mul $t2, $t0, $t1	
	# _tmp175 = _tmp174 + _tmp166
	  add $t3, $t2, $t1	
	# _tmp176 = _tmp163 + _tmp175
	  lw $t4, -664($fp)	# load _tmp163 from $fp-664 into $t4
	  add $t5, $t4, $t3	
	# _tmp177 = *(_tmp176)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp178 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp179 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp180 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp181 = *(_tmp177)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp182 = _tmp181 == _tmp178
	  seq $s3, $s2, $t7	
	# _tmp183 = _tmp181 < _tmp178
	  slt $s4, $s2, $t7	
	# _tmp184 = _tmp183 || _tmp182
	  or $s5, $s4, $s3	
	# _tmp185 = _tmp178 < _tmp179
	  slt $s6, $t7, $s0	
	# _tmp186 = _tmp185 || _tmp184
	  or $s7, $s6, $s5	
	# IfZ _tmp186 Goto _L17
	# (save modified registers before flow of control change)
	  sw $t2, -708($fp)	# spill _tmp174 from $t2 to $fp-708
	  sw $t3, -712($fp)	# spill _tmp175 from $t3 to $fp-712
	  sw $t5, -716($fp)	# spill _tmp176 from $t5 to $fp-716
	  sw $t6, -720($fp)	# spill _tmp177 from $t6 to $fp-720
	  sw $t7, -724($fp)	# spill _tmp178 from $t7 to $fp-724
	  sw $s0, -728($fp)	# spill _tmp179 from $s0 to $fp-728
	  sw $s1, -732($fp)	# spill _tmp180 from $s1 to $fp-732
	  sw $s2, -736($fp)	# spill _tmp181 from $s2 to $fp-736
	  sw $s3, -740($fp)	# spill _tmp182 from $s3 to $fp-740
	  sw $s4, -744($fp)	# spill _tmp183 from $s4 to $fp-744
	  sw $s5, -748($fp)	# spill _tmp184 from $s5 to $fp-748
	  sw $s6, -752($fp)	# spill _tmp185 from $s6 to $fp-752
	  sw $s7, -756($fp)	# spill _tmp186 from $s7 to $fp-756
	  beqz $s7, _L17	# branch if _tmp186 is zero 
	# _tmp187 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string15: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string15	# load label
	# PushParam _tmp187
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -760($fp)	# spill _tmp187 from $t0 to $fp-760
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L17:
	# _tmp188 = _tmp178 * _tmp180
	  lw $t0, -724($fp)	# load _tmp178 from $fp-724 into $t0
	  lw $t1, -732($fp)	# load _tmp180 from $fp-732 into $t1
	  mul $t2, $t0, $t1	
	# _tmp189 = _tmp188 + _tmp180
	  add $t3, $t2, $t1	
	# _tmp190 = _tmp177 + _tmp189
	  lw $t4, -720($fp)	# load _tmp177 from $fp-720 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp190) = _tmp149
	  lw $t6, -608($fp)	# load _tmp149 from $fp-608 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp191 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp192 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp193 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp194 = *(arr)
	  lw $s2, -8($fp)	# load arr from $fp-8 into $s2
	  lw $s3, 0($s2) 	# load with offset
	# _tmp195 = _tmp194 == _tmp191
	  seq $s4, $s3, $t7	
	# _tmp196 = _tmp194 < _tmp191
	  slt $s5, $s3, $t7	
	# _tmp197 = _tmp196 || _tmp195
	  or $s6, $s5, $s4	
	# _tmp198 = _tmp191 < _tmp192
	  slt $s7, $t7, $s0	
	# _tmp199 = _tmp198 || _tmp197
	  or $t8, $s7, $s6	
	# IfZ _tmp199 Goto _L18
	# (save modified registers before flow of control change)
	  sw $t2, -764($fp)	# spill _tmp188 from $t2 to $fp-764
	  sw $t3, -768($fp)	# spill _tmp189 from $t3 to $fp-768
	  sw $t5, -772($fp)	# spill _tmp190 from $t5 to $fp-772
	  sw $t7, -776($fp)	# spill _tmp191 from $t7 to $fp-776
	  sw $s0, -780($fp)	# spill _tmp192 from $s0 to $fp-780
	  sw $s1, -784($fp)	# spill _tmp193 from $s1 to $fp-784
	  sw $s3, -788($fp)	# spill _tmp194 from $s3 to $fp-788
	  sw $s4, -792($fp)	# spill _tmp195 from $s4 to $fp-792
	  sw $s5, -796($fp)	# spill _tmp196 from $s5 to $fp-796
	  sw $s6, -800($fp)	# spill _tmp197 from $s6 to $fp-800
	  sw $s7, -804($fp)	# spill _tmp198 from $s7 to $fp-804
	  sw $t8, -808($fp)	# spill _tmp199 from $t8 to $fp-808
	  beqz $t8, _L18	# branch if _tmp199 is zero 
	# _tmp200 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string16: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string16	# load label
	# PushParam _tmp200
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -812($fp)	# spill _tmp200 from $t0 to $fp-812
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L18:
	# _tmp201 = _tmp191 * _tmp193
	  lw $t0, -776($fp)	# load _tmp191 from $fp-776 into $t0
	  lw $t1, -784($fp)	# load _tmp193 from $fp-784 into $t1
	  mul $t2, $t0, $t1	
	# _tmp202 = _tmp201 + _tmp193
	  add $t3, $t2, $t1	
	# _tmp203 = arr + _tmp202
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp204 = *(_tmp203)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp205 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp206 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp207 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp208 = *(_tmp204)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp209 = _tmp208 == _tmp205
	  seq $s3, $s2, $t7	
	# _tmp210 = _tmp208 < _tmp205
	  slt $s4, $s2, $t7	
	# _tmp211 = _tmp210 || _tmp209
	  or $s5, $s4, $s3	
	# _tmp212 = _tmp205 < _tmp206
	  slt $s6, $t7, $s0	
	# _tmp213 = _tmp212 || _tmp211
	  or $s7, $s6, $s5	
	# IfZ _tmp213 Goto _L19
	# (save modified registers before flow of control change)
	  sw $t2, -816($fp)	# spill _tmp201 from $t2 to $fp-816
	  sw $t3, -820($fp)	# spill _tmp202 from $t3 to $fp-820
	  sw $t5, -824($fp)	# spill _tmp203 from $t5 to $fp-824
	  sw $t6, -828($fp)	# spill _tmp204 from $t6 to $fp-828
	  sw $t7, -832($fp)	# spill _tmp205 from $t7 to $fp-832
	  sw $s0, -836($fp)	# spill _tmp206 from $s0 to $fp-836
	  sw $s1, -840($fp)	# spill _tmp207 from $s1 to $fp-840
	  sw $s2, -844($fp)	# spill _tmp208 from $s2 to $fp-844
	  sw $s3, -848($fp)	# spill _tmp209 from $s3 to $fp-848
	  sw $s4, -852($fp)	# spill _tmp210 from $s4 to $fp-852
	  sw $s5, -856($fp)	# spill _tmp211 from $s5 to $fp-856
	  sw $s6, -860($fp)	# spill _tmp212 from $s6 to $fp-860
	  sw $s7, -864($fp)	# spill _tmp213 from $s7 to $fp-864
	  beqz $s7, _L19	# branch if _tmp213 is zero 
	# _tmp214 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string17: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string17	# load label
	# PushParam _tmp214
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -868($fp)	# spill _tmp214 from $t0 to $fp-868
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L19:
	# _tmp215 = _tmp205 * _tmp207
	  lw $t0, -832($fp)	# load _tmp205 from $fp-832 into $t0
	  lw $t1, -840($fp)	# load _tmp207 from $fp-840 into $t1
	  mul $t2, $t0, $t1	
	# _tmp216 = _tmp215 + _tmp207
	  add $t3, $t2, $t1	
	# _tmp217 = _tmp204 + _tmp216
	  lw $t4, -828($fp)	# load _tmp204 from $fp-828 into $t4
	  add $t5, $t4, $t3	
	# _tmp218 = *(_tmp217)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp219 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp220 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp221 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp222 = *(_tmp218)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp223 = _tmp222 == _tmp219
	  seq $s3, $s2, $t7	
	# _tmp224 = _tmp222 < _tmp219
	  slt $s4, $s2, $t7	
	# _tmp225 = _tmp224 || _tmp223
	  or $s5, $s4, $s3	
	# _tmp226 = _tmp219 < _tmp220
	  slt $s6, $t7, $s0	
	# _tmp227 = _tmp226 || _tmp225
	  or $s7, $s6, $s5	
	# IfZ _tmp227 Goto _L20
	# (save modified registers before flow of control change)
	  sw $t2, -872($fp)	# spill _tmp215 from $t2 to $fp-872
	  sw $t3, -876($fp)	# spill _tmp216 from $t3 to $fp-876
	  sw $t5, -880($fp)	# spill _tmp217 from $t5 to $fp-880
	  sw $t6, -884($fp)	# spill _tmp218 from $t6 to $fp-884
	  sw $t7, -888($fp)	# spill _tmp219 from $t7 to $fp-888
	  sw $s0, -892($fp)	# spill _tmp220 from $s0 to $fp-892
	  sw $s1, -896($fp)	# spill _tmp221 from $s1 to $fp-896
	  sw $s2, -900($fp)	# spill _tmp222 from $s2 to $fp-900
	  sw $s3, -904($fp)	# spill _tmp223 from $s3 to $fp-904
	  sw $s4, -908($fp)	# spill _tmp224 from $s4 to $fp-908
	  sw $s5, -912($fp)	# spill _tmp225 from $s5 to $fp-912
	  sw $s6, -916($fp)	# spill _tmp226 from $s6 to $fp-916
	  sw $s7, -920($fp)	# spill _tmp227 from $s7 to $fp-920
	  beqz $s7, _L20	# branch if _tmp227 is zero 
	# _tmp228 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string18: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string18	# load label
	# PushParam _tmp228
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -924($fp)	# spill _tmp228 from $t0 to $fp-924
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L20:
	# _tmp229 = _tmp219 * _tmp221
	  lw $t0, -888($fp)	# load _tmp219 from $fp-888 into $t0
	  lw $t1, -896($fp)	# load _tmp221 from $fp-896 into $t1
	  mul $t2, $t0, $t1	
	# _tmp230 = _tmp229 + _tmp221
	  add $t3, $t2, $t1	
	# _tmp231 = _tmp218 + _tmp230
	  lw $t4, -884($fp)	# load _tmp218 from $fp-884 into $t4
	  add $t5, $t4, $t3	
	# _tmp232 = *(_tmp231)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp233 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp234 = 5
	  li $s0, 5		# load constant value 5 into $s0
	# _tmp235 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp236 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp237 = *(arr)
	  lw $s3, -8($fp)	# load arr from $fp-8 into $s3
	  lw $s4, 0($s3) 	# load with offset
	# _tmp238 = _tmp237 == _tmp234
	  seq $s5, $s4, $s0	
	# _tmp239 = _tmp237 < _tmp234
	  slt $s6, $s4, $s0	
	# _tmp240 = _tmp239 || _tmp238
	  or $s7, $s6, $s5	
	# _tmp241 = _tmp234 < _tmp235
	  slt $t8, $s0, $s1	
	# _tmp242 = _tmp241 || _tmp240
	  or $t9, $t8, $s7	
	# IfZ _tmp242 Goto _L21
	# (save modified registers before flow of control change)
	  sw $t2, -928($fp)	# spill _tmp229 from $t2 to $fp-928
	  sw $t3, -932($fp)	# spill _tmp230 from $t3 to $fp-932
	  sw $t5, -936($fp)	# spill _tmp231 from $t5 to $fp-936
	  sw $t6, -940($fp)	# spill _tmp232 from $t6 to $fp-940
	  sw $t7, -944($fp)	# spill _tmp233 from $t7 to $fp-944
	  sw $s0, -948($fp)	# spill _tmp234 from $s0 to $fp-948
	  sw $s1, -952($fp)	# spill _tmp235 from $s1 to $fp-952
	  sw $s2, -956($fp)	# spill _tmp236 from $s2 to $fp-956
	  sw $s4, -960($fp)	# spill _tmp237 from $s4 to $fp-960
	  sw $s5, -964($fp)	# spill _tmp238 from $s5 to $fp-964
	  sw $s6, -968($fp)	# spill _tmp239 from $s6 to $fp-968
	  sw $s7, -972($fp)	# spill _tmp240 from $s7 to $fp-972
	  sw $t8, -976($fp)	# spill _tmp241 from $t8 to $fp-976
	  sw $t9, -980($fp)	# spill _tmp242 from $t9 to $fp-980
	  beqz $t9, _L21	# branch if _tmp242 is zero 
	# _tmp243 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string19: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string19	# load label
	# PushParam _tmp243
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -984($fp)	# spill _tmp243 from $t0 to $fp-984
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L21:
	# _tmp244 = _tmp234 * _tmp236
	  lw $t0, -948($fp)	# load _tmp234 from $fp-948 into $t0
	  lw $t1, -956($fp)	# load _tmp236 from $fp-956 into $t1
	  mul $t2, $t0, $t1	
	# _tmp245 = _tmp244 + _tmp236
	  add $t3, $t2, $t1	
	# _tmp246 = arr + _tmp245
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp247 = *(_tmp246)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp248 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp249 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp250 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp251 = *(_tmp247)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp252 = _tmp251 == _tmp248
	  seq $s3, $s2, $t7	
	# _tmp253 = _tmp251 < _tmp248
	  slt $s4, $s2, $t7	
	# _tmp254 = _tmp253 || _tmp252
	  or $s5, $s4, $s3	
	# _tmp255 = _tmp248 < _tmp249
	  slt $s6, $t7, $s0	
	# _tmp256 = _tmp255 || _tmp254
	  or $s7, $s6, $s5	
	# IfZ _tmp256 Goto _L22
	# (save modified registers before flow of control change)
	  sw $t2, -988($fp)	# spill _tmp244 from $t2 to $fp-988
	  sw $t3, -992($fp)	# spill _tmp245 from $t3 to $fp-992
	  sw $t5, -996($fp)	# spill _tmp246 from $t5 to $fp-996
	  sw $t6, -1000($fp)	# spill _tmp247 from $t6 to $fp-1000
	  sw $t7, -1004($fp)	# spill _tmp248 from $t7 to $fp-1004
	  sw $s0, -1008($fp)	# spill _tmp249 from $s0 to $fp-1008
	  sw $s1, -1012($fp)	# spill _tmp250 from $s1 to $fp-1012
	  sw $s2, -1016($fp)	# spill _tmp251 from $s2 to $fp-1016
	  sw $s3, -1020($fp)	# spill _tmp252 from $s3 to $fp-1020
	  sw $s4, -1024($fp)	# spill _tmp253 from $s4 to $fp-1024
	  sw $s5, -1028($fp)	# spill _tmp254 from $s5 to $fp-1028
	  sw $s6, -1032($fp)	# spill _tmp255 from $s6 to $fp-1032
	  sw $s7, -1036($fp)	# spill _tmp256 from $s7 to $fp-1036
	  beqz $s7, _L22	# branch if _tmp256 is zero 
	# _tmp257 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string20: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string20	# load label
	# PushParam _tmp257
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1040($fp)	# spill _tmp257 from $t0 to $fp-1040
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L22:
	# _tmp258 = _tmp248 * _tmp250
	  lw $t0, -1004($fp)	# load _tmp248 from $fp-1004 into $t0
	  lw $t1, -1012($fp)	# load _tmp250 from $fp-1012 into $t1
	  mul $t2, $t0, $t1	
	# _tmp259 = _tmp258 + _tmp250
	  add $t3, $t2, $t1	
	# _tmp260 = _tmp247 + _tmp259
	  lw $t4, -1000($fp)	# load _tmp247 from $fp-1000 into $t4
	  add $t5, $t4, $t3	
	# _tmp261 = *(_tmp260)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp262 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp263 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp264 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp265 = *(_tmp261)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp266 = _tmp265 == _tmp262
	  seq $s3, $s2, $t7	
	# _tmp267 = _tmp265 < _tmp262
	  slt $s4, $s2, $t7	
	# _tmp268 = _tmp267 || _tmp266
	  or $s5, $s4, $s3	
	# _tmp269 = _tmp262 < _tmp263
	  slt $s6, $t7, $s0	
	# _tmp270 = _tmp269 || _tmp268
	  or $s7, $s6, $s5	
	# IfZ _tmp270 Goto _L23
	# (save modified registers before flow of control change)
	  sw $t2, -1044($fp)	# spill _tmp258 from $t2 to $fp-1044
	  sw $t3, -1048($fp)	# spill _tmp259 from $t3 to $fp-1048
	  sw $t5, -1052($fp)	# spill _tmp260 from $t5 to $fp-1052
	  sw $t6, -1056($fp)	# spill _tmp261 from $t6 to $fp-1056
	  sw $t7, -1060($fp)	# spill _tmp262 from $t7 to $fp-1060
	  sw $s0, -1064($fp)	# spill _tmp263 from $s0 to $fp-1064
	  sw $s1, -1068($fp)	# spill _tmp264 from $s1 to $fp-1068
	  sw $s2, -1072($fp)	# spill _tmp265 from $s2 to $fp-1072
	  sw $s3, -1076($fp)	# spill _tmp266 from $s3 to $fp-1076
	  sw $s4, -1080($fp)	# spill _tmp267 from $s4 to $fp-1080
	  sw $s5, -1084($fp)	# spill _tmp268 from $s5 to $fp-1084
	  sw $s6, -1088($fp)	# spill _tmp269 from $s6 to $fp-1088
	  sw $s7, -1092($fp)	# spill _tmp270 from $s7 to $fp-1092
	  beqz $s7, _L23	# branch if _tmp270 is zero 
	# _tmp271 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string21: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string21	# load label
	# PushParam _tmp271
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1096($fp)	# spill _tmp271 from $t0 to $fp-1096
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L23:
	# _tmp272 = _tmp262 * _tmp264
	  lw $t0, -1060($fp)	# load _tmp262 from $fp-1060 into $t0
	  lw $t1, -1068($fp)	# load _tmp264 from $fp-1068 into $t1
	  mul $t2, $t0, $t1	
	# _tmp273 = _tmp272 + _tmp264
	  add $t3, $t2, $t1	
	# _tmp274 = _tmp261 + _tmp273
	  lw $t4, -1056($fp)	# load _tmp261 from $fp-1056 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp274) = _tmp233
	  lw $t6, -944($fp)	# load _tmp233 from $fp-944 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp275 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp276 = 1
	  li $s0, 1		# load constant value 1 into $s0
	# _tmp277 = _tmp275 + _tmp276
	  add $s1, $t7, $s0	
	# _tmp278 = 0
	  li $s2, 0		# load constant value 0 into $s2
	# _tmp279 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp280 = *(arr)
	  lw $s4, -8($fp)	# load arr from $fp-8 into $s4
	  lw $s5, 0($s4) 	# load with offset
	# _tmp281 = _tmp280 == _tmp277
	  seq $s6, $s5, $s1	
	# _tmp282 = _tmp280 < _tmp277
	  slt $s7, $s5, $s1	
	# _tmp283 = _tmp282 || _tmp281
	  or $t8, $s7, $s6	
	# _tmp284 = _tmp277 < _tmp278
	  slt $t9, $s1, $s2	
	# _tmp285 = _tmp284 || _tmp283
	  or $t0, $t9, $t8	
	# IfZ _tmp285 Goto _L24
	# (save modified registers before flow of control change)
	  sw $t0, -1152($fp)	# spill _tmp285 from $t0 to $fp-1152
	  sw $t2, -1100($fp)	# spill _tmp272 from $t2 to $fp-1100
	  sw $t3, -1104($fp)	# spill _tmp273 from $t3 to $fp-1104
	  sw $t5, -1108($fp)	# spill _tmp274 from $t5 to $fp-1108
	  sw $t7, -1112($fp)	# spill _tmp275 from $t7 to $fp-1112
	  sw $s0, -1116($fp)	# spill _tmp276 from $s0 to $fp-1116
	  sw $s1, -1120($fp)	# spill _tmp277 from $s1 to $fp-1120
	  sw $s2, -1124($fp)	# spill _tmp278 from $s2 to $fp-1124
	  sw $s3, -1128($fp)	# spill _tmp279 from $s3 to $fp-1128
	  sw $s5, -1132($fp)	# spill _tmp280 from $s5 to $fp-1132
	  sw $s6, -1136($fp)	# spill _tmp281 from $s6 to $fp-1136
	  sw $s7, -1140($fp)	# spill _tmp282 from $s7 to $fp-1140
	  sw $t8, -1144($fp)	# spill _tmp283 from $t8 to $fp-1144
	  sw $t9, -1148($fp)	# spill _tmp284 from $t9 to $fp-1148
	  beqz $t0, _L24	# branch if _tmp285 is zero 
	# _tmp286 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string22: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string22	# load label
	# PushParam _tmp286
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1156($fp)	# spill _tmp286 from $t0 to $fp-1156
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L24:
	# _tmp287 = _tmp277 * _tmp279
	  lw $t0, -1120($fp)	# load _tmp277 from $fp-1120 into $t0
	  lw $t1, -1128($fp)	# load _tmp279 from $fp-1128 into $t1
	  mul $t2, $t0, $t1	
	# _tmp288 = _tmp287 + _tmp279
	  add $t3, $t2, $t1	
	# _tmp289 = arr + _tmp288
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp290 = *(_tmp289)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp291 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp292 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp293 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp294 = *(arr)
	  lw $s2, 0($t4) 	# load with offset
	# _tmp295 = _tmp294 == _tmp291
	  seq $s3, $s2, $t7	
	# _tmp296 = _tmp294 < _tmp291
	  slt $s4, $s2, $t7	
	# _tmp297 = _tmp296 || _tmp295
	  or $s5, $s4, $s3	
	# _tmp298 = _tmp291 < _tmp292
	  slt $s6, $t7, $s0	
	# _tmp299 = _tmp298 || _tmp297
	  or $s7, $s6, $s5	
	# IfZ _tmp299 Goto _L25
	# (save modified registers before flow of control change)
	  sw $t2, -1160($fp)	# spill _tmp287 from $t2 to $fp-1160
	  sw $t3, -1164($fp)	# spill _tmp288 from $t3 to $fp-1164
	  sw $t5, -1168($fp)	# spill _tmp289 from $t5 to $fp-1168
	  sw $t6, -1172($fp)	# spill _tmp290 from $t6 to $fp-1172
	  sw $t7, -1176($fp)	# spill _tmp291 from $t7 to $fp-1176
	  sw $s0, -1180($fp)	# spill _tmp292 from $s0 to $fp-1180
	  sw $s1, -1184($fp)	# spill _tmp293 from $s1 to $fp-1184
	  sw $s2, -1188($fp)	# spill _tmp294 from $s2 to $fp-1188
	  sw $s3, -1192($fp)	# spill _tmp295 from $s3 to $fp-1192
	  sw $s4, -1196($fp)	# spill _tmp296 from $s4 to $fp-1196
	  sw $s5, -1200($fp)	# spill _tmp297 from $s5 to $fp-1200
	  sw $s6, -1204($fp)	# spill _tmp298 from $s6 to $fp-1204
	  sw $s7, -1208($fp)	# spill _tmp299 from $s7 to $fp-1208
	  beqz $s7, _L25	# branch if _tmp299 is zero 
	# _tmp300 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string23: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string23	# load label
	# PushParam _tmp300
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1212($fp)	# spill _tmp300 from $t0 to $fp-1212
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L25:
	# _tmp301 = _tmp291 * _tmp293
	  lw $t0, -1176($fp)	# load _tmp291 from $fp-1176 into $t0
	  lw $t1, -1184($fp)	# load _tmp293 from $fp-1184 into $t1
	  mul $t2, $t0, $t1	
	# _tmp302 = _tmp301 + _tmp293
	  add $t3, $t2, $t1	
	# _tmp303 = arr + _tmp302
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp304 = *(_tmp303)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp305 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp306 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp307 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp308 = *(_tmp304)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp309 = _tmp308 == _tmp305
	  seq $s3, $s2, $t7	
	# _tmp310 = _tmp308 < _tmp305
	  slt $s4, $s2, $t7	
	# _tmp311 = _tmp310 || _tmp309
	  or $s5, $s4, $s3	
	# _tmp312 = _tmp305 < _tmp306
	  slt $s6, $t7, $s0	
	# _tmp313 = _tmp312 || _tmp311
	  or $s7, $s6, $s5	
	# IfZ _tmp313 Goto _L26
	# (save modified registers before flow of control change)
	  sw $t2, -1216($fp)	# spill _tmp301 from $t2 to $fp-1216
	  sw $t3, -1220($fp)	# spill _tmp302 from $t3 to $fp-1220
	  sw $t5, -1224($fp)	# spill _tmp303 from $t5 to $fp-1224
	  sw $t6, -1228($fp)	# spill _tmp304 from $t6 to $fp-1228
	  sw $t7, -1232($fp)	# spill _tmp305 from $t7 to $fp-1232
	  sw $s0, -1236($fp)	# spill _tmp306 from $s0 to $fp-1236
	  sw $s1, -1240($fp)	# spill _tmp307 from $s1 to $fp-1240
	  sw $s2, -1244($fp)	# spill _tmp308 from $s2 to $fp-1244
	  sw $s3, -1248($fp)	# spill _tmp309 from $s3 to $fp-1248
	  sw $s4, -1252($fp)	# spill _tmp310 from $s4 to $fp-1252
	  sw $s5, -1256($fp)	# spill _tmp311 from $s5 to $fp-1256
	  sw $s6, -1260($fp)	# spill _tmp312 from $s6 to $fp-1260
	  sw $s7, -1264($fp)	# spill _tmp313 from $s7 to $fp-1264
	  beqz $s7, _L26	# branch if _tmp313 is zero 
	# _tmp314 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string24: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string24	# load label
	# PushParam _tmp314
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1268($fp)	# spill _tmp314 from $t0 to $fp-1268
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L26:
	# _tmp315 = _tmp305 * _tmp307
	  lw $t0, -1232($fp)	# load _tmp305 from $fp-1232 into $t0
	  lw $t1, -1240($fp)	# load _tmp307 from $fp-1240 into $t1
	  mul $t2, $t0, $t1	
	# _tmp316 = _tmp315 + _tmp307
	  add $t3, $t2, $t1	
	# _tmp317 = _tmp304 + _tmp316
	  lw $t4, -1228($fp)	# load _tmp304 from $fp-1228 into $t4
	  add $t5, $t4, $t3	
	# _tmp318 = *(_tmp317)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp319 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp320 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp321 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp322 = *(_tmp318)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp323 = _tmp322 == _tmp319
	  seq $s3, $s2, $t7	
	# _tmp324 = _tmp322 < _tmp319
	  slt $s4, $s2, $t7	
	# _tmp325 = _tmp324 || _tmp323
	  or $s5, $s4, $s3	
	# _tmp326 = _tmp319 < _tmp320
	  slt $s6, $t7, $s0	
	# _tmp327 = _tmp326 || _tmp325
	  or $s7, $s6, $s5	
	# IfZ _tmp327 Goto _L27
	# (save modified registers before flow of control change)
	  sw $t2, -1272($fp)	# spill _tmp315 from $t2 to $fp-1272
	  sw $t3, -1276($fp)	# spill _tmp316 from $t3 to $fp-1276
	  sw $t5, -1280($fp)	# spill _tmp317 from $t5 to $fp-1280
	  sw $t6, -1284($fp)	# spill _tmp318 from $t6 to $fp-1284
	  sw $t7, -1288($fp)	# spill _tmp319 from $t7 to $fp-1288
	  sw $s0, -1292($fp)	# spill _tmp320 from $s0 to $fp-1292
	  sw $s1, -1296($fp)	# spill _tmp321 from $s1 to $fp-1296
	  sw $s2, -1300($fp)	# spill _tmp322 from $s2 to $fp-1300
	  sw $s3, -1304($fp)	# spill _tmp323 from $s3 to $fp-1304
	  sw $s4, -1308($fp)	# spill _tmp324 from $s4 to $fp-1308
	  sw $s5, -1312($fp)	# spill _tmp325 from $s5 to $fp-1312
	  sw $s6, -1316($fp)	# spill _tmp326 from $s6 to $fp-1316
	  sw $s7, -1320($fp)	# spill _tmp327 from $s7 to $fp-1320
	  beqz $s7, _L27	# branch if _tmp327 is zero 
	# _tmp328 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string25: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string25	# load label
	# PushParam _tmp328
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1324($fp)	# spill _tmp328 from $t0 to $fp-1324
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L27:
	# _tmp329 = _tmp319 * _tmp321
	  lw $t0, -1288($fp)	# load _tmp319 from $fp-1288 into $t0
	  lw $t1, -1296($fp)	# load _tmp321 from $fp-1296 into $t1
	  mul $t2, $t0, $t1	
	# _tmp330 = _tmp329 + _tmp321
	  add $t3, $t2, $t1	
	# _tmp331 = _tmp318 + _tmp330
	  lw $t4, -1284($fp)	# load _tmp318 from $fp-1284 into $t4
	  add $t5, $t4, $t3	
	# _tmp332 = *(_tmp331)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp333 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp334 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp335 = *(_tmp290)
	  lw $s1, -1172($fp)	# load _tmp290 from $fp-1172 into $s1
	  lw $s2, 0($s1) 	# load with offset
	# _tmp336 = _tmp335 == _tmp332
	  seq $s3, $s2, $t6	
	# _tmp337 = _tmp335 < _tmp332
	  slt $s4, $s2, $t6	
	# _tmp338 = _tmp337 || _tmp336
	  or $s5, $s4, $s3	
	# _tmp339 = _tmp332 < _tmp333
	  slt $s6, $t6, $t7	
	# _tmp340 = _tmp339 || _tmp338
	  or $s7, $s6, $s5	
	# IfZ _tmp340 Goto _L28
	# (save modified registers before flow of control change)
	  sw $t2, -1328($fp)	# spill _tmp329 from $t2 to $fp-1328
	  sw $t3, -1332($fp)	# spill _tmp330 from $t3 to $fp-1332
	  sw $t5, -1336($fp)	# spill _tmp331 from $t5 to $fp-1336
	  sw $t6, -1340($fp)	# spill _tmp332 from $t6 to $fp-1340
	  sw $t7, -1344($fp)	# spill _tmp333 from $t7 to $fp-1344
	  sw $s0, -1348($fp)	# spill _tmp334 from $s0 to $fp-1348
	  sw $s2, -1352($fp)	# spill _tmp335 from $s2 to $fp-1352
	  sw $s3, -1356($fp)	# spill _tmp336 from $s3 to $fp-1356
	  sw $s4, -1360($fp)	# spill _tmp337 from $s4 to $fp-1360
	  sw $s5, -1364($fp)	# spill _tmp338 from $s5 to $fp-1364
	  sw $s6, -1368($fp)	# spill _tmp339 from $s6 to $fp-1368
	  sw $s7, -1372($fp)	# spill _tmp340 from $s7 to $fp-1372
	  beqz $s7, _L28	# branch if _tmp340 is zero 
	# _tmp341 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string26: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string26	# load label
	# PushParam _tmp341
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1376($fp)	# spill _tmp341 from $t0 to $fp-1376
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L28:
	# _tmp342 = _tmp332 * _tmp334
	  lw $t0, -1340($fp)	# load _tmp332 from $fp-1340 into $t0
	  lw $t1, -1348($fp)	# load _tmp334 from $fp-1348 into $t1
	  mul $t2, $t0, $t1	
	# _tmp343 = _tmp342 + _tmp334
	  add $t3, $t2, $t1	
	# _tmp344 = _tmp290 + _tmp343
	  lw $t4, -1172($fp)	# load _tmp290 from $fp-1172 into $t4
	  add $t5, $t4, $t3	
	# _tmp345 = *(_tmp344)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp346 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp347 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp348 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp349 = *(_tmp345)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp350 = _tmp349 == _tmp346
	  seq $s3, $s2, $t7	
	# _tmp351 = _tmp349 < _tmp346
	  slt $s4, $s2, $t7	
	# _tmp352 = _tmp351 || _tmp350
	  or $s5, $s4, $s3	
	# _tmp353 = _tmp346 < _tmp347
	  slt $s6, $t7, $s0	
	# _tmp354 = _tmp353 || _tmp352
	  or $s7, $s6, $s5	
	# IfZ _tmp354 Goto _L29
	# (save modified registers before flow of control change)
	  sw $t2, -1380($fp)	# spill _tmp342 from $t2 to $fp-1380
	  sw $t3, -1384($fp)	# spill _tmp343 from $t3 to $fp-1384
	  sw $t5, -1388($fp)	# spill _tmp344 from $t5 to $fp-1388
	  sw $t6, -1392($fp)	# spill _tmp345 from $t6 to $fp-1392
	  sw $t7, -1396($fp)	# spill _tmp346 from $t7 to $fp-1396
	  sw $s0, -1400($fp)	# spill _tmp347 from $s0 to $fp-1400
	  sw $s1, -1404($fp)	# spill _tmp348 from $s1 to $fp-1404
	  sw $s2, -1408($fp)	# spill _tmp349 from $s2 to $fp-1408
	  sw $s3, -1412($fp)	# spill _tmp350 from $s3 to $fp-1412
	  sw $s4, -1416($fp)	# spill _tmp351 from $s4 to $fp-1416
	  sw $s5, -1420($fp)	# spill _tmp352 from $s5 to $fp-1420
	  sw $s6, -1424($fp)	# spill _tmp353 from $s6 to $fp-1424
	  sw $s7, -1428($fp)	# spill _tmp354 from $s7 to $fp-1428
	  beqz $s7, _L29	# branch if _tmp354 is zero 
	# _tmp355 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string27: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string27	# load label
	# PushParam _tmp355
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1432($fp)	# spill _tmp355 from $t0 to $fp-1432
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L29:
	# _tmp356 = _tmp346 * _tmp348
	  lw $t0, -1396($fp)	# load _tmp346 from $fp-1396 into $t0
	  lw $t1, -1404($fp)	# load _tmp348 from $fp-1404 into $t1
	  mul $t2, $t0, $t1	
	# _tmp357 = _tmp356 + _tmp348
	  add $t3, $t2, $t1	
	# _tmp358 = _tmp345 + _tmp357
	  lw $t4, -1392($fp)	# load _tmp345 from $fp-1392 into $t4
	  add $t5, $t4, $t3	
	# _tmp359 = *(_tmp358)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp359
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -1436($fp)	# spill _tmp356 from $t2 to $fp-1436
	  sw $t3, -1440($fp)	# spill _tmp357 from $t3 to $fp-1440
	  sw $t5, -1444($fp)	# spill _tmp358 from $t5 to $fp-1444
	  sw $t6, -1448($fp)	# spill _tmp359 from $t6 to $fp-1448
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp360 = 5
	  li $t0, 5		# load constant value 5 into $t0
	# _tmp361 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp362 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp363 = *(arr)
	  lw $t3, -8($fp)	# load arr from $fp-8 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp364 = _tmp363 == _tmp360
	  seq $t5, $t4, $t0	
	# _tmp365 = _tmp363 < _tmp360
	  slt $t6, $t4, $t0	
	# _tmp366 = _tmp365 || _tmp364
	  or $t7, $t6, $t5	
	# _tmp367 = _tmp360 < _tmp361
	  slt $s0, $t0, $t1	
	# _tmp368 = _tmp367 || _tmp366
	  or $s1, $s0, $t7	
	# IfZ _tmp368 Goto _L30
	# (save modified registers before flow of control change)
	  sw $t0, -1452($fp)	# spill _tmp360 from $t0 to $fp-1452
	  sw $t1, -1456($fp)	# spill _tmp361 from $t1 to $fp-1456
	  sw $t2, -1460($fp)	# spill _tmp362 from $t2 to $fp-1460
	  sw $t4, -1464($fp)	# spill _tmp363 from $t4 to $fp-1464
	  sw $t5, -1468($fp)	# spill _tmp364 from $t5 to $fp-1468
	  sw $t6, -1472($fp)	# spill _tmp365 from $t6 to $fp-1472
	  sw $t7, -1476($fp)	# spill _tmp366 from $t7 to $fp-1476
	  sw $s0, -1480($fp)	# spill _tmp367 from $s0 to $fp-1480
	  sw $s1, -1484($fp)	# spill _tmp368 from $s1 to $fp-1484
	  beqz $s1, _L30	# branch if _tmp368 is zero 
	# _tmp369 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string28: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string28	# load label
	# PushParam _tmp369
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1488($fp)	# spill _tmp369 from $t0 to $fp-1488
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L30:
	# _tmp370 = _tmp360 * _tmp362
	  lw $t0, -1452($fp)	# load _tmp360 from $fp-1452 into $t0
	  lw $t1, -1460($fp)	# load _tmp362 from $fp-1460 into $t1
	  mul $t2, $t0, $t1	
	# _tmp371 = _tmp370 + _tmp362
	  add $t3, $t2, $t1	
	# _tmp372 = arr + _tmp371
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp373 = *(_tmp372)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp374 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp375 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp376 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp377 = *(_tmp373)
	  lw $s2, 0($t6) 	# load with offset
	# _tmp378 = _tmp377 == _tmp374
	  seq $s3, $s2, $t7	
	# _tmp379 = _tmp377 < _tmp374
	  slt $s4, $s2, $t7	
	# _tmp380 = _tmp379 || _tmp378
	  or $s5, $s4, $s3	
	# _tmp381 = _tmp374 < _tmp375
	  slt $s6, $t7, $s0	
	# _tmp382 = _tmp381 || _tmp380
	  or $s7, $s6, $s5	
	# IfZ _tmp382 Goto _L31
	# (save modified registers before flow of control change)
	  sw $t2, -1492($fp)	# spill _tmp370 from $t2 to $fp-1492
	  sw $t3, -1496($fp)	# spill _tmp371 from $t3 to $fp-1496
	  sw $t5, -1500($fp)	# spill _tmp372 from $t5 to $fp-1500
	  sw $t6, -1504($fp)	# spill _tmp373 from $t6 to $fp-1504
	  sw $t7, -1508($fp)	# spill _tmp374 from $t7 to $fp-1508
	  sw $s0, -1512($fp)	# spill _tmp375 from $s0 to $fp-1512
	  sw $s1, -1516($fp)	# spill _tmp376 from $s1 to $fp-1516
	  sw $s2, -1520($fp)	# spill _tmp377 from $s2 to $fp-1520
	  sw $s3, -1524($fp)	# spill _tmp378 from $s3 to $fp-1524
	  sw $s4, -1528($fp)	# spill _tmp379 from $s4 to $fp-1528
	  sw $s5, -1532($fp)	# spill _tmp380 from $s5 to $fp-1532
	  sw $s6, -1536($fp)	# spill _tmp381 from $s6 to $fp-1536
	  sw $s7, -1540($fp)	# spill _tmp382 from $s7 to $fp-1540
	  beqz $s7, _L31	# branch if _tmp382 is zero 
	# _tmp383 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string29: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string29	# load label
	# PushParam _tmp383
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1544($fp)	# spill _tmp383 from $t0 to $fp-1544
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L31:
	# _tmp384 = _tmp374 * _tmp376
	  lw $t0, -1508($fp)	# load _tmp374 from $fp-1508 into $t0
	  lw $t1, -1516($fp)	# load _tmp376 from $fp-1516 into $t1
	  mul $t2, $t0, $t1	
	# _tmp385 = _tmp384 + _tmp376
	  add $t3, $t2, $t1	
	# _tmp386 = _tmp373 + _tmp385
	  lw $t4, -1504($fp)	# load _tmp373 from $fp-1504 into $t4
	  add $t5, $t4, $t3	
	# _tmp387 = *(_tmp386)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp388 = *(_tmp387)
	  lw $t7, 0($t6) 	# load with offset
	# PushParam _tmp388
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -1548($fp)	# spill _tmp384 from $t2 to $fp-1548
	  sw $t3, -1552($fp)	# spill _tmp385 from $t3 to $fp-1552
	  sw $t5, -1556($fp)	# spill _tmp386 from $t5 to $fp-1556
	  sw $t6, -1560($fp)	# spill _tmp387 from $t6 to $fp-1560
	  sw $t7, -1564($fp)	# spill _tmp388 from $t7 to $fp-1564
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp389 = *(in)
	  lw $t0, -12($fp)	# load in from $fp-12 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp389
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -1568($fp)	# spill _tmp389 from $t1 to $fp-1568
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
.data			
	 newline: .asciiz "\n"
	 buf: .space 100
.text
_PrintInt:
 # BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  lw $t0, 4($fp)
                li $v0 ,1
	move $a0,$t0
	syscall
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	
_PrintString:
                # BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	   lw $t0, 4($fp)
                move $a0, $t0
	li $v0,4
	syscall
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
_PrintBool:
              # BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	   lw $t0, 4($fp)
                li $v0 ,1
	move $a0,$t0
	syscall
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
_ReadInteger:
  # BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	   lw $t0, 4($fp)
                li $v0 ,5
	syscall
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
_StringEqual:
 # BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  lw $s1, 4($fp)
	  lw $s2, 8($fp)
	  li $s3, 0
loop:      
	lb  $s4,0($s1)
	lb  $s5,0($s2)
	beq $s4,$s3, next
    	bne $s4,$s5, false
    	addi $s1, $s1, 1
                addi $s2, $s2, 1
                j loop
next:     
 	beq $s4,$5,ok
               j  false
 false:
           li  $v0,0
           j  return
ok:    
	 li   $v0,1
          	 j  return  
 
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
return:
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function


_ReadLine:
# BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  la $a0,buf
	  li $a1,40
                li $v0 ,8
	syscall
	la $v0,buf
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function

_Alloc :
 subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	   lw $t0, 4($fp)
	   move $a0,$t0
                li $v0 ,9
	syscall
	
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
_Halt:
  # BeginFunc 8
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
                li $v0 ,10
	syscall
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function