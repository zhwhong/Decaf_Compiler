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
	  .word f_A.fn1
	  .text
  f_A.fn1:
	# BeginFunc 44
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 44	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp4 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp5 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp6 = this + _tmp5
	  add $t6, $t1, $t5	
	# *(_tmp6) = _tmp4
	  sw $t4, 0($t6) 	# store with offset
	# _tmp7 = "TEST!"
	  .data			# create string constant marked with label
	  _string1: .asciiz "TEST!"
	  .text
	  la $t7, _string1	# load label
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp2 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp3 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp4 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp5 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp6 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp7 from $t7 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = 4
	  li $t0, 4		# load constant value 4 into $t0
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
	  sw $t0, -36($fp)	# spill _tmp8 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp9 from $t2 to $fp-40
	  sw $t3, -44($fp)	# spill _tmp10 from $t3 to $fp-44
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp11 = "\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp11 from $t0 to $fp-48
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
	  .word f_B.fn1
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
	# VTable for class B_I
	  .data
	  .align 2
	  B_I:		# label for class B_I vtable
	  .word _offset_B_4
	  .word f_B.fn1
	  .text
  f_B.fn1:
	# BeginFunc 44
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 44	# decrement sp to make space for locals/temps
	# _tmp14 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp15 = this + _tmp14
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp16 = *(_tmp15)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp17 = 0
	  li $t4, 0		# load constant value 0 into $t4
	# _tmp18 = 8
	  li $t5, 8		# load constant value 8 into $t5
	# _tmp19 = this + _tmp18
	  add $t6, $t1, $t5	
	# *(_tmp19) = _tmp17
	  sw $t4, 0($t6) 	# store with offset
	# _tmp20 = "TEST!"
	  .data			# create string constant marked with label
	  _string3: .asciiz "TEST!"
	  .text
	  la $t7, _string3	# load label
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp14 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp15 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp16 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp17 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp18 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp19 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp20 from $t7 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp21 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp22 = this + _tmp21
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp23 = *(_tmp22)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp21 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp22 from $t2 to $fp-40
	  sw $t3, -44($fp)	# spill _tmp23 from $t3 to $fp-44
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp24 = "\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp24
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp24 from $t0 to $fp-48
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
	# _tmp25 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp25
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
	# BeginFunc 104
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 104	# decrement sp to make space for locals/temps
	# _tmp26 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp27 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp26 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp28 = B
	  la $t1, B	# load label
	# *(_tmp27) = _tmp28
	  sw $t1, 0($t0) 	# store with offset
	# _tmp29 = B_I
	  la $t2, B_I	# load label
	# *(_tmp27 + 4) = _tmp29
	  sw $t2, 4($t0) 	# store with offset
	# _tmp30 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp31 = _tmp27 + _tmp30
	  add $t4, $t0, $t3	
	# I = _tmp31
	  move $t5, $t4		# copy value
	# _tmp32 = *(I)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp33 = *(_tmp32)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp34 = ACall _tmp33
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp27 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp28 from $t1 to $fp-24
	  sw $t2, -28($fp)	# spill _tmp29 from $t2 to $fp-28
	  sw $t3, -32($fp)	# spill _tmp30 from $t3 to $fp-32
	  sw $t4, -36($fp)	# spill _tmp31 from $t4 to $fp-36
	  sw $t5, -12($fp)	# spill I from $t5 to $fp-12
	  sw $t6, -40($fp)	# spill _tmp32 from $t6 to $fp-40
	  sw $t7, -44($fp)	# spill _tmp33 from $t7 to $fp-44
	  jalr $t7            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp35 = I - _tmp34
	  lw $t1, -12($fp)	# load I from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp36 = *(_tmp32 + 4)
	  lw $t3, -40($fp)	# load _tmp32 from $fp-40 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp35
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp36
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp34 from $t0 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp35 from $t2 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp36 from $t4 to $fp-56
	  jalr $t4            	# jump to function
	# _tmp37 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp38 = 12
	  li $t1, 12		# load constant value 12 into $t1
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp39 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp37 from $t0 to $fp-60
	  sw $t1, -64($fp)	# spill _tmp38 from $t1 to $fp-64
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp40 = B
	  la $t1, B	# load label
	# *(_tmp39) = _tmp40
	  sw $t1, 0($t0) 	# store with offset
	# _tmp41 = B_I
	  la $t2, B_I	# load label
	# *(_tmp39 + 4) = _tmp41
	  sw $t2, 4($t0) 	# store with offset
	# _tmp42 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp43 = _tmp39 + _tmp42
	  add $t4, $t0, $t3	
	# zz = _tmp43
	  move $t5, $t4		# copy value
	# _tmp44 = *(zz)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp45 = *(_tmp44)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp46 = ACall _tmp45
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp39 from $t0 to $fp-68
	  sw $t1, -72($fp)	# spill _tmp40 from $t1 to $fp-72
	  sw $t2, -76($fp)	# spill _tmp41 from $t2 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp42 from $t3 to $fp-80
	  sw $t4, -84($fp)	# spill _tmp43 from $t4 to $fp-84
	  sw $t5, -8($fp)	# spill zz from $t5 to $fp-8
	  sw $t6, -88($fp)	# spill _tmp44 from $t6 to $fp-88
	  sw $t7, -92($fp)	# spill _tmp45 from $t7 to $fp-92
	  jalr $t7            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp47 = zz - _tmp46
	  lw $t1, -8($fp)	# load zz from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp48 = *(_tmp44 + 4)
	  lw $t3, -88($fp)	# load _tmp44 from $fp-88 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp47
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp48
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp46 from $t0 to $fp-96
	  sw $t2, -100($fp)	# spill _tmp47 from $t2 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp48 from $t4 to $fp-104
	  jalr $t4            	# jump to function
	# _tmp49 = 0
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