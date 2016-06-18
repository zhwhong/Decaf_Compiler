	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_myArray_0:
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
	# VTable for class myArray
	  .data
	  .align 2
	  myArray:		# label for class myArray vtable
	  .word _offset_myArray_0
	  .word f_myArray.ReadArray
	  .word f_myArray.Sort
	  .word f_myArray.PrintArray
	  .text
  f_myArray.ReadArray:
	# BeginFunc 180
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 180	# decrement sp to make space for locals/temps
	# _tmp1 = "How many scores? "
	  .data			# create string constant marked with label
	  _string1: .asciiz "How many scores? "
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp1 from $t0 to $fp-24
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp2 = LCall _ReadInteger
	  jal _ReadInteger   	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# numScores = _tmp2
	  move $t1, $t0		# copy value
	# _tmp3 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp4 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp5 = _tmp3 < numScores
	  slt $t4, $t2, $t1	
	# IfZ _tmp5 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp2 from $t0 to $fp-28
	  sw $t1, -20($fp)	# spill numScores from $t1 to $fp-20
	  sw $t2, -32($fp)	# spill _tmp3 from $t2 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp4 from $t3 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp5 from $t4 to $fp-40
	  beqz $t4, _L0	# branch if _tmp5 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp6 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp6 from $t0 to $fp-44
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp7 = numScores * _tmp4
	  lw $t0, -20($fp)	# load numScores from $fp-20 into $t0
	  lw $t1, -36($fp)	# load _tmp4 from $fp-36 into $t1
	  mul $t2, $t0, $t1	
	# _tmp8 = _tmp7 + _tmp4
	  add $t3, $t2, $t1	
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp9 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -48($fp)	# spill _tmp7 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp8 from $t3 to $fp-52
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp9) = numScores
	  lw $t1, -20($fp)	# load numScores from $fp-20 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# arr = _tmp9
	  move $t2, $t0		# copy value
	# _tmp10 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# i = _tmp10
	  move $t4, $t3		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp9 from $t0 to $fp-56
	  sw $t2, -16($fp)	# spill arr from $t2 to $fp-16
	  sw $t3, -60($fp)	# spill _tmp10 from $t3 to $fp-60
	  sw $t4, -8($fp)	# spill i from $t4 to $fp-8
  _L2:
	# _tmp11 = *(arr)
	  lw $t0, -16($fp)	# load arr from $fp-16 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp12 = i < _tmp11
	  lw $t2, -8($fp)	# load i from $fp-8 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp12 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t1, -64($fp)	# spill _tmp11 from $t1 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp12 from $t3 to $fp-68
	  beqz $t3, _L3	# branch if _tmp12 is zero 
	# _tmp13 = "Enter next number: "
	  .data			# create string constant marked with label
	  _string3: .asciiz "Enter next number: "
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp13 from $t0 to $fp-72
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp14 = LCall _ReadInteger
	  jal _ReadInteger   	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# num = _tmp14
	  move $t1, $t0		# copy value
	# _tmp15 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp16 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp17 = *(arr)
	  lw $t4, -16($fp)	# load arr from $fp-16 into $t4
	  lw $t5, 0($t4) 	# load with offset
	# _tmp18 = _tmp17 == i
	  lw $t6, -8($fp)	# load i from $fp-8 into $t6
	  seq $t7, $t5, $t6	
	# _tmp19 = _tmp17 < i
	  slt $s0, $t5, $t6	
	# _tmp20 = _tmp19 || _tmp18
	  or $s1, $s0, $t7	
	# _tmp21 = i < _tmp15
	  slt $s2, $t6, $t2	
	# _tmp22 = _tmp21 || _tmp20
	  or $s3, $s2, $s1	
	# IfZ _tmp22 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp14 from $t0 to $fp-76
	  sw $t1, -12($fp)	# spill num from $t1 to $fp-12
	  sw $t2, -80($fp)	# spill _tmp15 from $t2 to $fp-80
	  sw $t3, -84($fp)	# spill _tmp16 from $t3 to $fp-84
	  sw $t5, -88($fp)	# spill _tmp17 from $t5 to $fp-88
	  sw $t7, -92($fp)	# spill _tmp18 from $t7 to $fp-92
	  sw $s0, -96($fp)	# spill _tmp19 from $s0 to $fp-96
	  sw $s1, -100($fp)	# spill _tmp20 from $s1 to $fp-100
	  sw $s2, -104($fp)	# spill _tmp21 from $s2 to $fp-104
	  sw $s3, -108($fp)	# spill _tmp22 from $s3 to $fp-108
	  beqz $s3, _L4	# branch if _tmp22 is zero 
	# _tmp23 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -112($fp)	# spill _tmp23 from $t0 to $fp-112
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp24 = i * _tmp16
	  lw $t0, -8($fp)	# load i from $fp-8 into $t0
	  lw $t1, -84($fp)	# load _tmp16 from $fp-84 into $t1
	  mul $t2, $t0, $t1	
	# _tmp25 = _tmp24 + _tmp16
	  add $t3, $t2, $t1	
	# _tmp26 = arr + _tmp25
	  lw $t4, -16($fp)	# load arr from $fp-16 into $t4
	  add $t5, $t4, $t3	
	# _tmp27 = *(_tmp26)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp28 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp29 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp30 = *(arr)
	  lw $s1, 0($t4) 	# load with offset
	# _tmp31 = _tmp30 == i
	  seq $s2, $s1, $t0	
	# _tmp32 = _tmp30 < i
	  slt $s3, $s1, $t0	
	# _tmp33 = _tmp32 || _tmp31
	  or $s4, $s3, $s2	
	# _tmp34 = i < _tmp28
	  slt $s5, $t0, $t7	
	# _tmp35 = _tmp34 || _tmp33
	  or $s6, $s5, $s4	
	# IfZ _tmp35 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t2, -116($fp)	# spill _tmp24 from $t2 to $fp-116
	  sw $t3, -120($fp)	# spill _tmp25 from $t3 to $fp-120
	  sw $t5, -124($fp)	# spill _tmp26 from $t5 to $fp-124
	  sw $t6, -128($fp)	# spill _tmp27 from $t6 to $fp-128
	  sw $t7, -132($fp)	# spill _tmp28 from $t7 to $fp-132
	  sw $s0, -136($fp)	# spill _tmp29 from $s0 to $fp-136
	  sw $s1, -140($fp)	# spill _tmp30 from $s1 to $fp-140
	  sw $s2, -144($fp)	# spill _tmp31 from $s2 to $fp-144
	  sw $s3, -148($fp)	# spill _tmp32 from $s3 to $fp-148
	  sw $s4, -152($fp)	# spill _tmp33 from $s4 to $fp-152
	  sw $s5, -156($fp)	# spill _tmp34 from $s5 to $fp-156
	  sw $s6, -160($fp)	# spill _tmp35 from $s6 to $fp-160
	  beqz $s6, _L5	# branch if _tmp35 is zero 
	# _tmp36 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp36
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -164($fp)	# spill _tmp36 from $t0 to $fp-164
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp37 = i * _tmp29
	  lw $t0, -8($fp)	# load i from $fp-8 into $t0
	  lw $t1, -136($fp)	# load _tmp29 from $fp-136 into $t1
	  mul $t2, $t0, $t1	
	# _tmp38 = _tmp37 + _tmp29
	  add $t3, $t2, $t1	
	# _tmp39 = arr + _tmp38
	  lw $t4, -16($fp)	# load arr from $fp-16 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp39) = num
	  lw $t6, -12($fp)	# load num from $fp-12 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp40 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp41 = i + _tmp40
	  add $s0, $t0, $t7	
	# i = _tmp41
	  move $t0, $s0		# copy value
	# Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill i from $t0 to $fp-8
	  sw $t2, -168($fp)	# spill _tmp37 from $t2 to $fp-168
	  sw $t3, -172($fp)	# spill _tmp38 from $t3 to $fp-172
	  sw $t5, -176($fp)	# spill _tmp39 from $t5 to $fp-176
	  sw $t7, -180($fp)	# spill _tmp40 from $t7 to $fp-180
	  sw $s0, -184($fp)	# spill _tmp41 from $s0 to $fp-184
	  b _L2		# unconditional branch
  _L3:
	# Return arr
	  lw $t0, -16($fp)	# load arr from $fp-16 into $t0
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
  f_myArray.Sort:
	# BeginFunc 464
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 464	# decrement sp to make space for locals/temps
	# _tmp42 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# i = _tmp42
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp42 from $t0 to $fp-20
	  sw $t1, -8($fp)	# spill i from $t1 to $fp-8
  _L6:
	# _tmp43 = *(arr)
	  lw $t0, 8($fp)	# load arr from $fp+8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp44 = i < _tmp43
	  lw $t2, -8($fp)	# load i from $fp-8 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp44 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t1, -24($fp)	# spill _tmp43 from $t1 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp44 from $t3 to $fp-28
	  beqz $t3, _L7	# branch if _tmp44 is zero 
	# _tmp45 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp46 = i - _tmp45
	  lw $t1, -8($fp)	# load i from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# j = _tmp46
	  move $t3, $t2		# copy value
	# _tmp47 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp48 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp49 = *(arr)
	  lw $t6, 8($fp)	# load arr from $fp+8 into $t6
	  lw $t7, 0($t6) 	# load with offset
	# _tmp50 = _tmp49 == i
	  seq $s0, $t7, $t1	
	# _tmp51 = _tmp49 < i
	  slt $s1, $t7, $t1	
	# _tmp52 = _tmp51 || _tmp50
	  or $s2, $s1, $s0	
	# _tmp53 = i < _tmp47
	  slt $s3, $t1, $t4	
	# _tmp54 = _tmp53 || _tmp52
	  or $s4, $s3, $s2	
	# IfZ _tmp54 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp45 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp46 from $t2 to $fp-36
	  sw $t3, -12($fp)	# spill j from $t3 to $fp-12
	  sw $t4, -40($fp)	# spill _tmp47 from $t4 to $fp-40
	  sw $t5, -44($fp)	# spill _tmp48 from $t5 to $fp-44
	  sw $t7, -48($fp)	# spill _tmp49 from $t7 to $fp-48
	  sw $s0, -52($fp)	# spill _tmp50 from $s0 to $fp-52
	  sw $s1, -56($fp)	# spill _tmp51 from $s1 to $fp-56
	  sw $s2, -60($fp)	# spill _tmp52 from $s2 to $fp-60
	  sw $s3, -64($fp)	# spill _tmp53 from $s3 to $fp-64
	  sw $s4, -68($fp)	# spill _tmp54 from $s4 to $fp-68
	  beqz $s4, _L8	# branch if _tmp54 is zero 
	# _tmp55 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp55
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp55 from $t0 to $fp-72
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L8:
	# _tmp56 = i * _tmp48
	  lw $t0, -8($fp)	# load i from $fp-8 into $t0
	  lw $t1, -44($fp)	# load _tmp48 from $fp-44 into $t1
	  mul $t2, $t0, $t1	
	# _tmp57 = _tmp56 + _tmp48
	  add $t3, $t2, $t1	
	# _tmp58 = arr + _tmp57
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp59 = *(_tmp58)
	  lw $t6, 0($t5) 	# load with offset
	# val = _tmp59
	  move $t7, $t6		# copy value
	# (save modified registers before flow of control change)
	  sw $t2, -76($fp)	# spill _tmp56 from $t2 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp57 from $t3 to $fp-80
	  sw $t5, -84($fp)	# spill _tmp58 from $t5 to $fp-84
	  sw $t6, -88($fp)	# spill _tmp59 from $t6 to $fp-88
	  sw $t7, -16($fp)	# spill val from $t7 to $fp-16
  _L9:
	# _tmp60 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp61 = j == _tmp60
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  seq $t2, $t1, $t0	
	# _tmp62 = _tmp60 < j
	  slt $t3, $t0, $t1	
	# _tmp63 = _tmp62 || _tmp61
	  or $t4, $t3, $t2	
	# IfZ _tmp63 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp60 from $t0 to $fp-92
	  sw $t2, -96($fp)	# spill _tmp61 from $t2 to $fp-96
	  sw $t3, -100($fp)	# spill _tmp62 from $t3 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp63 from $t4 to $fp-104
	  beqz $t4, _L10	# branch if _tmp63 is zero 
	# _tmp64 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp65 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp66 = *(arr)
	  lw $t2, 8($fp)	# load arr from $fp+8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp67 = _tmp66 == j
	  lw $t4, -12($fp)	# load j from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp68 = _tmp66 < j
	  slt $t6, $t3, $t4	
	# _tmp69 = _tmp68 || _tmp67
	  or $t7, $t6, $t5	
	# _tmp70 = j < _tmp64
	  slt $s0, $t4, $t0	
	# _tmp71 = _tmp70 || _tmp69
	  or $s1, $s0, $t7	
	# IfZ _tmp71 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp64 from $t0 to $fp-108
	  sw $t1, -112($fp)	# spill _tmp65 from $t1 to $fp-112
	  sw $t3, -116($fp)	# spill _tmp66 from $t3 to $fp-116
	  sw $t5, -120($fp)	# spill _tmp67 from $t5 to $fp-120
	  sw $t6, -124($fp)	# spill _tmp68 from $t6 to $fp-124
	  sw $t7, -128($fp)	# spill _tmp69 from $t7 to $fp-128
	  sw $s0, -132($fp)	# spill _tmp70 from $s0 to $fp-132
	  sw $s1, -136($fp)	# spill _tmp71 from $s1 to $fp-136
	  beqz $s1, _L11	# branch if _tmp71 is zero 
	# _tmp72 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp72
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -140($fp)	# spill _tmp72 from $t0 to $fp-140
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L11:
	# _tmp73 = j * _tmp65
	  lw $t0, -12($fp)	# load j from $fp-12 into $t0
	  lw $t1, -112($fp)	# load _tmp65 from $fp-112 into $t1
	  mul $t2, $t0, $t1	
	# _tmp74 = _tmp73 + _tmp65
	  add $t3, $t2, $t1	
	# _tmp75 = arr + _tmp74
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp76 = *(_tmp75)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp77 = val == _tmp76
	  lw $t7, -16($fp)	# load val from $fp-16 into $t7
	  seq $s0, $t7, $t6	
	# _tmp78 = _tmp76 < val
	  slt $s1, $t6, $t7	
	# _tmp79 = _tmp78 || _tmp77
	  or $s2, $s1, $s0	
	# IfZ _tmp79 Goto _L12
	# (save modified registers before flow of control change)
	  sw $t2, -144($fp)	# spill _tmp73 from $t2 to $fp-144
	  sw $t3, -148($fp)	# spill _tmp74 from $t3 to $fp-148
	  sw $t5, -152($fp)	# spill _tmp75 from $t5 to $fp-152
	  sw $t6, -156($fp)	# spill _tmp76 from $t6 to $fp-156
	  sw $s0, -160($fp)	# spill _tmp77 from $s0 to $fp-160
	  sw $s1, -164($fp)	# spill _tmp78 from $s1 to $fp-164
	  sw $s2, -168($fp)	# spill _tmp79 from $s2 to $fp-168
	  beqz $s2, _L12	# branch if _tmp79 is zero 
	# Goto _L10
	  b _L10		# unconditional branch
  _L12:
	# _tmp80 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp81 = j + _tmp80
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp82 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp83 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp84 = *(arr)
	  lw $t5, 8($fp)	# load arr from $fp+8 into $t5
	  lw $t6, 0($t5) 	# load with offset
	# _tmp85 = _tmp84 == _tmp81
	  seq $t7, $t6, $t2	
	# _tmp86 = _tmp84 < _tmp81
	  slt $s0, $t6, $t2	
	# _tmp87 = _tmp86 || _tmp85
	  or $s1, $s0, $t7	
	# _tmp88 = _tmp81 < _tmp82
	  slt $s2, $t2, $t3	
	# _tmp89 = _tmp88 || _tmp87
	  or $s3, $s2, $s1	
	# IfZ _tmp89 Goto _L13
	# (save modified registers before flow of control change)
	  sw $t0, -172($fp)	# spill _tmp80 from $t0 to $fp-172
	  sw $t2, -176($fp)	# spill _tmp81 from $t2 to $fp-176
	  sw $t3, -180($fp)	# spill _tmp82 from $t3 to $fp-180
	  sw $t4, -184($fp)	# spill _tmp83 from $t4 to $fp-184
	  sw $t6, -188($fp)	# spill _tmp84 from $t6 to $fp-188
	  sw $t7, -192($fp)	# spill _tmp85 from $t7 to $fp-192
	  sw $s0, -196($fp)	# spill _tmp86 from $s0 to $fp-196
	  sw $s1, -200($fp)	# spill _tmp87 from $s1 to $fp-200
	  sw $s2, -204($fp)	# spill _tmp88 from $s2 to $fp-204
	  sw $s3, -208($fp)	# spill _tmp89 from $s3 to $fp-208
	  beqz $s3, _L13	# branch if _tmp89 is zero 
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
	  sw $t0, -212($fp)	# spill _tmp90 from $t0 to $fp-212
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L13:
	# _tmp91 = _tmp81 * _tmp83
	  lw $t0, -176($fp)	# load _tmp81 from $fp-176 into $t0
	  lw $t1, -184($fp)	# load _tmp83 from $fp-184 into $t1
	  mul $t2, $t0, $t1	
	# _tmp92 = _tmp91 + _tmp83
	  add $t3, $t2, $t1	
	# _tmp93 = arr + _tmp92
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp94 = *(_tmp93)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp95 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp96 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp97 = *(arr)
	  lw $s1, 0($t4) 	# load with offset
	# _tmp98 = _tmp97 == j
	  lw $s2, -12($fp)	# load j from $fp-12 into $s2
	  seq $s3, $s1, $s2	
	# _tmp99 = _tmp97 < j
	  slt $s4, $s1, $s2	
	# _tmp100 = _tmp99 || _tmp98
	  or $s5, $s4, $s3	
	# _tmp101 = j < _tmp95
	  slt $s6, $s2, $t7	
	# _tmp102 = _tmp101 || _tmp100
	  or $s7, $s6, $s5	
	# IfZ _tmp102 Goto _L14
	# (save modified registers before flow of control change)
	  sw $t2, -216($fp)	# spill _tmp91 from $t2 to $fp-216
	  sw $t3, -220($fp)	# spill _tmp92 from $t3 to $fp-220
	  sw $t5, -224($fp)	# spill _tmp93 from $t5 to $fp-224
	  sw $t6, -228($fp)	# spill _tmp94 from $t6 to $fp-228
	  sw $t7, -232($fp)	# spill _tmp95 from $t7 to $fp-232
	  sw $s0, -236($fp)	# spill _tmp96 from $s0 to $fp-236
	  sw $s1, -240($fp)	# spill _tmp97 from $s1 to $fp-240
	  sw $s3, -244($fp)	# spill _tmp98 from $s3 to $fp-244
	  sw $s4, -248($fp)	# spill _tmp99 from $s4 to $fp-248
	  sw $s5, -252($fp)	# spill _tmp100 from $s5 to $fp-252
	  sw $s6, -256($fp)	# spill _tmp101 from $s6 to $fp-256
	  sw $s7, -260($fp)	# spill _tmp102 from $s7 to $fp-260
	  beqz $s7, _L14	# branch if _tmp102 is zero 
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
	  sw $t0, -264($fp)	# spill _tmp103 from $t0 to $fp-264
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L14:
	# _tmp104 = j * _tmp96
	  lw $t0, -12($fp)	# load j from $fp-12 into $t0
	  lw $t1, -236($fp)	# load _tmp96 from $fp-236 into $t1
	  mul $t2, $t0, $t1	
	# _tmp105 = _tmp104 + _tmp96
	  add $t3, $t2, $t1	
	# _tmp106 = arr + _tmp105
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp107 = *(_tmp106)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp108 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp109 = j + _tmp108
	  add $s0, $t0, $t7	
	# _tmp110 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp111 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp112 = *(arr)
	  lw $s3, 0($t4) 	# load with offset
	# _tmp113 = _tmp112 == _tmp109
	  seq $s4, $s3, $s0	
	# _tmp114 = _tmp112 < _tmp109
	  slt $s5, $s3, $s0	
	# _tmp115 = _tmp114 || _tmp113
	  or $s6, $s5, $s4	
	# _tmp116 = _tmp109 < _tmp110
	  slt $s7, $s0, $s1	
	# _tmp117 = _tmp116 || _tmp115
	  or $t8, $s7, $s6	
	# IfZ _tmp117 Goto _L15
	# (save modified registers before flow of control change)
	  sw $t2, -268($fp)	# spill _tmp104 from $t2 to $fp-268
	  sw $t3, -272($fp)	# spill _tmp105 from $t3 to $fp-272
	  sw $t5, -276($fp)	# spill _tmp106 from $t5 to $fp-276
	  sw $t6, -280($fp)	# spill _tmp107 from $t6 to $fp-280
	  sw $t7, -284($fp)	# spill _tmp108 from $t7 to $fp-284
	  sw $s0, -288($fp)	# spill _tmp109 from $s0 to $fp-288
	  sw $s1, -292($fp)	# spill _tmp110 from $s1 to $fp-292
	  sw $s2, -296($fp)	# spill _tmp111 from $s2 to $fp-296
	  sw $s3, -300($fp)	# spill _tmp112 from $s3 to $fp-300
	  sw $s4, -304($fp)	# spill _tmp113 from $s4 to $fp-304
	  sw $s5, -308($fp)	# spill _tmp114 from $s5 to $fp-308
	  sw $s6, -312($fp)	# spill _tmp115 from $s6 to $fp-312
	  sw $s7, -316($fp)	# spill _tmp116 from $s7 to $fp-316
	  sw $t8, -320($fp)	# spill _tmp117 from $t8 to $fp-320
	  beqz $t8, _L15	# branch if _tmp117 is zero 
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
	  sw $t0, -324($fp)	# spill _tmp118 from $t0 to $fp-324
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L15:
	# _tmp119 = _tmp109 * _tmp111
	  lw $t0, -288($fp)	# load _tmp109 from $fp-288 into $t0
	  lw $t1, -296($fp)	# load _tmp111 from $fp-296 into $t1
	  mul $t2, $t0, $t1	
	# _tmp120 = _tmp119 + _tmp111
	  add $t3, $t2, $t1	
	# _tmp121 = arr + _tmp120
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp121) = _tmp107
	  lw $t6, -280($fp)	# load _tmp107 from $fp-280 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp122 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp123 = j - _tmp122
	  lw $s0, -12($fp)	# load j from $fp-12 into $s0
	  sub $s1, $s0, $t7	
	# j = _tmp123
	  move $s0, $s1		# copy value
	# Goto _L9
	# (save modified registers before flow of control change)
	  sw $t2, -328($fp)	# spill _tmp119 from $t2 to $fp-328
	  sw $t3, -332($fp)	# spill _tmp120 from $t3 to $fp-332
	  sw $t5, -336($fp)	# spill _tmp121 from $t5 to $fp-336
	  sw $t7, -340($fp)	# spill _tmp122 from $t7 to $fp-340
	  sw $s0, -12($fp)	# spill j from $s0 to $fp-12
	  sw $s1, -344($fp)	# spill _tmp123 from $s1 to $fp-344
	  b _L9		# unconditional branch
  _L10:
	# _tmp124 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp125 = j + _tmp124
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp126 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp127 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp128 = *(arr)
	  lw $t5, 8($fp)	# load arr from $fp+8 into $t5
	  lw $t6, 0($t5) 	# load with offset
	# _tmp129 = _tmp128 == _tmp125
	  seq $t7, $t6, $t2	
	# _tmp130 = _tmp128 < _tmp125
	  slt $s0, $t6, $t2	
	# _tmp131 = _tmp130 || _tmp129
	  or $s1, $s0, $t7	
	# _tmp132 = _tmp125 < _tmp126
	  slt $s2, $t2, $t3	
	# _tmp133 = _tmp132 || _tmp131
	  or $s3, $s2, $s1	
	# IfZ _tmp133 Goto _L16
	# (save modified registers before flow of control change)
	  sw $t0, -348($fp)	# spill _tmp124 from $t0 to $fp-348
	  sw $t2, -352($fp)	# spill _tmp125 from $t2 to $fp-352
	  sw $t3, -356($fp)	# spill _tmp126 from $t3 to $fp-356
	  sw $t4, -360($fp)	# spill _tmp127 from $t4 to $fp-360
	  sw $t6, -364($fp)	# spill _tmp128 from $t6 to $fp-364
	  sw $t7, -368($fp)	# spill _tmp129 from $t7 to $fp-368
	  sw $s0, -372($fp)	# spill _tmp130 from $s0 to $fp-372
	  sw $s1, -376($fp)	# spill _tmp131 from $s1 to $fp-376
	  sw $s2, -380($fp)	# spill _tmp132 from $s2 to $fp-380
	  sw $s3, -384($fp)	# spill _tmp133 from $s3 to $fp-384
	  beqz $s3, _L16	# branch if _tmp133 is zero 
	# _tmp134 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string11: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp134
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -388($fp)	# spill _tmp134 from $t0 to $fp-388
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L16:
	# _tmp135 = _tmp125 * _tmp127
	  lw $t0, -352($fp)	# load _tmp125 from $fp-352 into $t0
	  lw $t1, -360($fp)	# load _tmp127 from $fp-360 into $t1
	  mul $t2, $t0, $t1	
	# _tmp136 = _tmp135 + _tmp127
	  add $t3, $t2, $t1	
	# _tmp137 = arr + _tmp136
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp138 = *(_tmp137)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp139 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp140 = j + _tmp139
	  lw $s0, -12($fp)	# load j from $fp-12 into $s0
	  add $s1, $s0, $t7	
	# _tmp141 = 0
	  li $s2, 0		# load constant value 0 into $s2
	# _tmp142 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp143 = *(arr)
	  lw $s4, 0($t4) 	# load with offset
	# _tmp144 = _tmp143 == _tmp140
	  seq $s5, $s4, $s1	
	# _tmp145 = _tmp143 < _tmp140
	  slt $s6, $s4, $s1	
	# _tmp146 = _tmp145 || _tmp144
	  or $s7, $s6, $s5	
	# _tmp147 = _tmp140 < _tmp141
	  slt $t8, $s1, $s2	
	# _tmp148 = _tmp147 || _tmp146
	  or $t9, $t8, $s7	
	# IfZ _tmp148 Goto _L17
	# (save modified registers before flow of control change)
	  sw $t2, -392($fp)	# spill _tmp135 from $t2 to $fp-392
	  sw $t3, -396($fp)	# spill _tmp136 from $t3 to $fp-396
	  sw $t5, -400($fp)	# spill _tmp137 from $t5 to $fp-400
	  sw $t6, -404($fp)	# spill _tmp138 from $t6 to $fp-404
	  sw $t7, -408($fp)	# spill _tmp139 from $t7 to $fp-408
	  sw $s1, -412($fp)	# spill _tmp140 from $s1 to $fp-412
	  sw $s2, -416($fp)	# spill _tmp141 from $s2 to $fp-416
	  sw $s3, -420($fp)	# spill _tmp142 from $s3 to $fp-420
	  sw $s4, -424($fp)	# spill _tmp143 from $s4 to $fp-424
	  sw $s5, -428($fp)	# spill _tmp144 from $s5 to $fp-428
	  sw $s6, -432($fp)	# spill _tmp145 from $s6 to $fp-432
	  sw $s7, -436($fp)	# spill _tmp146 from $s7 to $fp-436
	  sw $t8, -440($fp)	# spill _tmp147 from $t8 to $fp-440
	  sw $t9, -444($fp)	# spill _tmp148 from $t9 to $fp-444
	  beqz $t9, _L17	# branch if _tmp148 is zero 
	# _tmp149 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string12: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string12	# load label
	# PushParam _tmp149
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -448($fp)	# spill _tmp149 from $t0 to $fp-448
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L17:
	# _tmp150 = _tmp140 * _tmp142
	  lw $t0, -412($fp)	# load _tmp140 from $fp-412 into $t0
	  lw $t1, -420($fp)	# load _tmp142 from $fp-420 into $t1
	  mul $t2, $t0, $t1	
	# _tmp151 = _tmp150 + _tmp142
	  add $t3, $t2, $t1	
	# _tmp152 = arr + _tmp151
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp152) = val
	  lw $t6, -16($fp)	# load val from $fp-16 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp153 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp154 = i + _tmp153
	  lw $s0, -8($fp)	# load i from $fp-8 into $s0
	  add $s1, $s0, $t7	
	# i = _tmp154
	  move $s0, $s1		# copy value
	# Goto _L6
	# (save modified registers before flow of control change)
	  sw $t2, -452($fp)	# spill _tmp150 from $t2 to $fp-452
	  sw $t3, -456($fp)	# spill _tmp151 from $t3 to $fp-456
	  sw $t5, -460($fp)	# spill _tmp152 from $t5 to $fp-460
	  sw $t7, -464($fp)	# spill _tmp153 from $t7 to $fp-464
	  sw $s0, -8($fp)	# spill i from $s0 to $fp-8
	  sw $s1, -468($fp)	# spill _tmp154 from $s1 to $fp-468
	  b _L6		# unconditional branch
  _L7:
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_myArray.PrintArray:
	# BeginFunc 88
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 88	# decrement sp to make space for locals/temps
	# _tmp155 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp155
	  move $t1, $t0		# copy value
	# _tmp156 = "Sorted results: "
	  .data			# create string constant marked with label
	  _string13: .asciiz "Sorted results: "
	  .text
	  la $t2, _string13	# load label
	# PushParam _tmp156
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp155 from $t0 to $fp-12
	  sw $t1, -8($fp)	# spill i from $t1 to $fp-8
	  sw $t2, -16($fp)	# spill _tmp156 from $t2 to $fp-16
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L18:
	# _tmp157 = *(arr)
	  lw $t0, 8($fp)	# load arr from $fp+8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp158 = i < _tmp157
	  lw $t2, -8($fp)	# load i from $fp-8 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp158 Goto _L19
	# (save modified registers before flow of control change)
	  sw $t1, -20($fp)	# spill _tmp157 from $t1 to $fp-20
	  sw $t3, -24($fp)	# spill _tmp158 from $t3 to $fp-24
	  beqz $t3, _L19	# branch if _tmp158 is zero 
	# _tmp159 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp160 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp161 = *(arr)
	  lw $t2, 8($fp)	# load arr from $fp+8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp162 = _tmp161 == i
	  lw $t4, -8($fp)	# load i from $fp-8 into $t4
	  seq $t5, $t3, $t4	
	# _tmp163 = _tmp161 < i
	  slt $t6, $t3, $t4	
	# _tmp164 = _tmp163 || _tmp162
	  or $t7, $t6, $t5	
	# _tmp165 = i < _tmp159
	  slt $s0, $t4, $t0	
	# _tmp166 = _tmp165 || _tmp164
	  or $s1, $s0, $t7	
	# IfZ _tmp166 Goto _L20
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp159 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp160 from $t1 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp161 from $t3 to $fp-36
	  sw $t5, -40($fp)	# spill _tmp162 from $t5 to $fp-40
	  sw $t6, -44($fp)	# spill _tmp163 from $t6 to $fp-44
	  sw $t7, -48($fp)	# spill _tmp164 from $t7 to $fp-48
	  sw $s0, -52($fp)	# spill _tmp165 from $s0 to $fp-52
	  sw $s1, -56($fp)	# spill _tmp166 from $s1 to $fp-56
	  beqz $s1, _L20	# branch if _tmp166 is zero 
	# _tmp167 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string14: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string14	# load label
	# PushParam _tmp167
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp167 from $t0 to $fp-60
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L20:
	# _tmp168 = i * _tmp160
	  lw $t0, -8($fp)	# load i from $fp-8 into $t0
	  lw $t1, -32($fp)	# load _tmp160 from $fp-32 into $t1
	  mul $t2, $t0, $t1	
	# _tmp169 = _tmp168 + _tmp160
	  add $t3, $t2, $t1	
	# _tmp170 = arr + _tmp169
	  lw $t4, 8($fp)	# load arr from $fp+8 into $t4
	  add $t5, $t4, $t3	
	# _tmp171 = *(_tmp170)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp171
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -64($fp)	# spill _tmp168 from $t2 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp169 from $t3 to $fp-68
	  sw $t5, -72($fp)	# spill _tmp170 from $t5 to $fp-72
	  sw $t6, -76($fp)	# spill _tmp171 from $t6 to $fp-76
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp172 = " "
	  .data			# create string constant marked with label
	  _string15: .asciiz " "
	  .text
	  la $t0, _string15	# load label
	# PushParam _tmp172
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp172 from $t0 to $fp-80
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp173 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp174 = i + _tmp173
	  lw $t1, -8($fp)	# load i from $fp-8 into $t1
	  add $t2, $t1, $t0	
	# i = _tmp174
	  move $t1, $t2		# copy value
	# Goto _L18
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp173 from $t0 to $fp-84
	  sw $t1, -8($fp)	# spill i from $t1 to $fp-8
	  sw $t2, -88($fp)	# spill _tmp174 from $t2 to $fp-88
	  b _L18		# unconditional branch
  _L19:
	# _tmp175 = "\n"
	  .data			# create string constant marked with label
	  _string16: .asciiz "\n"
	  .text
	  la $t0, _string16	# load label
	# PushParam _tmp175
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp175 from $t0 to $fp-92
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
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
	# _tmp176 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp176
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
	# BeginFunc 100
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 100	# decrement sp to make space for locals/temps
	# _tmp177 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp177
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp178 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp177 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp179 = myArray
	  la $t1, myArray	# load label
	# *(_tmp178) = _tmp179
	  sw $t1, 0($t0) 	# store with offset
	# t = _tmp178
	  move $t2, $t0		# copy value
	# _tmp180 = "\nThis program will read in a bunch of numbers an..."
	  .data			# create string constant marked with label
	  _string17: .asciiz "\nThis program will read in a bunch of numbers and print them\n"
	  .text
	  la $t3, _string17	# load label
	# PushParam _tmp180
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp178 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp179 from $t1 to $fp-24
	  sw $t2, -12($fp)	# spill t from $t2 to $fp-12
	  sw $t3, -28($fp)	# spill _tmp180 from $t3 to $fp-28
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp181 = "back out in sorted order.\n\n"
	  .data			# create string constant marked with label
	  _string18: .asciiz "back out in sorted order.\n\n"
	  .text
	  la $t0, _string18	# load label
	# PushParam _tmp181
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp181 from $t0 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp182 = *(t)
	  lw $t0, -12($fp)	# load t from $fp-12 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp183 = *(_tmp182)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp184 = ACall _tmp183
	# (save modified registers before flow of control change)
	  sw $t1, -36($fp)	# spill _tmp182 from $t1 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp183 from $t2 to $fp-40
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp185 = t - _tmp184
	  lw $t1, -12($fp)	# load t from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp186 = *(_tmp182 + 4)
	  lw $t3, -36($fp)	# load _tmp182 from $fp-36 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp185
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp187 = ACall _tmp186
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp184 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp185 from $t2 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp186 from $t4 to $fp-52
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# arr = _tmp187
	  move $t1, $t0		# copy value
	# PushParam arr
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp188 = *(t)
	  lw $t2, -12($fp)	# load t from $fp-12 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp189 = *(_tmp188)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp190 = ACall _tmp189
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp187 from $t0 to $fp-56
	  sw $t1, -8($fp)	# spill arr from $t1 to $fp-8
	  sw $t3, -60($fp)	# spill _tmp188 from $t3 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp189 from $t4 to $fp-64
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp191 = t - _tmp190
	  lw $t1, -12($fp)	# load t from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp192 = *(_tmp188 + 8)
	  lw $t3, -60($fp)	# load _tmp188 from $fp-60 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp191
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp192
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp190 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp191 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp192 from $t4 to $fp-76
	  jalr $t4            	# jump to function
	# _tmp193 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# PushParam arr
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, -8($fp)	# load arr from $fp-8 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp194 = *(t)
	  lw $t2, -12($fp)	# load t from $fp-12 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp195 = *(_tmp194)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp196 = ACall _tmp195
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp193 from $t0 to $fp-80
	  sw $t3, -84($fp)	# spill _tmp194 from $t3 to $fp-84
	  sw $t4, -88($fp)	# spill _tmp195 from $t4 to $fp-88
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp197 = t - _tmp196
	  lw $t1, -12($fp)	# load t from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp198 = *(_tmp194 + 12)
	  lw $t3, -84($fp)	# load _tmp194 from $fp-84 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp197
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp198
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp196 from $t0 to $fp-92
	  sw $t2, -96($fp)	# spill _tmp197 from $t2 to $fp-96
	  sw $t4, -100($fp)	# spill _tmp198 from $t4 to $fp-100
	  jalr $t4            	# jump to function
	# _tmp199 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
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