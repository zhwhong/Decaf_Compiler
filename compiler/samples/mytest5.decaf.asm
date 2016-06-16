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
	  .word f_A.modify_x
	  .text
  _offset_A_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# Return _tmp1
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
	# VTable for class A_F
	  .data
	  .align 2
	  A_F:		# label for class A_F vtable
	  .word _offset_A_4
	  .word f_A.modify_x
	  .text
  f_A.modify_x:
	# BeginFunc 56
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 56	# decrement sp to make space for locals/temps
	# _tmp2 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp3 = this + _tmp2
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp4 = *(_tmp3)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp2 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp3 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp4 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = "\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp5 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp7 = this + _tmp6
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp8 = *(_tmp7)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp9 = 10
	  li $t4, 10		# load constant value 10 into $t4
	# _tmp10 = 8
	  li $t5, 8		# load constant value 8 into $t5
	# _tmp11 = this + _tmp10
	  add $t6, $t1, $t5	
	# *(_tmp11) = _tmp9
	  sw $t4, 0($t6) 	# store with offset
	# _tmp12 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp13 = this + _tmp12
	  add $s0, $t1, $t7	
	# _tmp14 = *(_tmp13)
	  lw $s1, 0($s0) 	# load with offset
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp6 from $t0 to $fp-24
	  sw $t2, -28($fp)	# spill _tmp7 from $t2 to $fp-28
	  sw $t3, -32($fp)	# spill _tmp8 from $t3 to $fp-32
	  sw $t4, -36($fp)	# spill _tmp9 from $t4 to $fp-36
	  sw $t5, -40($fp)	# spill _tmp10 from $t5 to $fp-40
	  sw $t6, -44($fp)	# spill _tmp11 from $t6 to $fp-44
	  sw $t7, -48($fp)	# spill _tmp12 from $t7 to $fp-48
	  sw $s0, -52($fp)	# spill _tmp13 from $s0 to $fp-52
	  sw $s1, -56($fp)	# spill _tmp14 from $s1 to $fp-56
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp15 = "\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp15 from $t0 to $fp-60
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_B_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp16 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp16
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
	# VTable for class B
	  .data
	  .align 2
	  B:		# label for class B vtable
	  .word _offset_B_0
	  .word f_B.modify_x
	  .word f_B.modify_both
	  .text
  _offset_B_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp17 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# Return _tmp17
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
	# VTable for class B_F
	  .data
	  .align 2
	  B_F:		# label for class B_F vtable
	  .word _offset_B_4
	  .word f_B.modify_x
	  .text
  _offset_B_8:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp18 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# Return _tmp18
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
	# VTable for class B_G
	  .data
	  .align 2
	  B_G:		# label for class B_G vtable
	  .word _offset_B_8
	  .word f_B.modify_both
	  .text
  f_B.modify_both:
	# BeginFunc 112
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 112	# decrement sp to make space for locals/temps
	# _tmp19 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp20 = this + _tmp19
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp21 = *(_tmp20)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp19 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp20 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp21 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = " "
	  .data			# create string constant marked with label
	  _string3: .asciiz " "
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp22 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp23 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp24 = this + _tmp23
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp25 = *(_tmp24)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp25
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp23 from $t0 to $fp-24
	  sw $t2, -28($fp)	# spill _tmp24 from $t2 to $fp-28
	  sw $t3, -32($fp)	# spill _tmp25 from $t3 to $fp-32
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp26 = "\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp26 from $t0 to $fp-36
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp27 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp28 = this + _tmp27
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp29 = *(_tmp28)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp30 = 42
	  li $t4, 42		# load constant value 42 into $t4
	# _tmp31 = 12
	  li $t5, 12		# load constant value 12 into $t5
	# _tmp32 = this + _tmp31
	  add $t6, $t1, $t5	
	# *(_tmp32) = _tmp30
	  sw $t4, 0($t6) 	# store with offset
	# _tmp33 = 16
	  li $t7, 16		# load constant value 16 into $t7
	# _tmp34 = this + _tmp33
	  add $s0, $t1, $t7	
	# _tmp35 = *(_tmp34)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp36 = 35
	  li $s2, 35		# load constant value 35 into $s2
	# _tmp37 = 16
	  li $s3, 16		# load constant value 16 into $s3
	# _tmp38 = this + _tmp37
	  add $s4, $t1, $s3	
	# *(_tmp38) = _tmp36
	  sw $s2, 0($s4) 	# store with offset
	# _tmp39 = 12
	  li $s5, 12		# load constant value 12 into $s5
	# _tmp40 = this + _tmp39
	  add $s6, $t1, $s5	
	# _tmp41 = *(_tmp40)
	  lw $s7, 0($s6) 	# load with offset
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s7, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp27 from $t0 to $fp-40
	  sw $t2, -44($fp)	# spill _tmp28 from $t2 to $fp-44
	  sw $t3, -48($fp)	# spill _tmp29 from $t3 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp30 from $t4 to $fp-52
	  sw $t5, -56($fp)	# spill _tmp31 from $t5 to $fp-56
	  sw $t6, -60($fp)	# spill _tmp32 from $t6 to $fp-60
	  sw $t7, -64($fp)	# spill _tmp33 from $t7 to $fp-64
	  sw $s0, -68($fp)	# spill _tmp34 from $s0 to $fp-68
	  sw $s1, -72($fp)	# spill _tmp35 from $s1 to $fp-72
	  sw $s2, -76($fp)	# spill _tmp36 from $s2 to $fp-76
	  sw $s3, -80($fp)	# spill _tmp37 from $s3 to $fp-80
	  sw $s4, -84($fp)	# spill _tmp38 from $s4 to $fp-84
	  sw $s5, -88($fp)	# spill _tmp39 from $s5 to $fp-88
	  sw $s6, -92($fp)	# spill _tmp40 from $s6 to $fp-92
	  sw $s7, -96($fp)	# spill _tmp41 from $s7 to $fp-96
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp42 = " "
	  .data			# create string constant marked with label
	  _string5: .asciiz " "
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp42
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp42 from $t0 to $fp-100
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp43 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp44 = this + _tmp43
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp45 = *(_tmp44)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp45
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -104($fp)	# spill _tmp43 from $t0 to $fp-104
	  sw $t2, -108($fp)	# spill _tmp44 from $t2 to $fp-108
	  sw $t3, -112($fp)	# spill _tmp45 from $t3 to $fp-112
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp46 = "\n"
	  .data			# create string constant marked with label
	  _string6: .asciiz "\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp46 from $t0 to $fp-116
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.modify_x:
	# BeginFunc 56
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 56	# decrement sp to make space for locals/temps
	# _tmp47 = 12
	  li $t0, 12		# load constant value 12 into $t0
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
	  sw $t0, -8($fp)	# spill _tmp47 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp48 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp49 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp50 = "\n"
	  .data			# create string constant marked with label
	  _string7: .asciiz "\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp50
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp50 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp51 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp52 = this + _tmp51
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp53 = *(_tmp52)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp54 = 10
	  li $t4, 10		# load constant value 10 into $t4
	# _tmp55 = 12
	  li $t5, 12		# load constant value 12 into $t5
	# _tmp56 = this + _tmp55
	  add $t6, $t1, $t5	
	# *(_tmp56) = _tmp54
	  sw $t4, 0($t6) 	# store with offset
	# _tmp57 = 12
	  li $t7, 12		# load constant value 12 into $t7
	# _tmp58 = this + _tmp57
	  add $s0, $t1, $t7	
	# _tmp59 = *(_tmp58)
	  lw $s1, 0($s0) 	# load with offset
	# PushParam _tmp59
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp51 from $t0 to $fp-24
	  sw $t2, -28($fp)	# spill _tmp52 from $t2 to $fp-28
	  sw $t3, -32($fp)	# spill _tmp53 from $t3 to $fp-32
	  sw $t4, -36($fp)	# spill _tmp54 from $t4 to $fp-36
	  sw $t5, -40($fp)	# spill _tmp55 from $t5 to $fp-40
	  sw $t6, -44($fp)	# spill _tmp56 from $t6 to $fp-44
	  sw $t7, -48($fp)	# spill _tmp57 from $t7 to $fp-48
	  sw $s0, -52($fp)	# spill _tmp58 from $s0 to $fp-52
	  sw $s1, -56($fp)	# spill _tmp59 from $s1 to $fp-56
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp60 = "\n"
	  .data			# create string constant marked with label
	  _string8: .asciiz "\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp60
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp60 from $t0 to $fp-60
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
	# _tmp61 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp61
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
	# BeginFunc 192
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 192	# decrement sp to make space for locals/temps
	# _tmp62 = 20
	  li $t0, 20		# load constant value 20 into $t0
	# PushParam _tmp62
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp63 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp62 from $t0 to $fp-24
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp64 = B
	  la $t1, B	# load label
	# *(_tmp63) = _tmp64
	  sw $t1, 0($t0) 	# store with offset
	# _tmp65 = B_F
	  la $t2, B_F	# load label
	# *(_tmp63 + 4) = _tmp65
	  sw $t2, 4($t0) 	# store with offset
	# _tmp66 = B_G
	  la $t3, B_G	# load label
	# *(_tmp63 + 8) = _tmp66
	  sw $t3, 8($t0) 	# store with offset
	# b = _tmp63
	  move $t4, $t0		# copy value
	# _tmp67 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp68 = b + _tmp67
	  add $t6, $t4, $t5	
	# f = _tmp68
	  move $t7, $t6		# copy value
	# _tmp69 = 8
	  li $s0, 8		# load constant value 8 into $s0
	# _tmp70 = b + _tmp69
	  add $s1, $t4, $s0	
	# g = _tmp70
	  move $s2, $s1		# copy value
	# _tmp71 = *(f)
	  lw $s3, 0($t7) 	# load with offset
	# _tmp72 = *(_tmp71)
	  lw $s4, 0($s3) 	# load with offset
	# _tmp73 = ACall _tmp72
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp63 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp64 from $t1 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp65 from $t2 to $fp-36
	  sw $t3, -40($fp)	# spill _tmp66 from $t3 to $fp-40
	  sw $t4, -12($fp)	# spill b from $t4 to $fp-12
	  sw $t5, -44($fp)	# spill _tmp67 from $t5 to $fp-44
	  sw $t6, -48($fp)	# spill _tmp68 from $t6 to $fp-48
	  sw $t7, -16($fp)	# spill f from $t7 to $fp-16
	  sw $s0, -52($fp)	# spill _tmp69 from $s0 to $fp-52
	  sw $s1, -56($fp)	# spill _tmp70 from $s1 to $fp-56
	  sw $s2, -20($fp)	# spill g from $s2 to $fp-20
	  sw $s3, -60($fp)	# spill _tmp71 from $s3 to $fp-60
	  sw $s4, -64($fp)	# spill _tmp72 from $s4 to $fp-64
	  jalr $s4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp74 = f - _tmp73
	  lw $t1, -16($fp)	# load f from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp75 = *(_tmp71 + 4)
	  lw $t3, -60($fp)	# load _tmp71 from $fp-60 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp74
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp75
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp73 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp74 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp75 from $t4 to $fp-76
	  jalr $t4            	# jump to function
	# _tmp76 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp77 = *(g)
	  lw $t1, -20($fp)	# load g from $fp-20 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp78 = *(_tmp77)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp79 = ACall _tmp78
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp76 from $t0 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp77 from $t2 to $fp-84
	  sw $t3, -88($fp)	# spill _tmp78 from $t3 to $fp-88
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp80 = g - _tmp79
	  lw $t1, -20($fp)	# load g from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp81 = *(_tmp77 + 4)
	  lw $t3, -84($fp)	# load _tmp77 from $fp-84 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp80
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp81
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp79 from $t0 to $fp-92
	  sw $t2, -96($fp)	# spill _tmp80 from $t2 to $fp-96
	  sw $t4, -100($fp)	# spill _tmp81 from $t4 to $fp-100
	  jalr $t4            	# jump to function
	# _tmp82 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp83 = *(f)
	  lw $t1, -16($fp)	# load f from $fp-16 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp84 = *(_tmp83)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp85 = ACall _tmp84
	# (save modified registers before flow of control change)
	  sw $t0, -104($fp)	# spill _tmp82 from $t0 to $fp-104
	  sw $t2, -108($fp)	# spill _tmp83 from $t2 to $fp-108
	  sw $t3, -112($fp)	# spill _tmp84 from $t3 to $fp-112
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp86 = f - _tmp85
	  lw $t1, -16($fp)	# load f from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp87 = *(_tmp83 + 4)
	  lw $t3, -108($fp)	# load _tmp83 from $fp-108 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp86
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp87
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp85 from $t0 to $fp-116
	  sw $t2, -120($fp)	# spill _tmp86 from $t2 to $fp-120
	  sw $t4, -124($fp)	# spill _tmp87 from $t4 to $fp-124
	  jalr $t4            	# jump to function
	# _tmp88 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp89 = 20
	  li $t1, 20		# load constant value 20 into $t1
	# PushParam _tmp89
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp90 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -128($fp)	# spill _tmp88 from $t0 to $fp-128
	  sw $t1, -132($fp)	# spill _tmp89 from $t1 to $fp-132
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp91 = B
	  la $t1, B	# load label
	# *(_tmp90) = _tmp91
	  sw $t1, 0($t0) 	# store with offset
	# _tmp92 = B_F
	  la $t2, B_F	# load label
	# *(_tmp90 + 4) = _tmp92
	  sw $t2, 4($t0) 	# store with offset
	# _tmp93 = B_G
	  la $t3, B_G	# load label
	# *(_tmp90 + 8) = _tmp93
	  sw $t3, 8($t0) 	# store with offset
	# b = _tmp90
	  move $t4, $t0		# copy value
	# a = b
	  move $t5, $t4		# copy value
	# _tmp94 = *(a)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp95 = *(_tmp94)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp96 = ACall _tmp95
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp90 from $t0 to $fp-136
	  sw $t1, -140($fp)	# spill _tmp91 from $t1 to $fp-140
	  sw $t2, -144($fp)	# spill _tmp92 from $t2 to $fp-144
	  sw $t3, -148($fp)	# spill _tmp93 from $t3 to $fp-148
	  sw $t4, -12($fp)	# spill b from $t4 to $fp-12
	  sw $t5, -8($fp)	# spill a from $t5 to $fp-8
	  sw $t6, -152($fp)	# spill _tmp94 from $t6 to $fp-152
	  sw $t7, -156($fp)	# spill _tmp95 from $t7 to $fp-156
	  jalr $t7            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp97 = a - _tmp96
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp98 = *(_tmp94 + 4)
	  lw $t3, -152($fp)	# load _tmp94 from $fp-152 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp97
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp98
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp96 from $t0 to $fp-160
	  sw $t2, -164($fp)	# spill _tmp97 from $t2 to $fp-164
	  sw $t4, -168($fp)	# spill _tmp98 from $t4 to $fp-168
	  jalr $t4            	# jump to function
	# _tmp99 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp100 = *(b)
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp101 = *(_tmp100)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp102 = ACall _tmp101
	# (save modified registers before flow of control change)
	  sw $t0, -172($fp)	# spill _tmp99 from $t0 to $fp-172
	  sw $t2, -176($fp)	# spill _tmp100 from $t2 to $fp-176
	  sw $t3, -180($fp)	# spill _tmp101 from $t3 to $fp-180
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp103 = b - _tmp102
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp104 = *(_tmp100 + 8)
	  lw $t3, -176($fp)	# load _tmp100 from $fp-176 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp103
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp104
	# (save modified registers before flow of control change)
	  sw $t0, -184($fp)	# spill _tmp102 from $t0 to $fp-184
	  sw $t2, -188($fp)	# spill _tmp103 from $t2 to $fp-188
	  sw $t4, -192($fp)	# spill _tmp104 from $t4 to $fp-192
	  jalr $t4            	# jump to function
	# _tmp105 = 0
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