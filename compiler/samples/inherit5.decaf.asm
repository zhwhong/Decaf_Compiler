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
	  .word f_Animal.Method
	  .word f_Animal.Method1
	  .word f_Animal.AMethod
	  .text
  f_Animal.Method:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp1 = "Hello from Animal\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Hello from Animal\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Animal.Method1:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp2 = "Animal"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Animal"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp2
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp2 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Animal.AMethod:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp3 = "not overridden\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "not overridden\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp3 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
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
	# _tmp4 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp4
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
	  .word f_Cow.Method
	  .word f_Cow.Method1
	  .word f_Cow.AMethod
	  .word f_Cow.Method2
	  .text
  f_Cow.Method:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp5 = "Hello from Cow"
	  .data			# create string constant marked with label
	  _string4: .asciiz "Hello from Cow"
	  .text
	  la $t0, _string4	# load label
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
  f_Cow.Method2:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp6 = "Cow2"
	  .data			# create string constant marked with label
	  _string5: .asciiz "Cow2"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp6 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp8 = *(_tmp7)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp9 = ACall _tmp8
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp7 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp8 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp10 = this - _tmp9
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp11 = *(_tmp7 + 8)
	  lw $t3, -12($fp)	# load _tmp7 from $fp-12 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp11
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp9 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp10 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp11 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp12 = 0
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
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp13 = "Cow"
	  .data			# create string constant marked with label
	  _string6: .asciiz "Cow"
	  .text
	  la $t0, _string6	# load label
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
  f_Cow.AMethod:
	# BeginFunc 0
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
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
	# _tmp14 = 0
	  li $t0, 0		# load constant value 0 into $t0
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
	# VTable for class Jersey
	  .data
	  .align 2
	  Jersey:		# label for class Jersey vtable
	  .word _offset_Jersey_0
	  .word f_Jersey.Method
	  .word f_Jersey.Method1
	  .word f_Jersey.AMethod
	  .word f_Jersey.Method2
	  .word f_Jersey.Method3
	  .text
  f_Jersey.Method:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp15 = "Hello from Jersey."
	  .data			# create string constant marked with label
	  _string7: .asciiz "Hello from Jersey."
	  .text
	  la $t0, _string7	# load label
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
  f_Jersey.Method3:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp16 = "Jersey3"
	  .data			# create string constant marked with label
	  _string8: .asciiz "Jersey3"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp16 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp17 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp18 = *(_tmp17)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp19 = ACall _tmp18
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp17 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp18 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp20 = this - _tmp19
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp21 = *(_tmp17 + 16)
	  lw $t3, -12($fp)	# load _tmp17 from $fp-12 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp21
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp19 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp20 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp21 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp22 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.Method1:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp23 = "Jersey"
	  .data			# create string constant marked with label
	  _string9: .asciiz "Jersey"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp23 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.AMethod:
	# BeginFunc 0
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.Method2:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp24 = "Cow2"
	  .data			# create string constant marked with label
	  _string10: .asciiz "Cow2"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp24
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp24 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp25 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp26 = *(_tmp25)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp27 = ACall _tmp26
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp25 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp26 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp28 = this - _tmp27
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp29 = *(_tmp25 + 8)
	  lw $t3, -12($fp)	# load _tmp25 from $fp-12 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp28
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp29
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp27 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp28 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp29 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp30 = 0
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
	# _tmp31 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp31
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
	# BeginFunc 128
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 128	# decrement sp to make space for locals/temps
	# _tmp32 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp32
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp33 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp32 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp34 = Cow
	  la $t1, Cow	# load label
	# *(_tmp33) = _tmp34
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp33
	  move $t2, $t0		# copy value
	# _tmp35 = *(a)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp36 = *(_tmp35)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp37 = ACall _tmp36
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp33 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp34 from $t1 to $fp-24
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -28($fp)	# spill _tmp35 from $t3 to $fp-28
	  sw $t4, -32($fp)	# spill _tmp36 from $t4 to $fp-32
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp38 = a - _tmp37
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp39 = *(_tmp35 + 16)
	  lw $t3, -28($fp)	# load _tmp35 from $fp-28 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp39
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp37 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp38 from $t2 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp39 from $t4 to $fp-44
	  jalr $t4            	# jump to function
	# _tmp40 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp41 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp42 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp40 from $t0 to $fp-48
	  sw $t1, -52($fp)	# spill _tmp41 from $t1 to $fp-52
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp43 = Jersey
	  la $t1, Jersey	# load label
	# *(_tmp42) = _tmp43
	  sw $t1, 0($t0) 	# store with offset
	# j = _tmp42
	  move $t2, $t0		# copy value
	# a = j
	  move $t3, $t2		# copy value
	# _tmp44 = *(a)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp45 = *(_tmp44)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp46 = ACall _tmp45
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp42 from $t0 to $fp-56
	  sw $t1, -60($fp)	# spill _tmp43 from $t1 to $fp-60
	  sw $t2, -12($fp)	# spill j from $t2 to $fp-12
	  sw $t3, -8($fp)	# spill a from $t3 to $fp-8
	  sw $t4, -64($fp)	# spill _tmp44 from $t4 to $fp-64
	  sw $t5, -68($fp)	# spill _tmp45 from $t5 to $fp-68
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp47 = a - _tmp46
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp48 = *(_tmp44 + 16)
	  lw $t3, -64($fp)	# load _tmp44 from $fp-64 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp47
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp48
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp46 from $t0 to $fp-72
	  sw $t2, -76($fp)	# spill _tmp47 from $t2 to $fp-76
	  sw $t4, -80($fp)	# spill _tmp48 from $t4 to $fp-80
	  jalr $t4            	# jump to function
	# _tmp49 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp50 = *(j)
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp51 = *(_tmp50)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp52 = ACall _tmp51
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp49 from $t0 to $fp-84
	  sw $t2, -88($fp)	# spill _tmp50 from $t2 to $fp-88
	  sw $t3, -92($fp)	# spill _tmp51 from $t3 to $fp-92
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp53 = j - _tmp52
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp54 = *(_tmp50 + 20)
	  lw $t3, -88($fp)	# load _tmp50 from $fp-88 into $t3
	  lw $t4, 20($t3) 	# load with offset
	# PushParam _tmp53
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp54
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp52 from $t0 to $fp-96
	  sw $t2, -100($fp)	# spill _tmp53 from $t2 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp54 from $t4 to $fp-104
	  jalr $t4            	# jump to function
	# _tmp55 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp56 = *(a)
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp57 = *(_tmp56)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp58 = ACall _tmp57
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp55 from $t0 to $fp-108
	  sw $t2, -112($fp)	# spill _tmp56 from $t2 to $fp-112
	  sw $t3, -116($fp)	# spill _tmp57 from $t3 to $fp-116
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp59 = a - _tmp58
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp60 = *(_tmp56 + 4)
	  lw $t3, -112($fp)	# load _tmp56 from $fp-112 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp59
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp60
	# (save modified registers before flow of control change)
	  sw $t0, -120($fp)	# spill _tmp58 from $t0 to $fp-120
	  sw $t2, -124($fp)	# spill _tmp59 from $t2 to $fp-124
	  sw $t4, -128($fp)	# spill _tmp60 from $t4 to $fp-128
	  jalr $t4            	# jump to function
	# _tmp61 = 0
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