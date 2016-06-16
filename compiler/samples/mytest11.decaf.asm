	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_A_0:
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
	# VTable for class A
	  .data
	  .align 2
	  A:		# label for class A vtable
	  .word _offset_A_0
	  .word f_A.modmyint
	  .word f_A.printmyint
	  .text
  f_A.modmyint:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp4 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp5 = this + _tmp4
	  add $t5, $t1, $t4	
	# *(_tmp5) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_A.printmyint:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp6 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp7 = this + _tmp6
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp8 = *(_tmp7)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp6 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp7 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp8 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = " "
	  .data			# create string constant marked with label
	  _string1: .asciiz " "
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp9 from $t0 to $fp-20
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
	# _tmp10 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp10
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
	# BeginFunc 360
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 360	# decrement sp to make space for locals/temps
	# _tmp11 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp12 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp13 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp14 = _tmp12 < _tmp11
	  slt $t3, $t1, $t0	
	# IfZ _tmp14 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp11 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp12 from $t1 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp13 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp14 from $t3 to $fp-28
	  beqz $t3, _L0	# branch if _tmp14 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp15 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp15 from $t0 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp16 = _tmp11 * _tmp13
	  lw $t0, -16($fp)	# load _tmp11 from $fp-16 into $t0
	  lw $t1, -24($fp)	# load _tmp13 from $fp-24 into $t1
	  mul $t2, $t0, $t1	
	# _tmp17 = _tmp16 + _tmp13
	  add $t3, $t2, $t1	
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp18 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -36($fp)	# spill _tmp16 from $t2 to $fp-36
	  sw $t3, -40($fp)	# spill _tmp17 from $t3 to $fp-40
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp18) = _tmp11
	  lw $t1, -16($fp)	# load _tmp11 from $fp-16 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp18
	  move $t2, $t0		# copy value
	# _tmp19 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# i = _tmp19
	  move $t4, $t3		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp18 from $t0 to $fp-44
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -48($fp)	# spill _tmp19 from $t3 to $fp-48
	  sw $t4, -12($fp)	# spill i from $t4 to $fp-12
  _L2:
	# _tmp20 = *(a)
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp21 = i < _tmp20
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp21 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t1, -52($fp)	# spill _tmp20 from $t1 to $fp-52
	  sw $t3, -56($fp)	# spill _tmp21 from $t3 to $fp-56
	  beqz $t3, _L3	# branch if _tmp21 is zero 
	# _tmp22 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp23 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp24 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp25 = _tmp24 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp26 = _tmp24 < i
	  slt $t6, $t3, $t4	
	# _tmp27 = _tmp26 || _tmp25
	  or $t7, $t6, $t5	
	# _tmp28 = i < _tmp22
	  slt $s0, $t4, $t0	
	# _tmp29 = _tmp28 || _tmp27
	  or $s1, $s0, $t7	
	# IfZ _tmp29 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp22 from $t0 to $fp-60
	  sw $t1, -64($fp)	# spill _tmp23 from $t1 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp24 from $t3 to $fp-68
	  sw $t5, -72($fp)	# spill _tmp25 from $t5 to $fp-72
	  sw $t6, -76($fp)	# spill _tmp26 from $t6 to $fp-76
	  sw $t7, -80($fp)	# spill _tmp27 from $t7 to $fp-80
	  sw $s0, -84($fp)	# spill _tmp28 from $s0 to $fp-84
	  sw $s1, -88($fp)	# spill _tmp29 from $s1 to $fp-88
	  beqz $s1, _L4	# branch if _tmp29 is zero 
	# _tmp30 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string3: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp30
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp30 from $t0 to $fp-92
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp31 = i * _tmp23
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -64($fp)	# load _tmp23 from $fp-64 into $t1
	  mul $t2, $t0, $t1	
	# _tmp32 = _tmp31 + _tmp23
	  add $t3, $t2, $t1	
	# _tmp33 = a + _tmp32
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp34 = *(_tmp33)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp35 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# PushParam _tmp35
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# _tmp36 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -96($fp)	# spill _tmp31 from $t2 to $fp-96
	  sw $t3, -100($fp)	# spill _tmp32 from $t3 to $fp-100
	  sw $t5, -104($fp)	# spill _tmp33 from $t5 to $fp-104
	  sw $t6, -108($fp)	# spill _tmp34 from $t6 to $fp-108
	  sw $t7, -112($fp)	# spill _tmp35 from $t7 to $fp-112
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp37 = A
	  la $t1, A	# load label
	# *(_tmp36) = _tmp37
	  sw $t1, 0($t0) 	# store with offset
	# _tmp38 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp39 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp40 = *(a)
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  lw $t5, 0($t4) 	# load with offset
	# _tmp41 = _tmp40 == i
	  lw $t6, -12($fp)	# load i from $fp-12 into $t6
	  seq $t7, $t5, $t6	
	# _tmp42 = _tmp40 < i
	  slt $s0, $t5, $t6	
	# _tmp43 = _tmp42 || _tmp41
	  or $s1, $s0, $t7	
	# _tmp44 = i < _tmp38
	  slt $s2, $t6, $t2	
	# _tmp45 = _tmp44 || _tmp43
	  or $s3, $s2, $s1	
	# IfZ _tmp45 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp36 from $t0 to $fp-116
	  sw $t1, -120($fp)	# spill _tmp37 from $t1 to $fp-120
	  sw $t2, -124($fp)	# spill _tmp38 from $t2 to $fp-124
	  sw $t3, -128($fp)	# spill _tmp39 from $t3 to $fp-128
	  sw $t5, -132($fp)	# spill _tmp40 from $t5 to $fp-132
	  sw $t7, -136($fp)	# spill _tmp41 from $t7 to $fp-136
	  sw $s0, -140($fp)	# spill _tmp42 from $s0 to $fp-140
	  sw $s1, -144($fp)	# spill _tmp43 from $s1 to $fp-144
	  sw $s2, -148($fp)	# spill _tmp44 from $s2 to $fp-148
	  sw $s3, -152($fp)	# spill _tmp45 from $s3 to $fp-152
	  beqz $s3, _L5	# branch if _tmp45 is zero 
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
	  sw $t0, -156($fp)	# spill _tmp46 from $t0 to $fp-156
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp47 = i * _tmp39
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -128($fp)	# load _tmp39 from $fp-128 into $t1
	  mul $t2, $t0, $t1	
	# _tmp48 = _tmp47 + _tmp39
	  add $t3, $t2, $t1	
	# _tmp49 = a + _tmp48
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp49) = _tmp36
	  lw $t6, -116($fp)	# load _tmp36 from $fp-116 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp50 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp51 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp52 = *(a)
	  lw $s1, 0($t4) 	# load with offset
	# _tmp53 = _tmp52 == i
	  seq $s2, $s1, $t0	
	# _tmp54 = _tmp52 < i
	  slt $s3, $s1, $t0	
	# _tmp55 = _tmp54 || _tmp53
	  or $s4, $s3, $s2	
	# _tmp56 = i < _tmp50
	  slt $s5, $t0, $t7	
	# _tmp57 = _tmp56 || _tmp55
	  or $s6, $s5, $s4	
	# IfZ _tmp57 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t2, -160($fp)	# spill _tmp47 from $t2 to $fp-160
	  sw $t3, -164($fp)	# spill _tmp48 from $t3 to $fp-164
	  sw $t5, -168($fp)	# spill _tmp49 from $t5 to $fp-168
	  sw $t7, -172($fp)	# spill _tmp50 from $t7 to $fp-172
	  sw $s0, -176($fp)	# spill _tmp51 from $s0 to $fp-176
	  sw $s1, -180($fp)	# spill _tmp52 from $s1 to $fp-180
	  sw $s2, -184($fp)	# spill _tmp53 from $s2 to $fp-184
	  sw $s3, -188($fp)	# spill _tmp54 from $s3 to $fp-188
	  sw $s4, -192($fp)	# spill _tmp55 from $s4 to $fp-192
	  sw $s5, -196($fp)	# spill _tmp56 from $s5 to $fp-196
	  sw $s6, -200($fp)	# spill _tmp57 from $s6 to $fp-200
	  beqz $s6, _L6	# branch if _tmp57 is zero 
	# _tmp58 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp58
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp58 from $t0 to $fp-204
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L6:
	# _tmp59 = i * _tmp51
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -176($fp)	# load _tmp51 from $fp-176 into $t1
	  mul $t2, $t0, $t1	
	# _tmp60 = _tmp59 + _tmp51
	  add $t3, $t2, $t1	
	# _tmp61 = a + _tmp60
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp62 = *(_tmp61)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp63 = 2
	  li $t7, 2		# load constant value 2 into $t7
	# _tmp64 = i * _tmp63
	  mul $s0, $t0, $t7	
	# PushParam _tmp64
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s0, 4($sp)	# copy param value to stack
	# _tmp65 = *(_tmp62)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp66 = *(_tmp65)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp67 = ACall _tmp66
	# (save modified registers before flow of control change)
	  sw $t2, -208($fp)	# spill _tmp59 from $t2 to $fp-208
	  sw $t3, -212($fp)	# spill _tmp60 from $t3 to $fp-212
	  sw $t5, -216($fp)	# spill _tmp61 from $t5 to $fp-216
	  sw $t6, -220($fp)	# spill _tmp62 from $t6 to $fp-220
	  sw $t7, -224($fp)	# spill _tmp63 from $t7 to $fp-224
	  sw $s0, -228($fp)	# spill _tmp64 from $s0 to $fp-228
	  sw $s1, -232($fp)	# spill _tmp65 from $s1 to $fp-232
	  sw $s2, -236($fp)	# spill _tmp66 from $s2 to $fp-236
	  jalr $s2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp68 = _tmp62 - _tmp67
	  lw $t1, -220($fp)	# load _tmp62 from $fp-220 into $t1
	  sub $t2, $t1, $t0	
	# _tmp69 = *(_tmp65 + 4)
	  lw $t3, -232($fp)	# load _tmp65 from $fp-232 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp68
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp69
	# (save modified registers before flow of control change)
	  sw $t0, -240($fp)	# spill _tmp67 from $t0 to $fp-240
	  sw $t2, -244($fp)	# spill _tmp68 from $t2 to $fp-244
	  sw $t4, -248($fp)	# spill _tmp69 from $t4 to $fp-248
	  jalr $t4            	# jump to function
	# _tmp70 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp71 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp72 = i
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  move $t3, $t2		# copy value
	# _tmp73 = _tmp72 + _tmp71
	  add $t4, $t3, $t1	
	# i = _tmp73
	  move $t2, $t4		# copy value
	# Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -252($fp)	# spill _tmp70 from $t0 to $fp-252
	  sw $t1, -256($fp)	# spill _tmp71 from $t1 to $fp-256
	  sw $t2, -12($fp)	# spill i from $t2 to $fp-12
	  sw $t3, -260($fp)	# spill _tmp72 from $t3 to $fp-260
	  sw $t4, -264($fp)	# spill _tmp73 from $t4 to $fp-264
	  b _L2		# unconditional branch
  _L3:
	# _tmp74 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp74
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -268($fp)	# spill _tmp74 from $t0 to $fp-268
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
  _L7:
	# _tmp75 = *(a)
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp76 = i < _tmp75
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  slt $t3, $t2, $t1	
	# IfZ _tmp76 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t1, -272($fp)	# spill _tmp75 from $t1 to $fp-272
	  sw $t3, -276($fp)	# spill _tmp76 from $t3 to $fp-276
	  beqz $t3, _L8	# branch if _tmp76 is zero 
	# _tmp77 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp78 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp79 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp80 = _tmp79 == i
	  lw $t4, -12($fp)	# load i from $fp-12 into $t4
	  seq $t5, $t3, $t4	
	# _tmp81 = _tmp79 < i
	  slt $t6, $t3, $t4	
	# _tmp82 = _tmp81 || _tmp80
	  or $t7, $t6, $t5	
	# _tmp83 = i < _tmp77
	  slt $s0, $t4, $t0	
	# _tmp84 = _tmp83 || _tmp82
	  or $s1, $s0, $t7	
	# IfZ _tmp84 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t0, -280($fp)	# spill _tmp77 from $t0 to $fp-280
	  sw $t1, -284($fp)	# spill _tmp78 from $t1 to $fp-284
	  sw $t3, -288($fp)	# spill _tmp79 from $t3 to $fp-288
	  sw $t5, -292($fp)	# spill _tmp80 from $t5 to $fp-292
	  sw $t6, -296($fp)	# spill _tmp81 from $t6 to $fp-296
	  sw $t7, -300($fp)	# spill _tmp82 from $t7 to $fp-300
	  sw $s0, -304($fp)	# spill _tmp83 from $s0 to $fp-304
	  sw $s1, -308($fp)	# spill _tmp84 from $s1 to $fp-308
	  beqz $s1, _L9	# branch if _tmp84 is zero 
	# _tmp85 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp85
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -312($fp)	# spill _tmp85 from $t0 to $fp-312
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L9:
	# _tmp86 = i * _tmp78
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  lw $t1, -284($fp)	# load _tmp78 from $fp-284 into $t1
	  mul $t2, $t0, $t1	
	# _tmp87 = _tmp86 + _tmp78
	  add $t3, $t2, $t1	
	# _tmp88 = a + _tmp87
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp89 = *(_tmp88)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp90 = *(_tmp89)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp91 = *(_tmp90)
	  lw $s0, 0($t7) 	# load with offset
	# _tmp92 = ACall _tmp91
	# (save modified registers before flow of control change)
	  sw $t2, -316($fp)	# spill _tmp86 from $t2 to $fp-316
	  sw $t3, -320($fp)	# spill _tmp87 from $t3 to $fp-320
	  sw $t5, -324($fp)	# spill _tmp88 from $t5 to $fp-324
	  sw $t6, -328($fp)	# spill _tmp89 from $t6 to $fp-328
	  sw $t7, -332($fp)	# spill _tmp90 from $t7 to $fp-332
	  sw $s0, -336($fp)	# spill _tmp91 from $s0 to $fp-336
	  jalr $s0            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp93 = _tmp89 - _tmp92
	  lw $t1, -328($fp)	# load _tmp89 from $fp-328 into $t1
	  sub $t2, $t1, $t0	
	# _tmp94 = *(_tmp90 + 8)
	  lw $t3, -332($fp)	# load _tmp90 from $fp-332 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp93
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp94
	# (save modified registers before flow of control change)
	  sw $t0, -340($fp)	# spill _tmp92 from $t0 to $fp-340
	  sw $t2, -344($fp)	# spill _tmp93 from $t2 to $fp-344
	  sw $t4, -348($fp)	# spill _tmp94 from $t4 to $fp-348
	  jalr $t4            	# jump to function
	# _tmp95 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp96 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp97 = i
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  move $t3, $t2		# copy value
	# _tmp98 = _tmp97 + _tmp96
	  add $t4, $t3, $t1	
	# i = _tmp98
	  move $t2, $t4		# copy value
	# Goto _L7
	# (save modified registers before flow of control change)
	  sw $t0, -352($fp)	# spill _tmp95 from $t0 to $fp-352
	  sw $t1, -356($fp)	# spill _tmp96 from $t1 to $fp-356
	  sw $t2, -12($fp)	# spill i from $t2 to $fp-12
	  sw $t3, -360($fp)	# spill _tmp97 from $t3 to $fp-360
	  sw $t4, -364($fp)	# spill _tmp98 from $t4 to $fp-364
	  b _L7		# unconditional branch
  _L8:
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