	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Barn_0:
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
	# VTable for class Barn
	  .data
	  .align 2
	  Barn:		# label for class Barn vtable
	  .word _offset_Barn_0
	  .word f_Barn.AddCow
	  .text
  f_Barn.AddCow:
	# BeginFunc 24
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 24	# decrement sp to make space for locals/temps
	# _tmp1 = *(cow)
	  lw $t0, 8($fp)	# load cow from $fp+8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp2 = *(_tmp1)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp3 = ACall _tmp2
	# (save modified registers before flow of control change)
	  sw $t1, -8($fp)	# spill _tmp1 from $t1 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp2 from $t2 to $fp-12
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp4 = cow - _tmp3
	  lw $t1, 8($fp)	# load cow from $fp+8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp5 = *(_tmp1 + 8)
	  lw $t3, -8($fp)	# load _tmp1 from $fp-8 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp5
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp3 from $t0 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp4 from $t2 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp5 from $t4 to $fp-24
	  jalr $t4            	# jump to function
	# _tmp6 = 0
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
	# BeginFunc 284
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 284	# decrement sp to make space for locals/temps
	# _tmp8 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp9 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp10 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp11 = _tmp9 < _tmp8
	  slt $t3, $t1, $t0	
	# IfZ _tmp11 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp8 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp9 from $t1 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp10 from $t2 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp11 from $t3 to $fp-36
	  beqz $t3, _L0	# branch if _tmp11 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp12 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp12 from $t0 to $fp-40
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp13 = _tmp8 * _tmp10
	  lw $t0, -24($fp)	# load _tmp8 from $fp-24 into $t0
	  lw $t1, -32($fp)	# load _tmp10 from $fp-32 into $t1
	  mul $t2, $t0, $t1	
	# _tmp14 = _tmp13 + _tmp10
	  add $t3, $t2, $t1	
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp15 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -44($fp)	# spill _tmp13 from $t2 to $fp-44
	  sw $t3, -48($fp)	# spill _tmp14 from $t3 to $fp-48
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp15) = _tmp8
	  lw $t1, -24($fp)	# load _tmp8 from $fp-24 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# c = _tmp15
	  move $t2, $t0		# copy value
	# _tmp16 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp17 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp15 from $t0 to $fp-52
	  sw $t2, -16($fp)	# spill c from $t2 to $fp-16
	  sw $t3, -56($fp)	# spill _tmp16 from $t3 to $fp-56
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp18 = Barn
	  la $t1, Barn	# load label
	# *(_tmp17) = _tmp18
	  sw $t1, 0($t0) 	# store with offset
	# b = _tmp17
	  move $t2, $t0		# copy value
	# _tmp19 = 8
	  li $t3, 8		# load constant value 8 into $t3
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp20 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp17 from $t0 to $fp-60
	  sw $t1, -64($fp)	# spill _tmp18 from $t1 to $fp-64
	  sw $t2, -20($fp)	# spill b from $t2 to $fp-20
	  sw $t3, -68($fp)	# spill _tmp19 from $t3 to $fp-68
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp21 = Cow
	  la $t1, Cow	# load label
	# *(_tmp20) = _tmp21
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp20
	  move $t2, $t0		# copy value
	# _tmp22 = 24
	  li $t3, 24		# load constant value 24 into $t3
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp23 = *(a)
	  lw $t4, 0($t2) 	# load with offset
	# _tmp24 = *(_tmp23)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp25 = ACall _tmp24
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp20 from $t0 to $fp-72
	  sw $t1, -76($fp)	# spill _tmp21 from $t1 to $fp-76
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -80($fp)	# spill _tmp22 from $t3 to $fp-80
	  sw $t4, -84($fp)	# spill _tmp23 from $t4 to $fp-84
	  sw $t5, -88($fp)	# spill _tmp24 from $t5 to $fp-88
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp26 = a - _tmp25
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp27 = *(_tmp23 + 4)
	  lw $t3, -84($fp)	# load _tmp23 from $fp-84 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp27
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp25 from $t0 to $fp-92
	  sw $t2, -96($fp)	# spill _tmp26 from $t2 to $fp-96
	  sw $t4, -100($fp)	# spill _tmp27 from $t4 to $fp-100
	  jalr $t4            	# jump to function
	# _tmp28 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp29 = *(a)
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp30 = *(_tmp29)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp31 = ACall _tmp30
	# (save modified registers before flow of control change)
	  sw $t0, -104($fp)	# spill _tmp28 from $t0 to $fp-104
	  sw $t2, -108($fp)	# spill _tmp29 from $t2 to $fp-108
	  sw $t3, -112($fp)	# spill _tmp30 from $t3 to $fp-112
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp32 = a - _tmp31
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp33 = *(_tmp29 + 16)
	  lw $t3, -108($fp)	# load _tmp29 from $fp-108 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp32
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp33
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp31 from $t0 to $fp-116
	  sw $t2, -120($fp)	# spill _tmp32 from $t2 to $fp-120
	  sw $t4, -124($fp)	# spill _tmp33 from $t4 to $fp-124
	  jalr $t4            	# jump to function
	# _tmp34 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp35 = 8
	  li $t1, 8		# load constant value 8 into $t1
	# PushParam _tmp35
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp36 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -128($fp)	# spill _tmp34 from $t0 to $fp-128
	  sw $t1, -132($fp)	# spill _tmp35 from $t1 to $fp-132
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp37 = Jersey
	  la $t1, Jersey	# load label
	# *(_tmp36) = _tmp37
	  sw $t1, 0($t0) 	# store with offset
	# j = _tmp36
	  move $t2, $t0		# copy value
	# _tmp38 = 33
	  li $t3, 33		# load constant value 33 into $t3
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp39 = *(j)
	  lw $t4, 0($t2) 	# load with offset
	# _tmp40 = *(_tmp39)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp41 = ACall _tmp40
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp36 from $t0 to $fp-136
	  sw $t1, -140($fp)	# spill _tmp37 from $t1 to $fp-140
	  sw $t2, -12($fp)	# spill j from $t2 to $fp-12
	  sw $t3, -144($fp)	# spill _tmp38 from $t3 to $fp-144
	  sw $t4, -148($fp)	# spill _tmp39 from $t4 to $fp-148
	  sw $t5, -152($fp)	# spill _tmp40 from $t5 to $fp-152
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp42 = j - _tmp41
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp43 = *(_tmp39 + 4)
	  lw $t3, -148($fp)	# load _tmp39 from $fp-148 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp42
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp43
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp41 from $t0 to $fp-156
	  sw $t2, -160($fp)	# spill _tmp42 from $t2 to $fp-160
	  sw $t4, -164($fp)	# spill _tmp43 from $t4 to $fp-164
	  jalr $t4            	# jump to function
	# _tmp44 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# a = j
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  move $t2, $t1		# copy value
	# _tmp45 = *(a)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp46 = *(_tmp45)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp47 = ACall _tmp46
	# (save modified registers before flow of control change)
	  sw $t0, -168($fp)	# spill _tmp44 from $t0 to $fp-168
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -172($fp)	# spill _tmp45 from $t3 to $fp-172
	  sw $t4, -176($fp)	# spill _tmp46 from $t4 to $fp-176
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp48 = a - _tmp47
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp49 = *(_tmp45 + 16)
	  lw $t3, -172($fp)	# load _tmp45 from $fp-172 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp48
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp49
	# (save modified registers before flow of control change)
	  sw $t0, -180($fp)	# spill _tmp47 from $t0 to $fp-180
	  sw $t2, -184($fp)	# spill _tmp48 from $t2 to $fp-184
	  sw $t4, -188($fp)	# spill _tmp49 from $t4 to $fp-188
	  jalr $t4            	# jump to function
	# _tmp50 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp51 = *(j)
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp52 = *(_tmp51)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp53 = ACall _tmp52
	# (save modified registers before flow of control change)
	  sw $t0, -192($fp)	# spill _tmp50 from $t0 to $fp-192
	  sw $t2, -196($fp)	# spill _tmp51 from $t2 to $fp-196
	  sw $t3, -200($fp)	# spill _tmp52 from $t3 to $fp-200
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp54 = j - _tmp53
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp55 = *(_tmp51 + 16)
	  lw $t3, -196($fp)	# load _tmp51 from $fp-196 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp54
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp55
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp53 from $t0 to $fp-204
	  sw $t2, -208($fp)	# spill _tmp54 from $t2 to $fp-208
	  sw $t4, -212($fp)	# spill _tmp55 from $t4 to $fp-212
	  jalr $t4            	# jump to function
	# _tmp56 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp57 = *(j)
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp58 = *(_tmp57)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp59 = ACall _tmp58
	# (save modified registers before flow of control change)
	  sw $t0, -216($fp)	# spill _tmp56 from $t0 to $fp-216
	  sw $t2, -220($fp)	# spill _tmp57 from $t2 to $fp-220
	  sw $t3, -224($fp)	# spill _tmp58 from $t3 to $fp-224
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp60 = j - _tmp59
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp61 = *(_tmp57 + 20)
	  lw $t3, -220($fp)	# load _tmp57 from $fp-220 into $t3
	  lw $t4, 20($t3) 	# load with offset
	# PushParam _tmp60
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp61
	# (save modified registers before flow of control change)
	  sw $t0, -228($fp)	# spill _tmp59 from $t0 to $fp-228
	  sw $t2, -232($fp)	# spill _tmp60 from $t2 to $fp-232
	  sw $t4, -236($fp)	# spill _tmp61 from $t4 to $fp-236
	  jalr $t4            	# jump to function
	# _tmp62 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp63 = *(b)
	  lw $t2, -20($fp)	# load b from $fp-20 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp64 = *(_tmp63)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp65 = ACall _tmp64
	# (save modified registers before flow of control change)
	  sw $t0, -240($fp)	# spill _tmp62 from $t0 to $fp-240
	  sw $t3, -244($fp)	# spill _tmp63 from $t3 to $fp-244
	  sw $t4, -248($fp)	# spill _tmp64 from $t4 to $fp-248
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp66 = b - _tmp65
	  lw $t1, -20($fp)	# load b from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp67 = *(_tmp63 + 4)
	  lw $t3, -244($fp)	# load _tmp63 from $fp-244 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp66
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp67
	# (save modified registers before flow of control change)
	  sw $t0, -252($fp)	# spill _tmp65 from $t0 to $fp-252
	  sw $t2, -256($fp)	# spill _tmp66 from $t2 to $fp-256
	  sw $t4, -260($fp)	# spill _tmp67 from $t4 to $fp-260
	  jalr $t4            	# jump to function
	# _tmp68 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# PushParam j
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp69 = *(b)
	  lw $t2, -20($fp)	# load b from $fp-20 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp70 = *(_tmp69)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp71 = ACall _tmp70
	# (save modified registers before flow of control change)
	  sw $t0, -264($fp)	# spill _tmp68 from $t0 to $fp-264
	  sw $t3, -268($fp)	# spill _tmp69 from $t3 to $fp-268
	  sw $t4, -272($fp)	# spill _tmp70 from $t4 to $fp-272
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp72 = b - _tmp71
	  lw $t1, -20($fp)	# load b from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp73 = *(_tmp69 + 4)
	  lw $t3, -268($fp)	# load _tmp69 from $fp-268 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp72
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp73
	# (save modified registers before flow of control change)
	  sw $t0, -276($fp)	# spill _tmp71 from $t0 to $fp-276
	  sw $t2, -280($fp)	# spill _tmp72 from $t2 to $fp-280
	  sw $t4, -284($fp)	# spill _tmp73 from $t4 to $fp-284
	  jalr $t4            	# jump to function
	# _tmp74 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
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
	# _tmp75 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp75
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
	  .word f_Jersey.Init
	  .word f_Jersey.Method1
	  .word f_Jersey.PrintSelf
	  .word f_Jersey.Method2
	  .word f_Jersey.Method3
	  .text
  f_Jersey.Method3:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp76 = "Jersey3"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Jersey3"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp76
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp76 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp77 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp78 = *(_tmp77)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp79 = ACall _tmp78
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp77 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp78 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp80 = this - _tmp79
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp81 = *(_tmp77 + 16)
	  lw $t3, -12($fp)	# load _tmp77 from $fp-12 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp80
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp81
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp79 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp80 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp81 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp82 = 0
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
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp83 = "Jersey"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Jersey"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp83
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp83 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp84 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp85 = *(_tmp84)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp86 = ACall _tmp85
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp84 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp85 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp87 = this - _tmp86
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp88 = *(_tmp84 + 12)
	  lw $t3, -12($fp)	# load _tmp84 from $fp-12 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp87
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp88
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp86 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp87 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp88 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp89 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.Init:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp90 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp91 = this + _tmp90
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp92 = *(_tmp91)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp93 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp94 = this + _tmp93
	  add $t5, $t1, $t4	
	# *(_tmp94) = n
	  lw $t6, 8($fp)	# load n from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Jersey.PrintSelf:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp95 = "num1 = "
	  .data			# create string constant marked with label
	  _string4: .asciiz "num1 = "
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp95
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp95 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp96 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp97 = this + _tmp96
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp98 = *(_tmp97)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp98
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp96 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp97 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp98 from $t3 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp99 = "\n"
	  .data			# create string constant marked with label
	  _string5: .asciiz "\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp99
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp99 from $t0 to $fp-24
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
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
	# _tmp100 = "Cow2"
	  .data			# create string constant marked with label
	  _string6: .asciiz "Cow2"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp100
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp100 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp101 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp102 = *(_tmp101)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp103 = ACall _tmp102
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp101 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp102 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp104 = this - _tmp103
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp105 = *(_tmp101 + 8)
	  lw $t3, -12($fp)	# load _tmp101 from $fp-12 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp104
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp105
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp103 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp104 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp105 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp106 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_Animal_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp107 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp107
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
	  .word f_Animal.Init
	  .word f_Animal.Method1
	  .word f_Animal.PrintSelf
	  .text
  f_Animal.Init:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp108 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp109 = this + _tmp108
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp110 = *(_tmp109)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp111 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp112 = this + _tmp111
	  add $t5, $t1, $t4	
	# *(_tmp112) = n
	  lw $t6, 8($fp)	# load n from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Animal.Method1:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp113 = "Animal"
	  .data			# create string constant marked with label
	  _string7: .asciiz "Animal"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp113
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp113 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp114 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp115 = *(_tmp114)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp116 = ACall _tmp115
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp114 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp115 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp117 = this - _tmp116
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp118 = *(_tmp114 + 12)
	  lw $t3, -12($fp)	# load _tmp114 from $fp-12 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp117
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp118
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp116 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp117 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp118 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp119 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Animal.PrintSelf:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp120 = "num1 = "
	  .data			# create string constant marked with label
	  _string8: .asciiz "num1 = "
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp120
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp120 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp121 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp122 = this + _tmp121
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp123 = *(_tmp122)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp123
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp121 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp122 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp123 from $t3 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp124 = "\n"
	  .data			# create string constant marked with label
	  _string9: .asciiz "\n"
	  .text
	  la $t0, _string9	# load label
	# PushParam _tmp124
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp124 from $t0 to $fp-24
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
	# _tmp125 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp125
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
	  .word f_Cow.Init
	  .word f_Cow.Method1
	  .word f_Cow.PrintSelf
	  .word f_Cow.Method2
	  .text
  f_Cow.Method2:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp126 = "Cow2"
	  .data			# create string constant marked with label
	  _string10: .asciiz "Cow2"
	  .text
	  la $t0, _string10	# load label
	# PushParam _tmp126
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp126 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp127 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp128 = *(_tmp127)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp129 = ACall _tmp128
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp127 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp128 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp130 = this - _tmp129
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp131 = *(_tmp127 + 8)
	  lw $t3, -12($fp)	# load _tmp127 from $fp-12 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp130
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp131
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp129 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp130 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp131 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp132 = 0
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
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp133 = "Cow"
	  .data			# create string constant marked with label
	  _string11: .asciiz "Cow"
	  .text
	  la $t0, _string11	# load label
	# PushParam _tmp133
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp133 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp134 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp135 = *(_tmp134)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp136 = ACall _tmp135
	# (save modified registers before flow of control change)
	  sw $t1, -12($fp)	# spill _tmp134 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp135 from $t2 to $fp-16
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp137 = this - _tmp136
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp138 = *(_tmp134 + 12)
	  lw $t3, -12($fp)	# load _tmp134 from $fp-12 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp137
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp138
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp136 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp137 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp138 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp139 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Cow.Init:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp140 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp141 = this + _tmp140
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp142 = *(_tmp141)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp143 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp144 = this + _tmp143
	  add $t5, $t1, $t4	
	# *(_tmp144) = n
	  lw $t6, 8($fp)	# load n from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Cow.PrintSelf:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp145 = "num1 = "
	  .data			# create string constant marked with label
	  _string12: .asciiz "num1 = "
	  .text
	  la $t0, _string12	# load label
	# PushParam _tmp145
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp145 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp146 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp147 = this + _tmp146
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp148 = *(_tmp147)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp148
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp146 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp147 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp148 from $t3 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp149 = "\n"
	  .data			# create string constant marked with label
	  _string13: .asciiz "\n"
	  .text
	  la $t0, _string13	# load label
	# PushParam _tmp149
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp149 from $t0 to $fp-24
	  jal _PrintString   	# jump to function
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