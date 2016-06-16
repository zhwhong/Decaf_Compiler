	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_exp_0:
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
	# VTable for class exp
	  .data
	  .align 2
	  exp:		# label for class exp vtable
	  .word _offset_exp_0
	  .word f_exp.f
	  .word f_exp.ff
	  .word f_exp.g
	  .text
  f_exp.f:
	# BeginFunc 0
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	# PushParam fe
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# load fe from $fp+8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_exp.ff:
	# BeginFunc 28
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 28	# decrement sp to make space for locals/temps
	# _tmp1 = 34
	  li $t0, 34		# load constant value 34 into $t0
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp2 = *(this)
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp4 = ACall _tmp3
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp2 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp3 from $t3 to $fp-16
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp5 = this - _tmp4
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp6 = *(_tmp2 + 4)
	  lw $t3, -12($fp)	# load _tmp2 from $fp-12 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp6
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp4 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp5 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp6 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	# _tmp7 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_exp.g:
	# BeginFunc 0
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	# PushParam c
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 16($fp)	# load c from $fp+16 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam b
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 12($fp)	# load b from $fp+12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# load a from $fp+8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
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
	# _tmp8 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp8
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
	# BeginFunc 156
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 156	# decrement sp to make space for locals/temps
	# _tmp9 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp10 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp9 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp11 = exp
	  la $t1, exp	# load label
	# *(_tmp10) = _tmp11
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp10
	  move $t2, $t0		# copy value
	# _tmp12 = 12
	  li $t3, 12		# load constant value 12 into $t3
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp13 = *(a)
	  lw $t4, 0($t2) 	# load with offset
	# _tmp14 = *(_tmp13)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp15 = ACall _tmp14
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp10 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp11 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp12 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp13 from $t4 to $fp-28
	  sw $t5, -32($fp)	# spill _tmp14 from $t5 to $fp-32
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp16 = a - _tmp15
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp17 = *(_tmp13 + 4)
	  lw $t3, -28($fp)	# load _tmp13 from $fp-28 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp17
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp15 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp16 from $t2 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp17 from $t4 to $fp-44
	  jalr $t4            	# jump to function
	# _tmp18 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp19 = *(a)
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp20 = *(_tmp19)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp21 = ACall _tmp20
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp18 from $t0 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp19 from $t2 to $fp-52
	  sw $t3, -56($fp)	# spill _tmp20 from $t3 to $fp-56
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp22 = a - _tmp21
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp23 = *(_tmp19 + 8)
	  lw $t3, -52($fp)	# load _tmp19 from $fp-52 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp23
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp21 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp22 from $t2 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp23 from $t4 to $fp-68
	  jalr $t4            	# jump to function
	# _tmp24 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp25 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# PushParam _tmp25
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp26 = " and "
	  .data			# create string constant marked with label
	  _string1: .asciiz " and "
	  .text
	  la $t2, _string1	# load label
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp27 = 2
	  li $t3, 2		# load constant value 2 into $t3
	# PushParam _tmp27
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp28 = *(a)
	  lw $t4, -8($fp)	# load a from $fp-8 into $t4
	  lw $t5, 0($t4) 	# load with offset
	# _tmp29 = *(_tmp28)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp30 = ACall _tmp29
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp24 from $t0 to $fp-72
	  sw $t1, -76($fp)	# spill _tmp25 from $t1 to $fp-76
	  sw $t2, -80($fp)	# spill _tmp26 from $t2 to $fp-80
	  sw $t3, -84($fp)	# spill _tmp27 from $t3 to $fp-84
	  sw $t5, -88($fp)	# spill _tmp28 from $t5 to $fp-88
	  sw $t6, -92($fp)	# spill _tmp29 from $t6 to $fp-92
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp31 = a - _tmp30
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp32 = *(_tmp28 + 12)
	  lw $t3, -88($fp)	# load _tmp28 from $fp-88 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp31
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp32
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp30 from $t0 to $fp-96
	  sw $t2, -100($fp)	# spill _tmp31 from $t2 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp32 from $t4 to $fp-104
	  jalr $t4            	# jump to function
	# _tmp33 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 16
	  add $sp, $sp, 16	# pop params off stack
	# _tmp34 = 10
	  li $t1, 10		# load constant value 10 into $t1
	# _tmp35 = 3
	  li $t2, 3		# load constant value 3 into $t2
	# _tmp36 = 2
	  li $t3, 2		# load constant value 2 into $t3
	# _tmp37 = _tmp35 % _tmp36
	  rem $t4, $t2, $t3	
	# _tmp38 = _tmp34 + _tmp37
	  add $t5, $t1, $t4	
	# _tmp39 = 5
	  li $t6, 5		# load constant value 5 into $t6
	# _tmp40 = _tmp38 + _tmp39
	  add $t7, $t5, $t6	
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t7, 4($sp)	# copy param value to stack
	# _tmp41 = *(a)
	  lw $s0, -8($fp)	# load a from $fp-8 into $s0
	  lw $s1, 0($s0) 	# load with offset
	# _tmp42 = *(_tmp41)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp43 = ACall _tmp42
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp33 from $t0 to $fp-108
	  sw $t1, -112($fp)	# spill _tmp34 from $t1 to $fp-112
	  sw $t2, -116($fp)	# spill _tmp35 from $t2 to $fp-116
	  sw $t3, -120($fp)	# spill _tmp36 from $t3 to $fp-120
	  sw $t4, -124($fp)	# spill _tmp37 from $t4 to $fp-124
	  sw $t5, -128($fp)	# spill _tmp38 from $t5 to $fp-128
	  sw $t6, -132($fp)	# spill _tmp39 from $t6 to $fp-132
	  sw $t7, -136($fp)	# spill _tmp40 from $t7 to $fp-136
	  sw $s1, -140($fp)	# spill _tmp41 from $s1 to $fp-140
	  sw $s2, -144($fp)	# spill _tmp42 from $s2 to $fp-144
	  jalr $s2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp44 = a - _tmp43
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp45 = *(_tmp41 + 4)
	  lw $t3, -140($fp)	# load _tmp41 from $fp-140 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp44
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp45
	# (save modified registers before flow of control change)
	  sw $t0, -148($fp)	# spill _tmp43 from $t0 to $fp-148
	  sw $t2, -152($fp)	# spill _tmp44 from $t2 to $fp-152
	  sw $t4, -156($fp)	# spill _tmp45 from $t4 to $fp-156
	  jalr $t4            	# jump to function
	# _tmp46 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
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