	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_main_0:
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
  f_main:
  main:
	# BeginFunc 104
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 104	# decrement sp to make space for locals/temps
	# _tmp1 = 42
	  li $t0, 42		# load constant value 42 into $t0
	# a = _tmp1
	  move $t1, $t0		# copy value
	# _tmp2 = 137
	  li $t2, 137		# load constant value 137 into $t2
	# b = _tmp2
	  move $t3, $t2		# copy value
	# _tmp3 = a + b
	  add $t4, $t1, $t3	
	# c = _tmp3
	  move $t5, $t4		# copy value
	# _tmp4 = a + b
	  add $t6, $t1, $t3	
	# d = _tmp4
	  move $t7, $t6		# copy value
	# PushParam c
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t5, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp1 from $t0 to $fp-48
	  sw $t1, -8($fp)	# spill a from $t1 to $fp-8
	  sw $t2, -52($fp)	# spill _tmp2 from $t2 to $fp-52
	  sw $t3, -12($fp)	# spill b from $t3 to $fp-12
	  sw $t4, -56($fp)	# spill _tmp3 from $t4 to $fp-56
	  sw $t5, -16($fp)	# spill c from $t5 to $fp-16
	  sw $t6, -60($fp)	# spill _tmp4 from $t6 to $fp-60
	  sw $t7, -20($fp)	# spill d from $t7 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam d
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# load d from $fp-20 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = 84
	  li $t0, 84		# load constant value 84 into $t0
	# a = _tmp5
	  move $t1, $t0		# copy value
	# _tmp6 = a + b
	  lw $t2, -12($fp)	# load b from $fp-12 into $t2
	  add $t3, $t1, $t2	
	# c = _tmp6
	  move $t4, $t3		# copy value
	# PushParam c
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp5 from $t0 to $fp-64
	  sw $t1, -8($fp)	# spill a from $t1 to $fp-8
	  sw $t3, -68($fp)	# spill _tmp6 from $t3 to $fp-68
	  sw $t4, -16($fp)	# spill c from $t4 to $fp-16
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = 84
	  li $t0, 84		# load constant value 84 into $t0
	# d = _tmp7
	  move $t1, $t0		# copy value
	# e = d
	  move $t2, $t1		# copy value
	# f = e
	  move $t3, $t2		# copy value
	# PushParam d
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp7 from $t0 to $fp-72
	  sw $t1, -20($fp)	# spill d from $t1 to $fp-20
	  sw $t2, -24($fp)	# spill e from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill f from $t3 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam e
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -24($fp)	# load e from $fp-24 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -28($fp)	# load f from $fp-28 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = 166
	  li $t0, 166		# load constant value 166 into $t0
	# e = _tmp8
	  move $t1, $t0		# copy value
	# f = e
	  move $t2, $t1		# copy value
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp8 from $t0 to $fp-76
	  sw $t1, -24($fp)	# spill e from $t1 to $fp-24
	  sw $t2, -28($fp)	# spill f from $t2 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam e
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -24($fp)	# load e from $fp-24 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = e + f
	  lw $t0, -24($fp)	# load e from $fp-24 into $t0
	  lw $t1, -28($fp)	# load f from $fp-28 into $t1
	  add $t2, $t0, $t1	
	# c = _tmp9
	  move $t3, $t2		# copy value
	# _tmp10 = e + f
	  add $t4, $t0, $t1	
	# d = _tmp10
	  move $t5, $t4		# copy value
	# _tmp11 = e + f
	  add $t6, $t0, $t1	
	# f = _tmp11
	  move $t1, $t6		# copy value
	# _tmp12 = e + f
	  add $t7, $t0, $t1	
	# g = _tmp12
	  move $s0, $t7		# copy value
	# _tmp13 = e + f
	  add $s1, $t0, $t1	
	# h = _tmp13
	  move $s2, $s1		# copy value
	# _tmp14 = e + f
	  add $s3, $t0, $t1	
	# i = _tmp14
	  move $s4, $s3		# copy value
	# _tmp15 = e + f
	  add $s5, $t0, $t1	
	# j = _tmp15
	  move $s6, $s5		# copy value
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -28($fp)	# spill f from $t1 to $fp-28
	  sw $t2, -80($fp)	# spill _tmp9 from $t2 to $fp-80
	  sw $t3, -16($fp)	# spill c from $t3 to $fp-16
	  sw $t4, -84($fp)	# spill _tmp10 from $t4 to $fp-84
	  sw $t5, -20($fp)	# spill d from $t5 to $fp-20
	  sw $t6, -88($fp)	# spill _tmp11 from $t6 to $fp-88
	  sw $t7, -92($fp)	# spill _tmp12 from $t7 to $fp-92
	  sw $s0, -32($fp)	# spill g from $s0 to $fp-32
	  sw $s1, -96($fp)	# spill _tmp13 from $s1 to $fp-96
	  sw $s2, -36($fp)	# spill h from $s2 to $fp-36
	  sw $s3, -100($fp)	# spill _tmp14 from $s3 to $fp-100
	  sw $s4, -40($fp)	# spill i from $s4 to $fp-40
	  sw $s5, -104($fp)	# spill _tmp15 from $s5 to $fp-104
	  sw $s6, -44($fp)	# spill j from $s6 to $fp-44
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam g
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -32($fp)	# load g from $fp-32 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam h
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -36($fp)	# load h from $fp-36 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam i
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -40($fp)	# load i from $fp-40 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam j
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -44($fp)	# load j from $fp-44 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp16 = e + f
	  lw $t0, -24($fp)	# load e from $fp-24 into $t0
	  lw $t1, -28($fp)	# load f from $fp-28 into $t1
	  add $t2, $t0, $t1	
	# f = _tmp16
	  move $t1, $t2		# copy value
	# PushParam c
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t3, -16($fp)	# load c from $fp-16 into $t3
	  sw $t3, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -28($fp)	# spill f from $t1 to $fp-28
	  sw $t2, -108($fp)	# spill _tmp16 from $t2 to $fp-108
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam d
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -20($fp)	# load d from $fp-20 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam f
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -28($fp)	# load f from $fp-28 into $t0
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