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
	# BeginFunc 1052
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 1052	# decrement sp to make space for locals/temps
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
	  sw $t0, -24($fp)	# spill _tmp1 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp2 from $t1 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp3 from $t2 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp4 from $t3 to $fp-36
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
	  sw $t0, -40($fp)	# spill _tmp5 from $t0 to $fp-40
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp6 = _tmp1 * _tmp3
	  lw $t0, -24($fp)	# load _tmp1 from $fp-24 into $t0
	  lw $t1, -32($fp)	# load _tmp3 from $fp-32 into $t1
	  mul $t2, $t0, $t1	
	# _tmp7 = _tmp6 + _tmp3
	  add $t3, $t2, $t1	
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp8 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -44($fp)	# spill _tmp6 from $t2 to $fp-44
	  sw $t3, -48($fp)	# spill _tmp7 from $t3 to $fp-48
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp8) = _tmp1
	  lw $t1, -24($fp)	# load _tmp1 from $fp-24 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp8
	  move $t2, $t0		# copy value
	# _tmp9 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# i = _tmp9
	  move $t4, $t3		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp8 from $t0 to $fp-52
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -56($fp)	# spill _tmp9 from $t3 to $fp-56
	  sw $t4, -12($fp)	# spill i from $t4 to $fp-12
  _L2:
	# _tmp10 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp11 = i < _tmp10
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp11 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp10 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp11 from $t2 to $fp-64
	  beqz $t2, _L3	# branch if _tmp11 is zero 
	# _tmp12 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp13 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp14 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp15 = _tmp14 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp16 = _tmp14 < i
	  slt $t6, $t3, $t4	
	# _tmp17 = _tmp16 || _tmp15
	  or $t7, $t6, $t5	
	# _tmp18 = i < _tmp12
	  slt $s0, $t4, $t0	
	# _tmp19 = _tmp18 || _tmp17
	  or $s1, $s0, $t7	
	# IfZ _tmp19 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp12 from $t0 to $fp-68
	  sw $t1, -72($fp)	# spill _tmp13 from $t1 to $fp-72
	  sw $t3, -76($fp)	# spill _tmp14 from $t3 to $fp-76
	  sw $t5, -80($fp)	# spill _tmp15 from $t5 to $fp-80
	  sw $t6, -84($fp)	# spill _tmp16 from $t6 to $fp-84
	  sw $t7, -88($fp)	# spill _tmp17 from $t7 to $fp-88
	  sw $s0, -92($fp)	# spill _tmp18 from $s0 to $fp-92
	  sw $s1, -96($fp)	# spill _tmp19 from $s1 to $fp-96
	  beqz $s1, _L4	# branch if _tmp19 is zero 
	# _tmp20 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp20 from $t0 to $fp-100
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp21 = i * _tmp13
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -72($fp)	# load _tmp13 from $fp-72 into $t1
	  mul $t2, $t0, $t1	
	# _tmp22 = _tmp21 + _tmp13
	  add $t3, $t2, $t1	
	# _tmp23 = a + _tmp22
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp24 = *(_tmp23)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp25 = 10
	  li $t7, 10		# load constant value 10 into $t7
	# _tmp26 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp27 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp28 = _tmp26 < _tmp25
	  slt $s2, $s0, $t7	
	# IfZ _tmp28 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t2, -104($fp)	# spill _tmp21 from $t2 to $fp-104
	  sw $t3, -108($fp)	# spill _tmp22 from $t3 to $fp-108
	  sw $t5, -112($fp)	# spill _tmp23 from $t5 to $fp-112
	  sw $t6, -116($fp)	# spill _tmp24 from $t6 to $fp-116
	  sw $t7, -120($fp)	# spill _tmp25 from $t7 to $fp-120
	  sw $s0, -124($fp)	# spill _tmp26 from $s0 to $fp-124
	  sw $s1, -128($fp)	# spill _tmp27 from $s1 to $fp-128
	  sw $s2, -132($fp)	# spill _tmp28 from $s2 to $fp-132
	  beqz $s2, _L5	# branch if _tmp28 is zero 
	# Goto _L6
	  b _L6		# unconditional branch
  _L5:
	# _tmp29 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp29 from $t0 to $fp-136
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L6:
	# _tmp30 = _tmp25 * _tmp27
	  lw $t0, -120($fp)	# load _tmp25 from $fp-120 into $t0
	  lw $t1, -128($fp)	# load _tmp27 from $fp-128 into $t1
	  mul $t2, $t0, $t1	
	# _tmp31 = _tmp30 + _tmp27
	  add $t3, $t2, $t1	
	# PushParam _tmp31
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp32 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -140($fp)	# spill _tmp30 from $t2 to $fp-140
	  sw $t3, -144($fp)	# spill _tmp31 from $t3 to $fp-144
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp32) = _tmp25
	  lw $t1, -120($fp)	# load _tmp25 from $fp-120 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# _tmp33 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp34 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp35 = *(a)
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  lw $t5, 0($t4) 	# load with offset
	# _tmp36 = _tmp35 == i
	  lw $t6, -12($fp)	# load i from $fp-12 into $t6
	  seq $t7, $t5, $t6	
	# _tmp37 = _tmp35 < i
	  slt $s0, $t5, $t6	
	# _tmp38 = _tmp37 || _tmp36
	  or $s1, $s0, $t7	
	# _tmp39 = i < _tmp33
	  slt $s2, $t6, $t2	
	# _tmp40 = _tmp39 || _tmp38
	  or $s3, $s2, $s1	
	# IfZ _tmp40 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t0, -148($fp)	# spill _tmp32 from $t0 to $fp-148
	  sw $t2, -152($fp)	# spill _tmp33 from $t2 to $fp-152
	  sw $t3, -156($fp)	# spill _tmp34 from $t3 to $fp-156
	  sw $t5, -160($fp)	# spill _tmp35 from $t5 to $fp-160
	  sw $t7, -164($fp)	# spill _tmp36 from $t7 to $fp-164
	  sw $s0, -168($fp)	# spill _tmp37 from $s0 to $fp-168
	  sw $s1, -172($fp)	# spill _tmp38 from $s1 to $fp-172
	  sw $s2, -176($fp)	# spill _tmp39 from $s2 to $fp-176
	  sw $s3, -180($fp)	# spill _tmp40 from $s3 to $fp-180
	  beqz $s3, _L7	# branch if _tmp40 is zero 
	# _tmp41 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -184($fp)	# spill _tmp41 from $t0 to $fp-184
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L7:
	# _tmp42 = i * _tmp34
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -156($fp)	# load _tmp34 from $fp-156 into $t1
	  mul $t2, $t0, $t1	
	# _tmp43 = _tmp42 + _tmp34
	  add $t3, $t2, $t1	
	# _tmp44 = a + _tmp43
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp44) = _tmp32
	  lw $t6, -148($fp)	# load _tmp32 from $fp-148 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp45 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# j = _tmp45
	  move $s0, $t7		# copy value
	# (save modified registers before flow of control change)
	  sw $t2, -188($fp)	# spill _tmp42 from $t2 to $fp-188
	  sw $t3, -192($fp)	# spill _tmp43 from $t3 to $fp-192
	  sw $t5, -196($fp)	# spill _tmp44 from $t5 to $fp-196
	  sw $t7, -200($fp)	# spill _tmp45 from $t7 to $fp-200
	  sw $s0, -16($fp)	# spill j from $s0 to $fp-16
  _L8:
	# _tmp46 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp47 = j < _tmp46
	  lw $t1, -16($fp)	# load j from $fp-16 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp47 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp46 from $t0 to $fp-204
	  sw $t2, -208($fp)	# spill _tmp47 from $t2 to $fp-208
	  beqz $t2, _L9	# branch if _tmp47 is zero 
	# _tmp48 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp49 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp50 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp51 = _tmp50 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp52 = _tmp50 < i
	  slt $t6, $t3, $t4	
	# _tmp53 = _tmp52 || _tmp51
	  or $t7, $t6, $t5	
	# _tmp54 = i < _tmp48
	  slt $s0, $t4, $t0	
	# _tmp55 = _tmp54 || _tmp53
	  or $s1, $s0, $t7	
	# IfZ _tmp55 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t0, -212($fp)	# spill _tmp48 from $t0 to $fp-212
	  sw $t1, -216($fp)	# spill _tmp49 from $t1 to $fp-216
	  sw $t3, -220($fp)	# spill _tmp50 from $t3 to $fp-220
	  sw $t5, -224($fp)	# spill _tmp51 from $t5 to $fp-224
	  sw $t6, -228($fp)	# spill _tmp52 from $t6 to $fp-228
	  sw $t7, -232($fp)	# spill _tmp53 from $t7 to $fp-232
	  sw $s0, -236($fp)	# spill _tmp54 from $s0 to $fp-236
	  sw $s1, -240($fp)	# spill _tmp55 from $s1 to $fp-240
	  beqz $s1, _L10	# branch if _tmp55 is zero 
	# _tmp56 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp56
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -244($fp)	# spill _tmp56 from $t0 to $fp-244
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L10:
	# _tmp57 = i * _tmp49
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -216($fp)	# load _tmp49 from $fp-216 into $t1
	  mul $t2, $t0, $t1	
	# _tmp58 = _tmp57 + _tmp49
	  add $t3, $t2, $t1	
	# _tmp59 = a + _tmp58
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp60 = *(_tmp59)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp61 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp62 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp63 = *(_tmp60)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp64 = _tmp63 == j
	  lw $s2, -16($fp)	# load j from $fp-16 into $s2
	  seq $s3, $s1, $s2	
	# _tmp65 = _tmp63 < j
	  slt $s4, $s1, $s2	
	# _tmp66 = _tmp65 || _tmp64
	  or $s5, $s4, $s3	
	# _tmp67 = j < _tmp61
	  slt $s6, $s2, $t7	
	# _tmp68 = _tmp67 || _tmp66
	  or $s7, $s6, $s5	
	# IfZ _tmp68 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t2, -248($fp)	# spill _tmp57 from $t2 to $fp-248
	  sw $t3, -252($fp)	# spill _tmp58 from $t3 to $fp-252
	  sw $t5, -256($fp)	# spill _tmp59 from $t5 to $fp-256
	  sw $t6, -260($fp)	# spill _tmp60 from $t6 to $fp-260
	  sw $t7, -264($fp)	# spill _tmp61 from $t7 to $fp-264
	  sw $s0, -268($fp)	# spill _tmp62 from $s0 to $fp-268
	  sw $s1, -272($fp)	# spill _tmp63 from $s1 to $fp-272
	  sw $s3, -276($fp)	# spill _tmp64 from $s3 to $fp-276
	  sw $s4, -280($fp)	# spill _tmp65 from $s4 to $fp-280
	  sw $s5, -284($fp)	# spill _tmp66 from $s5 to $fp-284
	  sw $s6, -288($fp)	# spill _tmp67 from $s6 to $fp-288
	  sw $s7, -292($fp)	# spill _tmp68 from $s7 to $fp-292
	  beqz $s7, _L11	# branch if _tmp68 is zero 
	# _tmp69 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp69
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -296($fp)	# spill _tmp69 from $t0 to $fp-296
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L11:
	# _tmp70 = j * _tmp62
	  lw $t0, -16($fp)	# load j from $fp-16 into $t0
	  lw $t1, -268($fp)	# load _tmp62 from $fp-268 into $t1
	  mul $t2, $t0, $t1	
	# _tmp71 = _tmp70 + _tmp62
	  add $t3, $t2, $t1	
	# _tmp72 = _tmp60 + _tmp71
	  lw $t4, -260($fp)	# load _tmp60 from $fp-260 into $t4
	  add $t5, $t4, $t3	
	# _tmp73 = *(_tmp72)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp74 = 10
	  li $t7, 10		# load constant value 10 into $t7
	# _tmp75 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp76 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp77 = _tmp75 < _tmp74
	  slt $s2, $s0, $t7	
	# IfZ _tmp77 Goto _L12
	# (save modified registers before flow of control change)
	  sw $t2, -300($fp)	# spill _tmp70 from $t2 to $fp-300
	  sw $t3, -304($fp)	# spill _tmp71 from $t3 to $fp-304
	  sw $t5, -308($fp)	# spill _tmp72 from $t5 to $fp-308
	  sw $t6, -312($fp)	# spill _tmp73 from $t6 to $fp-312
	  sw $t7, -316($fp)	# spill _tmp74 from $t7 to $fp-316
	  sw $s0, -320($fp)	# spill _tmp75 from $s0 to $fp-320
	  sw $s1, -324($fp)	# spill _tmp76 from $s1 to $fp-324
	  sw $s2, -328($fp)	# spill _tmp77 from $s2 to $fp-328
	  beqz $s2, _L12	# branch if _tmp77 is zero 
	# Goto _L13
	  b _L13		# unconditional branch
  _L12:
	# _tmp78 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp78
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -332($fp)	# spill _tmp78 from $t0 to $fp-332
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L13:
	# _tmp79 = _tmp74 * _tmp76
	  lw $t0, -316($fp)	# load _tmp74 from $fp-316 into $t0
	  lw $t1, -324($fp)	# load _tmp76 from $fp-324 into $t1
	  mul $t2, $t0, $t1	
	# _tmp80 = _tmp79 + _tmp76
	  add $t3, $t2, $t1	
	# PushParam _tmp80
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp81 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -336($fp)	# spill _tmp79 from $t2 to $fp-336
	  sw $t3, -340($fp)	# spill _tmp80 from $t3 to $fp-340
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp81) = _tmp74
	  lw $t1, -316($fp)	# load _tmp74 from $fp-316 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# _tmp82 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp83 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp84 = *(a)
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  lw $t5, 0($t4) 	# load with offset
	# _tmp85 = _tmp84 == i
	  lw $t6, -12($fp)	# load i from $fp-12 into $t6
	  seq $t7, $t5, $t6	
	# _tmp86 = _tmp84 < i
	  slt $s0, $t5, $t6	
	# _tmp87 = _tmp86 || _tmp85
	  or $s1, $s0, $t7	
	# _tmp88 = i < _tmp82
	  slt $s2, $t6, $t2	
	# _tmp89 = _tmp88 || _tmp87
	  or $s3, $s2, $s1	
	# IfZ _tmp89 Goto _L14
	# (save modified registers before flow of control change)
	  sw $t0, -344($fp)	# spill _tmp81 from $t0 to $fp-344
	  sw $t2, -348($fp)	# spill _tmp82 from $t2 to $fp-348
	  sw $t3, -352($fp)	# spill _tmp83 from $t3 to $fp-352
	  sw $t5, -356($fp)	# spill _tmp84 from $t5 to $fp-356
	  sw $t7, -360($fp)	# spill _tmp85 from $t7 to $fp-360
	  sw $s0, -364($fp)	# spill _tmp86 from $s0 to $fp-364
	  sw $s1, -368($fp)	# spill _tmp87 from $s1 to $fp-368
	  sw $s2, -372($fp)	# spill _tmp88 from $s2 to $fp-372
	  sw $s3, -376($fp)	# spill _tmp89 from $s3 to $fp-376
	  beqz $s3, _L14	# branch if _tmp89 is zero 
	# _tmp90 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string8: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp90
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -380($fp)	# spill _tmp90 from $t0 to $fp-380
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L14:
	# _tmp91 = i * _tmp83
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -352($fp)	# load _tmp83 from $fp-352 into $t1
	  mul $t2, $t0, $t1	
	# _tmp92 = _tmp91 + _tmp83
	  add $t3, $t2, $t1	
	# _tmp93 = a + _tmp92
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp94 = *(_tmp93)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp95 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp96 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp97 = *(_tmp94)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp98 = _tmp97 == j
	  lw $s2, -16($fp)	# load j from $fp-16 into $s2
	  seq $s3, $s1, $s2	
	# _tmp99 = _tmp97 < j
	  slt $s4, $s1, $s2	
	# _tmp100 = _tmp99 || _tmp98
	  or $s5, $s4, $s3	
	# _tmp101 = j < _tmp95
	  slt $s6, $s2, $t7	
	# _tmp102 = _tmp101 || _tmp100
	  or $s7, $s6, $s5	
	# IfZ _tmp102 Goto _L15
	# (save modified registers before flow of control change)
	  sw $t2, -384($fp)	# spill _tmp91 from $t2 to $fp-384
	  sw $t3, -388($fp)	# spill _tmp92 from $t3 to $fp-388
	  sw $t5, -392($fp)	# spill _tmp93 from $t5 to $fp-392
	  sw $t6, -396($fp)	# spill _tmp94 from $t6 to $fp-396
	  sw $t7, -400($fp)	# spill _tmp95 from $t7 to $fp-400
	  sw $s0, -404($fp)	# spill _tmp96 from $s0 to $fp-404
	  sw $s1, -408($fp)	# spill _tmp97 from $s1 to $fp-408
	  sw $s3, -412($fp)	# spill _tmp98 from $s3 to $fp-412
	  sw $s4, -416($fp)	# spill _tmp99 from $s4 to $fp-416
	  sw $s5, -420($fp)	# spill _tmp100 from $s5 to $fp-420
	  sw $s6, -424($fp)	# spill _tmp101 from $s6 to $fp-424
	  sw $s7, -428($fp)	# spill _tmp102 from $s7 to $fp-428
	  beqz $s7, _L15	# branch if _tmp102 is zero 
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
	  sw $t0, -432($fp)	# spill _tmp103 from $t0 to $fp-432
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L15:
	# _tmp104 = j * _tmp96
	  lw $t0, -16($fp)	# load j from $fp-16 into $t0
	  lw $t1, -404($fp)	# load _tmp96 from $fp-404 into $t1
	  mul $t2, $t0, $t1	
	# _tmp105 = _tmp104 + _tmp96
	  add $t3, $t2, $t1	
	# _tmp106 = _tmp94 + _tmp105
	  lw $t4, -396($fp)	# load _tmp94 from $fp-396 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp106) = _tmp81
	  lw $t6, -344($fp)	# load _tmp81 from $fp-344 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp107 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# k = _tmp107
	  move $s0, $t7		# copy value
	# (save modified registers before flow of control change)
	  sw $t2, -436($fp)	# spill _tmp104 from $t2 to $fp-436
	  sw $t3, -440($fp)	# spill _tmp105 from $t3 to $fp-440
	  sw $t5, -444($fp)	# spill _tmp106 from $t5 to $fp-444
	  sw $t7, -448($fp)	# spill _tmp107 from $t7 to $fp-448
	  sw $s0, -20($fp)	# spill k from $s0 to $fp-20
  _L16:
	# _tmp108 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp109 = k < _tmp108
	  lw $t1, -20($fp)	# load k from $fp-20 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp109 Goto _L17
	# (save modified registers before flow of control change)
	  sw $t0, -452($fp)	# spill _tmp108 from $t0 to $fp-452
	  sw $t2, -456($fp)	# spill _tmp109 from $t2 to $fp-456
	  beqz $t2, _L17	# branch if _tmp109 is zero 
	# _tmp110 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp111 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp112 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp113 = _tmp112 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp114 = _tmp112 < i
	  slt $t6, $t3, $t4	
	# _tmp115 = _tmp114 || _tmp113
	  or $t7, $t6, $t5	
	# _tmp116 = i < _tmp110
	  slt $s0, $t4, $t0	
	# _tmp117 = _tmp116 || _tmp115
	  or $s1, $s0, $t7	
	# IfZ _tmp117 Goto _L18
	# (save modified registers before flow of control change)
	  sw $t0, -460($fp)	# spill _tmp110 from $t0 to $fp-460
	  sw $t1, -464($fp)	# spill _tmp111 from $t1 to $fp-464
	  sw $t3, -468($fp)	# spill _tmp112 from $t3 to $fp-468
	  sw $t5, -472($fp)	# spill _tmp113 from $t5 to $fp-472
	  sw $t6, -476($fp)	# spill _tmp114 from $t6 to $fp-476
	  sw $t7, -480($fp)	# spill _tmp115 from $t7 to $fp-480
	  sw $s0, -484($fp)	# spill _tmp116 from $s0 to $fp-484
	  sw $s1, -488($fp)	# spill _tmp117 from $s1 to $fp-488
	  beqz $s1, _L18	# branch if _tmp117 is zero 
	# _tmp118 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp118
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -492($fp)	# spill _tmp118 from $t0 to $fp-492
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L18:
	# _tmp119 = i * _tmp111
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -464($fp)	# load _tmp111 from $fp-464 into $t1
	  mul $t2, $t0, $t1	
	# _tmp120 = _tmp119 + _tmp111
	  add $t3, $t2, $t1	
	# _tmp121 = a + _tmp120
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp122 = *(_tmp121)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp123 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp124 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp125 = *(_tmp122)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp126 = _tmp125 == j
	  lw $s2, -16($fp)	# load j from $fp-16 into $s2
	  seq $s3, $s1, $s2	
	# _tmp127 = _tmp125 < j
	  slt $s4, $s1, $s2	
	# _tmp128 = _tmp127 || _tmp126
	  or $s5, $s4, $s3	
	# _tmp129 = j < _tmp123
	  slt $s6, $s2, $t7	
	# _tmp130 = _tmp129 || _tmp128
	  or $s7, $s6, $s5	
	# IfZ _tmp130 Goto _L19
	# (save modified registers before flow of control change)
	  sw $t2, -496($fp)	# spill _tmp119 from $t2 to $fp-496
	  sw $t3, -500($fp)	# spill _tmp120 from $t3 to $fp-500
	  sw $t5, -504($fp)	# spill _tmp121 from $t5 to $fp-504
	  sw $t6, -508($fp)	# spill _tmp122 from $t6 to $fp-508
	  sw $t7, -512($fp)	# spill _tmp123 from $t7 to $fp-512
	  sw $s0, -516($fp)	# spill _tmp124 from $s0 to $fp-516
	  sw $s1, -520($fp)	# spill _tmp125 from $s1 to $fp-520
	  sw $s3, -524($fp)	# spill _tmp126 from $s3 to $fp-524
	  sw $s4, -528($fp)	# spill _tmp127 from $s4 to $fp-528
	  sw $s5, -532($fp)	# spill _tmp128 from $s5 to $fp-532
	  sw $s6, -536($fp)	# spill _tmp129 from $s6 to $fp-536
	  sw $s7, -540($fp)	# spill _tmp130 from $s7 to $fp-540
	  beqz $s7, _L19	# branch if _tmp130 is zero 
	# _tmp131 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp131
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -544($fp)	# spill _tmp131 from $t0 to $fp-544
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L19:
	# _tmp132 = j * _tmp124
	  lw $t0, -16($fp)	# load j from $fp-16 into $t0
	  lw $t1, -516($fp)	# load _tmp124 from $fp-516 into $t1
	  mul $t2, $t0, $t1	
	# _tmp133 = _tmp132 + _tmp124
	  add $t3, $t2, $t1	
	# _tmp134 = _tmp122 + _tmp133
	  lw $t4, -508($fp)	# load _tmp122 from $fp-508 into $t4
	  add $t5, $t4, $t3	
	# _tmp135 = *(_tmp134)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp136 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp137 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp138 = *(_tmp135)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp139 = _tmp138 == k
	  lw $s2, -20($fp)	# load k from $fp-20 into $s2
	  seq $s3, $s1, $s2	
	# _tmp140 = _tmp138 < k
	  slt $s4, $s1, $s2	
	# _tmp141 = _tmp140 || _tmp139
	  or $s5, $s4, $s3	
	# _tmp142 = k < _tmp136
	  slt $s6, $s2, $t7	
	# _tmp143 = _tmp142 || _tmp141
	  or $s7, $s6, $s5	
	# IfZ _tmp143 Goto _L20
	# (save modified registers before flow of control change)
	  sw $t2, -548($fp)	# spill _tmp132 from $t2 to $fp-548
	  sw $t3, -552($fp)	# spill _tmp133 from $t3 to $fp-552
	  sw $t5, -556($fp)	# spill _tmp134 from $t5 to $fp-556
	  sw $t6, -560($fp)	# spill _tmp135 from $t6 to $fp-560
	  sw $t7, -564($fp)	# spill _tmp136 from $t7 to $fp-564
	  sw $s0, -568($fp)	# spill _tmp137 from $s0 to $fp-568
	  sw $s1, -572($fp)	# spill _tmp138 from $s1 to $fp-572
	  sw $s3, -576($fp)	# spill _tmp139 from $s3 to $fp-576
	  sw $s4, -580($fp)	# spill _tmp140 from $s4 to $fp-580
	  sw $s5, -584($fp)	# spill _tmp141 from $s5 to $fp-584
	  sw $s6, -588($fp)	# spill _tmp142 from $s6 to $fp-588
	  sw $s7, -592($fp)	# spill _tmp143 from $s7 to $fp-592
	  beqz $s7, _L20	# branch if _tmp143 is zero 
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
	  sw $t0, -596($fp)	# spill _tmp144 from $t0 to $fp-596
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L20:
	# _tmp145 = k * _tmp137
	  lw $t0, -20($fp)	# load k from $fp-20 into $t0
	  lw $t1, -568($fp)	# load _tmp137 from $fp-568 into $t1
	  mul $t2, $t0, $t1	
	# _tmp146 = _tmp145 + _tmp137
	  add $t3, $t2, $t1	
	# _tmp147 = _tmp135 + _tmp146
	  lw $t4, -560($fp)	# load _tmp135 from $fp-560 into $t4
	  add $t5, $t4, $t3	
	# _tmp148 = *(_tmp147)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp149 = 100
	  li $t7, 100		# load constant value 100 into $t7
	# _tmp150 = i * _tmp149
	  lw $s0, -12($fp)	# load i from $fp-12 into $s0
	  mul $s1, $s0, $t7	
	# _tmp151 = 10
	  li $s2, 10		# load constant value 10 into $s2
	# _tmp152 = j * _tmp151
	  lw $s3, -16($fp)	# load j from $fp-16 into $s3
	  mul $s4, $s3, $s2	
	# _tmp153 = _tmp150 + _tmp152
	  add $s5, $s1, $s4	
	# _tmp154 = _tmp153 + k
	  add $s6, $s5, $t0	
	# _tmp155 = 0
	  li $s7, 0		# load constant value 0 into $s7
	# _tmp156 = 4
	  li $t8, 4		# load constant value 4 into $t8
	# _tmp157 = *(a)
	  lw $t9, -8($fp)	# load a from $fp-8 into $t9
	  lw $t0, 0($t9) 	# load with offset
	# _tmp158 = _tmp157 == i
	  seq $t1, $t0, $s0	
	# _tmp159 = _tmp157 < i
	  slt $t4, $t0, $s0	
	# _tmp160 = _tmp159 || _tmp158
	  or $s0, $t4, $t1	
	# _tmp161 = i < _tmp155
	  lw $s3, -12($fp)	# load i from $fp-12 into $s3
	  slt $t9, $s3, $s7	
	# _tmp162 = _tmp161 || _tmp160
	  or $s3, $t9, $s0	
	# IfZ _tmp162 Goto _L21
	# (save modified registers before flow of control change)
	  sw $t0, -648($fp)	# spill _tmp157 from $t0 to $fp-648
	  sw $t1, -652($fp)	# spill _tmp158 from $t1 to $fp-652
	  sw $t2, -600($fp)	# spill _tmp145 from $t2 to $fp-600
	  sw $t3, -604($fp)	# spill _tmp146 from $t3 to $fp-604
	  sw $t4, -656($fp)	# spill _tmp159 from $t4 to $fp-656
	  sw $t5, -608($fp)	# spill _tmp147 from $t5 to $fp-608
	  sw $t6, -612($fp)	# spill _tmp148 from $t6 to $fp-612
	  sw $t7, -616($fp)	# spill _tmp149 from $t7 to $fp-616
	  sw $s0, -660($fp)	# spill _tmp160 from $s0 to $fp-660
	  sw $s1, -620($fp)	# spill _tmp150 from $s1 to $fp-620
	  sw $s2, -624($fp)	# spill _tmp151 from $s2 to $fp-624
	  sw $s3, -668($fp)	# spill _tmp162 from $s3 to $fp-668
	  sw $s4, -628($fp)	# spill _tmp152 from $s4 to $fp-628
	  sw $s5, -632($fp)	# spill _tmp153 from $s5 to $fp-632
	  sw $s6, -636($fp)	# spill _tmp154 from $s6 to $fp-636
	  sw $s7, -640($fp)	# spill _tmp155 from $s7 to $fp-640
	  sw $t8, -644($fp)	# spill _tmp156 from $t8 to $fp-644
	  sw $t9, -664($fp)	# spill _tmp161 from $t9 to $fp-664
	  beqz $s3, _L21	# branch if _tmp162 is zero 
	# _tmp163 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string13: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string13	# load label
	# PushParam _tmp163
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -672($fp)	# spill _tmp163 from $t0 to $fp-672
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L21:
	# _tmp164 = i * _tmp156
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -644($fp)	# load _tmp156 from $fp-644 into $t1
	  mul $t2, $t0, $t1	
	# _tmp165 = _tmp164 + _tmp156
	  add $t3, $t2, $t1	
	# _tmp166 = a + _tmp165
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp167 = *(_tmp166)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp168 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp169 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp170 = *(_tmp167)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp171 = _tmp170 == j
	  lw $s2, -16($fp)	# load j from $fp-16 into $s2
	  seq $s3, $s1, $s2	
	# _tmp172 = _tmp170 < j
	  slt $s4, $s1, $s2	
	# _tmp173 = _tmp172 || _tmp171
	  or $s5, $s4, $s3	
	# _tmp174 = j < _tmp168
	  slt $s6, $s2, $t7	
	# _tmp175 = _tmp174 || _tmp173
	  or $s7, $s6, $s5	
	# IfZ _tmp175 Goto _L22
	# (save modified registers before flow of control change)
	  sw $t2, -676($fp)	# spill _tmp164 from $t2 to $fp-676
	  sw $t3, -680($fp)	# spill _tmp165 from $t3 to $fp-680
	  sw $t5, -684($fp)	# spill _tmp166 from $t5 to $fp-684
	  sw $t6, -688($fp)	# spill _tmp167 from $t6 to $fp-688
	  sw $t7, -692($fp)	# spill _tmp168 from $t7 to $fp-692
	  sw $s0, -696($fp)	# spill _tmp169 from $s0 to $fp-696
	  sw $s1, -700($fp)	# spill _tmp170 from $s1 to $fp-700
	  sw $s3, -704($fp)	# spill _tmp171 from $s3 to $fp-704
	  sw $s4, -708($fp)	# spill _tmp172 from $s4 to $fp-708
	  sw $s5, -712($fp)	# spill _tmp173 from $s5 to $fp-712
	  sw $s6, -716($fp)	# spill _tmp174 from $s6 to $fp-716
	  sw $s7, -720($fp)	# spill _tmp175 from $s7 to $fp-720
	  beqz $s7, _L22	# branch if _tmp175 is zero 
	# _tmp176 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string14: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string14	# load label
	# PushParam _tmp176
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -724($fp)	# spill _tmp176 from $t0 to $fp-724
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L22:
	# _tmp177 = j * _tmp169
	  lw $t0, -16($fp)	# load j from $fp-16 into $t0
	  lw $t1, -696($fp)	# load _tmp169 from $fp-696 into $t1
	  mul $t2, $t0, $t1	
	# _tmp178 = _tmp177 + _tmp169
	  add $t3, $t2, $t1	
	# _tmp179 = _tmp167 + _tmp178
	  lw $t4, -688($fp)	# load _tmp167 from $fp-688 into $t4
	  add $t5, $t4, $t3	
	# _tmp180 = *(_tmp179)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp181 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp182 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp183 = *(_tmp180)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp184 = _tmp183 == k
	  lw $s2, -20($fp)	# load k from $fp-20 into $s2
	  seq $s3, $s1, $s2	
	# _tmp185 = _tmp183 < k
	  slt $s4, $s1, $s2	
	# _tmp186 = _tmp185 || _tmp184
	  or $s5, $s4, $s3	
	# _tmp187 = k < _tmp181
	  slt $s6, $s2, $t7	
	# _tmp188 = _tmp187 || _tmp186
	  or $s7, $s6, $s5	
	# IfZ _tmp188 Goto _L23
	# (save modified registers before flow of control change)
	  sw $t2, -728($fp)	# spill _tmp177 from $t2 to $fp-728
	  sw $t3, -732($fp)	# spill _tmp178 from $t3 to $fp-732
	  sw $t5, -736($fp)	# spill _tmp179 from $t5 to $fp-736
	  sw $t6, -740($fp)	# spill _tmp180 from $t6 to $fp-740
	  sw $t7, -744($fp)	# spill _tmp181 from $t7 to $fp-744
	  sw $s0, -748($fp)	# spill _tmp182 from $s0 to $fp-748
	  sw $s1, -752($fp)	# spill _tmp183 from $s1 to $fp-752
	  sw $s3, -756($fp)	# spill _tmp184 from $s3 to $fp-756
	  sw $s4, -760($fp)	# spill _tmp185 from $s4 to $fp-760
	  sw $s5, -764($fp)	# spill _tmp186 from $s5 to $fp-764
	  sw $s6, -768($fp)	# spill _tmp187 from $s6 to $fp-768
	  sw $s7, -772($fp)	# spill _tmp188 from $s7 to $fp-772
	  beqz $s7, _L23	# branch if _tmp188 is zero 
	# _tmp189 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string15: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string15	# load label
	# PushParam _tmp189
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -776($fp)	# spill _tmp189 from $t0 to $fp-776
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L23:
	# _tmp190 = k * _tmp182
	  lw $t0, -20($fp)	# load k from $fp-20 into $t0
	  lw $t1, -748($fp)	# load _tmp182 from $fp-748 into $t1
	  mul $t2, $t0, $t1	
	# _tmp191 = _tmp190 + _tmp182
	  add $t3, $t2, $t1	
	# _tmp192 = _tmp180 + _tmp191
	  lw $t4, -740($fp)	# load _tmp180 from $fp-740 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp192) = _tmp154
	  lw $t6, -636($fp)	# load _tmp154 from $fp-636 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp193 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp194 = k
	  move $s0, $t0		# copy value
	# _tmp195 = _tmp194 + _tmp193
	  add $s1, $s0, $t7	
	# k = _tmp195
	  move $t0, $s1		# copy value
	# Goto _L16
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill k from $t0 to $fp-20
	  sw $t2, -780($fp)	# spill _tmp190 from $t2 to $fp-780
	  sw $t3, -784($fp)	# spill _tmp191 from $t3 to $fp-784
	  sw $t5, -788($fp)	# spill _tmp192 from $t5 to $fp-788
	  sw $t7, -792($fp)	# spill _tmp193 from $t7 to $fp-792
	  sw $s0, -796($fp)	# spill _tmp194 from $s0 to $fp-796
	  sw $s1, -800($fp)	# spill _tmp195 from $s1 to $fp-800
	  b _L16		# unconditional branch
  _L17:
	# _tmp196 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp197 = j
	  lw $t1, -16($fp)	# load j from $fp-16 into $t1
	  move $t2, $t1		# copy value
	# _tmp198 = _tmp197 + _tmp196
	  add $t3, $t2, $t0	
	# j = _tmp198
	  move $t1, $t3		# copy value
	# Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -804($fp)	# spill _tmp196 from $t0 to $fp-804
	  sw $t1, -16($fp)	# spill j from $t1 to $fp-16
	  sw $t2, -808($fp)	# spill _tmp197 from $t2 to $fp-808
	  sw $t3, -812($fp)	# spill _tmp198 from $t3 to $fp-812
	  b _L8		# unconditional branch
  _L9:
	# _tmp199 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp200 = i
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  move $t2, $t1		# copy value
	# _tmp201 = _tmp200 + _tmp199
	  add $t3, $t2, $t0	
	# i = _tmp201
	  move $t1, $t3		# copy value
	# Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -816($fp)	# spill _tmp199 from $t0 to $fp-816
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
	  sw $t2, -820($fp)	# spill _tmp200 from $t2 to $fp-820
	  sw $t3, -824($fp)	# spill _tmp201 from $t3 to $fp-824
	  b _L2		# unconditional branch
  _L3:
	# _tmp202 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp202
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -828($fp)	# spill _tmp202 from $t0 to $fp-828
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
  _L24:
	# _tmp203 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp204 = i < _tmp203
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp204 Goto _L25
	# (save modified registers before flow of control change)
	  sw $t0, -832($fp)	# spill _tmp203 from $t0 to $fp-832
	  sw $t2, -836($fp)	# spill _tmp204 from $t2 to $fp-836
	  beqz $t2, _L25	# branch if _tmp204 is zero 
	# _tmp205 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# j = _tmp205
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -840($fp)	# spill _tmp205 from $t0 to $fp-840
	  sw $t1, -16($fp)	# spill j from $t1 to $fp-16
  _L26:
	# _tmp206 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp207 = j < _tmp206
	  lw $t1, -16($fp)	# load j from $fp-16 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp207 Goto _L27
	# (save modified registers before flow of control change)
	  sw $t0, -844($fp)	# spill _tmp206 from $t0 to $fp-844
	  sw $t2, -848($fp)	# spill _tmp207 from $t2 to $fp-848
	  beqz $t2, _L27	# branch if _tmp207 is zero 
	# _tmp208 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# k = _tmp208
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -852($fp)	# spill _tmp208 from $t0 to $fp-852
	  sw $t1, -20($fp)	# spill k from $t1 to $fp-20
  _L28:
	# _tmp209 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp210 = k < _tmp209
	  lw $t1, -20($fp)	# load k from $fp-20 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp210 Goto _L29
	# (save modified registers before flow of control change)
	  sw $t0, -856($fp)	# spill _tmp209 from $t0 to $fp-856
	  sw $t2, -860($fp)	# spill _tmp210 from $t2 to $fp-860
	  beqz $t2, _L29	# branch if _tmp210 is zero 
	# _tmp211 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp212 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp213 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp214 = _tmp213 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp215 = _tmp213 < i
	  slt $t6, $t3, $t4	
	# _tmp216 = _tmp215 || _tmp214
	  or $t7, $t6, $t5	
	# _tmp217 = i < _tmp211
	  slt $s0, $t4, $t0	
	# _tmp218 = _tmp217 || _tmp216
	  or $s1, $s0, $t7	
	# IfZ _tmp218 Goto _L30
	# (save modified registers before flow of control change)
	  sw $t0, -864($fp)	# spill _tmp211 from $t0 to $fp-864
	  sw $t1, -868($fp)	# spill _tmp212 from $t1 to $fp-868
	  sw $t3, -872($fp)	# spill _tmp213 from $t3 to $fp-872
	  sw $t5, -876($fp)	# spill _tmp214 from $t5 to $fp-876
	  sw $t6, -880($fp)	# spill _tmp215 from $t6 to $fp-880
	  sw $t7, -884($fp)	# spill _tmp216 from $t7 to $fp-884
	  sw $s0, -888($fp)	# spill _tmp217 from $s0 to $fp-888
	  sw $s1, -892($fp)	# spill _tmp218 from $s1 to $fp-892
	  beqz $s1, _L30	# branch if _tmp218 is zero 
	# _tmp219 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string16: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string16	# load label
	# PushParam _tmp219
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -896($fp)	# spill _tmp219 from $t0 to $fp-896
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L30:
	# _tmp220 = i * _tmp212
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -868($fp)	# load _tmp212 from $fp-868 into $t1
	  mul $t2, $t0, $t1	
	# _tmp221 = _tmp220 + _tmp212
	  add $t3, $t2, $t1	
	# _tmp222 = a + _tmp221
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp223 = *(_tmp222)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp224 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp225 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp226 = *(_tmp223)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp227 = _tmp226 == j
	  lw $s2, -16($fp)	# load j from $fp-16 into $s2
	  seq $s3, $s1, $s2	
	# _tmp228 = _tmp226 < j
	  slt $s4, $s1, $s2	
	# _tmp229 = _tmp228 || _tmp227
	  or $s5, $s4, $s3	
	# _tmp230 = j < _tmp224
	  slt $s6, $s2, $t7	
	# _tmp231 = _tmp230 || _tmp229
	  or $s7, $s6, $s5	
	# IfZ _tmp231 Goto _L31
	# (save modified registers before flow of control change)
	  sw $t2, -900($fp)	# spill _tmp220 from $t2 to $fp-900
	  sw $t3, -904($fp)	# spill _tmp221 from $t3 to $fp-904
	  sw $t5, -908($fp)	# spill _tmp222 from $t5 to $fp-908
	  sw $t6, -912($fp)	# spill _tmp223 from $t6 to $fp-912
	  sw $t7, -916($fp)	# spill _tmp224 from $t7 to $fp-916
	  sw $s0, -920($fp)	# spill _tmp225 from $s0 to $fp-920
	  sw $s1, -924($fp)	# spill _tmp226 from $s1 to $fp-924
	  sw $s3, -928($fp)	# spill _tmp227 from $s3 to $fp-928
	  sw $s4, -932($fp)	# spill _tmp228 from $s4 to $fp-932
	  sw $s5, -936($fp)	# spill _tmp229 from $s5 to $fp-936
	  sw $s6, -940($fp)	# spill _tmp230 from $s6 to $fp-940
	  sw $s7, -944($fp)	# spill _tmp231 from $s7 to $fp-944
	  beqz $s7, _L31	# branch if _tmp231 is zero 
	# _tmp232 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string17: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string17	# load label
	# PushParam _tmp232
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -948($fp)	# spill _tmp232 from $t0 to $fp-948
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L31:
	# _tmp233 = j * _tmp225
	  lw $t0, -16($fp)	# load j from $fp-16 into $t0
	  lw $t1, -920($fp)	# load _tmp225 from $fp-920 into $t1
	  mul $t2, $t0, $t1	
	# _tmp234 = _tmp233 + _tmp225
	  add $t3, $t2, $t1	
	# _tmp235 = _tmp223 + _tmp234
	  lw $t4, -912($fp)	# load _tmp223 from $fp-912 into $t4
	  add $t5, $t4, $t3	
	# _tmp236 = *(_tmp235)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp237 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp238 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp239 = *(_tmp236)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp240 = _tmp239 == k
	  lw $s2, -20($fp)	# load k from $fp-20 into $s2
	  seq $s3, $s1, $s2	
	# _tmp241 = _tmp239 < k
	  slt $s4, $s1, $s2	
	# _tmp242 = _tmp241 || _tmp240
	  or $s5, $s4, $s3	
	# _tmp243 = k < _tmp237
	  slt $s6, $s2, $t7	
	# _tmp244 = _tmp243 || _tmp242
	  or $s7, $s6, $s5	
	# IfZ _tmp244 Goto _L32
	# (save modified registers before flow of control change)
	  sw $t2, -952($fp)	# spill _tmp233 from $t2 to $fp-952
	  sw $t3, -956($fp)	# spill _tmp234 from $t3 to $fp-956
	  sw $t5, -960($fp)	# spill _tmp235 from $t5 to $fp-960
	  sw $t6, -964($fp)	# spill _tmp236 from $t6 to $fp-964
	  sw $t7, -968($fp)	# spill _tmp237 from $t7 to $fp-968
	  sw $s0, -972($fp)	# spill _tmp238 from $s0 to $fp-972
	  sw $s1, -976($fp)	# spill _tmp239 from $s1 to $fp-976
	  sw $s3, -980($fp)	# spill _tmp240 from $s3 to $fp-980
	  sw $s4, -984($fp)	# spill _tmp241 from $s4 to $fp-984
	  sw $s5, -988($fp)	# spill _tmp242 from $s5 to $fp-988
	  sw $s6, -992($fp)	# spill _tmp243 from $s6 to $fp-992
	  sw $s7, -996($fp)	# spill _tmp244 from $s7 to $fp-996
	  beqz $s7, _L32	# branch if _tmp244 is zero 
	# _tmp245 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string18: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string18	# load label
	# PushParam _tmp245
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1000($fp)	# spill _tmp245 from $t0 to $fp-1000
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L32:
	# _tmp246 = k * _tmp238
	  lw $t0, -20($fp)	# load k from $fp-20 into $t0
	  lw $t1, -972($fp)	# load _tmp238 from $fp-972 into $t1
	  mul $t2, $t0, $t1	
	# _tmp247 = _tmp246 + _tmp238
	  add $t3, $t2, $t1	
	# _tmp248 = _tmp236 + _tmp247
	  lw $t4, -964($fp)	# load _tmp236 from $fp-964 into $t4
	  add $t5, $t4, $t3	
	# _tmp249 = *(_tmp248)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp249
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -1004($fp)	# spill _tmp246 from $t2 to $fp-1004
	  sw $t3, -1008($fp)	# spill _tmp247 from $t3 to $fp-1008
	  sw $t5, -1012($fp)	# spill _tmp248 from $t5 to $fp-1012
	  sw $t6, -1016($fp)	# spill _tmp249 from $t6 to $fp-1016
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp250 = " "
	  .data			# create string constant marked with label
	  _string19: .asciiz " "
	  .text
	  la $t0, _string19	# load label
	# PushParam _tmp250
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -1020($fp)	# spill _tmp250 from $t0 to $fp-1020
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp251 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp252 = k
	  lw $t1, -20($fp)	# load k from $fp-20 into $t1
	  move $t2, $t1		# copy value
	# _tmp253 = _tmp252 + _tmp251
	  add $t3, $t2, $t0	
	# k = _tmp253
	  move $t1, $t3		# copy value
	# Goto _L28
	# (save modified registers before flow of control change)
	  sw $t0, -1024($fp)	# spill _tmp251 from $t0 to $fp-1024
	  sw $t1, -20($fp)	# spill k from $t1 to $fp-20
	  sw $t2, -1028($fp)	# spill _tmp252 from $t2 to $fp-1028
	  sw $t3, -1032($fp)	# spill _tmp253 from $t3 to $fp-1032
	  b _L28		# unconditional branch
  _L29:
	# _tmp254 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp255 = j
	  lw $t1, -16($fp)	# load j from $fp-16 into $t1
	  move $t2, $t1		# copy value
	# _tmp256 = _tmp255 + _tmp254
	  add $t3, $t2, $t0	
	# j = _tmp256
	  move $t1, $t3		# copy value
	# Goto _L26
	# (save modified registers before flow of control change)
	  sw $t0, -1036($fp)	# spill _tmp254 from $t0 to $fp-1036
	  sw $t1, -16($fp)	# spill j from $t1 to $fp-16
	  sw $t2, -1040($fp)	# spill _tmp255 from $t2 to $fp-1040
	  sw $t3, -1044($fp)	# spill _tmp256 from $t3 to $fp-1044
	  b _L26		# unconditional branch
  _L27:
	# _tmp257 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp258 = i
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  move $t2, $t1		# copy value
	# _tmp259 = _tmp258 + _tmp257
	  add $t3, $t2, $t0	
	# i = _tmp259
	  move $t1, $t3		# copy value
	# Goto _L24
	# (save modified registers before flow of control change)
	  sw $t0, -1048($fp)	# spill _tmp257 from $t0 to $fp-1048
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
	  sw $t2, -1052($fp)	# spill _tmp258 from $t2 to $fp-1052
	  sw $t3, -1056($fp)	# spill _tmp259 from $t3 to $fp-1056
	  b _L24		# unconditional branch
  _L25:
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