	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_B_0:
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
	# VTable for class B
	  .data
	  .align 2
	  B:		# label for class B vtable
	  .word _offset_B_0
	  .word f_B.GetZ
	  .text
  f_B.GetZ:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp3
	  move $v0, $t3		# assign return value into $v0
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
  _offset_c_0:
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
	# VTable for class c
	  .data
	  .align 2
	  c:		# label for class c vtable
	  .word _offset_c_0
	  .word f_c.binky
	  .text
  f_c.binky:
	# BeginFunc 32
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 32	# decrement sp to make space for locals/temps
	# _tmp5 = "x = "
	  .data			# create string constant marked with label
	  _string1: .asciiz "x = "
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp5 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = *(x)
	  lw $t0, 8($fp)	# load x from $fp+8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp7 = *(_tmp6)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp8 = ACall _tmp7
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp6 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp7 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp9 = x - _tmp8
	  lw $t1, 8($fp)	# load x from $fp+8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp10 = *(_tmp6 + 4)
	  lw $t3, -12($fp)	# load _tmp6 from $fp-12 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp11 = ACall _tmp10
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp8 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp9 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp10 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp11 from $t0 to $fp-32
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp12 = "\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp12 from $t0 to $fp-36
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_X_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp13 = 0
	  li $t0, 0		# load constant value 0 into $t0
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
	# VTable for class X
	  .data
	  .align 2
	  X:		# label for class X vtable
	  .word _offset_X_0
	  .word f_X.GetZ
	  .word f_X.f
	  .word f_X.compare
	  .text
  f_X.f:
	# BeginFunc 64
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 64	# decrement sp to make space for locals/temps
	# _tmp14 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp15 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp14 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp16 = c
	  la $t1, c	# load label
	# *(_tmp15) = _tmp16
	  sw $t1, 0($t0) 	# store with offset
	# t = _tmp15
	  move $t2, $t0		# copy value
	# _tmp17 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp18 = this + _tmp17
	  lw $t4, 4($fp)	# load this from $fp+4 into $t4
	  add $t5, $t4, $t3	
	# _tmp19 = *(_tmp18)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp20 = 3
	  li $t7, 3		# load constant value 3 into $t7
	# _tmp21 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp22 = this + _tmp21
	  add $s1, $t4, $s0	
	# *(_tmp22) = _tmp20
	  sw $t7, 0($s1) 	# store with offset
	# PushParam this
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp23 = *(t)
	  lw $s2, 0($t2) 	# load with offset
	# _tmp24 = *(_tmp23)
	  lw $s3, 0($s2) 	# load with offset
	# _tmp25 = ACall _tmp24
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp15 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp16 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill t from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp17 from $t3 to $fp-24
	  sw $t5, -28($fp)	# spill _tmp18 from $t5 to $fp-28
	  sw $t6, -32($fp)	# spill _tmp19 from $t6 to $fp-32
	  sw $t7, -36($fp)	# spill _tmp20 from $t7 to $fp-36
	  sw $s0, -40($fp)	# spill _tmp21 from $s0 to $fp-40
	  sw $s1, -44($fp)	# spill _tmp22 from $s1 to $fp-44
	  sw $s2, -48($fp)	# spill _tmp23 from $s2 to $fp-48
	  sw $s3, -52($fp)	# spill _tmp24 from $s3 to $fp-52
	  jalr $s3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp26 = t - _tmp25
	  lw $t1, -8($fp)	# load t from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp27 = *(_tmp23 + 4)
	  lw $t3, -48($fp)	# load _tmp23 from $fp-48 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp27
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp25 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp26 from $t2 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp27 from $t4 to $fp-64
	  jalr $t4            	# jump to function
	# _tmp28 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_X.compare:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp29 = this == other
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 8($fp)	# load other from $fp+8 into $t1
	  seq $t2, $t0, $t1	
	# Return _tmp29
	  move $v0, $t2		# assign return value into $v0
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
  f_X.GetZ:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp30 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp31 = this + _tmp30
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp32 = *(_tmp31)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp32
	  move $v0, $t3		# assign return value into $v0
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
  f_main:
  main:
	# BeginFunc 72
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 72	# decrement sp to make space for locals/temps
	# _tmp34 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp35 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp34 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp36 = X
	  la $t1, X	# load label
	# *(_tmp35) = _tmp36
	  sw $t1, 0($t0) 	# store with offset
	# d = _tmp35
	  move $t2, $t0		# copy value
	# _tmp37 = *(d)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp38 = *(_tmp37)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp39 = ACall _tmp38
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp35 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp36 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill d from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp37 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp38 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp40 = d - _tmp39
	  lw $t1, -8($fp)	# load d from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp41 = *(_tmp37 + 8)
	  lw $t3, -24($fp)	# load _tmp37 from $fp-24 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp41
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp39 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp40 from $t2 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp41 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	# _tmp42 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam d
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, -8($fp)	# load d from $fp-8 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp43 = *(d)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp44 = *(_tmp43)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp45 = ACall _tmp44
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp42 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp43 from $t2 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp44 from $t3 to $fp-52
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp46 = d - _tmp45
	  lw $t1, -8($fp)	# load d from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp47 = *(_tmp43 + 12)
	  lw $t3, -48($fp)	# load _tmp43 from $fp-48 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp48 = ACall _tmp47
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp45 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp46 from $t2 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp47 from $t4 to $fp-64
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# IfZ _tmp48 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp48 from $t0 to $fp-68
	  beqz $t0, _L1	# branch if _tmp48 is zero 
	# _tmp49 = "Same"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Same"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp49
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp49 from $t0 to $fp-72
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L0
	  b _L0		# unconditional branch
  _L1:
	# _tmp50 = "Different"
	  .data			# create string constant marked with label
	  _string4: .asciiz "Different"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp50
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp50 from $t0 to $fp-76
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L0:
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