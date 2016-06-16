	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Stack_0:
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
	# VTable for class Stack
	  .data
	  .align 2
	  Stack:		# label for class Stack vtable
	  .word _offset_Stack_0
	  .word f_Stack.Init
	  .word f_Stack.Push
	  .word f_Stack.Pop
	  .word f_Stack.NumElems
	  .text
  f_Stack.Init:
	# BeginFunc 104
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 104	# decrement sp to make space for locals/temps
	# _tmp1 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp4 = 100
	  li $t4, 100		# load constant value 100 into $t4
	# _tmp5 = 0
	  li $t5, 0		# load constant value 0 into $t5
	# _tmp6 = 4
	  li $t6, 4		# load constant value 4 into $t6
	# _tmp7 = _tmp5 < _tmp4
	  slt $t7, $t5, $t4	
	# IfZ _tmp7 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp2 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp3 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp4 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp5 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp6 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp7 from $t7 to $fp-32
	  beqz $t7, _L0	# branch if _tmp7 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp8 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp8 from $t0 to $fp-36
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp9 = _tmp4 * _tmp6
	  lw $t0, -20($fp)	# load _tmp4 from $fp-20 into $t0
	  lw $t1, -28($fp)	# load _tmp6 from $fp-28 into $t1
	  mul $t2, $t0, $t1	
	# _tmp10 = _tmp9 + _tmp6
	  add $t3, $t2, $t1	
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp11 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -40($fp)	# spill _tmp9 from $t2 to $fp-40
	  sw $t3, -44($fp)	# spill _tmp10 from $t3 to $fp-44
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp11) = _tmp4
	  lw $t1, -20($fp)	# load _tmp4 from $fp-20 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# _tmp12 = 8
	  li $t2, 8		# load constant value 8 into $t2
	# _tmp13 = this + _tmp12
	  lw $t3, 4($fp)	# load this from $fp+4 into $t3
	  add $t4, $t3, $t2	
	# *(_tmp13) = _tmp11
	  sw $t0, 0($t4) 	# store with offset
	# _tmp14 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp15 = this + _tmp14
	  add $t6, $t3, $t5	
	# _tmp16 = *(_tmp15)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp17 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp18 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp19 = this + _tmp18
	  add $s2, $t3, $s1	
	# *(_tmp19) = _tmp17
	  sw $s0, 0($s2) 	# store with offset
	# _tmp20 = 3
	  li $s3, 3		# load constant value 3 into $s3
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s3, 4($sp)	# copy param value to stack
	# _tmp21 = *(this)
	  lw $s4, 0($t3) 	# load with offset
	# _tmp22 = *(_tmp21)
	  lw $s5, 0($s4) 	# load with offset
	# _tmp23 = ACall _tmp22
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp11 from $t0 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp12 from $t2 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp13 from $t4 to $fp-56
	  sw $t5, -60($fp)	# spill _tmp14 from $t5 to $fp-60
	  sw $t6, -64($fp)	# spill _tmp15 from $t6 to $fp-64
	  sw $t7, -68($fp)	# spill _tmp16 from $t7 to $fp-68
	  sw $s0, -72($fp)	# spill _tmp17 from $s0 to $fp-72
	  sw $s1, -76($fp)	# spill _tmp18 from $s1 to $fp-76
	  sw $s2, -80($fp)	# spill _tmp19 from $s2 to $fp-80
	  sw $s3, -84($fp)	# spill _tmp20 from $s3 to $fp-84
	  sw $s4, -88($fp)	# spill _tmp21 from $s4 to $fp-88
	  sw $s5, -92($fp)	# spill _tmp22 from $s5 to $fp-92
	  jalr $s5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp24 = this - _tmp23
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp25 = *(_tmp21 + 8)
	  lw $t3, -88($fp)	# load _tmp21 from $fp-88 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp24
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp25
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp23 from $t0 to $fp-96
	  sw $t2, -100($fp)	# spill _tmp24 from $t2 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp25 from $t4 to $fp-104
	  jalr $t4            	# jump to function
	# _tmp26 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Stack.Push:
	# BeginFunc 188
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 188	# decrement sp to make space for locals/temps
	# _tmp27 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp28 = this + _tmp27
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp29 = *(_tmp28)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp30 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp31 = this + _tmp30
	  add $t5, $t1, $t4	
	# _tmp32 = *(_tmp31)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp33 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp34 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp35 = *(_tmp29)
	  lw $s1, 0($t3) 	# load with offset
	# _tmp36 = _tmp35 == _tmp32
	  seq $s2, $s1, $t6	
	# _tmp37 = _tmp35 < _tmp32
	  slt $s3, $s1, $t6	
	# _tmp38 = _tmp37 || _tmp36
	  or $s4, $s3, $s2	
	# _tmp39 = _tmp32 < _tmp33
	  slt $s5, $t6, $t7	
	# _tmp40 = _tmp39 || _tmp38
	  or $s6, $s5, $s4	
	# IfZ _tmp40 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp27 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp28 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp29 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp30 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp31 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp32 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp33 from $t7 to $fp-32
	  sw $s0, -36($fp)	# spill _tmp34 from $s0 to $fp-36
	  sw $s1, -40($fp)	# spill _tmp35 from $s1 to $fp-40
	  sw $s2, -44($fp)	# spill _tmp36 from $s2 to $fp-44
	  sw $s3, -48($fp)	# spill _tmp37 from $s3 to $fp-48
	  sw $s4, -52($fp)	# spill _tmp38 from $s4 to $fp-52
	  sw $s5, -56($fp)	# spill _tmp39 from $s5 to $fp-56
	  sw $s6, -60($fp)	# spill _tmp40 from $s6 to $fp-60
	  beqz $s6, _L2	# branch if _tmp40 is zero 
	# _tmp41 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp41 from $t0 to $fp-64
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L2:
	# _tmp42 = _tmp32 * _tmp34
	  lw $t0, -28($fp)	# load _tmp32 from $fp-28 into $t0
	  lw $t1, -36($fp)	# load _tmp34 from $fp-36 into $t1
	  mul $t2, $t0, $t1	
	# _tmp43 = _tmp42 + _tmp34
	  add $t3, $t2, $t1	
	# _tmp44 = _tmp29 + _tmp43
	  lw $t4, -16($fp)	# load _tmp29 from $fp-16 into $t4
	  add $t5, $t4, $t3	
	# _tmp45 = *(_tmp44)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp46 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp47 = this + _tmp46
	  lw $s0, 4($fp)	# load this from $fp+4 into $s0
	  add $s1, $s0, $t7	
	# _tmp48 = *(_tmp47)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp49 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp50 = this + _tmp49
	  add $s4, $s0, $s3	
	# _tmp51 = *(_tmp50)
	  lw $s5, 0($s4) 	# load with offset
	# _tmp52 = 0
	  li $s6, 0		# load constant value 0 into $s6
	# _tmp53 = 4
	  li $s7, 4		# load constant value 4 into $s7
	# _tmp54 = *(_tmp48)
	  lw $t8, 0($s2) 	# load with offset
	# _tmp55 = _tmp54 == _tmp51
	  seq $t9, $t8, $s5	
	# _tmp56 = _tmp54 < _tmp51
	  slt $t0, $t8, $s5	
	# _tmp57 = _tmp56 || _tmp55
	  or $t1, $t0, $t9	
	# _tmp58 = _tmp51 < _tmp52
	  slt $t4, $s5, $s6	
	# _tmp59 = _tmp58 || _tmp57
	  or $s0, $t4, $t1	
	# IfZ _tmp59 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t0, -124($fp)	# spill _tmp56 from $t0 to $fp-124
	  sw $t1, -128($fp)	# spill _tmp57 from $t1 to $fp-128
	  sw $t2, -68($fp)	# spill _tmp42 from $t2 to $fp-68
	  sw $t3, -72($fp)	# spill _tmp43 from $t3 to $fp-72
	  sw $t4, -132($fp)	# spill _tmp58 from $t4 to $fp-132
	  sw $t5, -76($fp)	# spill _tmp44 from $t5 to $fp-76
	  sw $t6, -80($fp)	# spill _tmp45 from $t6 to $fp-80
	  sw $t7, -84($fp)	# spill _tmp46 from $t7 to $fp-84
	  sw $s0, -136($fp)	# spill _tmp59 from $s0 to $fp-136
	  sw $s1, -88($fp)	# spill _tmp47 from $s1 to $fp-88
	  sw $s2, -92($fp)	# spill _tmp48 from $s2 to $fp-92
	  sw $s3, -96($fp)	# spill _tmp49 from $s3 to $fp-96
	  sw $s4, -100($fp)	# spill _tmp50 from $s4 to $fp-100
	  sw $s5, -104($fp)	# spill _tmp51 from $s5 to $fp-104
	  sw $s6, -108($fp)	# spill _tmp52 from $s6 to $fp-108
	  sw $s7, -112($fp)	# spill _tmp53 from $s7 to $fp-112
	  sw $t8, -116($fp)	# spill _tmp54 from $t8 to $fp-116
	  sw $t9, -120($fp)	# spill _tmp55 from $t9 to $fp-120
	  beqz $s0, _L3	# branch if _tmp59 is zero 
	# _tmp60 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp60
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -140($fp)	# spill _tmp60 from $t0 to $fp-140
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L3:
	# _tmp61 = _tmp51 * _tmp53
	  lw $t0, -104($fp)	# load _tmp51 from $fp-104 into $t0
	  lw $t1, -112($fp)	# load _tmp53 from $fp-112 into $t1
	  mul $t2, $t0, $t1	
	# _tmp62 = _tmp61 + _tmp53
	  add $t3, $t2, $t1	
	# _tmp63 = _tmp48 + _tmp62
	  lw $t4, -92($fp)	# load _tmp48 from $fp-92 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp63) = i
	  lw $t6, 8($fp)	# load i from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp64 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp65 = this + _tmp64
	  lw $s0, 4($fp)	# load this from $fp+4 into $s0
	  add $s1, $s0, $t7	
	# _tmp66 = *(_tmp65)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp67 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp68 = this + _tmp67
	  add $s4, $s0, $s3	
	# _tmp69 = *(_tmp68)
	  lw $s5, 0($s4) 	# load with offset
	# _tmp70 = 1
	  li $s6, 1		# load constant value 1 into $s6
	# _tmp71 = _tmp69 + _tmp70
	  add $s7, $s5, $s6	
	# _tmp72 = 4
	  li $t8, 4		# load constant value 4 into $t8
	# _tmp73 = this + _tmp72
	  add $t9, $s0, $t8	
	# *(_tmp73) = _tmp71
	  sw $s7, 0($t9) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Stack.Pop:
	# BeginFunc 128
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 128	# decrement sp to make space for locals/temps
	# _tmp74 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp75 = this + _tmp74
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp76 = *(_tmp75)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp77 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp78 = this + _tmp77
	  add $t5, $t1, $t4	
	# _tmp79 = *(_tmp78)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp80 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp81 = _tmp79 - _tmp80
	  sub $s0, $t6, $t7	
	# _tmp82 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp83 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp84 = *(_tmp76)
	  lw $s3, 0($t3) 	# load with offset
	# _tmp85 = _tmp84 == _tmp81
	  seq $s4, $s3, $s0	
	# _tmp86 = _tmp84 < _tmp81
	  slt $s5, $s3, $s0	
	# _tmp87 = _tmp86 || _tmp85
	  or $s6, $s5, $s4	
	# _tmp88 = _tmp81 < _tmp82
	  slt $s7, $s0, $s1	
	# _tmp89 = _tmp88 || _tmp87
	  or $t8, $s7, $s6	
	# IfZ _tmp89 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp74 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp75 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp76 from $t3 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp77 from $t4 to $fp-24
	  sw $t5, -28($fp)	# spill _tmp78 from $t5 to $fp-28
	  sw $t6, -32($fp)	# spill _tmp79 from $t6 to $fp-32
	  sw $t7, -36($fp)	# spill _tmp80 from $t7 to $fp-36
	  sw $s0, -40($fp)	# spill _tmp81 from $s0 to $fp-40
	  sw $s1, -44($fp)	# spill _tmp82 from $s1 to $fp-44
	  sw $s2, -48($fp)	# spill _tmp83 from $s2 to $fp-48
	  sw $s3, -52($fp)	# spill _tmp84 from $s3 to $fp-52
	  sw $s4, -56($fp)	# spill _tmp85 from $s4 to $fp-56
	  sw $s5, -60($fp)	# spill _tmp86 from $s5 to $fp-60
	  sw $s6, -64($fp)	# spill _tmp87 from $s6 to $fp-64
	  sw $s7, -68($fp)	# spill _tmp88 from $s7 to $fp-68
	  sw $t8, -72($fp)	# spill _tmp89 from $t8 to $fp-72
	  beqz $t8, _L4	# branch if _tmp89 is zero 
	# _tmp90 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp90
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp90 from $t0 to $fp-76
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp91 = _tmp81 * _tmp83
	  lw $t0, -40($fp)	# load _tmp81 from $fp-40 into $t0
	  lw $t1, -48($fp)	# load _tmp83 from $fp-48 into $t1
	  mul $t2, $t0, $t1	
	# _tmp92 = _tmp91 + _tmp83
	  add $t3, $t2, $t1	
	# _tmp93 = _tmp76 + _tmp92
	  lw $t4, -20($fp)	# load _tmp76 from $fp-20 into $t4
	  add $t5, $t4, $t3	
	# _tmp94 = *(_tmp93)
	  lw $t6, 0($t5) 	# load with offset
	# val = _tmp94
	  move $t7, $t6		# copy value
	# _tmp95 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp96 = this + _tmp95
	  lw $s1, 4($fp)	# load this from $fp+4 into $s1
	  add $s2, $s1, $s0	
	# _tmp97 = *(_tmp96)
	  lw $s3, 0($s2) 	# load with offset
	# _tmp98 = 4
	  li $s4, 4		# load constant value 4 into $s4
	# _tmp99 = this + _tmp98
	  add $s5, $s1, $s4	
	# _tmp100 = *(_tmp99)
	  lw $s6, 0($s5) 	# load with offset
	# _tmp101 = 1
	  li $s7, 1		# load constant value 1 into $s7
	# _tmp102 = _tmp100 - _tmp101
	  sub $t8, $s6, $s7	
	# _tmp103 = 4
	  li $t9, 4		# load constant value 4 into $t9
	# _tmp104 = this + _tmp103
	  add $t0, $s1, $t9	
	# *(_tmp104) = _tmp102
	  sw $t8, 0($t0) 	# store with offset
	# Return val
	  move $v0, $t7		# assign return value into $v0
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
  f_Stack.NumElems:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp105 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp106 = this + _tmp105
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp107 = *(_tmp106)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp107
	  move $v0, $t3		# assign return value into $v0
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
  _offset_main_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp108 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp108
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
	# BeginFunc 260
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 260	# decrement sp to make space for locals/temps
	# _tmp109 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# PushParam _tmp109
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp110 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp109 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp111 = Stack
	  la $t1, Stack	# load label
	# *(_tmp110) = _tmp111
	  sw $t1, 0($t0) 	# store with offset
	# s = _tmp110
	  move $t2, $t0		# copy value
	# _tmp112 = *(s)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp113 = *(_tmp112)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp114 = ACall _tmp113
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp110 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp111 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill s from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp112 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp113 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp115 = s - _tmp114
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp116 = *(_tmp112 + 4)
	  lw $t3, -24($fp)	# load _tmp112 from $fp-24 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp115
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp116
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp114 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp115 from $t2 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp116 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	# _tmp117 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp118 = 3
	  li $t1, 3		# load constant value 3 into $t1
	# PushParam _tmp118
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp119 = *(s)
	  lw $t2, -8($fp)	# load s from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp120 = *(_tmp119)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp121 = ACall _tmp120
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp117 from $t0 to $fp-44
	  sw $t1, -48($fp)	# spill _tmp118 from $t1 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp119 from $t3 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp120 from $t4 to $fp-56
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp122 = s - _tmp121
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp123 = *(_tmp119 + 8)
	  lw $t3, -52($fp)	# load _tmp119 from $fp-52 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp122
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp123
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp121 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp122 from $t2 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp123 from $t4 to $fp-68
	  jalr $t4            	# jump to function
	# _tmp124 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp125 = 7
	  li $t1, 7		# load constant value 7 into $t1
	# PushParam _tmp125
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp126 = *(s)
	  lw $t2, -8($fp)	# load s from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp127 = *(_tmp126)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp128 = ACall _tmp127
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp124 from $t0 to $fp-72
	  sw $t1, -76($fp)	# spill _tmp125 from $t1 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp126 from $t3 to $fp-80
	  sw $t4, -84($fp)	# spill _tmp127 from $t4 to $fp-84
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp129 = s - _tmp128
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp130 = *(_tmp126 + 8)
	  lw $t3, -80($fp)	# load _tmp126 from $fp-80 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp129
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp130
	# (save modified registers before flow of control change)
	  sw $t0, -88($fp)	# spill _tmp128 from $t0 to $fp-88
	  sw $t2, -92($fp)	# spill _tmp129 from $t2 to $fp-92
	  sw $t4, -96($fp)	# spill _tmp130 from $t4 to $fp-96
	  jalr $t4            	# jump to function
	# _tmp131 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp132 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# PushParam _tmp132
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp133 = *(s)
	  lw $t2, -8($fp)	# load s from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp134 = *(_tmp133)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp135 = ACall _tmp134
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp131 from $t0 to $fp-100
	  sw $t1, -104($fp)	# spill _tmp132 from $t1 to $fp-104
	  sw $t3, -108($fp)	# spill _tmp133 from $t3 to $fp-108
	  sw $t4, -112($fp)	# spill _tmp134 from $t4 to $fp-112
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp136 = s - _tmp135
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp137 = *(_tmp133 + 8)
	  lw $t3, -108($fp)	# load _tmp133 from $fp-108 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp136
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp137
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp135 from $t0 to $fp-116
	  sw $t2, -120($fp)	# spill _tmp136 from $t2 to $fp-120
	  sw $t4, -124($fp)	# spill _tmp137 from $t4 to $fp-124
	  jalr $t4            	# jump to function
	# _tmp138 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp139 = *(s)
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp140 = *(_tmp139)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp141 = ACall _tmp140
	# (save modified registers before flow of control change)
	  sw $t0, -128($fp)	# spill _tmp138 from $t0 to $fp-128
	  sw $t2, -132($fp)	# spill _tmp139 from $t2 to $fp-132
	  sw $t3, -136($fp)	# spill _tmp140 from $t3 to $fp-136
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp142 = s - _tmp141
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp143 = *(_tmp139 + 16)
	  lw $t3, -132($fp)	# load _tmp139 from $fp-132 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp142
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp144 = ACall _tmp143
	# (save modified registers before flow of control change)
	  sw $t0, -140($fp)	# spill _tmp141 from $t0 to $fp-140
	  sw $t2, -144($fp)	# spill _tmp142 from $t2 to $fp-144
	  sw $t4, -148($fp)	# spill _tmp143 from $t4 to $fp-148
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp144
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -152($fp)	# spill _tmp144 from $t0 to $fp-152
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp145 = " "
	  .data			# create string constant marked with label
	  _string5: .asciiz " "
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp145
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp145 from $t0 to $fp-156
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp146 = *(s)
	  lw $t0, -8($fp)	# load s from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp147 = *(_tmp146)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp148 = ACall _tmp147
	# (save modified registers before flow of control change)
	  sw $t1, -160($fp)	# spill _tmp146 from $t1 to $fp-160
	  sw $t2, -164($fp)	# spill _tmp147 from $t2 to $fp-164
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp149 = s - _tmp148
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp150 = *(_tmp146 + 12)
	  lw $t3, -160($fp)	# load _tmp146 from $fp-160 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp149
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp151 = ACall _tmp150
	# (save modified registers before flow of control change)
	  sw $t0, -168($fp)	# spill _tmp148 from $t0 to $fp-168
	  sw $t2, -172($fp)	# spill _tmp149 from $t2 to $fp-172
	  sw $t4, -176($fp)	# spill _tmp150 from $t4 to $fp-176
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp151
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -180($fp)	# spill _tmp151 from $t0 to $fp-180
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp152 = " "
	  .data			# create string constant marked with label
	  _string6: .asciiz " "
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp152
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -184($fp)	# spill _tmp152 from $t0 to $fp-184
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp153 = *(s)
	  lw $t0, -8($fp)	# load s from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp154 = *(_tmp153)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp155 = ACall _tmp154
	# (save modified registers before flow of control change)
	  sw $t1, -188($fp)	# spill _tmp153 from $t1 to $fp-188
	  sw $t2, -192($fp)	# spill _tmp154 from $t2 to $fp-192
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp156 = s - _tmp155
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp157 = *(_tmp153 + 12)
	  lw $t3, -188($fp)	# load _tmp153 from $fp-188 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp156
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp158 = ACall _tmp157
	# (save modified registers before flow of control change)
	  sw $t0, -196($fp)	# spill _tmp155 from $t0 to $fp-196
	  sw $t2, -200($fp)	# spill _tmp156 from $t2 to $fp-200
	  sw $t4, -204($fp)	# spill _tmp157 from $t4 to $fp-204
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp158
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -208($fp)	# spill _tmp158 from $t0 to $fp-208
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp159 = " "
	  .data			# create string constant marked with label
	  _string7: .asciiz " "
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp159
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -212($fp)	# spill _tmp159 from $t0 to $fp-212
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp160 = *(s)
	  lw $t0, -8($fp)	# load s from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp161 = *(_tmp160)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp162 = ACall _tmp161
	# (save modified registers before flow of control change)
	  sw $t1, -216($fp)	# spill _tmp160 from $t1 to $fp-216
	  sw $t2, -220($fp)	# spill _tmp161 from $t2 to $fp-220
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp163 = s - _tmp162
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp164 = *(_tmp160 + 12)
	  lw $t3, -216($fp)	# load _tmp160 from $fp-216 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp163
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp165 = ACall _tmp164
	# (save modified registers before flow of control change)
	  sw $t0, -224($fp)	# spill _tmp162 from $t0 to $fp-224
	  sw $t2, -228($fp)	# spill _tmp163 from $t2 to $fp-228
	  sw $t4, -232($fp)	# spill _tmp164 from $t4 to $fp-232
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp165
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -236($fp)	# spill _tmp165 from $t0 to $fp-236
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp166 = " "
	  .data			# create string constant marked with label
	  _string8: .asciiz " "
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp166
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -240($fp)	# spill _tmp166 from $t0 to $fp-240
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp167 = *(s)
	  lw $t0, -8($fp)	# load s from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp168 = *(_tmp167)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp169 = ACall _tmp168
	# (save modified registers before flow of control change)
	  sw $t1, -244($fp)	# spill _tmp167 from $t1 to $fp-244
	  sw $t2, -248($fp)	# spill _tmp168 from $t2 to $fp-248
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp170 = s - _tmp169
	  lw $t1, -8($fp)	# load s from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp171 = *(_tmp167 + 16)
	  lw $t3, -244($fp)	# load _tmp167 from $fp-244 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp170
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp172 = ACall _tmp171
	# (save modified registers before flow of control change)
	  sw $t0, -252($fp)	# spill _tmp169 from $t0 to $fp-252
	  sw $t2, -256($fp)	# spill _tmp170 from $t2 to $fp-256
	  sw $t4, -260($fp)	# spill _tmp171 from $t4 to $fp-260
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp172
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -264($fp)	# spill _tmp172 from $t0 to $fp-264
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