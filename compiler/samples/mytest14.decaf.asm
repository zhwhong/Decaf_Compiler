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
	  .word f_A.fn
	  .word f_A.fn2
	  .text
  f_A.fn:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# load a from $fp+8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp1 = " "
	  .data			# create string constant marked with label
	  _string1: .asciiz " "
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
	# _tmp2 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp3 = this + _tmp2
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp4 = *(_tmp3)
	  lw $t3, 0($t2) 	# load with offset
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp2 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp3 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp4 from $t3 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = "\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp5 from $t0 to $fp-24
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_A.fn2:
	# BeginFunc 24
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 24	# decrement sp to make space for locals/temps
	# _tmp6 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp7 = this + _tmp6
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp8 = *(_tmp7)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp9 = 137
	  li $t4, 137		# load constant value 137 into $t4
	# _tmp10 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp11 = this + _tmp10
	  add $t6, $t1, $t5	
	# *(_tmp11) = _tmp9
	  sw $t4, 0($t6) 	# store with offset
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
  f_main:
  main:
	# BeginFunc 68
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 68	# decrement sp to make space for locals/temps
	# _tmp13 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp14 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp13 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp15 = A
	  la $t1, A	# load label
	# *(_tmp14) = _tmp15
	  sw $t1, 0($t0) 	# store with offset
	# a = _tmp14
	  move $t2, $t0		# copy value
	# _tmp16 = *(a)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp17 = *(_tmp16)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp18 = ACall _tmp17
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp14 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp15 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill a from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp16 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp17 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp19 = a - _tmp18
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp20 = *(_tmp16 + 8)
	  lw $t3, -24($fp)	# load _tmp16 from $fp-24 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp20
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp18 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp19 from $t2 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp20 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	# _tmp21 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = 42
	  li $t1, 42		# load constant value 42 into $t1
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp23 = *(a)
	  lw $t2, -8($fp)	# load a from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp24 = *(_tmp23)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp25 = ACall _tmp24
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp21 from $t0 to $fp-44
	  sw $t1, -48($fp)	# spill _tmp22 from $t1 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp23 from $t3 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp24 from $t4 to $fp-56
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp26 = a - _tmp25
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp27 = *(_tmp23 + 4)
	  lw $t3, -52($fp)	# load _tmp23 from $fp-52 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp27
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp25 from $t0 to $fp-60
	  sw $t2, -64($fp)	# spill _tmp26 from $t2 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp27 from $t4 to $fp-68
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