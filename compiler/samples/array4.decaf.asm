	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Point_0:
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
	# VTable for class Point
	  .data
	  .align 2
	  Point:		# label for class Point vtable
	  .word _offset_Point_0
	  .word f_Point.Init
	  .word f_Point.PrintSelf
	  .text
  f_Point.Init:
	# BeginFunc 40
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 40	# decrement sp to make space for locals/temps
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
	# *(_tmp5) = xVal
	  lw $t6, 8($fp)	# load xVal from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp6 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp7 = this + _tmp6
	  add $s0, $t1, $t7	
	# _tmp8 = *(_tmp7)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp9 = 8
	  li $s2, 8		# load constant value 8 into $s2
	# _tmp10 = this + _tmp9
	  add $s3, $t1, $s2	
	# *(_tmp10) = yVal
	  lw $s4, 12($fp)	# load yVal from $fp+12 into $s4
	  sw $s4, 0($s3) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Point.PrintSelf:
	# BeginFunc 36
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 36	# decrement sp to make space for locals/temps
	# _tmp11 = "["
	  .data			# create string constant marked with label
	  _string1: .asciiz "["
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp11 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp12 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp13 = this + _tmp12
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp14 = *(_tmp13)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp12 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp13 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp14 from $t3 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp15 = ", "
	  .data			# create string constant marked with label
	  _string2: .asciiz ", "
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp15 from $t0 to $fp-24
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp16 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp17 = this + _tmp16
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp18 = *(_tmp17)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp16 from $t0 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp17 from $t2 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp18 from $t3 to $fp-36
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp19 = "]\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "]\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp19 from $t0 to $fp-40
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_Rect_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp20 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp20
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
	# VTable for class Rect
	  .data
	  .align 2
	  Rect:		# label for class Rect vtable
	  .word _offset_Rect_0
	  .word f_Rect.Init
	  .word f_Rect.PrintSelf
	  .text
  f_Rect.Init:
	# BeginFunc 532
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 532	# decrement sp to make space for locals/temps
	# _tmp21 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp22 = this + _tmp21
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp23 = *(_tmp22)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp24 = 2
	  li $t4, 2		# load constant value 2 into $t4
	# _tmp25 = 0
	  li $t5, 0		# load constant value 0 into $t5
	# _tmp26 = 4
	  li $t6, 4		# load constant value 4 into $t6
	# _tmp27 = _tmp25 < _tmp24
	  slt $t7, $t5, $t4	
	# IfZ _tmp27 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp21 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp22 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp23 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp24 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp25 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp26 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp27 from $t7 to $fp-32
	  beqz $t7, _L0	# branch if _tmp27 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp28 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp28
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp28 from $t0 to $fp-36
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp29 = _tmp24 * _tmp26
	  lw $t0, -20($fp)	# load _tmp24 from $fp-20 into $t0
	  lw $t1, -28($fp)	# load _tmp26 from $fp-28 into $t1
	  mul $t2, $t0, $t1	
	# _tmp30 = _tmp29 + _tmp26
	  add $t3, $t2, $t1	
	# PushParam _tmp30
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp31 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -40($fp)	# spill _tmp29 from $t2 to $fp-40
	  sw $t3, -44($fp)	# spill _tmp30 from $t3 to $fp-44
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp31) = _tmp24
	  lw $t1, -20($fp)	# load _tmp24 from $fp-20 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# _tmp32 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp33 = this + _tmp32
	  lw $t3, 4($fp)	# load this from $fp+4 into $t3
	  add $t4, $t3, $t2	
	# *(_tmp33) = _tmp31
	  sw $t0, 0($t4) 	# store with offset
	# _tmp34 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp35 = this + _tmp34
	  add $t6, $t3, $t5	
	# _tmp36 = *(_tmp35)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp37 = 0
	  li $s0, 0		# load constant value 0 into $s0
	# _tmp38 = 0
	  li $s1, 0		# load constant value 0 into $s1
	# _tmp39 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp40 = *(_tmp36)
	  lw $s3, 0($t7) 	# load with offset
	# _tmp41 = _tmp40 == _tmp37
	  seq $s4, $s3, $s0	
	# _tmp42 = _tmp40 < _tmp37
	  slt $s5, $s3, $s0	
	# _tmp43 = _tmp42 || _tmp41
	  or $s6, $s5, $s4	
	# _tmp44 = _tmp37 < _tmp38
	  slt $s7, $s0, $s1	
	# _tmp45 = _tmp44 || _tmp43
	  or $t8, $s7, $s6	
	# IfZ _tmp45 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp31 from $t0 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp32 from $t2 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp33 from $t4 to $fp-56
	  sw $t5, -60($fp)	# spill _tmp34 from $t5 to $fp-60
	  sw $t6, -64($fp)	# spill _tmp35 from $t6 to $fp-64
	  sw $t7, -68($fp)	# spill _tmp36 from $t7 to $fp-68
	  sw $s0, -72($fp)	# spill _tmp37 from $s0 to $fp-72
	  sw $s1, -76($fp)	# spill _tmp38 from $s1 to $fp-76
	  sw $s2, -80($fp)	# spill _tmp39 from $s2 to $fp-80
	  sw $s3, -84($fp)	# spill _tmp40 from $s3 to $fp-84
	  sw $s4, -88($fp)	# spill _tmp41 from $s4 to $fp-88
	  sw $s5, -92($fp)	# spill _tmp42 from $s5 to $fp-92
	  sw $s6, -96($fp)	# spill _tmp43 from $s6 to $fp-96
	  sw $s7, -100($fp)	# spill _tmp44 from $s7 to $fp-100
	  sw $t8, -104($fp)	# spill _tmp45 from $t8 to $fp-104
	  beqz $t8, _L2	# branch if _tmp45 is zero 
	# _tmp46 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string5: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp46 from $t0 to $fp-108
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L2:
	# _tmp47 = _tmp37 * _tmp39
	  lw $t0, -72($fp)	# load _tmp37 from $fp-72 into $t0
	  lw $t1, -80($fp)	# load _tmp39 from $fp-80 into $t1
	  mul $t2, $t0, $t1	
	# _tmp48 = _tmp47 + _tmp39
	  add $t3, $t2, $t1	
	# _tmp49 = _tmp36 + _tmp48
	  lw $t4, -68($fp)	# load _tmp36 from $fp-68 into $t4
	  add $t5, $t4, $t3	
	# _tmp50 = *(_tmp49)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp51 = 12
	  li $t7, 12		# load constant value 12 into $t7
	# PushParam _tmp51
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# _tmp52 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -112($fp)	# spill _tmp47 from $t2 to $fp-112
	  sw $t3, -116($fp)	# spill _tmp48 from $t3 to $fp-116
	  sw $t5, -120($fp)	# spill _tmp49 from $t5 to $fp-120
	  sw $t6, -124($fp)	# spill _tmp50 from $t6 to $fp-124
	  sw $t7, -128($fp)	# spill _tmp51 from $t7 to $fp-128
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp53 = Point
	  la $t1, Point	# load label
	# *(_tmp52) = _tmp53
	  sw $t1, 0($t0) 	# store with offset
	# _tmp54 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp55 = this + _tmp54
	  lw $t3, 4($fp)	# load this from $fp+4 into $t3
	  add $t4, $t3, $t2	
	# _tmp56 = *(_tmp55)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp57 = 0
	  li $t6, 0		# load constant value 0 into $t6
	# _tmp58 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp59 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp60 = *(_tmp56)
	  lw $s1, 0($t5) 	# load with offset
	# _tmp61 = _tmp60 == _tmp57
	  seq $s2, $s1, $t6	
	# _tmp62 = _tmp60 < _tmp57
	  slt $s3, $s1, $t6	
	# _tmp63 = _tmp62 || _tmp61
	  or $s4, $s3, $s2	
	# _tmp64 = _tmp57 < _tmp58
	  slt $s5, $t6, $t7	
	# _tmp65 = _tmp64 || _tmp63
	  or $s6, $s5, $s4	
	# IfZ _tmp65 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t0, -132($fp)	# spill _tmp52 from $t0 to $fp-132
	  sw $t1, -136($fp)	# spill _tmp53 from $t1 to $fp-136
	  sw $t2, -140($fp)	# spill _tmp54 from $t2 to $fp-140
	  sw $t4, -144($fp)	# spill _tmp55 from $t4 to $fp-144
	  sw $t5, -148($fp)	# spill _tmp56 from $t5 to $fp-148
	  sw $t6, -152($fp)	# spill _tmp57 from $t6 to $fp-152
	  sw $t7, -156($fp)	# spill _tmp58 from $t7 to $fp-156
	  sw $s0, -160($fp)	# spill _tmp59 from $s0 to $fp-160
	  sw $s1, -164($fp)	# spill _tmp60 from $s1 to $fp-164
	  sw $s2, -168($fp)	# spill _tmp61 from $s2 to $fp-168
	  sw $s3, -172($fp)	# spill _tmp62 from $s3 to $fp-172
	  sw $s4, -176($fp)	# spill _tmp63 from $s4 to $fp-176
	  sw $s5, -180($fp)	# spill _tmp64 from $s5 to $fp-180
	  sw $s6, -184($fp)	# spill _tmp65 from $s6 to $fp-184
	  beqz $s6, _L3	# branch if _tmp65 is zero 
	# _tmp66 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string6: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp66
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -188($fp)	# spill _tmp66 from $t0 to $fp-188
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L3:
	# _tmp67 = _tmp57 * _tmp59
	  lw $t0, -152($fp)	# load _tmp57 from $fp-152 into $t0
	  lw $t1, -160($fp)	# load _tmp59 from $fp-160 into $t1
	  mul $t2, $t0, $t1	
	# _tmp68 = _tmp67 + _tmp59
	  add $t3, $t2, $t1	
	# _tmp69 = _tmp56 + _tmp68
	  lw $t4, -148($fp)	# load _tmp56 from $fp-148 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp69) = _tmp52
	  lw $t6, -132($fp)	# load _tmp52 from $fp-132 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp70 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp71 = this + _tmp70
	  lw $s0, 4($fp)	# load this from $fp+4 into $s0
	  add $s1, $s0, $t7	
	# _tmp72 = *(_tmp71)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp73 = 0
	  li $s3, 0		# load constant value 0 into $s3
	# _tmp74 = 0
	  li $s4, 0		# load constant value 0 into $s4
	# _tmp75 = 4
	  li $s5, 4		# load constant value 4 into $s5
	# _tmp76 = *(_tmp72)
	  lw $s6, 0($s2) 	# load with offset
	# _tmp77 = _tmp76 == _tmp73
	  seq $s7, $s6, $s3	
	# _tmp78 = _tmp76 < _tmp73
	  slt $t8, $s6, $s3	
	# _tmp79 = _tmp78 || _tmp77
	  or $t9, $t8, $s7	
	# _tmp80 = _tmp73 < _tmp74
	  slt $t0, $s3, $s4	
	# _tmp81 = _tmp80 || _tmp79
	  or $t1, $t0, $t9	
	# IfZ _tmp81 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -244($fp)	# spill _tmp80 from $t0 to $fp-244
	  sw $t1, -248($fp)	# spill _tmp81 from $t1 to $fp-248
	  sw $t2, -192($fp)	# spill _tmp67 from $t2 to $fp-192
	  sw $t3, -196($fp)	# spill _tmp68 from $t3 to $fp-196
	  sw $t5, -200($fp)	# spill _tmp69 from $t5 to $fp-200
	  sw $t7, -204($fp)	# spill _tmp70 from $t7 to $fp-204
	  sw $s1, -208($fp)	# spill _tmp71 from $s1 to $fp-208
	  sw $s2, -212($fp)	# spill _tmp72 from $s2 to $fp-212
	  sw $s3, -216($fp)	# spill _tmp73 from $s3 to $fp-216
	  sw $s4, -220($fp)	# spill _tmp74 from $s4 to $fp-220
	  sw $s5, -224($fp)	# spill _tmp75 from $s5 to $fp-224
	  sw $s6, -228($fp)	# spill _tmp76 from $s6 to $fp-228
	  sw $s7, -232($fp)	# spill _tmp77 from $s7 to $fp-232
	  sw $t8, -236($fp)	# spill _tmp78 from $t8 to $fp-236
	  sw $t9, -240($fp)	# spill _tmp79 from $t9 to $fp-240
	  beqz $t1, _L4	# branch if _tmp81 is zero 
	# _tmp82 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp82
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -252($fp)	# spill _tmp82 from $t0 to $fp-252
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L4:
	# _tmp83 = _tmp73 * _tmp75
	  lw $t0, -216($fp)	# load _tmp73 from $fp-216 into $t0
	  lw $t1, -224($fp)	# load _tmp75 from $fp-224 into $t1
	  mul $t2, $t0, $t1	
	# _tmp84 = _tmp83 + _tmp75
	  add $t3, $t2, $t1	
	# _tmp85 = _tmp72 + _tmp84
	  lw $t4, -212($fp)	# load _tmp72 from $fp-212 into $t4
	  add $t5, $t4, $t3	
	# _tmp86 = *(_tmp85)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam y
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t7, 12($fp)	# load y from $fp+12 into $t7
	  sw $t7, 4($sp)	# copy param value to stack
	# PushParam x
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $s0, 8($fp)	# load x from $fp+8 into $s0
	  sw $s0, 4($sp)	# copy param value to stack
	# _tmp87 = *(_tmp86)
	  lw $s1, 0($t6) 	# load with offset
	# _tmp88 = *(_tmp87)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp89 = ACall _tmp88
	# (save modified registers before flow of control change)
	  sw $t2, -256($fp)	# spill _tmp83 from $t2 to $fp-256
	  sw $t3, -260($fp)	# spill _tmp84 from $t3 to $fp-260
	  sw $t5, -264($fp)	# spill _tmp85 from $t5 to $fp-264
	  sw $t6, -268($fp)	# spill _tmp86 from $t6 to $fp-268
	  sw $s1, -272($fp)	# spill _tmp87 from $s1 to $fp-272
	  sw $s2, -276($fp)	# spill _tmp88 from $s2 to $fp-276
	  jalr $s2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp90 = _tmp86 - _tmp89
	  lw $t1, -268($fp)	# load _tmp86 from $fp-268 into $t1
	  sub $t2, $t1, $t0	
	# _tmp91 = *(_tmp87 + 4)
	  lw $t3, -272($fp)	# load _tmp87 from $fp-272 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp90
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp91
	# (save modified registers before flow of control change)
	  sw $t0, -280($fp)	# spill _tmp89 from $t0 to $fp-280
	  sw $t2, -284($fp)	# spill _tmp90 from $t2 to $fp-284
	  sw $t4, -288($fp)	# spill _tmp91 from $t4 to $fp-288
	  jalr $t4            	# jump to function
	# _tmp92 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# _tmp93 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp94 = this + _tmp93
	  lw $t2, 4($fp)	# load this from $fp+4 into $t2
	  add $t3, $t2, $t1	
	# _tmp95 = *(_tmp94)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp96 = 1
	  li $t5, 1		# load constant value 1 into $t5
	# _tmp97 = 0
	  li $t6, 0		# load constant value 0 into $t6
	# _tmp98 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp99 = *(_tmp95)
	  lw $s0, 0($t4) 	# load with offset
	# _tmp100 = _tmp99 == _tmp96
	  seq $s1, $s0, $t5	
	# _tmp101 = _tmp99 < _tmp96
	  slt $s2, $s0, $t5	
	# _tmp102 = _tmp101 || _tmp100
	  or $s3, $s2, $s1	
	# _tmp103 = _tmp96 < _tmp97
	  slt $s4, $t5, $t6	
	# _tmp104 = _tmp103 || _tmp102
	  or $s5, $s4, $s3	
	# IfZ _tmp104 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t0, -292($fp)	# spill _tmp92 from $t0 to $fp-292
	  sw $t1, -296($fp)	# spill _tmp93 from $t1 to $fp-296
	  sw $t3, -300($fp)	# spill _tmp94 from $t3 to $fp-300
	  sw $t4, -304($fp)	# spill _tmp95 from $t4 to $fp-304
	  sw $t5, -308($fp)	# spill _tmp96 from $t5 to $fp-308
	  sw $t6, -312($fp)	# spill _tmp97 from $t6 to $fp-312
	  sw $t7, -316($fp)	# spill _tmp98 from $t7 to $fp-316
	  sw $s0, -320($fp)	# spill _tmp99 from $s0 to $fp-320
	  sw $s1, -324($fp)	# spill _tmp100 from $s1 to $fp-324
	  sw $s2, -328($fp)	# spill _tmp101 from $s2 to $fp-328
	  sw $s3, -332($fp)	# spill _tmp102 from $s3 to $fp-332
	  sw $s4, -336($fp)	# spill _tmp103 from $s4 to $fp-336
	  sw $s5, -340($fp)	# spill _tmp104 from $s5 to $fp-340
	  beqz $s5, _L5	# branch if _tmp104 is zero 
	# _tmp105 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string8: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp105
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -344($fp)	# spill _tmp105 from $t0 to $fp-344
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L5:
	# _tmp106 = _tmp96 * _tmp98
	  lw $t0, -308($fp)	# load _tmp96 from $fp-308 into $t0
	  lw $t1, -316($fp)	# load _tmp98 from $fp-316 into $t1
	  mul $t2, $t0, $t1	
	# _tmp107 = _tmp106 + _tmp98
	  add $t3, $t2, $t1	
	# _tmp108 = _tmp95 + _tmp107
	  lw $t4, -304($fp)	# load _tmp95 from $fp-304 into $t4
	  add $t5, $t4, $t3	
	# _tmp109 = *(_tmp108)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp110 = 12
	  li $t7, 12		# load constant value 12 into $t7
	# PushParam _tmp110
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# _tmp111 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -348($fp)	# spill _tmp106 from $t2 to $fp-348
	  sw $t3, -352($fp)	# spill _tmp107 from $t3 to $fp-352
	  sw $t5, -356($fp)	# spill _tmp108 from $t5 to $fp-356
	  sw $t6, -360($fp)	# spill _tmp109 from $t6 to $fp-360
	  sw $t7, -364($fp)	# spill _tmp110 from $t7 to $fp-364
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp112 = Point
	  la $t1, Point	# load label
	# *(_tmp111) = _tmp112
	  sw $t1, 0($t0) 	# store with offset
	# _tmp113 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp114 = this + _tmp113
	  lw $t3, 4($fp)	# load this from $fp+4 into $t3
	  add $t4, $t3, $t2	
	# _tmp115 = *(_tmp114)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp116 = 1
	  li $t6, 1		# load constant value 1 into $t6
	# _tmp117 = 0
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp118 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp119 = *(_tmp115)
	  lw $s1, 0($t5) 	# load with offset
	# _tmp120 = _tmp119 == _tmp116
	  seq $s2, $s1, $t6	
	# _tmp121 = _tmp119 < _tmp116
	  slt $s3, $s1, $t6	
	# _tmp122 = _tmp121 || _tmp120
	  or $s4, $s3, $s2	
	# _tmp123 = _tmp116 < _tmp117
	  slt $s5, $t6, $t7	
	# _tmp124 = _tmp123 || _tmp122
	  or $s6, $s5, $s4	
	# IfZ _tmp124 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t0, -368($fp)	# spill _tmp111 from $t0 to $fp-368
	  sw $t1, -372($fp)	# spill _tmp112 from $t1 to $fp-372
	  sw $t2, -376($fp)	# spill _tmp113 from $t2 to $fp-376
	  sw $t4, -380($fp)	# spill _tmp114 from $t4 to $fp-380
	  sw $t5, -384($fp)	# spill _tmp115 from $t5 to $fp-384
	  sw $t6, -388($fp)	# spill _tmp116 from $t6 to $fp-388
	  sw $t7, -392($fp)	# spill _tmp117 from $t7 to $fp-392
	  sw $s0, -396($fp)	# spill _tmp118 from $s0 to $fp-396
	  sw $s1, -400($fp)	# spill _tmp119 from $s1 to $fp-400
	  sw $s2, -404($fp)	# spill _tmp120 from $s2 to $fp-404
	  sw $s3, -408($fp)	# spill _tmp121 from $s3 to $fp-408
	  sw $s4, -412($fp)	# spill _tmp122 from $s4 to $fp-412
	  sw $s5, -416($fp)	# spill _tmp123 from $s5 to $fp-416
	  sw $s6, -420($fp)	# spill _tmp124 from $s6 to $fp-420
	  beqz $s6, _L6	# branch if _tmp124 is zero 
	# _tmp125 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string9: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp125
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -424($fp)	# spill _tmp125 from $t0 to $fp-424
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L6:
	# _tmp126 = _tmp116 * _tmp118
	  lw $t0, -388($fp)	# load _tmp116 from $fp-388 into $t0
	  lw $t1, -396($fp)	# load _tmp118 from $fp-396 into $t1
	  mul $t2, $t0, $t1	
	# _tmp127 = _tmp126 + _tmp118
	  add $t3, $t2, $t1	
	# _tmp128 = _tmp115 + _tmp127
	  lw $t4, -384($fp)	# load _tmp115 from $fp-384 into $t4
	  add $t5, $t4, $t3	
	# *(_tmp128) = _tmp111
	  lw $t6, -368($fp)	# load _tmp111 from $fp-368 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp129 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp130 = this + _tmp129
	  lw $s0, 4($fp)	# load this from $fp+4 into $s0
	  add $s1, $s0, $t7	
	# _tmp131 = *(_tmp130)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp132 = 1
	  li $s3, 1		# load constant value 1 into $s3
	# _tmp133 = 0
	  li $s4, 0		# load constant value 0 into $s4
	# _tmp134 = 4
	  li $s5, 4		# load constant value 4 into $s5
	# _tmp135 = *(_tmp131)
	  lw $s6, 0($s2) 	# load with offset
	# _tmp136 = _tmp135 == _tmp132
	  seq $s7, $s6, $s3	
	# _tmp137 = _tmp135 < _tmp132
	  slt $t8, $s6, $s3	
	# _tmp138 = _tmp137 || _tmp136
	  or $t9, $t8, $s7	
	# _tmp139 = _tmp132 < _tmp133
	  slt $t0, $s3, $s4	
	# _tmp140 = _tmp139 || _tmp138
	  or $t1, $t0, $t9	
	# IfZ _tmp140 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t0, -480($fp)	# spill _tmp139 from $t0 to $fp-480
	  sw $t1, -484($fp)	# spill _tmp140 from $t1 to $fp-484
	  sw $t2, -428($fp)	# spill _tmp126 from $t2 to $fp-428
	  sw $t3, -432($fp)	# spill _tmp127 from $t3 to $fp-432
	  sw $t5, -436($fp)	# spill _tmp128 from $t5 to $fp-436
	  sw $t7, -440($fp)	# spill _tmp129 from $t7 to $fp-440
	  sw $s1, -444($fp)	# spill _tmp130 from $s1 to $fp-444
	  sw $s2, -448($fp)	# spill _tmp131 from $s2 to $fp-448
	  sw $s3, -452($fp)	# spill _tmp132 from $s3 to $fp-452
	  sw $s4, -456($fp)	# spill _tmp133 from $s4 to $fp-456
	  sw $s5, -460($fp)	# spill _tmp134 from $s5 to $fp-460
	  sw $s6, -464($fp)	# spill _tmp135 from $s6 to $fp-464
	  sw $s7, -468($fp)	# spill _tmp136 from $s7 to $fp-468
	  sw $t8, -472($fp)	# spill _tmp137 from $t8 to $fp-472
	  sw $t9, -476($fp)	# spill _tmp138 from $t9 to $fp-476
	  beqz $t1, _L7	# branch if _tmp140 is zero 
	# _tmp141 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string10: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp141
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -488($fp)	# spill _tmp141 from $t0 to $fp-488
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L7:
	# _tmp142 = _tmp132 * _tmp134
	  lw $t0, -452($fp)	# load _tmp132 from $fp-452 into $t0
	  lw $t1, -460($fp)	# load _tmp134 from $fp-460 into $t1
	  mul $t2, $t0, $t1	
	# _tmp143 = _tmp142 + _tmp134
	  add $t3, $t2, $t1	
	# _tmp144 = _tmp131 + _tmp143
	  lw $t4, -448($fp)	# load _tmp131 from $fp-448 into $t4
	  add $t5, $t4, $t3	
	# _tmp145 = *(_tmp144)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp146 = y + h
	  lw $t7, 12($fp)	# load y from $fp+12 into $t7
	  lw $s0, 20($fp)	# load h from $fp+20 into $s0
	  add $s1, $t7, $s0	
	# PushParam _tmp146
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s1, 4($sp)	# copy param value to stack
	# _tmp147 = x + w
	  lw $s2, 8($fp)	# load x from $fp+8 into $s2
	  lw $s3, 16($fp)	# load w from $fp+16 into $s3
	  add $s4, $s2, $s3	
	# PushParam _tmp147
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s4, 4($sp)	# copy param value to stack
	# _tmp148 = *(_tmp145)
	  lw $s5, 0($t6) 	# load with offset
	# _tmp149 = *(_tmp148)
	  lw $s6, 0($s5) 	# load with offset
	# _tmp150 = ACall _tmp149
	# (save modified registers before flow of control change)
	  sw $t2, -492($fp)	# spill _tmp142 from $t2 to $fp-492
	  sw $t3, -496($fp)	# spill _tmp143 from $t3 to $fp-496
	  sw $t5, -500($fp)	# spill _tmp144 from $t5 to $fp-500
	  sw $t6, -504($fp)	# spill _tmp145 from $t6 to $fp-504
	  sw $s1, -508($fp)	# spill _tmp146 from $s1 to $fp-508
	  sw $s4, -512($fp)	# spill _tmp147 from $s4 to $fp-512
	  sw $s5, -516($fp)	# spill _tmp148 from $s5 to $fp-516
	  sw $s6, -520($fp)	# spill _tmp149 from $s6 to $fp-520
	  jalr $s6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp151 = _tmp145 - _tmp150
	  lw $t1, -504($fp)	# load _tmp145 from $fp-504 into $t1
	  sub $t2, $t1, $t0	
	# _tmp152 = *(_tmp148 + 4)
	  lw $t3, -516($fp)	# load _tmp148 from $fp-516 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp151
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp152
	# (save modified registers before flow of control change)
	  sw $t0, -524($fp)	# spill _tmp150 from $t0 to $fp-524
	  sw $t2, -528($fp)	# spill _tmp151 from $t2 to $fp-528
	  sw $t4, -532($fp)	# spill _tmp152 from $t4 to $fp-532
	  jalr $t4            	# jump to function
	# _tmp153 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Rect.PrintSelf:
	# BeginFunc 196
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 196	# decrement sp to make space for locals/temps
	# _tmp154 = "{\n lower left = "
	  .data			# create string constant marked with label
	  _string11: .asciiz "{\n lower left = "
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp154
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp154 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp155 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp156 = this + _tmp155
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp157 = *(_tmp156)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp158 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp159 = 0
	  li $t5, 0		# load constant value 0 into $t5
	# _tmp160 = 4
	  li $t6, 4		# load constant value 4 into $t6
	# _tmp161 = *(_tmp157)
	  lw $t7, 0($t3) 	# load with offset
	# _tmp162 = _tmp161 == _tmp158
	  seq $s0, $t7, $t4	
	# _tmp163 = _tmp161 < _tmp158
	  slt $s1, $t7, $t4	
	# _tmp164 = _tmp163 || _tmp162
	  or $s2, $s1, $s0	
	# _tmp165 = _tmp158 < _tmp159
	  slt $s3, $t4, $t5	
	# _tmp166 = _tmp165 || _tmp164
	  or $s4, $s3, $s2	
	# IfZ _tmp166 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp155 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp156 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp157 from $t3 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp158 from $t4 to $fp-24
	  sw $t5, -28($fp)	# spill _tmp159 from $t5 to $fp-28
	  sw $t6, -32($fp)	# spill _tmp160 from $t6 to $fp-32
	  sw $t7, -36($fp)	# spill _tmp161 from $t7 to $fp-36
	  sw $s0, -40($fp)	# spill _tmp162 from $s0 to $fp-40
	  sw $s1, -44($fp)	# spill _tmp163 from $s1 to $fp-44
	  sw $s2, -48($fp)	# spill _tmp164 from $s2 to $fp-48
	  sw $s3, -52($fp)	# spill _tmp165 from $s3 to $fp-52
	  sw $s4, -56($fp)	# spill _tmp166 from $s4 to $fp-56
	  beqz $s4, _L8	# branch if _tmp166 is zero 
	# _tmp167 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string12: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string12	# load label
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
  _L8:
	# _tmp168 = _tmp158 * _tmp160
	  lw $t0, -24($fp)	# load _tmp158 from $fp-24 into $t0
	  lw $t1, -32($fp)	# load _tmp160 from $fp-32 into $t1
	  mul $t2, $t0, $t1	
	# _tmp169 = _tmp168 + _tmp160
	  add $t3, $t2, $t1	
	# _tmp170 = _tmp157 + _tmp169
	  lw $t4, -20($fp)	# load _tmp157 from $fp-20 into $t4
	  add $t5, $t4, $t3	
	# _tmp171 = *(_tmp170)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp172 = *(_tmp171)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp173 = *(_tmp172)
	  lw $s0, 0($t7) 	# load with offset
	# _tmp174 = ACall _tmp173
	# (save modified registers before flow of control change)
	  sw $t2, -64($fp)	# spill _tmp168 from $t2 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp169 from $t3 to $fp-68
	  sw $t5, -72($fp)	# spill _tmp170 from $t5 to $fp-72
	  sw $t6, -76($fp)	# spill _tmp171 from $t6 to $fp-76
	  sw $t7, -80($fp)	# spill _tmp172 from $t7 to $fp-80
	  sw $s0, -84($fp)	# spill _tmp173 from $s0 to $fp-84
	  jalr $s0            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp175 = _tmp171 - _tmp174
	  lw $t1, -76($fp)	# load _tmp171 from $fp-76 into $t1
	  sub $t2, $t1, $t0	
	# _tmp176 = *(_tmp172 + 8)
	  lw $t3, -80($fp)	# load _tmp172 from $fp-80 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp175
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp176
	# (save modified registers before flow of control change)
	  sw $t0, -88($fp)	# spill _tmp174 from $t0 to $fp-88
	  sw $t2, -92($fp)	# spill _tmp175 from $t2 to $fp-92
	  sw $t4, -96($fp)	# spill _tmp176 from $t4 to $fp-96
	  jalr $t4            	# jump to function
	# _tmp177 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp178 = " upper right = "
	  .data			# create string constant marked with label
	  _string13: .asciiz " upper right = "
	  .text
	  la $t1, _string13	# load label
	# PushParam _tmp178
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp177 from $t0 to $fp-100
	  sw $t1, -104($fp)	# spill _tmp178 from $t1 to $fp-104
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp179 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp180 = this + _tmp179
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp181 = *(_tmp180)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp182 = 1
	  li $t4, 1		# load constant value 1 into $t4
	# _tmp183 = 0
	  li $t5, 0		# load constant value 0 into $t5
	# _tmp184 = 4
	  li $t6, 4		# load constant value 4 into $t6
	# _tmp185 = *(_tmp181)
	  lw $t7, 0($t3) 	# load with offset
	# _tmp186 = _tmp185 == _tmp182
	  seq $s0, $t7, $t4	
	# _tmp187 = _tmp185 < _tmp182
	  slt $s1, $t7, $t4	
	# _tmp188 = _tmp187 || _tmp186
	  or $s2, $s1, $s0	
	# _tmp189 = _tmp182 < _tmp183
	  slt $s3, $t4, $t5	
	# _tmp190 = _tmp189 || _tmp188
	  or $s4, $s3, $s2	
	# IfZ _tmp190 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp179 from $t0 to $fp-108
	  sw $t2, -112($fp)	# spill _tmp180 from $t2 to $fp-112
	  sw $t3, -116($fp)	# spill _tmp181 from $t3 to $fp-116
	  sw $t4, -120($fp)	# spill _tmp182 from $t4 to $fp-120
	  sw $t5, -124($fp)	# spill _tmp183 from $t5 to $fp-124
	  sw $t6, -128($fp)	# spill _tmp184 from $t6 to $fp-128
	  sw $t7, -132($fp)	# spill _tmp185 from $t7 to $fp-132
	  sw $s0, -136($fp)	# spill _tmp186 from $s0 to $fp-136
	  sw $s1, -140($fp)	# spill _tmp187 from $s1 to $fp-140
	  sw $s2, -144($fp)	# spill _tmp188 from $s2 to $fp-144
	  sw $s3, -148($fp)	# spill _tmp189 from $s3 to $fp-148
	  sw $s4, -152($fp)	# spill _tmp190 from $s4 to $fp-152
	  beqz $s4, _L9	# branch if _tmp190 is zero 
	# _tmp191 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string14: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string14	# load label
	# PushParam _tmp191
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp191 from $t0 to $fp-156
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L9:
	# _tmp192 = _tmp182 * _tmp184
	  lw $t0, -120($fp)	# load _tmp182 from $fp-120 into $t0
	  lw $t1, -128($fp)	# load _tmp184 from $fp-128 into $t1
	  mul $t2, $t0, $t1	
	# _tmp193 = _tmp192 + _tmp184
	  add $t3, $t2, $t1	
	# _tmp194 = _tmp181 + _tmp193
	  lw $t4, -116($fp)	# load _tmp181 from $fp-116 into $t4
	  add $t5, $t4, $t3	
	# _tmp195 = *(_tmp194)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp196 = *(_tmp195)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp197 = *(_tmp196)
	  lw $s0, 0($t7) 	# load with offset
	# _tmp198 = ACall _tmp197
	# (save modified registers before flow of control change)
	  sw $t2, -160($fp)	# spill _tmp192 from $t2 to $fp-160
	  sw $t3, -164($fp)	# spill _tmp193 from $t3 to $fp-164
	  sw $t5, -168($fp)	# spill _tmp194 from $t5 to $fp-168
	  sw $t6, -172($fp)	# spill _tmp195 from $t6 to $fp-172
	  sw $t7, -176($fp)	# spill _tmp196 from $t7 to $fp-176
	  sw $s0, -180($fp)	# spill _tmp197 from $s0 to $fp-180
	  jalr $s0            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp199 = _tmp195 - _tmp198
	  lw $t1, -172($fp)	# load _tmp195 from $fp-172 into $t1
	  sub $t2, $t1, $t0	
	# _tmp200 = *(_tmp196 + 8)
	  lw $t3, -176($fp)	# load _tmp196 from $fp-176 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp199
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp200
	# (save modified registers before flow of control change)
	  sw $t0, -184($fp)	# spill _tmp198 from $t0 to $fp-184
	  sw $t2, -188($fp)	# spill _tmp199 from $t2 to $fp-188
	  sw $t4, -192($fp)	# spill _tmp200 from $t4 to $fp-192
	  jalr $t4            	# jump to function
	# _tmp201 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp202 = "}\n"
	  .data			# create string constant marked with label
	  _string15: .asciiz "}\n"
	  .text
	  la $t1, _string15	# load label
	# PushParam _tmp202
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -196($fp)	# spill _tmp201 from $t0 to $fp-196
	  sw $t1, -200($fp)	# spill _tmp202 from $t1 to $fp-200
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
	# _tmp203 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp203
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
	# BeginFunc 80
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 80	# decrement sp to make space for locals/temps
	# _tmp204 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# PushParam _tmp204
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp205 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp204 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp206 = Rect
	  la $t1, Rect	# load label
	# *(_tmp205) = _tmp206
	  sw $t1, 0($t0) 	# store with offset
	# r = _tmp205
	  move $t2, $t0		# copy value
	# _tmp207 = 28
	  li $t3, 28		# load constant value 28 into $t3
	# PushParam _tmp207
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp208 = 5
	  li $t4, 5		# load constant value 5 into $t4
	# PushParam _tmp208
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp209 = 10
	  li $t5, 10		# load constant value 10 into $t5
	# PushParam _tmp209
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t5, 4($sp)	# copy param value to stack
	# _tmp210 = 10
	  li $t6, 10		# load constant value 10 into $t6
	# PushParam _tmp210
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# _tmp211 = *(r)
	  lw $t7, 0($t2) 	# load with offset
	# _tmp212 = *(_tmp211)
	  lw $s0, 0($t7) 	# load with offset
	# _tmp213 = ACall _tmp212
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp205 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp206 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill r from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp207 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp208 from $t4 to $fp-28
	  sw $t5, -32($fp)	# spill _tmp209 from $t5 to $fp-32
	  sw $t6, -36($fp)	# spill _tmp210 from $t6 to $fp-36
	  sw $t7, -40($fp)	# spill _tmp211 from $t7 to $fp-40
	  sw $s0, -44($fp)	# spill _tmp212 from $s0 to $fp-44
	  jalr $s0            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp214 = r - _tmp213
	  lw $t1, -8($fp)	# load r from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp215 = *(_tmp211 + 4)
	  lw $t3, -40($fp)	# load _tmp211 from $fp-40 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp214
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp215
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp213 from $t0 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp214 from $t2 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp215 from $t4 to $fp-56
	  jalr $t4            	# jump to function
	# _tmp216 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 20
	  add $sp, $sp, 20	# pop params off stack
	# _tmp217 = *(r)
	  lw $t1, -8($fp)	# load r from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp218 = *(_tmp217)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp219 = ACall _tmp218
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp216 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp217 from $t2 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp218 from $t3 to $fp-68
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp220 = r - _tmp219
	  lw $t1, -8($fp)	# load r from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp221 = *(_tmp217 + 8)
	  lw $t3, -64($fp)	# load _tmp217 from $fp-64 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp220
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp221
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp219 from $t0 to $fp-72
	  sw $t2, -76($fp)	# spill _tmp220 from $t2 to $fp-76
	  sw $t4, -80($fp)	# spill _tmp221 from $t4 to $fp-80
	  jalr $t4            	# jump to function
	# _tmp222 = 0
	  li $t0, 0		# load constant value 0 into $t0
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