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
	  .word f_A.modify_a
	  .word f_A.print_a
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
	  .word f_A.modify_a
	  .text
  _offset_A_8:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp2 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# Return _tmp2
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
	# VTable for class A_G
	  .data
	  .align 2
	  A_G:		# label for class A_G vtable
	  .word _offset_A_8
	  .word f_A.print_a
	  .text
  f_A.modify_a:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp3 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp4 = this + _tmp3
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp5 = *(_tmp4)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp6 = 12
	  li $t4, 12		# load constant value 12 into $t4
	# _tmp7 = this + _tmp6
	  add $t5, $t1, $t4	
	# *(_tmp7) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_A.print_a:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp8 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp9 = this + _tmp8
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp10 = *(_tmp9)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp8 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp9 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp10 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp11 = " "
	  .data			# create string constant marked with label
	  _string1: .asciiz " "
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp11 from $t0 to $fp-20
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
	# _tmp12 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp12
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
	  .word f_B.modify_a
	  .word f_B.print_a
	  .word f_B.modify_b
	  .word f_B.print_b
	  .text
  _offset_B_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp13 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# Return _tmp13
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
	  .word f_B.modify_a
	  .text
  _offset_B_8:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp14 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# Return _tmp14
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
	  .word f_B.print_a
	  .text
  f_B.modify_b:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp15 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp16 = this + _tmp15
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp17 = *(_tmp16)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp18 = 16
	  li $t4, 16		# load constant value 16 into $t4
	# _tmp19 = this + _tmp18
	  add $t5, $t1, $t4	
	# *(_tmp19) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.print_b:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp20 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp21 = this + _tmp20
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp22 = *(_tmp21)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp20 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp21 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp22 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp23 = " "
	  .data			# create string constant marked with label
	  _string2: .asciiz " "
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp23 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.modify_a:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp24 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp25 = this + _tmp24
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp26 = *(_tmp25)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp27 = 12
	  li $t4, 12		# load constant value 12 into $t4
	# _tmp28 = this + _tmp27
	  add $t5, $t1, $t4	
	# *(_tmp28) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.print_a:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp29 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp30 = this + _tmp29
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp31 = *(_tmp30)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp31
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp29 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp30 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp31 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp32 = " "
	  .data			# create string constant marked with label
	  _string3: .asciiz " "
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp32
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp32 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_C_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp33 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp33
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
	# VTable for class C
	  .data
	  .align 2
	  C:		# label for class C vtable
	  .word _offset_C_0
	  .word f_C.modify_a
	  .word f_C.print_a
	  .word f_C.modify_b
	  .word f_C.print_b
	  .word f_C.modify_c
	  .word f_C.print_c
	  .text
  _offset_C_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp34 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# Return _tmp34
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
	# VTable for class C_F
	  .data
	  .align 2
	  C_F:		# label for class C_F vtable
	  .word _offset_C_4
	  .word f_C.modify_a
	  .text
  _offset_C_8:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp35 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# Return _tmp35
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
	# VTable for class C_G
	  .data
	  .align 2
	  C_G:		# label for class C_G vtable
	  .word _offset_C_8
	  .word f_C.print_a
	  .text
  _offset_C_12:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp36 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# Return _tmp36
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
	# VTable for class C_H
	  .data
	  .align 2
	  C_H:		# label for class C_H vtable
	  .word _offset_C_12
	  .word f_C.modify_c
	  .word f_C.print_c
	  .text
  f_C.modify_c:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp37 = 24
	  li $t0, 24		# load constant value 24 into $t0
	# _tmp38 = this + _tmp37
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp39 = *(_tmp38)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp40 = 24
	  li $t4, 24		# load constant value 24 into $t4
	# _tmp41 = this + _tmp40
	  add $t5, $t1, $t4	
	# *(_tmp41) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.modify_a:
	# BeginFunc 24
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 24	# decrement sp to make space for locals/temps
	# _tmp42 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp43 = this + _tmp42
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp44 = *(_tmp43)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp45 = 16
	  li $t4, 16		# load constant value 16 into $t4
	# _tmp46 = this + _tmp45
	  add $t5, $t1, $t4	
	# *(_tmp46) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp47 = "YOWZA! "
	  .data			# create string constant marked with label
	  _string4: .asciiz "YOWZA! "
	  .text
	  la $t7, _string4	# load label
	# PushParam _tmp47
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp42 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp43 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp44 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp45 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp46 from $t5 to $fp-24
	  sw $t7, -28($fp)	# spill _tmp47 from $t7 to $fp-28
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.print_c:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp48 = 24
	  li $t0, 24		# load constant value 24 into $t0
	# _tmp49 = this + _tmp48
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp50 = *(_tmp49)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp50
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp48 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp49 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp50 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp51 = " "
	  .data			# create string constant marked with label
	  _string5: .asciiz " "
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp51
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp51 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.print_a:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp52 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# _tmp53 = this + _tmp52
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp54 = *(_tmp53)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp54
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp52 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp53 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp54 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp55 = " "
	  .data			# create string constant marked with label
	  _string6: .asciiz " "
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp55
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp55 from $t0 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.modify_b:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp56 = 20
	  li $t0, 20		# load constant value 20 into $t0
	# _tmp57 = this + _tmp56
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp58 = *(_tmp57)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp59 = 20
	  li $t4, 20		# load constant value 20 into $t4
	# _tmp60 = this + _tmp59
	  add $t5, $t1, $t4	
	# *(_tmp60) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.print_b:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp61 = 20
	  li $t0, 20		# load constant value 20 into $t0
	# _tmp62 = this + _tmp61
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp63 = *(_tmp62)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp63
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp61 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp62 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp63 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp64 = " "
	  .data			# create string constant marked with label
	  _string7: .asciiz " "
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp64
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp64 from $t0 to $fp-20
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
	# BeginFunc 456
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 456	# decrement sp to make space for locals/temps
	# _tmp66 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# PushParam _tmp66
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp67 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp66 from $t0 to $fp-32
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp68 = A
	  la $t1, A	# load label
	# *(_tmp67) = _tmp68
	  sw $t1, 0($t0) 	# store with offset
	# _tmp69 = A_F
	  la $t2, A_F	# load label
	# *(_tmp67 + 4) = _tmp69
	  sw $t2, 4($t0) 	# store with offset
	# _tmp70 = A_G
	  la $t3, A_G	# load label
	# *(_tmp67 + 8) = _tmp70
	  sw $t3, 8($t0) 	# store with offset
	# a = _tmp67
	  move $t4, $t0		# copy value
	# _tmp71 = 20
	  li $t5, 20		# load constant value 20 into $t5
	# PushParam _tmp71
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t5, 4($sp)	# copy param value to stack
	# _tmp72 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp67 from $t0 to $fp-36
	  sw $t1, -40($fp)	# spill _tmp68 from $t1 to $fp-40
	  sw $t2, -44($fp)	# spill _tmp69 from $t2 to $fp-44
	  sw $t3, -48($fp)	# spill _tmp70 from $t3 to $fp-48
	  sw $t4, -8($fp)	# spill a from $t4 to $fp-8
	  sw $t5, -52($fp)	# spill _tmp71 from $t5 to $fp-52
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp73 = B
	  la $t1, B	# load label
	# *(_tmp72) = _tmp73
	  sw $t1, 0($t0) 	# store with offset
	# _tmp74 = B_F
	  la $t2, B_F	# load label
	# *(_tmp72 + 4) = _tmp74
	  sw $t2, 4($t0) 	# store with offset
	# _tmp75 = B_G
	  la $t3, B_G	# load label
	# *(_tmp72 + 8) = _tmp75
	  sw $t3, 8($t0) 	# store with offset
	# b = _tmp72
	  move $t4, $t0		# copy value
	# _tmp76 = 28
	  li $t5, 28		# load constant value 28 into $t5
	# PushParam _tmp76
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t5, 4($sp)	# copy param value to stack
	# _tmp77 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp72 from $t0 to $fp-56
	  sw $t1, -60($fp)	# spill _tmp73 from $t1 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp74 from $t2 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp75 from $t3 to $fp-68
	  sw $t4, -12($fp)	# spill b from $t4 to $fp-12
	  sw $t5, -72($fp)	# spill _tmp76 from $t5 to $fp-72
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp78 = C
	  la $t1, C	# load label
	# *(_tmp77) = _tmp78
	  sw $t1, 0($t0) 	# store with offset
	# _tmp79 = C_F
	  la $t2, C_F	# load label
	# *(_tmp77 + 4) = _tmp79
	  sw $t2, 4($t0) 	# store with offset
	# _tmp80 = C_G
	  la $t3, C_G	# load label
	# *(_tmp77 + 8) = _tmp80
	  sw $t3, 8($t0) 	# store with offset
	# _tmp81 = C_H
	  la $t4, C_H	# load label
	# *(_tmp77 + 12) = _tmp81
	  sw $t4, 12($t0) 	# store with offset
	# c = _tmp77
	  move $t5, $t0		# copy value
	# _tmp82 = 4
	  li $t6, 4		# load constant value 4 into $t6
	# _tmp83 = a + _tmp82
	  lw $t7, -8($fp)	# load a from $fp-8 into $t7
	  add $s0, $t7, $t6	
	# f = _tmp83
	  move $s1, $s0		# copy value
	# _tmp84 = 8
	  li $s2, 8		# load constant value 8 into $s2
	# _tmp85 = a + _tmp84
	  add $s3, $t7, $s2	
	# g = _tmp85
	  move $s4, $s3		# copy value
	# _tmp86 = 42
	  li $s5, 42		# load constant value 42 into $s5
	# PushParam _tmp86
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s5, 4($sp)	# copy param value to stack
	# _tmp87 = *(f)
	  lw $s6, 0($s1) 	# load with offset
	# _tmp88 = *(_tmp87)
	  lw $s7, 0($s6) 	# load with offset
	# _tmp89 = ACall _tmp88
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp77 from $t0 to $fp-76
	  sw $t1, -80($fp)	# spill _tmp78 from $t1 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp79 from $t2 to $fp-84
	  sw $t3, -88($fp)	# spill _tmp80 from $t3 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp81 from $t4 to $fp-92
	  sw $t5, -16($fp)	# spill c from $t5 to $fp-16
	  sw $t6, -96($fp)	# spill _tmp82 from $t6 to $fp-96
	  sw $s0, -100($fp)	# spill _tmp83 from $s0 to $fp-100
	  sw $s1, -20($fp)	# spill f from $s1 to $fp-20
	  sw $s2, -104($fp)	# spill _tmp84 from $s2 to $fp-104
	  sw $s3, -108($fp)	# spill _tmp85 from $s3 to $fp-108
	  sw $s4, -24($fp)	# spill g from $s4 to $fp-24
	  sw $s5, -112($fp)	# spill _tmp86 from $s5 to $fp-112
	  sw $s6, -116($fp)	# spill _tmp87 from $s6 to $fp-116
	  sw $s7, -120($fp)	# spill _tmp88 from $s7 to $fp-120
	  jalr $s7            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp90 = f - _tmp89
	  lw $t1, -20($fp)	# load f from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp91 = *(_tmp87 + 4)
	  lw $t3, -116($fp)	# load _tmp87 from $fp-116 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp90
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp91
	# (save modified registers before flow of control change)
	  sw $t0, -124($fp)	# spill _tmp89 from $t0 to $fp-124
	  sw $t2, -128($fp)	# spill _tmp90 from $t2 to $fp-128
	  sw $t4, -132($fp)	# spill _tmp91 from $t4 to $fp-132
	  jalr $t4            	# jump to function
	# _tmp92 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp93 = *(g)
	  lw $t1, -24($fp)	# load g from $fp-24 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp94 = *(_tmp93)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp95 = ACall _tmp94
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp92 from $t0 to $fp-136
	  sw $t2, -140($fp)	# spill _tmp93 from $t2 to $fp-140
	  sw $t3, -144($fp)	# spill _tmp94 from $t3 to $fp-144
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp96 = g - _tmp95
	  lw $t1, -24($fp)	# load g from $fp-24 into $t1
	  sub $t2, $t1, $t0	
	# _tmp97 = *(_tmp93 + 4)
	  lw $t3, -140($fp)	# load _tmp93 from $fp-140 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp96
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp97
	# (save modified registers before flow of control change)
	  sw $t0, -148($fp)	# spill _tmp95 from $t0 to $fp-148
	  sw $t2, -152($fp)	# spill _tmp96 from $t2 to $fp-152
	  sw $t4, -156($fp)	# spill _tmp97 from $t4 to $fp-156
	  jalr $t4            	# jump to function
	# _tmp98 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp99 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp100 = b + _tmp99
	  lw $t2, -12($fp)	# load b from $fp-12 into $t2
	  add $t3, $t2, $t1	
	# f = _tmp100
	  move $t4, $t3		# copy value
	# _tmp101 = 8
	  li $t5, 8		# load constant value 8 into $t5
	# _tmp102 = b + _tmp101
	  add $t6, $t2, $t5	
	# g = _tmp102
	  move $t7, $t6		# copy value
	# _tmp103 = 137
	  li $s0, 137		# load constant value 137 into $s0
	# PushParam _tmp103
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s0, 4($sp)	# copy param value to stack
	# _tmp104 = *(b)
	  lw $s1, 0($t2) 	# load with offset
	# _tmp105 = *(_tmp104)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp106 = ACall _tmp105
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp98 from $t0 to $fp-160
	  sw $t1, -164($fp)	# spill _tmp99 from $t1 to $fp-164
	  sw $t3, -168($fp)	# spill _tmp100 from $t3 to $fp-168
	  sw $t4, -20($fp)	# spill f from $t4 to $fp-20
	  sw $t5, -172($fp)	# spill _tmp101 from $t5 to $fp-172
	  sw $t6, -176($fp)	# spill _tmp102 from $t6 to $fp-176
	  sw $t7, -24($fp)	# spill g from $t7 to $fp-24
	  sw $s0, -180($fp)	# spill _tmp103 from $s0 to $fp-180
	  sw $s1, -184($fp)	# spill _tmp104 from $s1 to $fp-184
	  sw $s2, -188($fp)	# spill _tmp105 from $s2 to $fp-188
	  jalr $s2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp107 = b - _tmp106
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp108 = *(_tmp104 + 12)
	  lw $t3, -184($fp)	# load _tmp104 from $fp-184 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp107
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp108
	# (save modified registers before flow of control change)
	  sw $t0, -192($fp)	# spill _tmp106 from $t0 to $fp-192
	  sw $t2, -196($fp)	# spill _tmp107 from $t2 to $fp-196
	  sw $t4, -200($fp)	# spill _tmp108 from $t4 to $fp-200
	  jalr $t4            	# jump to function
	# _tmp109 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp110 = 42
	  li $t1, 42		# load constant value 42 into $t1
	# PushParam _tmp110
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp111 = *(f)
	  lw $t2, -20($fp)	# load f from $fp-20 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp112 = *(_tmp111)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp113 = ACall _tmp112
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp109 from $t0 to $fp-204
	  sw $t1, -208($fp)	# spill _tmp110 from $t1 to $fp-208
	  sw $t3, -212($fp)	# spill _tmp111 from $t3 to $fp-212
	  sw $t4, -216($fp)	# spill _tmp112 from $t4 to $fp-216
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp114 = f - _tmp113
	  lw $t1, -20($fp)	# load f from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp115 = *(_tmp111 + 4)
	  lw $t3, -212($fp)	# load _tmp111 from $fp-212 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp114
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp115
	# (save modified registers before flow of control change)
	  sw $t0, -220($fp)	# spill _tmp113 from $t0 to $fp-220
	  sw $t2, -224($fp)	# spill _tmp114 from $t2 to $fp-224
	  sw $t4, -228($fp)	# spill _tmp115 from $t4 to $fp-228
	  jalr $t4            	# jump to function
	# _tmp116 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp117 = *(g)
	  lw $t1, -24($fp)	# load g from $fp-24 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp118 = *(_tmp117)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp119 = ACall _tmp118
	# (save modified registers before flow of control change)
	  sw $t0, -232($fp)	# spill _tmp116 from $t0 to $fp-232
	  sw $t2, -236($fp)	# spill _tmp117 from $t2 to $fp-236
	  sw $t3, -240($fp)	# spill _tmp118 from $t3 to $fp-240
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp120 = g - _tmp119
	  lw $t1, -24($fp)	# load g from $fp-24 into $t1
	  sub $t2, $t1, $t0	
	# _tmp121 = *(_tmp117 + 4)
	  lw $t3, -236($fp)	# load _tmp117 from $fp-236 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp120
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp121
	# (save modified registers before flow of control change)
	  sw $t0, -244($fp)	# spill _tmp119 from $t0 to $fp-244
	  sw $t2, -248($fp)	# spill _tmp120 from $t2 to $fp-248
	  sw $t4, -252($fp)	# spill _tmp121 from $t4 to $fp-252
	  jalr $t4            	# jump to function
	# _tmp122 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp123 = *(b)
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp124 = *(_tmp123)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp125 = ACall _tmp124
	# (save modified registers before flow of control change)
	  sw $t0, -256($fp)	# spill _tmp122 from $t0 to $fp-256
	  sw $t2, -260($fp)	# spill _tmp123 from $t2 to $fp-260
	  sw $t3, -264($fp)	# spill _tmp124 from $t3 to $fp-264
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp126 = b - _tmp125
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp127 = *(_tmp123 + 16)
	  lw $t3, -260($fp)	# load _tmp123 from $fp-260 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp126
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp127
	# (save modified registers before flow of control change)
	  sw $t0, -268($fp)	# spill _tmp125 from $t0 to $fp-268
	  sw $t2, -272($fp)	# spill _tmp126 from $t2 to $fp-272
	  sw $t4, -276($fp)	# spill _tmp127 from $t4 to $fp-276
	  jalr $t4            	# jump to function
	# _tmp128 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp129 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp130 = c + _tmp129
	  lw $t2, -16($fp)	# load c from $fp-16 into $t2
	  add $t3, $t2, $t1	
	# f = _tmp130
	  move $t4, $t3		# copy value
	# _tmp131 = 8
	  li $t5, 8		# load constant value 8 into $t5
	# _tmp132 = c + _tmp131
	  add $t6, $t2, $t5	
	# g = _tmp132
	  move $t7, $t6		# copy value
	# _tmp133 = 12
	  li $s0, 12		# load constant value 12 into $s0
	# _tmp134 = c + _tmp133
	  add $s1, $t2, $s0	
	# h = _tmp134
	  move $s2, $s1		# copy value
	# a = c
	  move $s3, $t2		# copy value
	# b = c
	  move $s4, $t2		# copy value
	# _tmp135 = 1337
	  li $s5, 1337		# load constant value 1337 into $s5
	# PushParam _tmp135
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s5, 4($sp)	# copy param value to stack
	# _tmp136 = *(a)
	  lw $s6, 0($s3) 	# load with offset
	# _tmp137 = *(_tmp136)
	  lw $s7, 0($s6) 	# load with offset
	# _tmp138 = ACall _tmp137
	# (save modified registers before flow of control change)
	  sw $t0, -280($fp)	# spill _tmp128 from $t0 to $fp-280
	  sw $t1, -284($fp)	# spill _tmp129 from $t1 to $fp-284
	  sw $t3, -288($fp)	# spill _tmp130 from $t3 to $fp-288
	  sw $t4, -20($fp)	# spill f from $t4 to $fp-20
	  sw $t5, -292($fp)	# spill _tmp131 from $t5 to $fp-292
	  sw $t6, -296($fp)	# spill _tmp132 from $t6 to $fp-296
	  sw $t7, -24($fp)	# spill g from $t7 to $fp-24
	  sw $s0, -300($fp)	# spill _tmp133 from $s0 to $fp-300
	  sw $s1, -304($fp)	# spill _tmp134 from $s1 to $fp-304
	  sw $s2, -28($fp)	# spill h from $s2 to $fp-28
	  sw $s3, -8($fp)	# spill a from $s3 to $fp-8
	  sw $s4, -12($fp)	# spill b from $s4 to $fp-12
	  sw $s5, -308($fp)	# spill _tmp135 from $s5 to $fp-308
	  sw $s6, -312($fp)	# spill _tmp136 from $s6 to $fp-312
	  sw $s7, -316($fp)	# spill _tmp137 from $s7 to $fp-316
	  jalr $s7            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp139 = a - _tmp138
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp140 = *(_tmp136 + 4)
	  lw $t3, -312($fp)	# load _tmp136 from $fp-312 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp139
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp140
	# (save modified registers before flow of control change)
	  sw $t0, -320($fp)	# spill _tmp138 from $t0 to $fp-320
	  sw $t2, -324($fp)	# spill _tmp139 from $t2 to $fp-324
	  sw $t4, -328($fp)	# spill _tmp140 from $t4 to $fp-328
	  jalr $t4            	# jump to function
	# _tmp141 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp142 = 3333
	  li $t1, 3333		# load constant value 3333 into $t1
	# PushParam _tmp142
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp143 = *(b)
	  lw $t2, -12($fp)	# load b from $fp-12 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp144 = *(_tmp143)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp145 = ACall _tmp144
	# (save modified registers before flow of control change)
	  sw $t0, -332($fp)	# spill _tmp141 from $t0 to $fp-332
	  sw $t1, -336($fp)	# spill _tmp142 from $t1 to $fp-336
	  sw $t3, -340($fp)	# spill _tmp143 from $t3 to $fp-340
	  sw $t4, -344($fp)	# spill _tmp144 from $t4 to $fp-344
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp146 = b - _tmp145
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp147 = *(_tmp143 + 12)
	  lw $t3, -340($fp)	# load _tmp143 from $fp-340 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp146
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp147
	# (save modified registers before flow of control change)
	  sw $t0, -348($fp)	# spill _tmp145 from $t0 to $fp-348
	  sw $t2, -352($fp)	# spill _tmp146 from $t2 to $fp-352
	  sw $t4, -356($fp)	# spill _tmp147 from $t4 to $fp-356
	  jalr $t4            	# jump to function
	# _tmp148 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp149 = 1241
	  li $t1, 1241		# load constant value 1241 into $t1
	# PushParam _tmp149
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp150 = *(c)
	  lw $t2, -16($fp)	# load c from $fp-16 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp151 = *(_tmp150)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp152 = ACall _tmp151
	# (save modified registers before flow of control change)
	  sw $t0, -360($fp)	# spill _tmp148 from $t0 to $fp-360
	  sw $t1, -364($fp)	# spill _tmp149 from $t1 to $fp-364
	  sw $t3, -368($fp)	# spill _tmp150 from $t3 to $fp-368
	  sw $t4, -372($fp)	# spill _tmp151 from $t4 to $fp-372
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp153 = c - _tmp152
	  lw $t1, -16($fp)	# load c from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp154 = *(_tmp150 + 20)
	  lw $t3, -368($fp)	# load _tmp150 from $fp-368 into $t3
	  lw $t4, 20($t3) 	# load with offset
	# PushParam _tmp153
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp154
	# (save modified registers before flow of control change)
	  sw $t0, -376($fp)	# spill _tmp152 from $t0 to $fp-376
	  sw $t2, -380($fp)	# spill _tmp153 from $t2 to $fp-380
	  sw $t4, -384($fp)	# spill _tmp154 from $t4 to $fp-384
	  jalr $t4            	# jump to function
	# _tmp155 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp156 = *(g)
	  lw $t1, -24($fp)	# load g from $fp-24 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp157 = *(_tmp156)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp158 = ACall _tmp157
	# (save modified registers before flow of control change)
	  sw $t0, -388($fp)	# spill _tmp155 from $t0 to $fp-388
	  sw $t2, -392($fp)	# spill _tmp156 from $t2 to $fp-392
	  sw $t3, -396($fp)	# spill _tmp157 from $t3 to $fp-396
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp159 = g - _tmp158
	  lw $t1, -24($fp)	# load g from $fp-24 into $t1
	  sub $t2, $t1, $t0	
	# _tmp160 = *(_tmp156 + 4)
	  lw $t3, -392($fp)	# load _tmp156 from $fp-392 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp159
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp160
	# (save modified registers before flow of control change)
	  sw $t0, -400($fp)	# spill _tmp158 from $t0 to $fp-400
	  sw $t2, -404($fp)	# spill _tmp159 from $t2 to $fp-404
	  sw $t4, -408($fp)	# spill _tmp160 from $t4 to $fp-408
	  jalr $t4            	# jump to function
	# _tmp161 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp162 = *(b)
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp163 = *(_tmp162)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp164 = ACall _tmp163
	# (save modified registers before flow of control change)
	  sw $t0, -412($fp)	# spill _tmp161 from $t0 to $fp-412
	  sw $t2, -416($fp)	# spill _tmp162 from $t2 to $fp-416
	  sw $t3, -420($fp)	# spill _tmp163 from $t3 to $fp-420
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp165 = b - _tmp164
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp166 = *(_tmp162 + 16)
	  lw $t3, -416($fp)	# load _tmp162 from $fp-416 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp165
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp166
	# (save modified registers before flow of control change)
	  sw $t0, -424($fp)	# spill _tmp164 from $t0 to $fp-424
	  sw $t2, -428($fp)	# spill _tmp165 from $t2 to $fp-428
	  sw $t4, -432($fp)	# spill _tmp166 from $t4 to $fp-432
	  jalr $t4            	# jump to function
	# _tmp167 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp168 = *(h)
	  lw $t1, -28($fp)	# load h from $fp-28 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp169 = *(_tmp168)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp170 = ACall _tmp169
	# (save modified registers before flow of control change)
	  sw $t0, -436($fp)	# spill _tmp167 from $t0 to $fp-436
	  sw $t2, -440($fp)	# spill _tmp168 from $t2 to $fp-440
	  sw $t3, -444($fp)	# spill _tmp169 from $t3 to $fp-444
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp171 = h - _tmp170
	  lw $t1, -28($fp)	# load h from $fp-28 into $t1
	  sub $t2, $t1, $t0	
	# _tmp172 = *(_tmp168 + 8)
	  lw $t3, -440($fp)	# load _tmp168 from $fp-440 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp171
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp172
	# (save modified registers before flow of control change)
	  sw $t0, -448($fp)	# spill _tmp170 from $t0 to $fp-448
	  sw $t2, -452($fp)	# spill _tmp171 from $t2 to $fp-452
	  sw $t4, -456($fp)	# spill _tmp172 from $t4 to $fp-456
	  jalr $t4            	# jump to function
	# _tmp173 = 0
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