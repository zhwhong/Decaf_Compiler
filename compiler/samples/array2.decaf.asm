	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_a_0:
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
	# VTable for class a
	  .data
	  .align 2
	  a:		# label for class a vtable
	  .word _offset_a_0
	  .word f_a.TakeArray
	  .word f_a.MakeArray
	  .text
  f_a.TakeArray:
	# BeginFunc 116
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 116	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp3 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp4 = *(x)
	  lw $t3, 8($fp)	# load x from $fp+8 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp5 = _tmp4 == _tmp1
	  seq $t5, $t4, $t0	
	# _tmp6 = _tmp4 < _tmp1
	  slt $t6, $t4, $t0	
	# _tmp7 = _tmp6 || _tmp5
	  or $t7, $t6, $t5	
	# _tmp8 = _tmp1 < _tmp2
	  slt $s0, $t0, $t1	
	# _tmp9 = _tmp8 || _tmp7
	  or $s1, $s0, $t7	
	# IfZ _tmp9 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t1, -12($fp)	# spill _tmp2 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp3 from $t2 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp4 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp5 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp6 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp7 from $t7 to $fp-32
	  sw $s0, -36($fp)	# spill _tmp8 from $s0 to $fp-36
	  sw $s1, -40($fp)	# spill _tmp9 from $s1 to $fp-40
	  beqz $s1, _L0	# branch if _tmp9 is zero 
	# _tmp10 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string1: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp10 from $t0 to $fp-44
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L0:
	# _tmp11 = _tmp1 * _tmp3
	  lw $t0, -8($fp)	# load _tmp1 from $fp-8 into $t0
	  lw $t1, -16($fp)	# load _tmp3 from $fp-16 into $t1
	  mul $t2, $t0, $t1	
	# _tmp12 = _tmp11 + _tmp3
	  add $t3, $t2, $t1	
	# _tmp13 = x + _tmp12
	  lw $t4, 8($fp)	# load x from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp14 = *(_tmp13)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -48($fp)	# spill _tmp11 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp12 from $t3 to $fp-52
	  sw $t5, -56($fp)	# spill _tmp13 from $t5 to $fp-56
	  sw $t6, -60($fp)	# spill _tmp14 from $t6 to $fp-60
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp15 = 5
	  li $t0, 5		# load constant value 5 into $t0
	# _tmp16 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp17 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp18 = *(x)
	  lw $t3, 8($fp)	# load x from $fp+8 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp19 = _tmp18 == _tmp15
	  seq $t5, $t4, $t0	
	# _tmp20 = _tmp18 < _tmp15
	  slt $t6, $t4, $t0	
	# _tmp21 = _tmp20 || _tmp19
	  or $t7, $t6, $t5	
	# _tmp22 = _tmp15 < _tmp16
	  slt $s0, $t0, $t1	
	# _tmp23 = _tmp22 || _tmp21
	  or $s1, $s0, $t7	
	# IfZ _tmp23 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp15 from $t0 to $fp-64
	  sw $t1, -68($fp)	# spill _tmp16 from $t1 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp17 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp18 from $t4 to $fp-76
	  sw $t5, -80($fp)	# spill _tmp19 from $t5 to $fp-80
	  sw $t6, -84($fp)	# spill _tmp20 from $t6 to $fp-84
	  sw $t7, -88($fp)	# spill _tmp21 from $t7 to $fp-88
	  sw $s0, -92($fp)	# spill _tmp22 from $s0 to $fp-92
	  sw $s1, -96($fp)	# spill _tmp23 from $s1 to $fp-96
	  beqz $s1, _L1	# branch if _tmp23 is zero 
	# _tmp24 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp24
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp24 from $t0 to $fp-100
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp25 = _tmp15 * _tmp17
	  lw $t0, -64($fp)	# load _tmp15 from $fp-64 into $t0
	  lw $t1, -72($fp)	# load _tmp17 from $fp-72 into $t1
	  mul $t2, $t0, $t1	
	# _tmp26 = _tmp25 + _tmp17
	  add $t3, $t2, $t1	
	# _tmp27 = x + _tmp26
	  lw $t4, 8($fp)	# load x from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp28 = *(_tmp27)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp28
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -104($fp)	# spill _tmp25 from $t2 to $fp-104
	  sw $t3, -108($fp)	# spill _tmp26 from $t3 to $fp-108
	  sw $t5, -112($fp)	# spill _tmp27 from $t5 to $fp-112
	  sw $t6, -116($fp)	# spill _tmp28 from $t6 to $fp-116
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp29 = *(x)
	  lw $t0, 8($fp)	# load x from $fp+8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -120($fp)	# spill _tmp29 from $t1 to $fp-120
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_a.MakeArray:
	# BeginFunc 144
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 144	# decrement sp to make space for locals/temps
	# _tmp30 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp31 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp32 = _tmp30 < size
	  lw $t2, 8($fp)	# load size from $fp+8 into $t2
	  slt $t3, $t0, $t2	
	# IfZ _tmp32 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp30 from $t0 to $fp-12
	  sw $t1, -16($fp)	# spill _tmp31 from $t1 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp32 from $t3 to $fp-20
	  beqz $t3, _L2	# branch if _tmp32 is zero 
	# Goto _L3
	  b _L3		# unconditional branch
  _L2:
	# _tmp33 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp33
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp33 from $t0 to $fp-24
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L3:
	# _tmp34 = size * _tmp31
	  lw $t0, 8($fp)	# load size from $fp+8 into $t0
	  lw $t1, -16($fp)	# load _tmp31 from $fp-16 into $t1
	  mul $t2, $t0, $t1	
	# _tmp35 = _tmp34 + _tmp31
	  add $t3, $t2, $t1	
	# PushParam _tmp35
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp36 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -28($fp)	# spill _tmp34 from $t2 to $fp-28
	  sw $t3, -32($fp)	# spill _tmp35 from $t3 to $fp-32
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp36) = size
	  lw $t1, 8($fp)	# load size from $fp+8 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# b = _tmp36
	  move $t2, $t0		# copy value
	# _tmp37 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp38 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp39 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp40 = *(b)
	  lw $t6, 0($t2) 	# load with offset
	# _tmp41 = _tmp40 == _tmp37
	  seq $t7, $t6, $t3	
	# _tmp42 = _tmp40 < _tmp37
	  slt $s0, $t6, $t3	
	# _tmp43 = _tmp42 || _tmp41
	  or $s1, $s0, $t7	
	# _tmp44 = _tmp37 < _tmp38
	  slt $s2, $t3, $t4	
	# _tmp45 = _tmp44 || _tmp43
	  or $s3, $s2, $s1	
	# IfZ _tmp45 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp36 from $t0 to $fp-36
	  sw $t2, -8($fp)	# spill b from $t2 to $fp-8
	  sw $t3, -40($fp)	# spill _tmp37 from $t3 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp38 from $t4 to $fp-44
	  sw $t5, -48($fp)	# spill _tmp39 from $t5 to $fp-48
	  sw $t6, -52($fp)	# spill _tmp40 from $t6 to $fp-52
	  sw $t7, -56($fp)	# spill _tmp41 from $t7 to $fp-56
	  sw $s0, -60($fp)	# spill _tmp42 from $s0 to $fp-60
	  sw $s1, -64($fp)	# spill _tmp43 from $s1 to $fp-64
	  sw $s2, -68($fp)	# spill _tmp44 from $s2 to $fp-68
	  sw $s3, -72($fp)	# spill _tmp45 from $s3 to $fp-72
	  beqz $s3, _L4	# branch if _tmp45 is zero 
	# _tmp46 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp46 from $t0 to $fp-76
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp47 = _tmp37 * _tmp39
	  lw $t0, -40($fp)	# load _tmp37 from $fp-40 into $t0
	  lw $t1, -48($fp)	# load _tmp39 from $fp-48 into $t1
	  mul $t2, $t0, $t1	
	# _tmp48 = _tmp47 + _tmp39
	  add $t3, $t2, $t1	
	# _tmp49 = b + _tmp48
	  lw $t4, -8($fp)	# load b from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp50 = *(_tmp49)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp51 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp52 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp53 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp54 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp55 = *(b)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp56 = _tmp55 == _tmp52
	  seq $s4, $s3, $s0	
	# _tmp57 = _tmp55 < _tmp52
	  slt $s5, $s3, $s0	
	# _tmp58 = _tmp57 || _tmp56
	  or $s6, $s5, $s4	
	# _tmp59 = _tmp52 < _tmp53
	  slt $s7, $s0, $s1	
	# _tmp60 = _tmp59 || _tmp58
	  or $t8, $s7, $s6	
	# IfZ _tmp60 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t2, -80($fp)	# spill _tmp47 from $t2 to $fp-80
	  sw $t3, -84($fp)	# spill _tmp48 from $t3 to $fp-84
	  sw $t5, -88($fp)	# spill _tmp49 from $t5 to $fp-88
	  sw $t6, -92($fp)	# spill _tmp50 from $t6 to $fp-92
	  sw $t7, -96($fp)	# spill _tmp51 from $t7 to $fp-96
	  sw $s0, -100($fp)	# spill _tmp52 from $s0 to $fp-100
	  sw $s1, -104($fp)	# spill _tmp53 from $s1 to $fp-104
	  sw $s2, -108($fp)	# spill _tmp54 from $s2 to $fp-108
	  sw $s3, -112($fp)	# spill _tmp55 from $s3 to $fp-112
	  sw $s4, -116($fp)	# spill _tmp56 from $s4 to $fp-116
	  sw $s5, -120($fp)	# spill _tmp57 from $s5 to $fp-120
	  sw $s6, -124($fp)	# spill _tmp58 from $s6 to $fp-124
	  sw $s7, -128($fp)	# spill _tmp59 from $s7 to $fp-128
	  sw $t8, -132($fp)	# spill _tmp60 from $t8 to $fp-132
	  beqz $t8, _L5	# branch if _tmp60 is zero 
	# _tmp61 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp61
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp61 from $t0 to $fp-136
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp62 = _tmp52 * _tmp54
	  lw $t0, -100($fp)	# load _tmp52 from $fp-100 into $t0
	  lw $t1, -108($fp)	# load _tmp54 from $fp-108 into $t1
	  mul $t2, $t0, $t1	
	# _tmp63 = _tmp62 + _tmp54
	  add $t3, $t2, $t1	
	# _tmp64 = b + _tmp63
	  lw $t4, -8($fp)	# load b from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp64) = _tmp51
	  lw $t6, -96($fp)	# load _tmp51 from $fp-96 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# Return b
	  move $v0, $t4		# assign return value into $v0
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
	# _tmp65 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp65
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
	# BeginFunc 424
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 424	# decrement sp to make space for locals/temps
	# _tmp66 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp66
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp67 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp66 from $t0 to $fp-20
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp68 = a
	  la $t1, a	# load label
	# *(_tmp67) = _tmp68
	  sw $t1, 0($t0) 	# store with offset
	# e = _tmp67
	  move $t2, $t0		# copy value
	# _tmp69 = 10
	  li $t3, 10		# load constant value 10 into $t3
	# _tmp70 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp71 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp72 = _tmp70 < _tmp69
	  slt $t6, $t4, $t3	
	# IfZ _tmp72 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp67 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp68 from $t1 to $fp-28
	  sw $t2, -16($fp)	# spill e from $t2 to $fp-16
	  sw $t3, -32($fp)	# spill _tmp69 from $t3 to $fp-32
	  sw $t4, -36($fp)	# spill _tmp70 from $t4 to $fp-36
	  sw $t5, -40($fp)	# spill _tmp71 from $t5 to $fp-40
	  sw $t6, -44($fp)	# spill _tmp72 from $t6 to $fp-44
	  beqz $t6, _L6	# branch if _tmp72 is zero 
	# Goto _L7
	  b _L7		# unconditional branch
  _L6:
	# _tmp73 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp73
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp73 from $t0 to $fp-48
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L7:
	# _tmp74 = _tmp69 * _tmp71
	  lw $t0, -32($fp)	# load _tmp69 from $fp-32 into $t0
	  lw $t1, -40($fp)	# load _tmp71 from $fp-40 into $t1
	  mul $t2, $t0, $t1	
	# _tmp75 = _tmp74 + _tmp71
	  add $t3, $t2, $t1	
	# PushParam _tmp75
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp76 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -52($fp)	# spill _tmp74 from $t2 to $fp-52
	  sw $t3, -56($fp)	# spill _tmp75 from $t3 to $fp-56
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp76) = _tmp69
	  lw $t1, -32($fp)	# load _tmp69 from $fp-32 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# y = _tmp76
	  move $t2, $t0		# copy value
	# _tmp77 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp78 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp79 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp80 = *(y)
	  lw $t6, 0($t2) 	# load with offset
	# _tmp81 = _tmp80 == _tmp77
	  seq $t7, $t6, $t3	
	# _tmp82 = _tmp80 < _tmp77
	  slt $s0, $t6, $t3	
	# _tmp83 = _tmp82 || _tmp81
	  or $s1, $s0, $t7	
	# _tmp84 = _tmp77 < _tmp78
	  slt $s2, $t3, $t4	
	# _tmp85 = _tmp84 || _tmp83
	  or $s3, $s2, $s1	
	# IfZ _tmp85 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp76 from $t0 to $fp-60
	  sw $t2, -8($fp)	# spill y from $t2 to $fp-8
	  sw $t3, -64($fp)	# spill _tmp77 from $t3 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp78 from $t4 to $fp-68
	  sw $t5, -72($fp)	# spill _tmp79 from $t5 to $fp-72
	  sw $t6, -76($fp)	# spill _tmp80 from $t6 to $fp-76
	  sw $t7, -80($fp)	# spill _tmp81 from $t7 to $fp-80
	  sw $s0, -84($fp)	# spill _tmp82 from $s0 to $fp-84
	  sw $s1, -88($fp)	# spill _tmp83 from $s1 to $fp-88
	  sw $s2, -92($fp)	# spill _tmp84 from $s2 to $fp-92
	  sw $s3, -96($fp)	# spill _tmp85 from $s3 to $fp-96
	  beqz $s3, _L8	# branch if _tmp85 is zero 
	# _tmp86 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp86
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp86 from $t0 to $fp-100
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L8:
	# _tmp87 = _tmp77 * _tmp79
	  lw $t0, -64($fp)	# load _tmp77 from $fp-64 into $t0
	  lw $t1, -72($fp)	# load _tmp79 from $fp-72 into $t1
	  mul $t2, $t0, $t1	
	# _tmp88 = _tmp87 + _tmp79
	  add $t3, $t2, $t1	
	# _tmp89 = y + _tmp88
	  lw $t4, -8($fp)	# load y from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp90 = *(_tmp89)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp91 = 3
	  li $t7, 3		# load constant value 3 into $t7
	# _tmp92 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp93 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp94 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp95 = *(y)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp96 = _tmp95 == _tmp92
	  seq $s4, $s3, $s0	
	# _tmp97 = _tmp95 < _tmp92
	  slt $s5, $s3, $s0	
	# _tmp98 = _tmp97 || _tmp96
	  or $s6, $s5, $s4	
	# _tmp99 = _tmp92 < _tmp93
	  slt $s7, $s0, $s1	
	# _tmp100 = _tmp99 || _tmp98
	  or $t8, $s7, $s6	
	# IfZ _tmp100 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t2, -104($fp)	# spill _tmp87 from $t2 to $fp-104
	  sw $t3, -108($fp)	# spill _tmp88 from $t3 to $fp-108
	  sw $t5, -112($fp)	# spill _tmp89 from $t5 to $fp-112
	  sw $t6, -116($fp)	# spill _tmp90 from $t6 to $fp-116
	  sw $t7, -120($fp)	# spill _tmp91 from $t7 to $fp-120
	  sw $s0, -124($fp)	# spill _tmp92 from $s0 to $fp-124
	  sw $s1, -128($fp)	# spill _tmp93 from $s1 to $fp-128
	  sw $s2, -132($fp)	# spill _tmp94 from $s2 to $fp-132
	  sw $s3, -136($fp)	# spill _tmp95 from $s3 to $fp-136
	  sw $s4, -140($fp)	# spill _tmp96 from $s4 to $fp-140
	  sw $s5, -144($fp)	# spill _tmp97 from $s5 to $fp-144
	  sw $s6, -148($fp)	# spill _tmp98 from $s6 to $fp-148
	  sw $s7, -152($fp)	# spill _tmp99 from $s7 to $fp-152
	  sw $t8, -156($fp)	# spill _tmp100 from $t8 to $fp-156
	  beqz $t8, _L9	# branch if _tmp100 is zero 
	# _tmp101 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string8: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp101
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp101 from $t0 to $fp-160
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L9:
	# _tmp102 = _tmp92 * _tmp94
	  lw $t0, -124($fp)	# load _tmp92 from $fp-124 into $t0
	  lw $t1, -132($fp)	# load _tmp94 from $fp-132 into $t1
	  mul $t2, $t0, $t1	
	# _tmp103 = _tmp102 + _tmp94
	  add $t3, $t2, $t1	
	# _tmp104 = y + _tmp103
	  lw $t4, -8($fp)	# load y from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp104) = _tmp91
	  lw $t6, -120($fp)	# load _tmp91 from $fp-120 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp105 = 5
	  li $t7, 5		# load constant value 5 into $t7
	# _tmp106 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp107 = 4
	  li $s1, 4		# load constant value 4 into $s1
	# _tmp108 = *(y)
	  lw $s2, 0($t4) 	# load with offset
	# _tmp109 = _tmp108 == _tmp105
	  seq $s3, $s2, $t7	
	# _tmp110 = _tmp108 < _tmp105
	  slt $s4, $s2, $t7	
	# _tmp111 = _tmp110 || _tmp109
	  or $s5, $s4, $s3	
	# _tmp112 = _tmp105 < _tmp106
	  slt $s6, $t7, $s0	
	# _tmp113 = _tmp112 || _tmp111
	  or $s7, $s6, $s5	
	# IfZ _tmp113 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t2, -164($fp)	# spill _tmp102 from $t2 to $fp-164
	  sw $t3, -168($fp)	# spill _tmp103 from $t3 to $fp-168
	  sw $t5, -172($fp)	# spill _tmp104 from $t5 to $fp-172
	  sw $t7, -176($fp)	# spill _tmp105 from $t7 to $fp-176
	  sw $s0, -180($fp)	# spill _tmp106 from $s0 to $fp-180
	  sw $s1, -184($fp)	# spill _tmp107 from $s1 to $fp-184
	  sw $s2, -188($fp)	# spill _tmp108 from $s2 to $fp-188
	  sw $s3, -192($fp)	# spill _tmp109 from $s3 to $fp-192
	  sw $s4, -196($fp)	# spill _tmp110 from $s4 to $fp-196
	  sw $s5, -200($fp)	# spill _tmp111 from $s5 to $fp-200
	  sw $s6, -204($fp)	# spill _tmp112 from $s6 to $fp-204
	  sw $s7, -208($fp)	# spill _tmp113 from $s7 to $fp-208
	  beqz $s7, _L10	# branch if _tmp113 is zero 
	# _tmp114 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string9: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp114
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -212($fp)	# spill _tmp114 from $t0 to $fp-212
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L10:
	# _tmp115 = _tmp105 * _tmp107
	  lw $t0, -176($fp)	# load _tmp105 from $fp-176 into $t0
	  lw $t1, -184($fp)	# load _tmp107 from $fp-184 into $t1
	  mul $t2, $t0, $t1	
	# _tmp116 = _tmp115 + _tmp107
	  add $t3, $t2, $t1	
	# _tmp117 = y + _tmp116
	  lw $t4, -8($fp)	# load y from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp118 = *(_tmp117)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp119 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp120 = 5
	  li $s0, 5		# load constant value 5 into $s0
	# _tmp121 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp122 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp123 = *(y)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp124 = _tmp123 == _tmp120
	  seq $s4, $s3, $s0	
	# _tmp125 = _tmp123 < _tmp120
	  slt $s5, $s3, $s0	
	# _tmp126 = _tmp125 || _tmp124
	  or $s6, $s5, $s4	
	# _tmp127 = _tmp120 < _tmp121
	  slt $s7, $s0, $s1	
	# _tmp128 = _tmp127 || _tmp126
	  or $t8, $s7, $s6	
	# IfZ _tmp128 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t2, -216($fp)	# spill _tmp115 from $t2 to $fp-216
	  sw $t3, -220($fp)	# spill _tmp116 from $t3 to $fp-220
	  sw $t5, -224($fp)	# spill _tmp117 from $t5 to $fp-224
	  sw $t6, -228($fp)	# spill _tmp118 from $t6 to $fp-228
	  sw $t7, -232($fp)	# spill _tmp119 from $t7 to $fp-232
	  sw $s0, -236($fp)	# spill _tmp120 from $s0 to $fp-236
	  sw $s1, -240($fp)	# spill _tmp121 from $s1 to $fp-240
	  sw $s2, -244($fp)	# spill _tmp122 from $s2 to $fp-244
	  sw $s3, -248($fp)	# spill _tmp123 from $s3 to $fp-248
	  sw $s4, -252($fp)	# spill _tmp124 from $s4 to $fp-252
	  sw $s5, -256($fp)	# spill _tmp125 from $s5 to $fp-256
	  sw $s6, -260($fp)	# spill _tmp126 from $s6 to $fp-260
	  sw $s7, -264($fp)	# spill _tmp127 from $s7 to $fp-264
	  sw $t8, -268($fp)	# spill _tmp128 from $t8 to $fp-268
	  beqz $t8, _L11	# branch if _tmp128 is zero 
	# _tmp129 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp129
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -272($fp)	# spill _tmp129 from $t0 to $fp-272
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L11:
	# _tmp130 = _tmp120 * _tmp122
	  lw $t0, -236($fp)	# load _tmp120 from $fp-236 into $t0
	  lw $t1, -244($fp)	# load _tmp122 from $fp-244 into $t1
	  mul $t2, $t0, $t1	
	# _tmp131 = _tmp130 + _tmp122
	  add $t3, $t2, $t1	
	# _tmp132 = y + _tmp131
	  lw $t4, -8($fp)	# load y from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp132) = _tmp119
	  lw $t6, -232($fp)	# load _tmp119 from $fp-232 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# PushParam y
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp133 = *(e)
	  lw $t7, -16($fp)	# load e from $fp-16 into $t7
	  lw $s0, 0($t7) 	# load with offset
	# _tmp134 = *(_tmp133)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp135 = ACall _tmp134
	# (save modified registers before flow of control change)
	  sw $t2, -276($fp)	# spill _tmp130 from $t2 to $fp-276
	  sw $t3, -280($fp)	# spill _tmp131 from $t3 to $fp-280
	  sw $t5, -284($fp)	# spill _tmp132 from $t5 to $fp-284
	  sw $s0, -288($fp)	# spill _tmp133 from $s0 to $fp-288
	  sw $s1, -292($fp)	# spill _tmp134 from $s1 to $fp-292
	  jalr $s1            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp136 = e - _tmp135
	  lw $t1, -16($fp)	# load e from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp137 = *(_tmp133 + 4)
	  lw $t3, -288($fp)	# load _tmp133 from $fp-288 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp136
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp137
	# (save modified registers before flow of control change)
	  sw $t0, -296($fp)	# spill _tmp135 from $t0 to $fp-296
	  sw $t2, -300($fp)	# spill _tmp136 from $t2 to $fp-300
	  sw $t4, -304($fp)	# spill _tmp137 from $t4 to $fp-304
	  jalr $t4            	# jump to function
	# _tmp138 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp139 = 10
	  li $t1, 10		# load constant value 10 into $t1
	# PushParam _tmp139
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp140 = *(e)
	  lw $t2, -16($fp)	# load e from $fp-16 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp141 = *(_tmp140)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp142 = ACall _tmp141
	# (save modified registers before flow of control change)
	  sw $t0, -308($fp)	# spill _tmp138 from $t0 to $fp-308
	  sw $t1, -312($fp)	# spill _tmp139 from $t1 to $fp-312
	  sw $t3, -316($fp)	# spill _tmp140 from $t3 to $fp-316
	  sw $t4, -320($fp)	# spill _tmp141 from $t4 to $fp-320
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp143 = e - _tmp142
	  lw $t1, -16($fp)	# load e from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp144 = *(_tmp140 + 8)
	  lw $t3, -316($fp)	# load _tmp140 from $fp-316 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp143
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp145 = ACall _tmp144
	# (save modified registers before flow of control change)
	  sw $t0, -324($fp)	# spill _tmp142 from $t0 to $fp-324
	  sw $t2, -328($fp)	# spill _tmp143 from $t2 to $fp-328
	  sw $t4, -332($fp)	# spill _tmp144 from $t4 to $fp-332
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# b = _tmp145
	  move $t1, $t0		# copy value
	# _tmp146 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp147 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp148 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp149 = *(b)
	  lw $t5, 0($t1) 	# load with offset
	# _tmp150 = _tmp149 == _tmp146
	  seq $t6, $t5, $t2	
	# _tmp151 = _tmp149 < _tmp146
	  slt $t7, $t5, $t2	
	# _tmp152 = _tmp151 || _tmp150
	  or $s0, $t7, $t6	
	# _tmp153 = _tmp146 < _tmp147
	  slt $s1, $t2, $t3	
	# _tmp154 = _tmp153 || _tmp152
	  or $s2, $s1, $s0	
	# IfZ _tmp154 Goto _L12
	# (save modified registers before flow of control change)
	  sw $t0, -336($fp)	# spill _tmp145 from $t0 to $fp-336
	  sw $t1, -12($fp)	# spill b from $t1 to $fp-12
	  sw $t2, -340($fp)	# spill _tmp146 from $t2 to $fp-340
	  sw $t3, -344($fp)	# spill _tmp147 from $t3 to $fp-344
	  sw $t4, -348($fp)	# spill _tmp148 from $t4 to $fp-348
	  sw $t5, -352($fp)	# spill _tmp149 from $t5 to $fp-352
	  sw $t6, -356($fp)	# spill _tmp150 from $t6 to $fp-356
	  sw $t7, -360($fp)	# spill _tmp151 from $t7 to $fp-360
	  sw $s0, -364($fp)	# spill _tmp152 from $s0 to $fp-364
	  sw $s1, -368($fp)	# spill _tmp153 from $s1 to $fp-368
	  sw $s2, -372($fp)	# spill _tmp154 from $s2 to $fp-372
	  beqz $s2, _L12	# branch if _tmp154 is zero 
	# _tmp155 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp155
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -376($fp)	# spill _tmp155 from $t0 to $fp-376
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L12:
	# _tmp156 = _tmp146 * _tmp148
	  lw $t0, -340($fp)	# load _tmp146 from $fp-340 into $t0
	  lw $t1, -348($fp)	# load _tmp148 from $fp-348 into $t1
	  mul $t2, $t0, $t1	
	# _tmp157 = _tmp156 + _tmp148
	  add $t3, $t2, $t1	
	# _tmp158 = b + _tmp157
	  lw $t4, -12($fp)	# load b from $fp-12 into $t4
	  add $t5, $t4, $t3	
	# _tmp159 = *(_tmp158)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp159
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -380($fp)	# spill _tmp156 from $t2 to $fp-380
	  sw $t3, -384($fp)	# spill _tmp157 from $t3 to $fp-384
	  sw $t5, -388($fp)	# spill _tmp158 from $t5 to $fp-388
	  sw $t6, -392($fp)	# spill _tmp159 from $t6 to $fp-392
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp160 = *(b)
	  lw $t0, -12($fp)	# load b from $fp-12 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp160
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -396($fp)	# spill _tmp160 from $t1 to $fp-396
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp161 = 5
	  li $t0, 5		# load constant value 5 into $t0
	# PushParam _tmp161
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp162 = *(e)
	  lw $t1, -16($fp)	# load e from $fp-16 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp163 = *(_tmp162)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp164 = ACall _tmp163
	# (save modified registers before flow of control change)
	  sw $t0, -400($fp)	# spill _tmp161 from $t0 to $fp-400
	  sw $t2, -404($fp)	# spill _tmp162 from $t2 to $fp-404
	  sw $t3, -408($fp)	# spill _tmp163 from $t3 to $fp-408
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp165 = e - _tmp164
	  lw $t1, -16($fp)	# load e from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp166 = *(_tmp162 + 8)
	  lw $t3, -404($fp)	# load _tmp162 from $fp-404 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp165
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp167 = ACall _tmp166
	# (save modified registers before flow of control change)
	  sw $t0, -412($fp)	# spill _tmp164 from $t0 to $fp-412
	  sw $t2, -416($fp)	# spill _tmp165 from $t2 to $fp-416
	  sw $t4, -420($fp)	# spill _tmp166 from $t4 to $fp-420
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp168 = *(_tmp167)
	  lw $t1, 0($t0) 	# load with offset
	# PushParam _tmp168
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -424($fp)	# spill _tmp167 from $t0 to $fp-424
	  sw $t1, -428($fp)	# spill _tmp168 from $t1 to $fp-428
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