	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Animal_0:
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
	# VTable for class Animal
	  .data
	  .align 2
	  Animal:		# label for class Animal vtable
	  .word _offset_Animal_0
	  .word f_Animal.Method1
	  .text
  f_Animal.Method1:
	# BeginFunc 24
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 24	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp2 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp3 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp4 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp5 = this + _tmp4
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp6 = *(_tmp5)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp4 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp5 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp6 from $t3 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_Cow_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp7 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp7
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
	# VTable for class Cow
	  .data
	  .align 2
	  Cow:		# label for class Cow vtable
	  .word _offset_Cow_0
	  .word f_Cow.Method1
	  .word f_Cow.Init
	  .word f_Cow.Method2
	  .text
  f_Cow.Init:
	# BeginFunc 120
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 120	# decrement sp to make space for locals/temps
	# _tmp8 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp9 = this + _tmp8
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp10 = *(_tmp9)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp11 = 10
	  li $t4, 10		# load constant value 10 into $t4
	# _tmp12 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp13 = this + _tmp12
	  add $t6, $t1, $t5	
	# *(_tmp13) = _tmp11
	  sw $t4, 0($t6) 	# store with offset
	# _tmp14 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp15 = this + _tmp14
	  add $s0, $t1, $t7	
	# _tmp16 = *(_tmp15)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp17 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp18 = this + _tmp17
	  add $s3, $t1, $s2	
	# _tmp19 = *(_tmp18)
	  lw $s4, 0($s3) 	# load with offset
	# _tmp20 = 2
	  li $s5, 2		# load constant value 2 into $s5
	# _tmp21 = _tmp19 * _tmp20
	  mul $s6, $s4, $s5	
	# _tmp22 = 8
	  li $s7, 8		# load constant value 8 into $s7
	# _tmp23 = this + _tmp22
	  add $t8, $t1, $s7	
	# *(_tmp23) = _tmp21
	  sw $s6, 0($t8) 	# store with offset
	# _tmp24 = 12
	  li $t9, 12		# load constant value 12 into $t9
	# _tmp25 = this + _tmp24
	  sw $t0, -8($fp)	# spill _tmp8 from $t0 to $fp-8
	  add $t0, $t1, $t9	
	# _tmp26 = *(_tmp25)
	  lw $t1, 0($t0) 	# load with offset
	# _tmp27 = 28
	  sw $t1, -80($fp)	# spill _tmp26 from $t1 to $fp-80
	  li $t1, 28		# load constant value 28 into $t1
	# _tmp28 = 12
	  sw $t2, -12($fp)	# spill _tmp9 from $t2 to $fp-12
	  li $t2, 12		# load constant value 12 into $t2
	# _tmp29 = this + _tmp28
	  sw $t3, -16($fp)	# spill _tmp10 from $t3 to $fp-16
	  lw $t3, 4($fp)	# load this from $fp+4 into $t3
	  sw $t4, -20($fp)	# spill _tmp11 from $t4 to $fp-20
	  add $t4, $t3, $t2	
	# *(_tmp29) = _tmp27
	  sw $t1, 0($t4) 	# store with offset
	# _tmp30 = 16
	  li $t3, 16		# load constant value 16 into $t3
	# _tmp31 = this + _tmp30
	  sw $t5, -24($fp)	# spill _tmp12 from $t5 to $fp-24
	  lw $t5, 4($fp)	# load this from $fp+4 into $t5
	  sw $t6, -28($fp)	# spill _tmp13 from $t6 to $fp-28
	  add $t6, $t5, $t3	
	# _tmp32 = *(_tmp31)
	  lw $t5, 0($t6) 	# load with offset
	# _tmp33 = 0
	  sw $t7, -32($fp)	# spill _tmp14 from $t7 to $fp-32
	  li $t7, 0		# load constant value 0 into $t7
	# _tmp34 = 9
	  sw $s0, -36($fp)	# spill _tmp15 from $s0 to $fp-36
	  li $s0, 9		# load constant value 9 into $s0
	# _tmp35 = _tmp33 - _tmp34
	  sw $s1, -40($fp)	# spill _tmp16 from $s1 to $fp-40
	  sub $s1, $t7, $s0	
	# _tmp36 = 16
	  sw $s2, -44($fp)	# spill _tmp17 from $s2 to $fp-44
	  li $s2, 16		# load constant value 16 into $s2
	# _tmp37 = this + _tmp36
	  sw $s3, -48($fp)	# spill _tmp18 from $s3 to $fp-48
	  lw $s3, 4($fp)	# load this from $fp+4 into $s3
	  sw $s4, -52($fp)	# spill _tmp19 from $s4 to $fp-52
	  add $s4, $s3, $s2	
	# *(_tmp37) = _tmp35
	  sw $s1, 0($s4) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Cow.Method2:
	# BeginFunc 72
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 72	# decrement sp to make space for locals/temps
	# _tmp38 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp39 = this + _tmp38
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp40 = *(_tmp39)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp38 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp39 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp40 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp41 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp42 = this + _tmp41
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp43 = *(_tmp42)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp43
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp41 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp42 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp43 from $t3 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp44 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp45 = this + _tmp44
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp46 = *(_tmp45)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp44 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp45 from $t2 to $fp-36
	  sw $t3, -40($fp)	# spill _tmp46 from $t3 to $fp-40
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp47 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp48 = this + _tmp47
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp49 = *(_tmp48)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp49
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp47 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp48 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp49 from $t3 to $fp-52
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp50 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp51 = *(_tmp50)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp52 = ACall _tmp51
	# (save modified registers before flow of control change)
	  sw $t1, -56($fp)	# spill _tmp50 from $t1 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp51 from $t2 to $fp-60
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp53 = this - _tmp52
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp54 = *(_tmp50 + 4)
	  lw $t3, -56($fp)	# load _tmp50 from $fp-56 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp53
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp54
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp52 from $t0 to $fp-64
	  sw $t2, -68($fp)	# spill _tmp53 from $t2 to $fp-68
	  sw $t4, -72($fp)	# spill _tmp54 from $t4 to $fp-72
	  jalr $t4            	# jump to function
	# _tmp55 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Cow.Method1:
	# BeginFunc 24
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 24	# decrement sp to make space for locals/temps
	# _tmp56 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp57 = this + _tmp56
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp58 = *(_tmp57)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp58
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp56 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp57 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp58 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp59 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp60 = this + _tmp59
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp61 = *(_tmp60)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp61
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp59 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp60 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp61 from $t3 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_Jersey_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp62 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp62
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
	# VTable for class Jersey
	  .data
	  .align 2
	  Jersey:		# label for class Jersey vtable
	  .word _offset_Jersey_0
	  .word f_Jersey.Method1
	  .word f_Jersey.Init
	  .word f_Jersey.Method2
	  .word f_Jersey.Method3
	  .text
  f_Jersey.Method3:
	# BeginFunc 84
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 84	# decrement sp to make space for locals/temps
	# _tmp63 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp64 = *(_tmp63)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp65 = ACall _tmp64
	# (save modified registers before flow of control change)
	  sw $t1, -8($fp)	# spill _tmp63 from $t1 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp64 from $t2 to $fp-12
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp66 = this - _tmp65
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp67 = *(_tmp63 + 8)
	  lw $t3, -8($fp)	# load _tmp63 from $fp-8 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp66
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp67
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp65 from $t0 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp66 from $t2 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp67 from $t4 to $fp-24
	  jalr $t4            	# jump to function
	# _tmp68 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp69 = 20
	  li $t1, 20		# load constant value 20 into $t1
	# _tmp70 = this + _tmp69
	  lw $t2, 4($fp)	# load this from $fp+4 into $t2
	  add $t3, $t2, $t1	
	# _tmp71 = *(_tmp70)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp72 = 25
	  li $t5, 25		# load constant value 25 into $t5
	# _tmp73 = 20
	  li $t6, 20		# load constant value 20 into $t6
	# _tmp74 = this + _tmp73
	  add $t7, $t2, $t6	
	# *(_tmp74) = _tmp72
	  sw $t5, 0($t7) 	# store with offset
	# _tmp75 = *(this)
	  lw $s0, 0($t2) 	# load with offset
	# _tmp76 = *(_tmp75)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp77 = ACall _tmp76
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp68 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp69 from $t1 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp70 from $t3 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp71 from $t4 to $fp-40
	  sw $t5, -44($fp)	# spill _tmp72 from $t5 to $fp-44
	  sw $t6, -48($fp)	# spill _tmp73 from $t6 to $fp-48
	  sw $t7, -52($fp)	# spill _tmp74 from $t7 to $fp-52
	  sw $s0, -56($fp)	# spill _tmp75 from $s0 to $fp-56
	  sw $s1, -60($fp)	# spill _tmp76 from $s1 to $fp-60
	  jalr $s1            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp78 = this - _tmp77
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp79 = *(_tmp75 + 12)
	  lw $t3, -56($fp)	# load _tmp75 from $fp-56 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp78
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp79
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp77 from $t0 to $fp-64
	  sw $t2, -68($fp)	# spill _tmp78 from $t2 to $fp-68
	  sw $t4, -72($fp)	# spill _tmp79 from $t4 to $fp-72
	  jalr $t4            	# jump to function
	# _tmp80 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp81 = 20
	  li $t1, 20		# load constant value 20 into $t1
	# _tmp82 = this + _tmp81
	  lw $t2, 4($fp)	# load this from $fp+4 into $t2
	  add $t3, $t2, $t1	
	# _tmp83 = *(_tmp82)
	  lw $t4, 0($t3) 	# load with offset
	# PushParam _tmp83
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp80 from $t0 to $fp-76
	  sw $t1, -80($fp)	# spill _tmp81 from $t1 to $fp-80
	  sw $t3, -84($fp)	# spill _tmp82 from $t3 to $fp-84
	  sw $t4, -88($fp)	# spill _tmp83 from $t4 to $fp-88
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.Method1:
	# BeginFunc 24
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 24	# decrement sp to make space for locals/temps
	# _tmp84 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp85 = this + _tmp84
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp86 = *(_tmp85)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp86
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp84 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp85 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp86 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp87 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp88 = this + _tmp87
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp89 = *(_tmp88)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp89
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp87 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp88 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp89 from $t3 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.Init:
	# BeginFunc 120
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 120	# decrement sp to make space for locals/temps
	# _tmp90 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp91 = this + _tmp90
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp92 = *(_tmp91)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp93 = 10
	  li $t4, 10		# load constant value 10 into $t4
	# _tmp94 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp95 = this + _tmp94
	  add $t6, $t1, $t5	
	# *(_tmp95) = _tmp93
	  sw $t4, 0($t6) 	# store with offset
	# _tmp96 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp97 = this + _tmp96
	  add $s0, $t1, $t7	
	# _tmp98 = *(_tmp97)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp99 = 4
	  li $s2, 4		# load constant value 4 into $s2
	# _tmp100 = this + _tmp99
	  add $s3, $t1, $s2	
	# _tmp101 = *(_tmp100)
	  lw $s4, 0($s3) 	# load with offset
	# _tmp102 = 2
	  li $s5, 2		# load constant value 2 into $s5
	# _tmp103 = _tmp101 * _tmp102
	  mul $s6, $s4, $s5	
	# _tmp104 = 8
	  li $s7, 8		# load constant value 8 into $s7
	# _tmp105 = this + _tmp104
	  add $t8, $t1, $s7	
	# *(_tmp105) = _tmp103
	  sw $s6, 0($t8) 	# store with offset
	# _tmp106 = 12
	  li $t9, 12		# load constant value 12 into $t9
	# _tmp107 = this + _tmp106
	  sw $s5, -56($fp)	# spill _tmp102 from $s5 to $fp-56
	  add $s5, $t1, $t9	
	# _tmp108 = *(_tmp107)
	  lw $t1, 0($s5) 	# load with offset
	# _tmp109 = 28
	  sw $s6, -60($fp)	# spill _tmp103 from $s6 to $fp-60
	  li $s6, 28		# load constant value 28 into $s6
	# _tmp110 = 12
	  sw $s7, -64($fp)	# spill _tmp104 from $s7 to $fp-64
	  li $s7, 12		# load constant value 12 into $s7
	# _tmp111 = this + _tmp110
	  sw $t8, -68($fp)	# spill _tmp105 from $t8 to $fp-68
	  lw $t8, 4($fp)	# load this from $fp+4 into $t8
	  sw $t9, -72($fp)	# spill _tmp106 from $t9 to $fp-72
	  add $t9, $t8, $s7	
	# *(_tmp111) = _tmp109
	  sw $s6, 0($t9) 	# store with offset
	# _tmp112 = 16
	  li $t8, 16		# load constant value 16 into $t8
	# _tmp113 = this + _tmp112
	  sw $t0, -8($fp)	# spill _tmp90 from $t0 to $fp-8
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  sw $t1, -80($fp)	# spill _tmp108 from $t1 to $fp-80
	  add $t1, $t0, $t8	
	# _tmp114 = *(_tmp113)
	  lw $t0, 0($t1) 	# load with offset
	# _tmp115 = 0
	  sw $t2, -12($fp)	# spill _tmp91 from $t2 to $fp-12
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp116 = 9
	  sw $t3, -16($fp)	# spill _tmp92 from $t3 to $fp-16
	  li $t3, 9		# load constant value 9 into $t3
	# _tmp117 = _tmp115 - _tmp116
	  sw $t4, -20($fp)	# spill _tmp93 from $t4 to $fp-20
	  sub $t4, $t2, $t3	
	# _tmp118 = 16
	  sw $t5, -24($fp)	# spill _tmp94 from $t5 to $fp-24
	  li $t5, 16		# load constant value 16 into $t5
	# _tmp119 = this + _tmp118
	  sw $t6, -28($fp)	# spill _tmp95 from $t6 to $fp-28
	  lw $t6, 4($fp)	# load this from $fp+4 into $t6
	  sw $t7, -32($fp)	# spill _tmp96 from $t7 to $fp-32
	  add $t7, $t6, $t5	
	# *(_tmp119) = _tmp117
	  sw $t4, 0($t7) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.Method2:
	# BeginFunc 72
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 72	# decrement sp to make space for locals/temps
	# _tmp120 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp121 = this + _tmp120
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp122 = *(_tmp121)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp122
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp120 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp121 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp122 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp123 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp124 = this + _tmp123
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp125 = *(_tmp124)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp125
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp123 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp124 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp125 from $t3 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp126 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp127 = this + _tmp126
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp128 = *(_tmp127)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp128
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp126 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp127 from $t2 to $fp-36
	  sw $t3, -40($fp)	# spill _tmp128 from $t3 to $fp-40
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp129 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp130 = this + _tmp129
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp131 = *(_tmp130)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp131
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp129 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp130 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp131 from $t3 to $fp-52
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp132 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp133 = *(_tmp132)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp134 = ACall _tmp133
	# (save modified registers before flow of control change)
	  sw $t1, -56($fp)	# spill _tmp132 from $t1 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp133 from $t2 to $fp-60
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp135 = this - _tmp134
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp136 = *(_tmp132 + 4)
	  lw $t3, -56($fp)	# load _tmp132 from $fp-56 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp135
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp136
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp134 from $t0 to $fp-64
	  sw $t2, -68($fp)	# spill _tmp135 from $t2 to $fp-68
	  sw $t4, -72($fp)	# spill _tmp136 from $t4 to $fp-72
	  jalr $t4            	# jump to function
	# _tmp137 = 0
	  li $t0, 0		# load constant value 0 into $t0
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
	# _tmp138 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp138
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
	# BeginFunc 64
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 64	# decrement sp to make space for locals/temps
	# _tmp139 = 24
	  li $t0, 24		# load constant value 24 into $t0
	# PushParam _tmp139
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp140 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp139 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp141 = Jersey
	  la $t1, Jersey	# load label
	# *(_tmp140) = _tmp141
	  sw $t1, 0($t0) 	# store with offset
	# b = _tmp140
	  move $t2, $t0		# copy value
	# _tmp142 = *(b)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp143 = *(_tmp142)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp144 = ACall _tmp143
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp140 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp141 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill b from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp142 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp143 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp145 = b - _tmp144
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp146 = *(_tmp142 + 8)
	  lw $t3, -24($fp)	# load _tmp142 from $fp-24 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp145
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp146
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp144 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp145 from $t2 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp146 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	# _tmp147 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp148 = *(b)
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp149 = *(_tmp148)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp150 = ACall _tmp149
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp147 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp148 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp149 from $t3 to $fp-52
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp151 = b - _tmp150
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp152 = *(_tmp148 + 16)
	  lw $t3, -48($fp)	# load _tmp148 from $fp-48 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp151
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp152
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp150 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp151 from $t2 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp152 from $t4 to $fp-64
	  jalr $t4            	# jump to function
	# _tmp153 = 0
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