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
	  .word f_A.modifymyint
	  .word f_A.printmyint
	  .text
  f_A.modifymyint:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp4 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp5 = this + _tmp4
	  add $t5, $t1, $t4	
	# *(_tmp5) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_A.printmyint:
	# BeginFunc 16
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 16	# decrement sp to make space for locals/temps
	# _tmp6 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp7 = this + _tmp6
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp8 = *(_tmp7)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp6 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp7 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp8 from $t3 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = "\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp9 from $t0 to $fp-20
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
	  .word f_B.returnClassA
	  .text
  f_B.returnClassA:
	# BeginFunc 44
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 44	# decrement sp to make space for locals/temps
	# _tmp11 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# PushParam _tmp11
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp12 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp11 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp13 = A
	  la $t1, A	# load label
	# *(_tmp12) = _tmp13
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp12
	  move $t2, $t0		# copy value
	# _tmp14 = 42
	  li $t3, 42		# load constant value 42 into $t3
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp15 = *(a)
	  lw $t4, 0($t2) 	# load with offset
	# _tmp16 = *(_tmp15)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp17 = ACall _tmp16
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp12 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp13 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp14 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp15 from $t4 to $fp-28
	  sw $t5, -32($fp)	# spill _tmp16 from $t5 to $fp-32
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp18 = a - _tmp17
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp19 = *(_tmp15 + 4)
	  lw $t3, -28($fp)	# load _tmp15 from $fp-28 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp19
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp17 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp18 from $t2 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp19 from $t4 to $fp-44
	  jalr $t4            	# jump to function
	# _tmp20 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# Return a
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  move $v0, $t1		# assign return value into $v0
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
	# _tmp21 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp21
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
	# BeginFunc 120
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 120	# decrement sp to make space for locals/temps
	# _tmp22 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp23 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp22 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp24 = B
	  la $t1, B	# load label
	# *(_tmp23) = _tmp24
	  sw $t1, 0($t0) 	# store with offset
	# b = _tmp23
	  move $t2, $t0		# copy value
	# _tmp25 = *(b)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp26 = *(_tmp25)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp27 = ACall _tmp26
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp23 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp24 from $t1 to $fp-24
	  sw $t2, -12($fp)	# spill b from $t2 to $fp-12
	  sw $t3, -28($fp)	# spill _tmp25 from $t3 to $fp-28
	  sw $t4, -32($fp)	# spill _tmp26 from $t4 to $fp-32
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp28 = b - _tmp27
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  sub $t2, $t1, $t0	
	# _tmp29 = *(_tmp25 + 4)
	  lw $t3, -28($fp)	# load _tmp25 from $fp-28 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp28
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp30 = ACall _tmp29
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp27 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp28 from $t2 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp29 from $t4 to $fp-44
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# a = _tmp30
	  move $t1, $t0		# copy value
	# _tmp31 = *(a)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp32 = *(_tmp31)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp33 = ACall _tmp32
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp30 from $t0 to $fp-48
	  sw $t1, -8($fp)	# spill a from $t1 to $fp-8
	  sw $t2, -52($fp)	# spill _tmp31 from $t2 to $fp-52
	  sw $t3, -56($fp)	# spill _tmp32 from $t3 to $fp-56
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp34 = a - _tmp33
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp35 = *(_tmp31 + 8)
	  lw $t3, -52($fp)	# load _tmp31 from $fp-52 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp35
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp33 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp34 from $t2 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp35 from $t4 to $fp-68
	  jalr $t4            	# jump to function
	# _tmp36 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp37 = 137
	  li $t1, 137		# load constant value 137 into $t1
	# PushParam _tmp37
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp38 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp39 = *(_tmp38)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp40 = ACall _tmp39
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp36 from $t0 to $fp-72
	  sw $t1, -76($fp)	# spill _tmp37 from $t1 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp38 from $t3 to $fp-80
	  sw $t4, -84($fp)	# spill _tmp39 from $t4 to $fp-84
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp41 = a - _tmp40
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp42 = *(_tmp38 + 4)
	  lw $t3, -80($fp)	# load _tmp38 from $fp-80 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp42
	# (save modified registers before flow of control change)
	  sw $t0, -88($fp)	# spill _tmp40 from $t0 to $fp-88
	  sw $t2, -92($fp)	# spill _tmp41 from $t2 to $fp-92
	  sw $t4, -96($fp)	# spill _tmp42 from $t4 to $fp-96
	  jalr $t4            	# jump to function
	# _tmp43 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp44 = *(a)
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp45 = *(_tmp44)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp46 = ACall _tmp45
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp43 from $t0 to $fp-100
	  sw $t2, -104($fp)	# spill _tmp44 from $t2 to $fp-104
	  sw $t3, -108($fp)	# spill _tmp45 from $t3 to $fp-108
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp47 = a - _tmp46
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp48 = *(_tmp44 + 8)
	  lw $t3, -104($fp)	# load _tmp44 from $fp-104 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp47
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp48
	# (save modified registers before flow of control change)
	  sw $t0, -112($fp)	# spill _tmp46 from $t0 to $fp-112
	  sw $t2, -116($fp)	# spill _tmp47 from $t2 to $fp-116
	  sw $t4, -120($fp)	# spill _tmp48 from $t4 to $fp-120
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