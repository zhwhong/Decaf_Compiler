	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_C_0:
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
	# VTable for class C
	  .data
	  .align 2
	  C:		# label for class C vtable
	  .word _offset_C_0
	  .word f_C.a_fn
	  .word f_C.f_fn
	  .word f_C.g_fn
	  .word f_C.b_fn
	  .word f_C.c_fn
	  .word f_C.h_fn
	  .text
  _offset_C_4:
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
	# VTable for class C_F
	  .data
	  .align 2
	  C_F:		# label for class C_F vtable
	  .word _offset_C_4
	  .word f_C.f_fn
	  .text
  _offset_C_8:
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
	# VTable for class C_G
	  .data
	  .align 2
	  C_G:		# label for class C_G vtable
	  .word _offset_C_8
	  .word f_C.g_fn
	  .text
  _offset_C_12:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp3 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# Return _tmp3
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
	  .word f_C.h_fn
	  .text
  f_C.c_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp4 = "C:c_fn\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "C:c_fn\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp4 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.h_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp5 = "C:h_fn\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "C:h_fn\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp5 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.f_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp6 = "C:f_fn\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "C:f_fn\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp6 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.a_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp7 = "A:a_fn\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "A:a_fn\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp7 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.g_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp8 = "A:g_fn\n"
	  .data			# create string constant marked with label
	  _string5: .asciiz "A:g_fn\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp8 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_C.b_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp9 = "B:b_fn\n"
	  .data			# create string constant marked with label
	  _string6: .asciiz "B:b_fn\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp9 from $t0 to $fp-8
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
	# VTable for class B
	  .data
	  .align 2
	  B:		# label for class B vtable
	  .word _offset_B_0
	  .word f_B.a_fn
	  .word f_B.f_fn
	  .word f_B.g_fn
	  .word f_B.b_fn
	  .text
  _offset_B_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp11 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# Return _tmp11
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
	  .word f_B.f_fn
	  .text
  _offset_B_8:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp12 = 8
	  li $t0, 8		# load constant value 8 into $t0
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
	# VTable for class B_G
	  .data
	  .align 2
	  B_G:		# label for class B_G vtable
	  .word _offset_B_8
	  .word f_B.g_fn
	  .text
  f_B.b_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp13 = "B:b_fn\n"
	  .data			# create string constant marked with label
	  _string7: .asciiz "B:b_fn\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp13 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.a_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp14 = "A:a_fn\n"
	  .data			# create string constant marked with label
	  _string8: .asciiz "A:a_fn\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp14 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.f_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp15 = "A:f_fn\n"
	  .data			# create string constant marked with label
	  _string9: .asciiz "A:f_fn\n"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp15 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_B.g_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp16 = "A:g_fn\n"
	  .data			# create string constant marked with label
	  _string10: .asciiz "A:g_fn\n"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp16 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_A_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp17 = 0
	  li $t0, 0		# load constant value 0 into $t0
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
	# VTable for class A
	  .data
	  .align 2
	  A:		# label for class A vtable
	  .word _offset_A_0
	  .word f_A.a_fn
	  .word f_A.f_fn
	  .word f_A.g_fn
	  .text
  _offset_A_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp18 = 4
	  li $t0, 4		# load constant value 4 into $t0
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
	# VTable for class A_F
	  .data
	  .align 2
	  A_F:		# label for class A_F vtable
	  .word _offset_A_4
	  .word f_A.f_fn
	  .text
  _offset_A_8:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp19 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# Return _tmp19
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
	  .word f_A.g_fn
	  .text
  f_A.a_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp20 = "A:a_fn\n"
	  .data			# create string constant marked with label
	  _string11: .asciiz "A:a_fn\n"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp20 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_A.f_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp21 = "A:f_fn\n"
	  .data			# create string constant marked with label
	  _string12: .asciiz "A:f_fn\n"
	  .text
	  la $t0, _string12	# load label
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp21 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_A.g_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp22 = "A:g_fn\n"
	  .data			# create string constant marked with label
	  _string13: .asciiz "A:g_fn\n"
	  .text
	  la $t0, _string13	# load label
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp22 from $t0 to $fp-8
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
	# _tmp23 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp23
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
	# BeginFunc 184
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 184	# decrement sp to make space for locals/temps
	# _tmp24 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# PushParam _tmp24
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp25 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp24 from $t0 to $fp-32
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp26 = A
	  la $t1, A	# load label
	# *(_tmp25) = _tmp26
	  sw $t1, 0($t0) 	# store with offset
	# _tmp27 = A_F
	  la $t2, A_F	# load label
	# *(_tmp25 + 4) = _tmp27
	  sw $t2, 4($t0) 	# store with offset
	# _tmp28 = A_G
	  la $t3, A_G	# load label
	# *(_tmp25 + 8) = _tmp28
	  sw $t3, 8($t0) 	# store with offset
	# a = _tmp25
	  move $t4, $t0		# copy value
	# _tmp29 = 12
	  li $t5, 12		# load constant value 12 into $t5
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t5, 4($sp)	# copy param value to stack
	# _tmp30 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp25 from $t0 to $fp-36
	  sw $t1, -40($fp)	# spill _tmp26 from $t1 to $fp-40
	  sw $t2, -44($fp)	# spill _tmp27 from $t2 to $fp-44
	  sw $t3, -48($fp)	# spill _tmp28 from $t3 to $fp-48
	  sw $t4, -8($fp)	# spill a from $t4 to $fp-8
	  sw $t5, -52($fp)	# spill _tmp29 from $t5 to $fp-52
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp31 = B
	  la $t1, B	# load label
	# *(_tmp30) = _tmp31
	  sw $t1, 0($t0) 	# store with offset
	# _tmp32 = B_F
	  la $t2, B_F	# load label
	# *(_tmp30 + 4) = _tmp32
	  sw $t2, 4($t0) 	# store with offset
	# _tmp33 = B_G
	  la $t3, B_G	# load label
	# *(_tmp30 + 8) = _tmp33
	  sw $t3, 8($t0) 	# store with offset
	# b = _tmp30
	  move $t4, $t0		# copy value
	# _tmp34 = 16
	  li $t5, 16		# load constant value 16 into $t5
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t5, 4($sp)	# copy param value to stack
	# _tmp35 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp30 from $t0 to $fp-56
	  sw $t1, -60($fp)	# spill _tmp31 from $t1 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp32 from $t2 to $fp-64
	  sw $t3, -68($fp)	# spill _tmp33 from $t3 to $fp-68
	  sw $t4, -12($fp)	# spill b from $t4 to $fp-12
	  sw $t5, -72($fp)	# spill _tmp34 from $t5 to $fp-72
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp36 = C
	  la $t1, C	# load label
	# *(_tmp35) = _tmp36
	  sw $t1, 0($t0) 	# store with offset
	# _tmp37 = C_F
	  la $t2, C_F	# load label
	# *(_tmp35 + 4) = _tmp37
	  sw $t2, 4($t0) 	# store with offset
	# _tmp38 = C_G
	  la $t3, C_G	# load label
	# *(_tmp35 + 8) = _tmp38
	  sw $t3, 8($t0) 	# store with offset
	# _tmp39 = C_H
	  la $t4, C_H	# load label
	# *(_tmp35 + 12) = _tmp39
	  sw $t4, 12($t0) 	# store with offset
	# c = _tmp35
	  move $t5, $t0		# copy value
	# _tmp40 = 12
	  li $t6, 12		# load constant value 12 into $t6
	# _tmp41 = c + _tmp40
	  add $t7, $t5, $t6	
	# h = _tmp41
	  move $s0, $t7		# copy value
	# _tmp42 = *(h)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp43 = *(_tmp42)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp44 = ACall _tmp43
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp35 from $t0 to $fp-76
	  sw $t1, -80($fp)	# spill _tmp36 from $t1 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp37 from $t2 to $fp-84
	  sw $t3, -88($fp)	# spill _tmp38 from $t3 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp39 from $t4 to $fp-92
	  sw $t5, -16($fp)	# spill c from $t5 to $fp-16
	  sw $t6, -96($fp)	# spill _tmp40 from $t6 to $fp-96
	  sw $t7, -100($fp)	# spill _tmp41 from $t7 to $fp-100
	  sw $s0, -28($fp)	# spill h from $s0 to $fp-28
	  sw $s1, -104($fp)	# spill _tmp42 from $s1 to $fp-104
	  sw $s2, -108($fp)	# spill _tmp43 from $s2 to $fp-108
	  jalr $s2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp45 = h - _tmp44
	  lw $t1, -28($fp)	# load h from $fp-28 into $t1
	  sub $t2, $t1, $t0	
	# _tmp46 = *(_tmp42 + 4)
	  lw $t3, -104($fp)	# load _tmp42 from $fp-104 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp45
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp47 = ACall _tmp46
	# (save modified registers before flow of control change)
	  sw $t0, -112($fp)	# spill _tmp44 from $t0 to $fp-112
	  sw $t2, -116($fp)	# spill _tmp45 from $t2 to $fp-116
	  sw $t4, -120($fp)	# spill _tmp46 from $t4 to $fp-120
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp48 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp49 = c + _tmp48
	  lw $t2, -16($fp)	# load c from $fp-16 into $t2
	  add $t3, $t2, $t1	
	# f = _tmp49
	  move $t4, $t3		# copy value
	# _tmp50 = *(f)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp51 = *(_tmp50)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp52 = ACall _tmp51
	# (save modified registers before flow of control change)
	  sw $t0, -124($fp)	# spill _tmp47 from $t0 to $fp-124
	  sw $t1, -128($fp)	# spill _tmp48 from $t1 to $fp-128
	  sw $t3, -132($fp)	# spill _tmp49 from $t3 to $fp-132
	  sw $t4, -20($fp)	# spill f from $t4 to $fp-20
	  sw $t5, -136($fp)	# spill _tmp50 from $t5 to $fp-136
	  sw $t6, -140($fp)	# spill _tmp51 from $t6 to $fp-140
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp53 = f - _tmp52
	  lw $t1, -20($fp)	# load f from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp54 = *(_tmp50 + 4)
	  lw $t3, -136($fp)	# load _tmp50 from $fp-136 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp53
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp55 = ACall _tmp54
	# (save modified registers before flow of control change)
	  sw $t0, -144($fp)	# spill _tmp52 from $t0 to $fp-144
	  sw $t2, -148($fp)	# spill _tmp53 from $t2 to $fp-148
	  sw $t4, -152($fp)	# spill _tmp54 from $t4 to $fp-152
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp56 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp57 = a + _tmp56
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  add $t3, $t2, $t1	
	# f = _tmp57
	  move $t4, $t3		# copy value
	# _tmp58 = *(f)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp59 = *(_tmp58)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp60 = ACall _tmp59
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp55 from $t0 to $fp-156
	  sw $t1, -160($fp)	# spill _tmp56 from $t1 to $fp-160
	  sw $t3, -164($fp)	# spill _tmp57 from $t3 to $fp-164
	  sw $t4, -20($fp)	# spill f from $t4 to $fp-20
	  sw $t5, -168($fp)	# spill _tmp58 from $t5 to $fp-168
	  sw $t6, -172($fp)	# spill _tmp59 from $t6 to $fp-172
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp61 = f - _tmp60
	  lw $t1, -20($fp)	# load f from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp62 = *(_tmp58 + 4)
	  lw $t3, -168($fp)	# load _tmp58 from $fp-168 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp61
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp63 = ACall _tmp62
	# (save modified registers before flow of control change)
	  sw $t0, -176($fp)	# spill _tmp60 from $t0 to $fp-176
	  sw $t2, -180($fp)	# spill _tmp61 from $t2 to $fp-180
	  sw $t4, -184($fp)	# spill _tmp62 from $t4 to $fp-184
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
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