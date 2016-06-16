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
  _offset_main_0:
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
  f_main:
  main:
	# BeginFunc 64
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 64	# decrement sp to make space for locals/temps
	# _tmp63 = 20
	  li $t0, 20		# load constant value 20 into $t0
	# PushParam _tmp63
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp64 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp63 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp65 = Cow
	  la $t1, Cow	# load label
	# *(_tmp64) = _tmp65
	  sw $t1, 0($t0) 	# store with offset
	# b = _tmp64
	  move $t2, $t0		# copy value
	# _tmp66 = *(b)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp67 = *(_tmp66)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp68 = ACall _tmp67
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp64 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp65 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill b from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp66 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp67 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp69 = b - _tmp68
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp70 = *(_tmp66 + 8)
	  lw $t3, -24($fp)	# load _tmp66 from $fp-24 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp69
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp70
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp68 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp69 from $t2 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp70 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	# _tmp71 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp72 = *(b)
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp73 = *(_tmp72)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp74 = ACall _tmp73
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp71 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp72 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp73 from $t3 to $fp-52
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp75 = b - _tmp74
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp76 = *(_tmp72 + 12)
	  lw $t3, -48($fp)	# load _tmp72 from $fp-48 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp75
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp76
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp74 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp75 from $t2 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp76 from $t4 to $fp-64
	  jalr $t4            	# jump to function
	# _tmp77 = 0
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