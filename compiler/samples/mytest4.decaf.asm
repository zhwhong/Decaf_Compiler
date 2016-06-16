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
	  .word f_A.a_fn
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
	  .word f_A.a_fn
	  .text
  f_A.a_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp2 = "A_FN from A\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "A_FN from A\n"
	  .text
	  la $t0, _string1	# load label
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
  _offset_B_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp3 = 0
	  li $t0, 0		# load constant value 0 into $t0
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
	# VTable for class B
	  .data
	  .align 2
	  B:		# label for class B vtable
	  .word _offset_B_0
	  .word f_B.a_fn
	  .word f_B.b_fn
	  .text
  _offset_B_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp4 = 4
	  li $t0, 4		# load constant value 4 into $t0
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
	# VTable for class B_F
	  .data
	  .align 2
	  B_F:		# label for class B_F vtable
	  .word _offset_B_4
	  .word f_B.a_fn
	  .text
  f_B.a_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp5 = "A_FN from B\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "A_FN from B\n"
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
  f_B.b_fn:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp6 = "B_FN from B\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "B_FN from B\n"
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
  _offset_main_0:
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
  f_main:
  main:
	# BeginFunc 212
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 212	# decrement sp to make space for locals/temps
	# _tmp8 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp9 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp8 from $t0 to $fp-20
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp10 = A
	  la $t1, A	# load label
	# *(_tmp9) = _tmp10
	  sw $t1, 0($t0) 	# store with offset
	# _tmp11 = A_F
	  la $t2, A_F	# load label
	# *(_tmp9 + 4) = _tmp11
	  sw $t2, 4($t0) 	# store with offset
	# a = _tmp9
	  move $t3, $t0		# copy value
	# _tmp12 = 16
	  li $t4, 16		# load constant value 16 into $t4
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp13 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp9 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp10 from $t1 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp11 from $t2 to $fp-32
	  sw $t3, -8($fp)	# spill a from $t3 to $fp-8
	  sw $t4, -36($fp)	# spill _tmp12 from $t4 to $fp-36
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp14 = B
	  la $t1, B	# load label
	# *(_tmp13) = _tmp14
	  sw $t1, 0($t0) 	# store with offset
	# _tmp15 = B_F
	  la $t2, B_F	# load label
	# *(_tmp13 + 4) = _tmp15
	  sw $t2, 4($t0) 	# store with offset
	# b = _tmp13
	  move $t3, $t0		# copy value
	# _tmp16 = *(a)
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  lw $t5, 0($t4) 	# load with offset
	# _tmp17 = *(_tmp16)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp18 = ACall _tmp17
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp13 from $t0 to $fp-40
	  sw $t1, -44($fp)	# spill _tmp14 from $t1 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp15 from $t2 to $fp-48
	  sw $t3, -12($fp)	# spill b from $t3 to $fp-12
	  sw $t5, -52($fp)	# spill _tmp16 from $t5 to $fp-52
	  sw $t6, -56($fp)	# spill _tmp17 from $t6 to $fp-56
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp19 = a - _tmp18
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp20 = *(_tmp16 + 4)
	  lw $t3, -52($fp)	# load _tmp16 from $fp-52 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp20
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp18 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp19 from $t2 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp20 from $t4 to $fp-68
	  jalr $t4            	# jump to function
	# _tmp21 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = *(b)
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp23 = *(_tmp22)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp24 = ACall _tmp23
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp21 from $t0 to $fp-72
	  sw $t2, -76($fp)	# spill _tmp22 from $t2 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp23 from $t3 to $fp-80
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp25 = b - _tmp24
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp26 = *(_tmp22 + 8)
	  lw $t3, -76($fp)	# load _tmp22 from $fp-76 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp25
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp26
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp24 from $t0 to $fp-84
	  sw $t2, -88($fp)	# spill _tmp25 from $t2 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp26 from $t4 to $fp-92
	  jalr $t4            	# jump to function
	# _tmp27 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# a = b
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  move $t2, $t1		# copy value
	# _tmp28 = *(a)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp29 = *(_tmp28)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp30 = ACall _tmp29
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp27 from $t0 to $fp-96
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -100($fp)	# spill _tmp28 from $t3 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp29 from $t4 to $fp-104
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp31 = a - _tmp30
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp32 = *(_tmp28 + 4)
	  lw $t3, -100($fp)	# load _tmp28 from $fp-100 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp31
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp32
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp30 from $t0 to $fp-108
	  sw $t2, -112($fp)	# spill _tmp31 from $t2 to $fp-112
	  sw $t4, -116($fp)	# spill _tmp32 from $t4 to $fp-116
	  jalr $t4            	# jump to function
	# _tmp33 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp34 = 16
	  li $t1, 16		# load constant value 16 into $t1
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp35 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -120($fp)	# spill _tmp33 from $t0 to $fp-120
	  sw $t1, -124($fp)	# spill _tmp34 from $t1 to $fp-124
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp36 = B
	  la $t1, B	# load label
	# *(_tmp35) = _tmp36
	  sw $t1, 0($t0) 	# store with offset
	# _tmp37 = B_F
	  la $t2, B_F	# load label
	# *(_tmp35 + 4) = _tmp37
	  sw $t2, 4($t0) 	# store with offset
	# b = _tmp35
	  move $t3, $t0		# copy value
	# _tmp38 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp39 = b + _tmp38
	  add $t5, $t3, $t4	
	# f = _tmp39
	  move $t6, $t5		# copy value
	# _tmp40 = *(f)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp41 = *(_tmp40)
	  lw $s0, 0($t7) 	# load with offset
	# _tmp42 = ACall _tmp41
	# (save modified registers before flow of control change)
	  sw $t0, -128($fp)	# spill _tmp35 from $t0 to $fp-128
	  sw $t1, -132($fp)	# spill _tmp36 from $t1 to $fp-132
	  sw $t2, -136($fp)	# spill _tmp37 from $t2 to $fp-136
	  sw $t3, -12($fp)	# spill b from $t3 to $fp-12
	  sw $t4, -140($fp)	# spill _tmp38 from $t4 to $fp-140
	  sw $t5, -144($fp)	# spill _tmp39 from $t5 to $fp-144
	  sw $t6, -16($fp)	# spill f from $t6 to $fp-16
	  sw $t7, -148($fp)	# spill _tmp40 from $t7 to $fp-148
	  sw $s0, -152($fp)	# spill _tmp41 from $s0 to $fp-152
	  jalr $s0            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp43 = f - _tmp42
	  lw $t1, -16($fp)	# load f from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp44 = *(_tmp40 + 4)
	  lw $t3, -148($fp)	# load _tmp40 from $fp-148 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp43
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp44
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp42 from $t0 to $fp-156
	  sw $t2, -160($fp)	# spill _tmp43 from $t2 to $fp-160
	  sw $t4, -164($fp)	# spill _tmp44 from $t4 to $fp-164
	  jalr $t4            	# jump to function
	# _tmp45 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp46 = 12
	  li $t1, 12		# load constant value 12 into $t1
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp47 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -168($fp)	# spill _tmp45 from $t0 to $fp-168
	  sw $t1, -172($fp)	# spill _tmp46 from $t1 to $fp-172
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp48 = A
	  la $t1, A	# load label
	# *(_tmp47) = _tmp48
	  sw $t1, 0($t0) 	# store with offset
	# _tmp49 = A_F
	  la $t2, A_F	# load label
	# *(_tmp47 + 4) = _tmp49
	  sw $t2, 4($t0) 	# store with offset
	# a = _tmp47
	  move $t3, $t0		# copy value
	# _tmp50 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp51 = a + _tmp50
	  add $t5, $t3, $t4	
	# f = _tmp51
	  move $t6, $t5		# copy value
	# _tmp52 = *(f)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp53 = *(_tmp52)
	  lw $s0, 0($t7) 	# load with offset
	# _tmp54 = ACall _tmp53
	# (save modified registers before flow of control change)
	  sw $t0, -176($fp)	# spill _tmp47 from $t0 to $fp-176
	  sw $t1, -180($fp)	# spill _tmp48 from $t1 to $fp-180
	  sw $t2, -184($fp)	# spill _tmp49 from $t2 to $fp-184
	  sw $t3, -8($fp)	# spill a from $t3 to $fp-8
	  sw $t4, -188($fp)	# spill _tmp50 from $t4 to $fp-188
	  sw $t5, -192($fp)	# spill _tmp51 from $t5 to $fp-192
	  sw $t6, -16($fp)	# spill f from $t6 to $fp-16
	  sw $t7, -196($fp)	# spill _tmp52 from $t7 to $fp-196
	  sw $s0, -200($fp)	# spill _tmp53 from $s0 to $fp-200
	  jalr $s0            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp55 = f - _tmp54
	  lw $t1, -16($fp)	# load f from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp56 = *(_tmp52 + 4)
	  lw $t3, -196($fp)	# load _tmp52 from $fp-196 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp55
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp56
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp54 from $t0 to $fp-204
	  sw $t2, -208($fp)	# spill _tmp55 from $t2 to $fp-208
	  sw $t4, -212($fp)	# spill _tmp56 from $t4 to $fp-212
	  jalr $t4            	# jump to function
	# _tmp57 = 0
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