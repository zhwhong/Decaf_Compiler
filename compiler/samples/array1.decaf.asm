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
	# BeginFunc 704
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 704	# decrement sp to make space for locals/temps
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
	# b = _tmp8
	  move $t2, $t0		# copy value
	# _tmp9 = 20
	  li $t3, 20		# load constant value 20 into $t3
	# _tmp10 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp11 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp12 = _tmp10 < _tmp9
	  slt $t6, $t4, $t3	
	# IfZ _tmp12 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp8 from $t0 to $fp-52
	  sw $t2, -8($fp)	# spill b from $t2 to $fp-8
	  sw $t3, -56($fp)	# spill _tmp9 from $t3 to $fp-56
	  sw $t4, -60($fp)	# spill _tmp10 from $t4 to $fp-60
	  sw $t5, -64($fp)	# spill _tmp11 from $t5 to $fp-64
	  sw $t6, -68($fp)	# spill _tmp12 from $t6 to $fp-68
	  beqz $t6, _L2	# branch if _tmp12 is zero 
	# Goto _L3
	  b _L3		# unconditional branch
  _L2:
	# _tmp13 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp13 from $t0 to $fp-72
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L3:
	# _tmp14 = _tmp9 * _tmp11
	  lw $t0, -56($fp)	# load _tmp9 from $fp-56 into $t0
	  lw $t1, -64($fp)	# load _tmp11 from $fp-64 into $t1
	  mul $t2, $t0, $t1	
	# _tmp15 = _tmp14 + _tmp11
	  add $t3, $t2, $t1	
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp16 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -76($fp)	# spill _tmp14 from $t2 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp15 from $t3 to $fp-80
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp16) = _tmp9
	  lw $t1, -56($fp)	# load _tmp9 from $fp-56 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# c = _tmp16
	  move $t2, $t0		# copy value
	# _tmp17 = 3
	  li $t3, 3		# load constant value 3 into $t3
	# _tmp18 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp19 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp20 = _tmp18 < _tmp17
	  slt $t6, $t4, $t3	
	# IfZ _tmp20 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp16 from $t0 to $fp-84
	  sw $t2, -12($fp)	# spill c from $t2 to $fp-12
	  sw $t3, -88($fp)	# spill _tmp17 from $t3 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp18 from $t4 to $fp-92
	  sw $t5, -96($fp)	# spill _tmp19 from $t5 to $fp-96
	  sw $t6, -100($fp)	# spill _tmp20 from $t6 to $fp-100
	  beqz $t6, _L4	# branch if _tmp20 is zero 
	# Goto _L5
	  b _L5		# unconditional branch
  _L4:
	# _tmp21 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -104($fp)	# spill _tmp21 from $t0 to $fp-104
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp22 = _tmp17 * _tmp19
	  lw $t0, -88($fp)	# load _tmp17 from $fp-88 into $t0
	  lw $t1, -96($fp)	# load _tmp19 from $fp-96 into $t1
	  mul $t2, $t0, $t1	
	# _tmp23 = _tmp22 + _tmp19
	  add $t3, $t2, $t1	
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp24 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -108($fp)	# spill _tmp22 from $t2 to $fp-108
	  sw $t3, -112($fp)	# spill _tmp23 from $t3 to $fp-112
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp24) = _tmp17
	  lw $t1, -88($fp)	# load _tmp17 from $fp-88 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# s = _tmp24
	  move $t2, $t0		# copy value
	# _tmp25 = 3
	  li $t3, 3		# load constant value 3 into $t3
	# _tmp26 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp27 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp28 = *(b)
	  lw $t6, -8($fp)	# load b from $fp-8 into $t6
	  lw $t7, 0($t6) 	# load with offset
	# _tmp29 = _tmp28 == _tmp25
	  seq $s0, $t7, $t3	
	# _tmp30 = _tmp28 < _tmp25
	  slt $s1, $t7, $t3	
	# _tmp31 = _tmp30 || _tmp29
	  or $s2, $s1, $s0	
	# _tmp32 = _tmp25 < _tmp26
	  slt $s3, $t3, $t4	
	# _tmp33 = _tmp32 || _tmp31
	  or $s4, $s3, $s2	
	# IfZ _tmp33 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp24 from $t0 to $fp-116
	  sw $t2, -20($fp)	# spill s from $t2 to $fp-20
	  sw $t3, -120($fp)	# spill _tmp25 from $t3 to $fp-120
	  sw $t4, -124($fp)	# spill _tmp26 from $t4 to $fp-124
	  sw $t5, -128($fp)	# spill _tmp27 from $t5 to $fp-128
	  sw $t7, -132($fp)	# spill _tmp28 from $t7 to $fp-132
	  sw $s0, -136($fp)	# spill _tmp29 from $s0 to $fp-136
	  sw $s1, -140($fp)	# spill _tmp30 from $s1 to $fp-140
	  sw $s2, -144($fp)	# spill _tmp31 from $s2 to $fp-144
	  sw $s3, -148($fp)	# spill _tmp32 from $s3 to $fp-148
	  sw $s4, -152($fp)	# spill _tmp33 from $s4 to $fp-152
	  beqz $s4, _L6	# branch if _tmp33 is zero 
	# _tmp34 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp34 from $t0 to $fp-156
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L6:
	# _tmp35 = _tmp25 * _tmp27
	  lw $t0, -120($fp)	# load _tmp25 from $fp-120 into $t0
	  lw $t1, -128($fp)	# load _tmp27 from $fp-128 into $t1
	  mul $t2, $t0, $t1	
	# _tmp36 = _tmp35 + _tmp27
	  add $t3, $t2, $t1	
	# _tmp37 = b + _tmp36
	  lw $t4, -8($fp)	# load b from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp38 = *(_tmp37)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp39 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp40 = 3
	  li $s0, 3		# load constant value 3 into $s0
	# _tmp41 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp42 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp43 = *(b)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp44 = _tmp43 == _tmp40
	  seq $s4, $s3, $s0	
	# _tmp45 = _tmp43 < _tmp40
	  slt $s5, $s3, $s0	
	# _tmp46 = _tmp45 || _tmp44
	  or $s6, $s5, $s4	
	# _tmp47 = _tmp40 < _tmp41
	  slt $s7, $s0, $s1	
	# _tmp48 = _tmp47 || _tmp46
	  or $t8, $s7, $s6	
	# IfZ _tmp48 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t2, -160($fp)	# spill _tmp35 from $t2 to $fp-160
	  sw $t3, -164($fp)	# spill _tmp36 from $t3 to $fp-164
	  sw $t5, -168($fp)	# spill _tmp37 from $t5 to $fp-168
	  sw $t6, -172($fp)	# spill _tmp38 from $t6 to $fp-172
	  sw $t7, -176($fp)	# spill _tmp39 from $t7 to $fp-176
	  sw $s0, -180($fp)	# spill _tmp40 from $s0 to $fp-180
	  sw $s1, -184($fp)	# spill _tmp41 from $s1 to $fp-184
	  sw $s2, -188($fp)	# spill _tmp42 from $s2 to $fp-188
	  sw $s3, -192($fp)	# spill _tmp43 from $s3 to $fp-192
	  sw $s4, -196($fp)	# spill _tmp44 from $s4 to $fp-196
	  sw $s5, -200($fp)	# spill _tmp45 from $s5 to $fp-200
	  sw $s6, -204($fp)	# spill _tmp46 from $s6 to $fp-204
	  sw $s7, -208($fp)	# spill _tmp47 from $s7 to $fp-208
	  sw $t8, -212($fp)	# spill _tmp48 from $t8 to $fp-212
	  beqz $t8, _L7	# branch if _tmp48 is zero 
	# _tmp49 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp49
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -216($fp)	# spill _tmp49 from $t0 to $fp-216
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L7:
	# _tmp50 = _tmp40 * _tmp42
	  lw $t0, -180($fp)	# load _tmp40 from $fp-180 into $t0
	  lw $t1, -188($fp)	# load _tmp42 from $fp-188 into $t1
	  mul $t2, $t0, $t1	
	# _tmp51 = _tmp50 + _tmp42
	  add $t3, $t2, $t1	
	# _tmp52 = b + _tmp51
	  lw $t4, -8($fp)	# load b from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp52) = _tmp39
	  lw $t6, -176($fp)	# load _tmp39 from $fp-176 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp53 = 6
	  li $t7, 6		# load constant value 6 into $t7
	# _tmp54 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp55 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp56 = *(c)
	  lw $s2, -12($fp)	# load c from $fp-12 into $s2
	  lw $s3, 0($s2) 	# load with offset
	# _tmp57 = _tmp56 == _tmp53
	  seq $s4, $s3, $t7	
	# _tmp58 = _tmp56 < _tmp53
	  slt $s5, $s3, $t7	
	# _tmp59 = _tmp58 || _tmp57
	  or $s6, $s5, $s4	
	# _tmp60 = _tmp53 < _tmp54
	  slt $s7, $t7, $s0	
	# _tmp61 = _tmp60 || _tmp59
	  or $t8, $s7, $s6	
	# IfZ _tmp61 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t2, -220($fp)	# spill _tmp50 from $t2 to $fp-220
	  sw $t3, -224($fp)	# spill _tmp51 from $t3 to $fp-224
	  sw $t5, -228($fp)	# spill _tmp52 from $t5 to $fp-228
	  sw $t7, -232($fp)	# spill _tmp53 from $t7 to $fp-232
	  sw $s0, -236($fp)	# spill _tmp54 from $s0 to $fp-236
	  sw $s1, -240($fp)	# spill _tmp55 from $s1 to $fp-240
	  sw $s3, -244($fp)	# spill _tmp56 from $s3 to $fp-244
	  sw $s4, -248($fp)	# spill _tmp57 from $s4 to $fp-248
	  sw $s5, -252($fp)	# spill _tmp58 from $s5 to $fp-252
	  sw $s6, -256($fp)	# spill _tmp59 from $s6 to $fp-256
	  sw $s7, -260($fp)	# spill _tmp60 from $s7 to $fp-260
	  sw $t8, -264($fp)	# spill _tmp61 from $t8 to $fp-264
	  beqz $t8, _L8	# branch if _tmp61 is zero 
	# _tmp62 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp62
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -268($fp)	# spill _tmp62 from $t0 to $fp-268
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L8:
	# _tmp63 = _tmp53 * _tmp55
	  lw $t0, -232($fp)	# load _tmp53 from $fp-232 into $t0
	  lw $t1, -240($fp)	# load _tmp55 from $fp-240 into $t1
	  mul $t2, $t0, $t1	
	# _tmp64 = _tmp63 + _tmp55
	  add $t3, $t2, $t1	
	# _tmp65 = c + _tmp64
	  lw $t4, -12($fp)	# load c from $fp-12 into $t4
	  add $t5, $t4, $t3	
	# _tmp66 = *(_tmp65)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp67 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp68 = 6
	  li $s0, 6		# load constant value 6 into $s0
	# _tmp69 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp70 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp71 = *(c)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp72 = _tmp71 == _tmp68
	  seq $s4, $s3, $s0	
	# _tmp73 = _tmp71 < _tmp68
	  slt $s5, $s3, $s0	
	# _tmp74 = _tmp73 || _tmp72
	  or $s6, $s5, $s4	
	# _tmp75 = _tmp68 < _tmp69
	  slt $s7, $s0, $s1	
	# _tmp76 = _tmp75 || _tmp74
	  or $t8, $s7, $s6	
	# IfZ _tmp76 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t2, -272($fp)	# spill _tmp63 from $t2 to $fp-272
	  sw $t3, -276($fp)	# spill _tmp64 from $t3 to $fp-276
	  sw $t5, -280($fp)	# spill _tmp65 from $t5 to $fp-280
	  sw $t6, -284($fp)	# spill _tmp66 from $t6 to $fp-284
	  sw $t7, -288($fp)	# spill _tmp67 from $t7 to $fp-288
	  sw $s0, -292($fp)	# spill _tmp68 from $s0 to $fp-292
	  sw $s1, -296($fp)	# spill _tmp69 from $s1 to $fp-296
	  sw $s2, -300($fp)	# spill _tmp70 from $s2 to $fp-300
	  sw $s3, -304($fp)	# spill _tmp71 from $s3 to $fp-304
	  sw $s4, -308($fp)	# spill _tmp72 from $s4 to $fp-308
	  sw $s5, -312($fp)	# spill _tmp73 from $s5 to $fp-312
	  sw $s6, -316($fp)	# spill _tmp74 from $s6 to $fp-316
	  sw $s7, -320($fp)	# spill _tmp75 from $s7 to $fp-320
	  sw $t8, -324($fp)	# spill _tmp76 from $t8 to $fp-324
	  beqz $t8, _L9	# branch if _tmp76 is zero 
	# _tmp77 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp77
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -328($fp)	# spill _tmp77 from $t0 to $fp-328
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L9:
	# _tmp78 = _tmp68 * _tmp70
	  lw $t0, -292($fp)	# load _tmp68 from $fp-292 into $t0
	  lw $t1, -300($fp)	# load _tmp70 from $fp-300 into $t1
	  mul $t2, $t0, $t1	
	# _tmp79 = _tmp78 + _tmp70
	  add $t3, $t2, $t1	
	# _tmp80 = c + _tmp79
	  lw $t4, -12($fp)	# load c from $fp-12 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp80) = _tmp67
	  lw $t6, -288($fp)	# load _tmp67 from $fp-288 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# d = b
	  lw $t7, -8($fp)	# load b from $fp-8 into $t7
	  move $s0, $t7		# copy value
	# _tmp81 = 2
	  li $s1, 2		# load constant value 2 into $s1
	# _tmp82 = 0
	  li $s2, 0		# load constant value 0 into $s2
	# _tmp83 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp84 = *(s)
	  lw $s4, -20($fp)	# load s from $fp-20 into $s4
	  lw $s5, 0($s4) 	# load with offset
	# _tmp85 = _tmp84 == _tmp81
	  seq $s6, $s5, $s1	
	# _tmp86 = _tmp84 < _tmp81
	  slt $s7, $s5, $s1	
	# _tmp87 = _tmp86 || _tmp85
	  or $t8, $s7, $s6	
	# _tmp88 = _tmp81 < _tmp82
	  slt $t9, $s1, $s2	
	# _tmp89 = _tmp88 || _tmp87
	  or $t0, $t9, $t8	
	# IfZ _tmp89 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t0, -376($fp)	# spill _tmp89 from $t0 to $fp-376
	  sw $t2, -332($fp)	# spill _tmp78 from $t2 to $fp-332
	  sw $t3, -336($fp)	# spill _tmp79 from $t3 to $fp-336
	  sw $t5, -340($fp)	# spill _tmp80 from $t5 to $fp-340
	  sw $s0, -16($fp)	# spill d from $s0 to $fp-16
	  sw $s1, -344($fp)	# spill _tmp81 from $s1 to $fp-344
	  sw $s2, -348($fp)	# spill _tmp82 from $s2 to $fp-348
	  sw $s3, -352($fp)	# spill _tmp83 from $s3 to $fp-352
	  sw $s5, -356($fp)	# spill _tmp84 from $s5 to $fp-356
	  sw $s6, -360($fp)	# spill _tmp85 from $s6 to $fp-360
	  sw $s7, -364($fp)	# spill _tmp86 from $s7 to $fp-364
	  sw $t8, -368($fp)	# spill _tmp87 from $t8 to $fp-368
	  sw $t9, -372($fp)	# spill _tmp88 from $t9 to $fp-372
	  beqz $t0, _L10	# branch if _tmp89 is zero 
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
  _L10:
	# _tmp91 = _tmp81 * _tmp83
	  lw $t0, -344($fp)	# load _tmp81 from $fp-344 into $t0
	  lw $t1, -352($fp)	# load _tmp83 from $fp-352 into $t1
	  mul $t2, $t0, $t1	
	# _tmp92 = _tmp91 + _tmp83
	  add $t3, $t2, $t1	
	# _tmp93 = s + _tmp92
	  lw $t4, -20($fp)	# load s from $fp-20 into $t4
	  add $t5, $t4, $t3	
	# _tmp94 = *(_tmp93)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp95 = "hello"
	  .data			# create string constant marked with label
	  _string9: .asciiz "hello"
	  .text
	  la $t7, _string9	# load label
	# _tmp96 = 2
	  li $s0, 2		# load constant value 2 into $s0
	# _tmp97 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp98 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp99 = *(s)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp100 = _tmp99 == _tmp96
	  seq $s4, $s3, $s0	
	# _tmp101 = _tmp99 < _tmp96
	  slt $s5, $s3, $s0	
	# _tmp102 = _tmp101 || _tmp100
	  or $s6, $s5, $s4	
	# _tmp103 = _tmp96 < _tmp97
	  slt $s7, $s0, $s1	
	# _tmp104 = _tmp103 || _tmp102
	  or $t8, $s7, $s6	
	# IfZ _tmp104 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t2, -384($fp)	# spill _tmp91 from $t2 to $fp-384
	  sw $t3, -388($fp)	# spill _tmp92 from $t3 to $fp-388
	  sw $t5, -392($fp)	# spill _tmp93 from $t5 to $fp-392
	  sw $t6, -396($fp)	# spill _tmp94 from $t6 to $fp-396
	  sw $t7, -400($fp)	# spill _tmp95 from $t7 to $fp-400
	  sw $s0, -404($fp)	# spill _tmp96 from $s0 to $fp-404
	  sw $s1, -408($fp)	# spill _tmp97 from $s1 to $fp-408
	  sw $s2, -412($fp)	# spill _tmp98 from $s2 to $fp-412
	  sw $s3, -416($fp)	# spill _tmp99 from $s3 to $fp-416
	  sw $s4, -420($fp)	# spill _tmp100 from $s4 to $fp-420
	  sw $s5, -424($fp)	# spill _tmp101 from $s5 to $fp-424
	  sw $s6, -428($fp)	# spill _tmp102 from $s6 to $fp-428
	  sw $s7, -432($fp)	# spill _tmp103 from $s7 to $fp-432
	  sw $t8, -436($fp)	# spill _tmp104 from $t8 to $fp-436
	  beqz $t8, _L11	# branch if _tmp104 is zero 
	# _tmp105 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp105
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -440($fp)	# spill _tmp105 from $t0 to $fp-440
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L11:
	# _tmp106 = _tmp96 * _tmp98
	  lw $t0, -404($fp)	# load _tmp96 from $fp-404 into $t0
	  lw $t1, -412($fp)	# load _tmp98 from $fp-412 into $t1
	  mul $t2, $t0, $t1	
	# _tmp107 = _tmp106 + _tmp98
	  add $t3, $t2, $t1	
	# _tmp108 = s + _tmp107
	  lw $t4, -20($fp)	# load s from $fp-20 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp108) = _tmp95
	  lw $t6, -400($fp)	# load _tmp95 from $fp-400 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp109 = 3
	  li $t7, 3		# load constant value 3 into $t7
	# _tmp110 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp111 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp112 = *(b)
	  lw $s2, -8($fp)	# load b from $fp-8 into $s2
	  lw $s3, 0($s2) 	# load with offset
	# _tmp113 = _tmp112 == _tmp109
	  seq $s4, $s3, $t7	
	# _tmp114 = _tmp112 < _tmp109
	  slt $s5, $s3, $t7	
	# _tmp115 = _tmp114 || _tmp113
	  or $s6, $s5, $s4	
	# _tmp116 = _tmp109 < _tmp110
	  slt $s7, $t7, $s0	
	# _tmp117 = _tmp116 || _tmp115
	  or $t8, $s7, $s6	
	# IfZ _tmp117 Goto _L12
	# (save modified registers before flow of control change)
	  sw $t2, -444($fp)	# spill _tmp106 from $t2 to $fp-444
	  sw $t3, -448($fp)	# spill _tmp107 from $t3 to $fp-448
	  sw $t5, -452($fp)	# spill _tmp108 from $t5 to $fp-452
	  sw $t7, -456($fp)	# spill _tmp109 from $t7 to $fp-456
	  sw $s0, -460($fp)	# spill _tmp110 from $s0 to $fp-460
	  sw $s1, -464($fp)	# spill _tmp111 from $s1 to $fp-464
	  sw $s3, -468($fp)	# spill _tmp112 from $s3 to $fp-468
	  sw $s4, -472($fp)	# spill _tmp113 from $s4 to $fp-472
	  sw $s5, -476($fp)	# spill _tmp114 from $s5 to $fp-476
	  sw $s6, -480($fp)	# spill _tmp115 from $s6 to $fp-480
	  sw $s7, -484($fp)	# spill _tmp116 from $s7 to $fp-484
	  sw $t8, -488($fp)	# spill _tmp117 from $t8 to $fp-488
	  beqz $t8, _L12	# branch if _tmp117 is zero 
	# _tmp118 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string11	# load label
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
  _L12:
	# _tmp119 = _tmp109 * _tmp111
	  lw $t0, -456($fp)	# load _tmp109 from $fp-456 into $t0
	  lw $t1, -464($fp)	# load _tmp111 from $fp-464 into $t1
	  mul $t2, $t0, $t1	
	# _tmp120 = _tmp119 + _tmp111
	  add $t3, $t2, $t1	
	# _tmp121 = b + _tmp120
	  lw $t4, -8($fp)	# load b from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp122 = *(_tmp121)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp122
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -496($fp)	# spill _tmp119 from $t2 to $fp-496
	  sw $t3, -500($fp)	# spill _tmp120 from $t3 to $fp-500
	  sw $t5, -504($fp)	# spill _tmp121 from $t5 to $fp-504
	  sw $t6, -508($fp)	# spill _tmp122 from $t6 to $fp-508
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp123 = *(b)
	  lw $t0, -8($fp)	# load b from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp123
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -512($fp)	# spill _tmp123 from $t1 to $fp-512
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp124 = "\n"
	  .data			# create string constant marked with label
	  _string12: .asciiz "\n"
	  .text
	  la $t0, _string12	# load label
	# PushParam _tmp124
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -516($fp)	# spill _tmp124 from $t0 to $fp-516
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp125 = 6
	  li $t0, 6		# load constant value 6 into $t0
	# _tmp126 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp127 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp128 = *(c)
	  lw $t3, -12($fp)	# load c from $fp-12 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp129 = _tmp128 == _tmp125
	  seq $t5, $t4, $t0	
	# _tmp130 = _tmp128 < _tmp125
	  slt $t6, $t4, $t0	
	# _tmp131 = _tmp130 || _tmp129
	  or $t7, $t6, $t5	
	# _tmp132 = _tmp125 < _tmp126
	  slt $s0, $t0, $t1	
	# _tmp133 = _tmp132 || _tmp131
	  or $s1, $s0, $t7	
	# IfZ _tmp133 Goto _L13
	# (save modified registers before flow of control change)
	  sw $t0, -520($fp)	# spill _tmp125 from $t0 to $fp-520
	  sw $t1, -524($fp)	# spill _tmp126 from $t1 to $fp-524
	  sw $t2, -528($fp)	# spill _tmp127 from $t2 to $fp-528
	  sw $t4, -532($fp)	# spill _tmp128 from $t4 to $fp-532
	  sw $t5, -536($fp)	# spill _tmp129 from $t5 to $fp-536
	  sw $t6, -540($fp)	# spill _tmp130 from $t6 to $fp-540
	  sw $t7, -544($fp)	# spill _tmp131 from $t7 to $fp-544
	  sw $s0, -548($fp)	# spill _tmp132 from $s0 to $fp-548
	  sw $s1, -552($fp)	# spill _tmp133 from $s1 to $fp-552
	  beqz $s1, _L13	# branch if _tmp133 is zero 
	# _tmp134 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string13: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string13	# load label
	# PushParam _tmp134
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -556($fp)	# spill _tmp134 from $t0 to $fp-556
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L13:
	# _tmp135 = _tmp125 * _tmp127
	  lw $t0, -520($fp)	# load _tmp125 from $fp-520 into $t0
	  lw $t1, -528($fp)	# load _tmp127 from $fp-528 into $t1
	  mul $t2, $t0, $t1	
	# _tmp136 = _tmp135 + _tmp127
	  add $t3, $t2, $t1	
	# _tmp137 = c + _tmp136
	  lw $t4, -12($fp)	# load c from $fp-12 into $t4
	  add $t5, $t4, $t3	
	# _tmp138 = *(_tmp137)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp138
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t2, -560($fp)	# spill _tmp135 from $t2 to $fp-560
	  sw $t3, -564($fp)	# spill _tmp136 from $t3 to $fp-564
	  sw $t5, -568($fp)	# spill _tmp137 from $t5 to $fp-568
	  sw $t6, -572($fp)	# spill _tmp138 from $t6 to $fp-572
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp139 = *(c)
	  lw $t0, -12($fp)	# load c from $fp-12 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp139
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -576($fp)	# spill _tmp139 from $t1 to $fp-576
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp140 = "\n"
	  .data			# create string constant marked with label
	  _string14: .asciiz "\n"
	  .text
	  la $t0, _string14	# load label
	# PushParam _tmp140
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -580($fp)	# spill _tmp140 from $t0 to $fp-580
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp141 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# _tmp142 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp143 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp144 = *(d)
	  lw $t3, -16($fp)	# load d from $fp-16 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp145 = _tmp144 == _tmp141
	  seq $t5, $t4, $t0	
	# _tmp146 = _tmp144 < _tmp141
	  slt $t6, $t4, $t0	
	# _tmp147 = _tmp146 || _tmp145
	  or $t7, $t6, $t5	
	# _tmp148 = _tmp141 < _tmp142
	  slt $s0, $t0, $t1	
	# _tmp149 = _tmp148 || _tmp147
	  or $s1, $s0, $t7	
	# IfZ _tmp149 Goto _L14
	# (save modified registers before flow of control change)
	  sw $t0, -584($fp)	# spill _tmp141 from $t0 to $fp-584
	  sw $t1, -588($fp)	# spill _tmp142 from $t1 to $fp-588
	  sw $t2, -592($fp)	# spill _tmp143 from $t2 to $fp-592
	  sw $t4, -596($fp)	# spill _tmp144 from $t4 to $fp-596
	  sw $t5, -600($fp)	# spill _tmp145 from $t5 to $fp-600
	  sw $t6, -604($fp)	# spill _tmp146 from $t6 to $fp-604
	  sw $t7, -608($fp)	# spill _tmp147 from $t7 to $fp-608
	  sw $s0, -612($fp)	# spill _tmp148 from $s0 to $fp-612
	  sw $s1, -616($fp)	# spill _tmp149 from $s1 to $fp-616
	  beqz $s1, _L14	# branch if _tmp149 is zero 
	# _tmp150 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string15: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string15	# load label
	# PushParam _tmp150
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -620($fp)	# spill _tmp150 from $t0 to $fp-620
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L14:
	# _tmp151 = _tmp141 * _tmp143
	  lw $t0, -584($fp)	# load _tmp141 from $fp-584 into $t0
	  lw $t1, -592($fp)	# load _tmp143 from $fp-592 into $t1
	  mul $t2, $t0, $t1	
	# _tmp152 = _tmp151 + _tmp143
	  add $t3, $t2, $t1	
	# _tmp153 = d + _tmp152
	  lw $t4, -16($fp)	# load d from $fp-16 into $t4
	  add $t5, $t4, $t3	
	# _tmp154 = *(_tmp153)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp154
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -624($fp)	# spill _tmp151 from $t2 to $fp-624
	  sw $t3, -628($fp)	# spill _tmp152 from $t3 to $fp-628
	  sw $t5, -632($fp)	# spill _tmp153 from $t5 to $fp-632
	  sw $t6, -636($fp)	# spill _tmp154 from $t6 to $fp-636
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp155 = *(d)
	  lw $t0, -16($fp)	# load d from $fp-16 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp155
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -640($fp)	# spill _tmp155 from $t1 to $fp-640
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp156 = "\n"
	  .data			# create string constant marked with label
	  _string16: .asciiz "\n"
	  .text
	  la $t0, _string16	# load label
	# PushParam _tmp156
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -644($fp)	# spill _tmp156 from $t0 to $fp-644
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp157 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp158 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp159 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp160 = *(s)
	  lw $t3, -20($fp)	# load s from $fp-20 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp161 = _tmp160 == _tmp157
	  seq $t5, $t4, $t0	
	# _tmp162 = _tmp160 < _tmp157
	  slt $t6, $t4, $t0	
	# _tmp163 = _tmp162 || _tmp161
	  or $t7, $t6, $t5	
	# _tmp164 = _tmp157 < _tmp158
	  slt $s0, $t0, $t1	
	# _tmp165 = _tmp164 || _tmp163
	  or $s1, $s0, $t7	
	# IfZ _tmp165 Goto _L15
	# (save modified registers before flow of control change)
	  sw $t0, -648($fp)	# spill _tmp157 from $t0 to $fp-648
	  sw $t1, -652($fp)	# spill _tmp158 from $t1 to $fp-652
	  sw $t2, -656($fp)	# spill _tmp159 from $t2 to $fp-656
	  sw $t4, -660($fp)	# spill _tmp160 from $t4 to $fp-660
	  sw $t5, -664($fp)	# spill _tmp161 from $t5 to $fp-664
	  sw $t6, -668($fp)	# spill _tmp162 from $t6 to $fp-668
	  sw $t7, -672($fp)	# spill _tmp163 from $t7 to $fp-672
	  sw $s0, -676($fp)	# spill _tmp164 from $s0 to $fp-676
	  sw $s1, -680($fp)	# spill _tmp165 from $s1 to $fp-680
	  beqz $s1, _L15	# branch if _tmp165 is zero 
	# _tmp166 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string17: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string17	# load label
	# PushParam _tmp166
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -684($fp)	# spill _tmp166 from $t0 to $fp-684
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L15:
	# _tmp167 = _tmp157 * _tmp159
	  lw $t0, -648($fp)	# load _tmp157 from $fp-648 into $t0
	  lw $t1, -656($fp)	# load _tmp159 from $fp-656 into $t1
	  mul $t2, $t0, $t1	
	# _tmp168 = _tmp167 + _tmp159
	  add $t3, $t2, $t1	
	# _tmp169 = s + _tmp168
	  lw $t4, -20($fp)	# load s from $fp-20 into $t4
	  add $t5, $t4, $t3	
	# _tmp170 = *(_tmp169)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp170
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t2, -688($fp)	# spill _tmp167 from $t2 to $fp-688
	  sw $t3, -692($fp)	# spill _tmp168 from $t3 to $fp-692
	  sw $t5, -696($fp)	# spill _tmp169 from $t5 to $fp-696
	  sw $t6, -700($fp)	# spill _tmp170 from $t6 to $fp-700
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp171 = *(s)
	  lw $t0, -20($fp)	# load s from $fp-20 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp171
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -704($fp)	# spill _tmp171 from $t1 to $fp-704
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp172 = "\n"
	  .data			# create string constant marked with label
	  _string18: .asciiz "\n"
	  .text
	  la $t0, _string18	# load label
	# PushParam _tmp172
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -708($fp)	# spill _tmp172 from $t0 to $fp-708
	  jal _PrintString   	# jump to function
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