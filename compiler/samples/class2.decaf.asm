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
	  .word f_Point.PrintBoth
	  .word f_Point.equals
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
	# *(_tmp5) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
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
	# *(_tmp10) = y
	  lw $s4, 12($fp)	# load y from $fp+12 into $s4
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
  f_Point.PrintBoth:
	# BeginFunc 72
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 72	# decrement sp to make space for locals/temps
	# _tmp20 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp21 = *(_tmp20)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp22 = ACall _tmp21
	# (save modified registers before flow of control change)
	  sw $t1, -8($fp)	# spill _tmp20 from $t1 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp21 from $t2 to $fp-12
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp23 = this - _tmp22
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp24 = *(_tmp20 + 8)
	  lw $t3, -8($fp)	# load _tmp20 from $fp-8 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp24
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp22 from $t0 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp23 from $t2 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp24 from $t4 to $fp-24
	  jalr $t4            	# jump to function
	# _tmp25 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp26 = *(other)
	  lw $t1, 8($fp)	# load other from $fp+8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp27 = *(_tmp26)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp28 = ACall _tmp27
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp25 from $t0 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp26 from $t2 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp27 from $t3 to $fp-36
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp29 = other - _tmp28
	  lw $t1, 8($fp)	# load other from $fp+8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp30 = *(_tmp26 + 8)
	  lw $t3, -32($fp)	# load _tmp26 from $fp-32 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp30
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp28 from $t0 to $fp-40
	  sw $t2, -44($fp)	# spill _tmp29 from $t2 to $fp-44
	  sw $t4, -48($fp)	# spill _tmp30 from $t4 to $fp-48
	  jalr $t4            	# jump to function
	# _tmp31 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp32 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp33 = this + _tmp32
	  lw $t2, 4($fp)	# load this from $fp+4 into $t2
	  add $t3, $t2, $t1	
	# _tmp34 = *(_tmp33)
	  lw $t4, 0($t3) 	# load with offset
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp31 from $t0 to $fp-52
	  sw $t1, -56($fp)	# spill _tmp32 from $t1 to $fp-56
	  sw $t3, -60($fp)	# spill _tmp33 from $t3 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp34 from $t4 to $fp-64
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp35 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp36 = other + _tmp35
	  lw $t1, 8($fp)	# load other from $fp+8 into $t1
	  add $t2, $t1, $t0	
	# _tmp37 = *(_tmp36)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp37
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp35 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp36 from $t2 to $fp-72
	  sw $t3, -76($fp)	# spill _tmp37 from $t3 to $fp-76
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Point.equals:
	# BeginFunc 60
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 60	# decrement sp to make space for locals/temps
	# _tmp38 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp39 = this + _tmp38
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp40 = *(_tmp39)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp41 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp42 = other + _tmp41
	  lw $t5, 8($fp)	# load other from $fp+8 into $t5
	  add $t6, $t5, $t4	
	# _tmp43 = *(_tmp42)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp44 = _tmp40 == _tmp43
	  seq $s0, $t3, $t7	
	# _tmp45 = 8
	  li $s1, 8		# load constant value 8 into $s1
	# _tmp46 = this + _tmp45
	  add $s2, $t1, $s1	
	# _tmp47 = *(_tmp46)
	  lw $s3, 0($s2) 	# load with offset
	# _tmp48 = 8
	  li $s4, 8		# load constant value 8 into $s4
	# _tmp49 = other + _tmp48
	  add $s5, $t5, $s4	
	# _tmp50 = *(_tmp49)
	  lw $s6, 0($s5) 	# load with offset
	# _tmp51 = _tmp47 == _tmp50
	  seq $s7, $s3, $s6	
	# _tmp52 = _tmp44 && _tmp51
	  and $t8, $s0, $s7	
	# Return _tmp52
	  move $v0, $t8		# assign return value into $v0
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
	# _tmp53 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp53
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
	# BeginFunc 216
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 216	# decrement sp to make space for locals/temps
	# _tmp54 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# PushParam _tmp54
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp55 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp54 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp56 = Point
	  la $t1, Point	# load label
	# *(_tmp55) = _tmp56
	  sw $t1, 0($t0) 	# store with offset
	# p = _tmp55
	  move $t2, $t0		# copy value
	# _tmp57 = 5
	  li $t3, 5		# load constant value 5 into $t3
	# PushParam _tmp57
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp58 = 3
	  li $t4, 3		# load constant value 3 into $t4
	# PushParam _tmp58
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp59 = *(p)
	  lw $t5, 0($t2) 	# load with offset
	# _tmp60 = *(_tmp59)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp61 = ACall _tmp60
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp55 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp56 from $t1 to $fp-24
	  sw $t2, -8($fp)	# spill p from $t2 to $fp-8
	  sw $t3, -28($fp)	# spill _tmp57 from $t3 to $fp-28
	  sw $t4, -32($fp)	# spill _tmp58 from $t4 to $fp-32
	  sw $t5, -36($fp)	# spill _tmp59 from $t5 to $fp-36
	  sw $t6, -40($fp)	# spill _tmp60 from $t6 to $fp-40
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp62 = p - _tmp61
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp63 = *(_tmp59 + 4)
	  lw $t3, -36($fp)	# load _tmp59 from $fp-36 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp62
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp63
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp61 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp62 from $t2 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp63 from $t4 to $fp-52
	  jalr $t4            	# jump to function
	# _tmp64 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# _tmp65 = *(p)
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp66 = *(_tmp65)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp67 = ACall _tmp66
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp64 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp65 from $t2 to $fp-60
	  sw $t3, -64($fp)	# spill _tmp66 from $t3 to $fp-64
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp68 = p - _tmp67
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp69 = *(_tmp65 + 8)
	  lw $t3, -60($fp)	# load _tmp65 from $fp-60 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp68
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp69
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp67 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp68 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp69 from $t4 to $fp-76
	  jalr $t4            	# jump to function
	# _tmp70 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp71 = 12
	  li $t1, 12		# load constant value 12 into $t1
	# PushParam _tmp71
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp72 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp70 from $t0 to $fp-80
	  sw $t1, -84($fp)	# spill _tmp71 from $t1 to $fp-84
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp73 = Point
	  la $t1, Point	# load label
	# *(_tmp72) = _tmp73
	  sw $t1, 0($t0) 	# store with offset
	# q = _tmp72
	  move $t2, $t0		# copy value
	# _tmp74 = 6
	  li $t3, 6		# load constant value 6 into $t3
	# PushParam _tmp74
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp75 = 5
	  li $t4, 5		# load constant value 5 into $t4
	# PushParam _tmp75
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp76 = *(q)
	  lw $t5, 0($t2) 	# load with offset
	# _tmp77 = *(_tmp76)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp78 = ACall _tmp77
	# (save modified registers before flow of control change)
	  sw $t0, -88($fp)	# spill _tmp72 from $t0 to $fp-88
	  sw $t1, -92($fp)	# spill _tmp73 from $t1 to $fp-92
	  sw $t2, -12($fp)	# spill q from $t2 to $fp-12
	  sw $t3, -96($fp)	# spill _tmp74 from $t3 to $fp-96
	  sw $t4, -100($fp)	# spill _tmp75 from $t4 to $fp-100
	  sw $t5, -104($fp)	# spill _tmp76 from $t5 to $fp-104
	  sw $t6, -108($fp)	# spill _tmp77 from $t6 to $fp-108
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp79 = q - _tmp78
	  lw $t1, -12($fp)	# load q from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp80 = *(_tmp76 + 4)
	  lw $t3, -104($fp)	# load _tmp76 from $fp-104 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp79
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp80
	# (save modified registers before flow of control change)
	  sw $t0, -112($fp)	# spill _tmp78 from $t0 to $fp-112
	  sw $t2, -116($fp)	# spill _tmp79 from $t2 to $fp-116
	  sw $t4, -120($fp)	# spill _tmp80 from $t4 to $fp-120
	  jalr $t4            	# jump to function
	# _tmp81 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 12
	  add $sp, $sp, 12	# pop params off stack
	# _tmp82 = *(q)
	  lw $t1, -12($fp)	# load q from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp83 = *(_tmp82)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp84 = ACall _tmp83
	# (save modified registers before flow of control change)
	  sw $t0, -124($fp)	# spill _tmp81 from $t0 to $fp-124
	  sw $t2, -128($fp)	# spill _tmp82 from $t2 to $fp-128
	  sw $t3, -132($fp)	# spill _tmp83 from $t3 to $fp-132
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp85 = q - _tmp84
	  lw $t1, -12($fp)	# load q from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp86 = *(_tmp82 + 8)
	  lw $t3, -128($fp)	# load _tmp82 from $fp-128 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp85
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp86
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp84 from $t0 to $fp-136
	  sw $t2, -140($fp)	# spill _tmp85 from $t2 to $fp-140
	  sw $t4, -144($fp)	# spill _tmp86 from $t4 to $fp-144
	  jalr $t4            	# jump to function
	# _tmp87 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam q
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, -12($fp)	# load q from $fp-12 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp88 = *(p)
	  lw $t2, -8($fp)	# load p from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp89 = *(_tmp88)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp90 = ACall _tmp89
	# (save modified registers before flow of control change)
	  sw $t0, -148($fp)	# spill _tmp87 from $t0 to $fp-148
	  sw $t3, -152($fp)	# spill _tmp88 from $t3 to $fp-152
	  sw $t4, -156($fp)	# spill _tmp89 from $t4 to $fp-156
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp91 = p - _tmp90
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp92 = *(_tmp88 + 12)
	  lw $t3, -152($fp)	# load _tmp88 from $fp-152 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp91
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp92
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp90 from $t0 to $fp-160
	  sw $t2, -164($fp)	# spill _tmp91 from $t2 to $fp-164
	  sw $t4, -168($fp)	# spill _tmp92 from $t4 to $fp-168
	  jalr $t4            	# jump to function
	# _tmp93 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# PushParam q
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, -12($fp)	# load q from $fp-12 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp94 = *(p)
	  lw $t2, -8($fp)	# load p from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp95 = *(_tmp94)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp96 = ACall _tmp95
	# (save modified registers before flow of control change)
	  sw $t0, -172($fp)	# spill _tmp93 from $t0 to $fp-172
	  sw $t3, -176($fp)	# spill _tmp94 from $t3 to $fp-176
	  sw $t4, -180($fp)	# spill _tmp95 from $t4 to $fp-180
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp97 = p - _tmp96
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp98 = *(_tmp94 + 16)
	  lw $t3, -176($fp)	# load _tmp94 from $fp-176 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp97
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp99 = ACall _tmp98
	# (save modified registers before flow of control change)
	  sw $t0, -184($fp)	# spill _tmp96 from $t0 to $fp-184
	  sw $t2, -188($fp)	# spill _tmp97 from $t2 to $fp-188
	  sw $t4, -192($fp)	# spill _tmp98 from $t4 to $fp-192
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# PushParam _tmp99
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -196($fp)	# spill _tmp99 from $t0 to $fp-196
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam q
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# load q from $fp-12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp100 = *(q)
	  lw $t1, 0($t0) 	# load with offset
	# _tmp101 = *(_tmp100)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp102 = ACall _tmp101
	# (save modified registers before flow of control change)
	  sw $t1, -200($fp)	# spill _tmp100 from $t1 to $fp-200
	  sw $t2, -204($fp)	# spill _tmp101 from $t2 to $fp-204
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp103 = q - _tmp102
	  lw $t1, -12($fp)	# load q from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp104 = *(_tmp100 + 16)
	  lw $t3, -200($fp)	# load _tmp100 from $fp-200 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp103
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp105 = ACall _tmp104
	# (save modified registers before flow of control change)
	  sw $t0, -208($fp)	# spill _tmp102 from $t0 to $fp-208
	  sw $t2, -212($fp)	# spill _tmp103 from $t2 to $fp-212
	  sw $t4, -216($fp)	# spill _tmp104 from $t4 to $fp-216
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# PushParam _tmp105
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -220($fp)	# spill _tmp105 from $t0 to $fp-220
	  jal _PrintBool     	# jump to function
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