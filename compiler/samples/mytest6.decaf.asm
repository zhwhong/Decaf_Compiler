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
	# BeginFunc 612
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 612	# decrement sp to make space for locals/temps
	# _tmp1 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# sz = _tmp1
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp1 from $t0 to $fp-20
	  sw $t1, -16($fp)	# spill sz from $t1 to $fp-16
  _L0:
	# _tmp2 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp3 = sz < _tmp2
	  lw $t1, -16($fp)	# load sz from $fp-16 into $t1
	  slt $t2, $t1, $t0	
	# IfZ _tmp3 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp2 from $t0 to $fp-24
	  sw $t2, -28($fp)	# spill _tmp3 from $t2 to $fp-28
	  beqz $t2, _L1	# branch if _tmp3 is zero 
	# _tmp4 = "Enter Number: "
	  .data			# create string constant marked with label
	  _string1: .asciiz "Enter Number: "
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp4 from $t0 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = LCall _ReadInteger
	  jal _ReadInteger   	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# sz = _tmp5
	  move $t1, $t0		# copy value
	# Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp5 from $t0 to $fp-36
	  sw $t1, -16($fp)	# spill sz from $t1 to $fp-16
	  b _L0		# unconditional branch
  _L1:
	# _tmp6 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp7 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp8 = _tmp6 < sz
	  lw $t2, -16($fp)	# load sz from $fp-16 into $t2
	  slt $t3, $t0, $t2	
	# IfZ _tmp8 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp6 from $t0 to $fp-40
	  sw $t1, -44($fp)	# spill _tmp7 from $t1 to $fp-44
	  sw $t3, -48($fp)	# spill _tmp8 from $t3 to $fp-48
	  beqz $t3, _L2	# branch if _tmp8 is zero 
	# Goto _L3
	  b _L3		# unconditional branch
  _L2:
	# _tmp9 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp9 from $t0 to $fp-52
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L3:
	# _tmp10 = sz * _tmp7
	  lw $t0, -16($fp)	# load sz from $fp-16 into $t0
	  lw $t1, -44($fp)	# load _tmp7 from $fp-44 into $t1
	  mul $t2, $t0, $t1	
	# _tmp11 = _tmp10 + _tmp7
	  add $t3, $t2, $t1	
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp12 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -56($fp)	# spill _tmp10 from $t2 to $fp-56
	  sw $t3, -60($fp)	# spill _tmp11 from $t3 to $fp-60
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp12) = sz
	  lw $t1, -16($fp)	# load sz from $fp-16 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp12
	  move $t2, $t0		# copy value
	# _tmp13 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp14 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp15 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp16 = *(a)
	  lw $t6, 0($t2) 	# load with offset
	# _tmp17 = _tmp16 == _tmp13
	  seq $t7, $t6, $t3	
	# _tmp18 = _tmp16 < _tmp13
	  slt $s0, $t6, $t3	
	# _tmp19 = _tmp18 || _tmp17
	  or $s1, $s0, $t7	
	# _tmp20 = _tmp13 < _tmp14
	  slt $s2, $t3, $t4	
	# _tmp21 = _tmp20 || _tmp19
	  or $s3, $s2, $s1	
	# IfZ _tmp21 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp12 from $t0 to $fp-64
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -68($fp)	# spill _tmp13 from $t3 to $fp-68
	  sw $t4, -72($fp)	# spill _tmp14 from $t4 to $fp-72
	  sw $t5, -76($fp)	# spill _tmp15 from $t5 to $fp-76
	  sw $t6, -80($fp)	# spill _tmp16 from $t6 to $fp-80
	  sw $t7, -84($fp)	# spill _tmp17 from $t7 to $fp-84
	  sw $s0, -88($fp)	# spill _tmp18 from $s0 to $fp-88
	  sw $s1, -92($fp)	# spill _tmp19 from $s1 to $fp-92
	  sw $s2, -96($fp)	# spill _tmp20 from $s2 to $fp-96
	  sw $s3, -100($fp)	# spill _tmp21 from $s3 to $fp-100
	  beqz $s3, _L4	# branch if _tmp21 is zero 
	# _tmp22 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -104($fp)	# spill _tmp22 from $t0 to $fp-104
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp23 = _tmp13 * _tmp15
	  lw $t0, -68($fp)	# load _tmp13 from $fp-68 into $t0
	  lw $t1, -76($fp)	# load _tmp15 from $fp-76 into $t1
	  mul $t2, $t0, $t1	
	# _tmp24 = _tmp23 + _tmp15
	  add $t3, $t2, $t1	
	# _tmp25 = a + _tmp24
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp26 = *(_tmp25)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp27 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp28 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp29 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp30 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp31 = *(a)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp32 = _tmp31 == _tmp28
	  seq $s4, $s3, $s0	
	# _tmp33 = _tmp31 < _tmp28
	  slt $s5, $s3, $s0	
	# _tmp34 = _tmp33 || _tmp32
	  or $s6, $s5, $s4	
	# _tmp35 = _tmp28 < _tmp29
	  slt $s7, $s0, $s1	
	# _tmp36 = _tmp35 || _tmp34
	  or $t8, $s7, $s6	
	# IfZ _tmp36 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t2, -108($fp)	# spill _tmp23 from $t2 to $fp-108
	  sw $t3, -112($fp)	# spill _tmp24 from $t3 to $fp-112
	  sw $t5, -116($fp)	# spill _tmp25 from $t5 to $fp-116
	  sw $t6, -120($fp)	# spill _tmp26 from $t6 to $fp-120
	  sw $t7, -124($fp)	# spill _tmp27 from $t7 to $fp-124
	  sw $s0, -128($fp)	# spill _tmp28 from $s0 to $fp-128
	  sw $s1, -132($fp)	# spill _tmp29 from $s1 to $fp-132
	  sw $s2, -136($fp)	# spill _tmp30 from $s2 to $fp-136
	  sw $s3, -140($fp)	# spill _tmp31 from $s3 to $fp-140
	  sw $s4, -144($fp)	# spill _tmp32 from $s4 to $fp-144
	  sw $s5, -148($fp)	# spill _tmp33 from $s5 to $fp-148
	  sw $s6, -152($fp)	# spill _tmp34 from $s6 to $fp-152
	  sw $s7, -156($fp)	# spill _tmp35 from $s7 to $fp-156
	  sw $t8, -160($fp)	# spill _tmp36 from $t8 to $fp-160
	  beqz $t8, _L5	# branch if _tmp36 is zero 
	# _tmp37 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp37
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -164($fp)	# spill _tmp37 from $t0 to $fp-164
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp38 = _tmp28 * _tmp30
	  lw $t0, -128($fp)	# load _tmp28 from $fp-128 into $t0
	  lw $t1, -136($fp)	# load _tmp30 from $fp-136 into $t1
	  mul $t2, $t0, $t1	
	# _tmp39 = _tmp38 + _tmp30
	  add $t3, $t2, $t1	
	# _tmp40 = a + _tmp39
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp40) = _tmp27
	  lw $t6, -124($fp)	# load _tmp27 from $fp-124 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp41 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp42 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp43 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp44 = *(a)
	  lw $s2, 0($t4) 	# load with offset
	# _tmp45 = _tmp44 == _tmp41
	  seq $s3, $s2, $t7	
	# _tmp46 = _tmp44 < _tmp41
	  slt $s4, $s2, $t7	
	# _tmp47 = _tmp46 || _tmp45
	  or $s5, $s4, $s3	
	# _tmp48 = _tmp41 < _tmp42
	  slt $s6, $t7, $s0	
	# _tmp49 = _tmp48 || _tmp47
	  or $s7, $s6, $s5	
	# IfZ _tmp49 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t2, -168($fp)	# spill _tmp38 from $t2 to $fp-168
	  sw $t3, -172($fp)	# spill _tmp39 from $t3 to $fp-172
	  sw $t5, -176($fp)	# spill _tmp40 from $t5 to $fp-176
	  sw $t7, -180($fp)	# spill _tmp41 from $t7 to $fp-180
	  sw $s0, -184($fp)	# spill _tmp42 from $s0 to $fp-184
	  sw $s1, -188($fp)	# spill _tmp43 from $s1 to $fp-188
	  sw $s2, -192($fp)	# spill _tmp44 from $s2 to $fp-192
	  sw $s3, -196($fp)	# spill _tmp45 from $s3 to $fp-196
	  sw $s4, -200($fp)	# spill _tmp46 from $s4 to $fp-200
	  sw $s5, -204($fp)	# spill _tmp47 from $s5 to $fp-204
	  sw $s6, -208($fp)	# spill _tmp48 from $s6 to $fp-208
	  sw $s7, -212($fp)	# spill _tmp49 from $s7 to $fp-212
	  beqz $s7, _L6	# branch if _tmp49 is zero 
	# _tmp50 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp50
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -216($fp)	# spill _tmp50 from $t0 to $fp-216
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L6:
	# _tmp51 = _tmp41 * _tmp43
	  lw $t0, -180($fp)	# load _tmp41 from $fp-180 into $t0
	  lw $t1, -188($fp)	# load _tmp43 from $fp-188 into $t1
	  mul $t2, $t0, $t1	
	# _tmp52 = _tmp51 + _tmp43
	  add $t3, $t2, $t1	
	# _tmp53 = a + _tmp52
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp54 = *(_tmp53)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp55 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp56 = 1
	  li $s0, 1		# load constant value 1 into $s0
	# _tmp57 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp58 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp59 = *(a)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp60 = _tmp59 == _tmp56
	  seq $s4, $s3, $s0	
	# _tmp61 = _tmp59 < _tmp56
	  slt $s5, $s3, $s0	
	# _tmp62 = _tmp61 || _tmp60
	  or $s6, $s5, $s4	
	# _tmp63 = _tmp56 < _tmp57
	  slt $s7, $s0, $s1	
	# _tmp64 = _tmp63 || _tmp62
	  or $t8, $s7, $s6	
	# IfZ _tmp64 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t2, -220($fp)	# spill _tmp51 from $t2 to $fp-220
	  sw $t3, -224($fp)	# spill _tmp52 from $t3 to $fp-224
	  sw $t5, -228($fp)	# spill _tmp53 from $t5 to $fp-228
	  sw $t6, -232($fp)	# spill _tmp54 from $t6 to $fp-232
	  sw $t7, -236($fp)	# spill _tmp55 from $t7 to $fp-236
	  sw $s0, -240($fp)	# spill _tmp56 from $s0 to $fp-240
	  sw $s1, -244($fp)	# spill _tmp57 from $s1 to $fp-244
	  sw $s2, -248($fp)	# spill _tmp58 from $s2 to $fp-248
	  sw $s3, -252($fp)	# spill _tmp59 from $s3 to $fp-252
	  sw $s4, -256($fp)	# spill _tmp60 from $s4 to $fp-256
	  sw $s5, -260($fp)	# spill _tmp61 from $s5 to $fp-260
	  sw $s6, -264($fp)	# spill _tmp62 from $s6 to $fp-264
	  sw $s7, -268($fp)	# spill _tmp63 from $s7 to $fp-268
	  sw $t8, -272($fp)	# spill _tmp64 from $t8 to $fp-272
	  beqz $t8, _L7	# branch if _tmp64 is zero 
	# _tmp65 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp65
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -276($fp)	# spill _tmp65 from $t0 to $fp-276
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L7:
	# _tmp66 = _tmp56 * _tmp58
	  lw $t0, -240($fp)	# load _tmp56 from $fp-240 into $t0
	  lw $t1, -248($fp)	# load _tmp58 from $fp-248 into $t1
	  mul $t2, $t0, $t1	
	# _tmp67 = _tmp66 + _tmp58
	  add $t3, $t2, $t1	
	# _tmp68 = a + _tmp67
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp68) = _tmp55
	  lw $t6, -236($fp)	# load _tmp55 from $fp-236 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp69 = 2
	  li $t7, 2		# load constant value 2 into $t7
	# i = _tmp69
	  move $s0, $t7		# copy value
	# (save modified registers before flow of control change)
	  sw $t2, -280($fp)	# spill _tmp66 from $t2 to $fp-280
	  sw $t3, -284($fp)	# spill _tmp67 from $t3 to $fp-284
	  sw $t5, -288($fp)	# spill _tmp68 from $t5 to $fp-288
	  sw $t7, -292($fp)	# spill _tmp69 from $t7 to $fp-292
	  sw $s0, -12($fp)	# spill i from $s0 to $fp-12
  _L8:
	# _tmp70 = *(a)
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp71 = i < _tmp70
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp71 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t1, -296($fp)	# spill _tmp70 from $t1 to $fp-296
	  sw $t3, -300($fp)	# spill _tmp71 from $t3 to $fp-300
	  beqz $t3, _L9	# branch if _tmp71 is zero 
	# _tmp72 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp73 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp74 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp75 = _tmp74 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp76 = _tmp74 < i
	  slt $t6, $t3, $t4	
	# _tmp77 = _tmp76 || _tmp75
	  or $t7, $t6, $t5	
	# _tmp78 = i < _tmp72
	  slt $s0, $t4, $t0	
	# _tmp79 = _tmp78 || _tmp77
	  or $s1, $s0, $t7	
	# IfZ _tmp79 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t0, -304($fp)	# spill _tmp72 from $t0 to $fp-304
	  sw $t1, -308($fp)	# spill _tmp73 from $t1 to $fp-308
	  sw $t3, -312($fp)	# spill _tmp74 from $t3 to $fp-312
	  sw $t5, -316($fp)	# spill _tmp75 from $t5 to $fp-316
	  sw $t6, -320($fp)	# spill _tmp76 from $t6 to $fp-320
	  sw $t7, -324($fp)	# spill _tmp77 from $t7 to $fp-324
	  sw $s0, -328($fp)	# spill _tmp78 from $s0 to $fp-328
	  sw $s1, -332($fp)	# spill _tmp79 from $s1 to $fp-332
	  beqz $s1, _L10	# branch if _tmp79 is zero 
	# _tmp80 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp80
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -336($fp)	# spill _tmp80 from $t0 to $fp-336
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L10:
	# _tmp81 = i * _tmp73
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -308($fp)	# load _tmp73 from $fp-308 into $t1
	  mul $t2, $t0, $t1	
	# _tmp82 = _tmp81 + _tmp73
	  add $t3, $t2, $t1	
	# _tmp83 = a + _tmp82
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp84 = *(_tmp83)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp85 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp86 = i - _tmp85
	  sub $s0, $t0, $t7	
	# _tmp87 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp88 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp89 = *(a)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp90 = _tmp89 == _tmp86
	  seq $s4, $s3, $s0	
	# _tmp91 = _tmp89 < _tmp86
	  slt $s5, $s3, $s0	
	# _tmp92 = _tmp91 || _tmp90
	  or $s6, $s5, $s4	
	# _tmp93 = _tmp86 < _tmp87
	  slt $s7, $s0, $s1	
	# _tmp94 = _tmp93 || _tmp92
	  or $t8, $s7, $s6	
	# IfZ _tmp94 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t2, -340($fp)	# spill _tmp81 from $t2 to $fp-340
	  sw $t3, -344($fp)	# spill _tmp82 from $t3 to $fp-344
	  sw $t5, -348($fp)	# spill _tmp83 from $t5 to $fp-348
	  sw $t6, -352($fp)	# spill _tmp84 from $t6 to $fp-352
	  sw $t7, -356($fp)	# spill _tmp85 from $t7 to $fp-356
	  sw $s0, -360($fp)	# spill _tmp86 from $s0 to $fp-360
	  sw $s1, -364($fp)	# spill _tmp87 from $s1 to $fp-364
	  sw $s2, -368($fp)	# spill _tmp88 from $s2 to $fp-368
	  sw $s3, -372($fp)	# spill _tmp89 from $s3 to $fp-372
	  sw $s4, -376($fp)	# spill _tmp90 from $s4 to $fp-376
	  sw $s5, -380($fp)	# spill _tmp91 from $s5 to $fp-380
	  sw $s6, -384($fp)	# spill _tmp92 from $s6 to $fp-384
	  sw $s7, -388($fp)	# spill _tmp93 from $s7 to $fp-388
	  sw $t8, -392($fp)	# spill _tmp94 from $t8 to $fp-392
	  beqz $t8, _L11	# branch if _tmp94 is zero 
	# _tmp95 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string8: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp95
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -396($fp)	# spill _tmp95 from $t0 to $fp-396
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L11:
	# _tmp96 = _tmp86 * _tmp88
	  lw $t0, -360($fp)	# load _tmp86 from $fp-360 into $t0
	  lw $t1, -368($fp)	# load _tmp88 from $fp-368 into $t1
	  mul $t2, $t0, $t1	
	# _tmp97 = _tmp96 + _tmp88
	  add $t3, $t2, $t1	
	# _tmp98 = a + _tmp97
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp99 = *(_tmp98)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp100 = 2
	  li $t7, 2		# load constant value 2 into $t7
	# _tmp101 = i - _tmp100
	  lw $s0, -12($fp)	# load i from $fp-12 into $s0
	  sub $s1, $s0, $t7	
	# _tmp102 = 0
	  li $s2, 0		# load constant value 0 into $s2
	# _tmp103 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp104 = *(a)
	  lw $s4, 0($t4) 	# load with offset
	# _tmp105 = _tmp104 == _tmp101
	  seq $s5, $s4, $s1	
	# _tmp106 = _tmp104 < _tmp101
	  slt $s6, $s4, $s1	
	# _tmp107 = _tmp106 || _tmp105
	  or $s7, $s6, $s5	
	# _tmp108 = _tmp101 < _tmp102
	  slt $t8, $s1, $s2	
	# _tmp109 = _tmp108 || _tmp107
	  or $t9, $t8, $s7	
	# IfZ _tmp109 Goto _L12
	# (save modified registers before flow of control change)
	  sw $t2, -400($fp)	# spill _tmp96 from $t2 to $fp-400
	  sw $t3, -404($fp)	# spill _tmp97 from $t3 to $fp-404
	  sw $t5, -408($fp)	# spill _tmp98 from $t5 to $fp-408
	  sw $t6, -412($fp)	# spill _tmp99 from $t6 to $fp-412
	  sw $t7, -416($fp)	# spill _tmp100 from $t7 to $fp-416
	  sw $s1, -420($fp)	# spill _tmp101 from $s1 to $fp-420
	  sw $s2, -424($fp)	# spill _tmp102 from $s2 to $fp-424
	  sw $s3, -428($fp)	# spill _tmp103 from $s3 to $fp-428
	  sw $s4, -432($fp)	# spill _tmp104 from $s4 to $fp-432
	  sw $s5, -436($fp)	# spill _tmp105 from $s5 to $fp-436
	  sw $s6, -440($fp)	# spill _tmp106 from $s6 to $fp-440
	  sw $s7, -444($fp)	# spill _tmp107 from $s7 to $fp-444
	  sw $t8, -448($fp)	# spill _tmp108 from $t8 to $fp-448
	  sw $t9, -452($fp)	# spill _tmp109 from $t9 to $fp-452
	  beqz $t9, _L12	# branch if _tmp109 is zero 
	# _tmp110 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string9: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp110
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -456($fp)	# spill _tmp110 from $t0 to $fp-456
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L12:
	# _tmp111 = _tmp101 * _tmp103
	  lw $t0, -420($fp)	# load _tmp101 from $fp-420 into $t0
	  lw $t1, -428($fp)	# load _tmp103 from $fp-428 into $t1
	  mul $t2, $t0, $t1	
	# _tmp112 = _tmp111 + _tmp103
	  add $t3, $t2, $t1	
	# _tmp113 = a + _tmp112
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp114 = *(_tmp113)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp115 = _tmp99 + _tmp114
	  lw $t7, -412($fp)	# load _tmp99 from $fp-412 into $t7
	  add $s0, $t7, $t6	
	# _tmp116 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp117 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp118 = *(a)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp119 = _tmp118 == i
	  lw $s4, -12($fp)	# load i from $fp-12 into $s4
	  seq $s5, $s3, $s4	
	# _tmp120 = _tmp118 < i
	  slt $s6, $s3, $s4	
	# _tmp121 = _tmp120 || _tmp119
	  or $s7, $s6, $s5	
	# _tmp122 = i < _tmp116
	  slt $t8, $s4, $s1	
	# _tmp123 = _tmp122 || _tmp121
	  or $t9, $t8, $s7	
	# IfZ _tmp123 Goto _L13
	# (save modified registers before flow of control change)
	  sw $t2, -460($fp)	# spill _tmp111 from $t2 to $fp-460
	  sw $t3, -464($fp)	# spill _tmp112 from $t3 to $fp-464
	  sw $t5, -468($fp)	# spill _tmp113 from $t5 to $fp-468
	  sw $t6, -472($fp)	# spill _tmp114 from $t6 to $fp-472
	  sw $s0, -476($fp)	# spill _tmp115 from $s0 to $fp-476
	  sw $s1, -480($fp)	# spill _tmp116 from $s1 to $fp-480
	  sw $s2, -484($fp)	# spill _tmp117 from $s2 to $fp-484
	  sw $s3, -488($fp)	# spill _tmp118 from $s3 to $fp-488
	  sw $s5, -492($fp)	# spill _tmp119 from $s5 to $fp-492
	  sw $s6, -496($fp)	# spill _tmp120 from $s6 to $fp-496
	  sw $s7, -500($fp)	# spill _tmp121 from $s7 to $fp-500
	  sw $t8, -504($fp)	# spill _tmp122 from $t8 to $fp-504
	  sw $t9, -508($fp)	# spill _tmp123 from $t9 to $fp-508
	  beqz $t9, _L13	# branch if _tmp123 is zero 
	# _tmp124 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp124
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -512($fp)	# spill _tmp124 from $t0 to $fp-512
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L13:
	# _tmp125 = i * _tmp117
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -484($fp)	# load _tmp117 from $fp-484 into $t1
	  mul $t2, $t0, $t1	
	# _tmp126 = _tmp125 + _tmp117
	  add $t3, $t2, $t1	
	# _tmp127 = a + _tmp126
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp127) = _tmp115
	  lw $t6, -476($fp)	# load _tmp115 from $fp-476 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp128 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp129 = i
	  move $s0, $t0		# copy value
	# _tmp130 = _tmp129 + _tmp128
	  add $s1, $s0, $t7	
	# i = _tmp130
	  move $t0, $s1		# copy value
	# Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill i from $t0 to $fp-12
	  sw $t2, -516($fp)	# spill _tmp125 from $t2 to $fp-516
	  sw $t3, -520($fp)	# spill _tmp126 from $t3 to $fp-520
	  sw $t5, -524($fp)	# spill _tmp127 from $t5 to $fp-524
	  sw $t7, -528($fp)	# spill _tmp128 from $t7 to $fp-528
	  sw $s0, -532($fp)	# spill _tmp129 from $s0 to $fp-532
	  sw $s1, -536($fp)	# spill _tmp130 from $s1 to $fp-536
	  b _L8		# unconditional branch
  _L9:
	# _tmp131 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp131
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -540($fp)	# spill _tmp131 from $t0 to $fp-540
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
  _L14:
	# _tmp132 = *(a)
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp133 = i < _tmp132
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp133 Goto _L15
	# (save modified registers before flow of control change)
	  sw $t1, -544($fp)	# spill _tmp132 from $t1 to $fp-544
	  sw $t3, -548($fp)	# spill _tmp133 from $t3 to $fp-548
	  beqz $t3, _L15	# branch if _tmp133 is zero 
	# _tmp134 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp135 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp136 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp137 = _tmp136 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp138 = _tmp136 < i
	  slt $t6, $t3, $t4	
	# _tmp139 = _tmp138 || _tmp137
	  or $t7, $t6, $t5	
	# _tmp140 = i < _tmp134
	  slt $s0, $t4, $t0	
	# _tmp141 = _tmp140 || _tmp139
	  or $s1, $s0, $t7	
	# IfZ _tmp141 Goto _L16
	# (save modified registers before flow of control change)
	  sw $t0, -552($fp)	# spill _tmp134 from $t0 to $fp-552
	  sw $t1, -556($fp)	# spill _tmp135 from $t1 to $fp-556
	  sw $t3, -560($fp)	# spill _tmp136 from $t3 to $fp-560
	  sw $t5, -564($fp)	# spill _tmp137 from $t5 to $fp-564
	  sw $t6, -568($fp)	# spill _tmp138 from $t6 to $fp-568
	  sw $t7, -572($fp)	# spill _tmp139 from $t7 to $fp-572
	  sw $s0, -576($fp)	# spill _tmp140 from $s0 to $fp-576
	  sw $s1, -580($fp)	# spill _tmp141 from $s1 to $fp-580
	  beqz $s1, _L16	# branch if _tmp141 is zero 
	# _tmp142 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp142
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -584($fp)	# spill _tmp142 from $t0 to $fp-584
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L16:
	# _tmp143 = i * _tmp135
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -556($fp)	# load _tmp135 from $fp-556 into $t1
	  mul $t2, $t0, $t1	
	# _tmp144 = _tmp143 + _tmp135
	  add $t3, $t2, $t1	
	# _tmp145 = a + _tmp144
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp146 = *(_tmp145)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp146
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -588($fp)	# spill _tmp143 from $t2 to $fp-588
	  sw $t3, -592($fp)	# spill _tmp144 from $t3 to $fp-592
	  sw $t5, -596($fp)	# spill _tmp145 from $t5 to $fp-596
	  sw $t6, -600($fp)	# spill _tmp146 from $t6 to $fp-600
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp147 = " "
	  .data			# create string constant marked with label
	  _string12: .asciiz " "
	  .text
	  la $t0, _string12	# load label
	# PushParam _tmp147
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -604($fp)	# spill _tmp147 from $t0 to $fp-604
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp148 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp149 = i
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  move $t2, $t1		# copy value
	# _tmp150 = _tmp149 + _tmp148
	  add $t3, $t2, $t0	
	# i = _tmp150
	  move $t1, $t3		# copy value
	# Goto _L14
	# (save modified registers before flow of control change)
	  sw $t0, -608($fp)	# spill _tmp148 from $t0 to $fp-608
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
	  sw $t2, -612($fp)	# spill _tmp149 from $t2 to $fp-612
	  sw $t3, -616($fp)	# spill _tmp150 from $t3 to $fp-616
	  b _L14		# unconditional branch
  _L15:
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