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
	  .word f_Animal.MethodA
	  .word f_Animal.Method1
	  .text
  f_Animal.MethodA:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp1 = "Not overridden\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Not overridden\n"
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
  _offset_Cow_0:
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
	# VTable for class Cow
	  .data
	  .align 2
	  Cow:		# label for class Cow vtable
	  .word _offset_Cow_0
	  .word f_Cow.MethodA
	  .word f_Cow.Method1
	  .text
  f_Cow.Method1:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp4 = "Cow"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Cow"
	  .text
	  la $t0, _string3	# load label
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
  f_Cow.MethodA:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp5 = "Not overridden\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "Not overridden\n"
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
  _offset_Jersey_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp6 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp6
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
	  .word f_Jersey.MethodA
	  .word f_Jersey.Method1
	  .text
  f_Jersey.Method1:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp7 = "Jersey"
	  .data			# create string constant marked with label
	  _string5: .asciiz "Jersey"
	  .text
	  la $t0, _string5	# load label
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
  f_Jersey.MethodA:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp8 = "Not overridden\n"
	  .data			# create string constant marked with label
	  _string6: .asciiz "Not overridden\n"
	  .text
	  la $t0, _string6	# load label
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
  _offset_main_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp9 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp9
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
	# _tmp10 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp11 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp10 from $t0 to $fp-20
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp12 = Animal
	  la $t1, Animal	# load label
	# *(_tmp11) = _tmp12
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp11
	  move $t2, $t0		# copy value
	# _tmp13 = *(a)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp14 = *(_tmp13)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp15 = ACall _tmp14
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp11 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp12 from $t1 to $fp-28
	  sw $t2, -16($fp)	# spill a from $t2 to $fp-16
	  sw $t3, -32($fp)	# spill _tmp13 from $t3 to $fp-32
	  sw $t4, -36($fp)	# spill _tmp14 from $t4 to $fp-36
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp16 = a - _tmp15
	  lw $t1, -16($fp)	# load a from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp17 = *(_tmp13 + 4)
	  lw $t3, -32($fp)	# load _tmp13 from $fp-32 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp17
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp15 from $t0 to $fp-40
	  sw $t2, -44($fp)	# spill _tmp16 from $t2 to $fp-44
	  sw $t4, -48($fp)	# spill _tmp17 from $t4 to $fp-48
	  jalr $t4            	# jump to function
	# _tmp18 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp19 = *(a)
	  lw $t1, -16($fp)	# load a from $fp-16 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp20 = *(_tmp19)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp21 = ACall _tmp20
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp18 from $t0 to $fp-52
	  sw $t2, -56($fp)	# spill _tmp19 from $t2 to $fp-56
	  sw $t3, -60($fp)	# spill _tmp20 from $t3 to $fp-60
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp22 = a - _tmp21
	  lw $t1, -16($fp)	# load a from $fp-16 into $t1
	  sub $t2, $t1, $t0	
	# _tmp23 = *(_tmp19 + 8)
	  lw $t3, -56($fp)	# load _tmp19 from $fp-56 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp23
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp21 from $t0 to $fp-64
	  sw $t2, -68($fp)	# spill _tmp22 from $t2 to $fp-68
	  sw $t4, -72($fp)	# spill _tmp23 from $t4 to $fp-72
	  jalr $t4            	# jump to function
	# _tmp24 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp25 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# PushParam _tmp25
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp26 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp24 from $t0 to $fp-76
	  sw $t1, -80($fp)	# spill _tmp25 from $t1 to $fp-80
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp27 = Cow
	  la $t1, Cow	# load label
	# *(_tmp26) = _tmp27
	  sw $t1, 0($t0) 	# store with offset
	# c = _tmp26
	  move $t2, $t0		# copy value
	# _tmp28 = *(c)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp29 = *(_tmp28)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp30 = ACall _tmp29
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp26 from $t0 to $fp-84
	  sw $t1, -88($fp)	# spill _tmp27 from $t1 to $fp-88
	  sw $t2, -8($fp)	# spill c from $t2 to $fp-8
	  sw $t3, -92($fp)	# spill _tmp28 from $t3 to $fp-92
	  sw $t4, -96($fp)	# spill _tmp29 from $t4 to $fp-96
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp31 = c - _tmp30
	  lw $t1, -8($fp)	# load c from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp32 = *(_tmp28 + 4)
	  lw $t3, -92($fp)	# load _tmp28 from $fp-92 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp31
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp32
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp30 from $t0 to $fp-100
	  sw $t2, -104($fp)	# spill _tmp31 from $t2 to $fp-104
	  sw $t4, -108($fp)	# spill _tmp32 from $t4 to $fp-108
	  jalr $t4            	# jump to function
	# _tmp33 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp34 = *(c)
	  lw $t1, -8($fp)	# load c from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp35 = *(_tmp34)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp36 = ACall _tmp35
	# (save modified registers before flow of control change)
	  sw $t0, -112($fp)	# spill _tmp33 from $t0 to $fp-112
	  sw $t2, -116($fp)	# spill _tmp34 from $t2 to $fp-116
	  sw $t3, -120($fp)	# spill _tmp35 from $t3 to $fp-120
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp37 = c - _tmp36
	  lw $t1, -8($fp)	# load c from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp38 = *(_tmp34 + 8)
	  lw $t3, -116($fp)	# load _tmp34 from $fp-116 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp37
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp38
	# (save modified registers before flow of control change)
	  sw $t0, -124($fp)	# spill _tmp36 from $t0 to $fp-124
	  sw $t2, -128($fp)	# spill _tmp37 from $t2 to $fp-128
	  sw $t4, -132($fp)	# spill _tmp38 from $t4 to $fp-132
	  jalr $t4            	# jump to function
	# _tmp39 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp40 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp41 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -136($fp)	# spill _tmp39 from $t0 to $fp-136
	  sw $t1, -140($fp)	# spill _tmp40 from $t1 to $fp-140
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp42 = Jersey
	  la $t1, Jersey	# load label
	# *(_tmp41) = _tmp42
	  sw $t1, 0($t0) 	# store with offset
	# j = _tmp41
	  move $t2, $t0		# copy value
	# _tmp43 = *(j)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp44 = *(_tmp43)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp45 = ACall _tmp44
	# (save modified registers before flow of control change)
	  sw $t0, -144($fp)	# spill _tmp41 from $t0 to $fp-144
	  sw $t1, -148($fp)	# spill _tmp42 from $t1 to $fp-148
	  sw $t2, -12($fp)	# spill j from $t2 to $fp-12
	  sw $t3, -152($fp)	# spill _tmp43 from $t3 to $fp-152
	  sw $t4, -156($fp)	# spill _tmp44 from $t4 to $fp-156
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp46 = j - _tmp45
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp47 = *(_tmp43 + 4)
	  lw $t3, -152($fp)	# load _tmp43 from $fp-152 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp46
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp47
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp45 from $t0 to $fp-160
	  sw $t2, -164($fp)	# spill _tmp46 from $t2 to $fp-164
	  sw $t4, -168($fp)	# spill _tmp47 from $t4 to $fp-168
	  jalr $t4            	# jump to function
	# _tmp48 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp49 = *(j)
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp50 = *(_tmp49)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp51 = ACall _tmp50
	# (save modified registers before flow of control change)
	  sw $t0, -172($fp)	# spill _tmp48 from $t0 to $fp-172
	  sw $t2, -176($fp)	# spill _tmp49 from $t2 to $fp-176
	  sw $t3, -180($fp)	# spill _tmp50 from $t3 to $fp-180
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp52 = j - _tmp51
	  lw $t1, -12($fp)	# load j from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp53 = *(_tmp49 + 8)
	  lw $t3, -176($fp)	# load _tmp49 from $fp-176 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp52
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp53
	# (save modified registers before flow of control change)
	  sw $t0, -184($fp)	# spill _tmp51 from $t0 to $fp-184
	  sw $t2, -188($fp)	# spill _tmp52 from $t2 to $fp-188
	  sw $t4, -192($fp)	# spill _tmp53 from $t4 to $fp-192
	  jalr $t4            	# jump to function
	# _tmp54 = 0
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