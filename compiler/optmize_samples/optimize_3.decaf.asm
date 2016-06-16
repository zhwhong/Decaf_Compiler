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
	# BeginFunc 52
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 52	# decrement sp to make space for locals/temps
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
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp1 from $t0 to $fp-20
	  sw $t1, -8($fp)	# spill a from $t1 to $fp-8
	  sw $t2, -24($fp)	# spill _tmp2 from $t2 to $fp-24
	  sw $t3, -12($fp)	# spill b from $t3 to $fp-12
	  sw $t4, -28($fp)	# spill _tmp3 from $t4 to $fp-28
	  sw $t5, -16($fp)	# spill c from $t5 to $fp-16
	  sw $t6, -32($fp)	# spill _tmp4 from $t6 to $fp-32
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = a + b
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t0, $t1	
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -36($fp)	# spill _tmp5 from $t2 to $fp-36
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# a = _tmp6
	  move $t1, $t0		# copy value
	# _tmp7 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# b = _tmp7
	  move $t3, $t2		# copy value
	# _tmp8 = a + b
	  add $t4, $t1, $t3	
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp6 from $t0 to $fp-40
	  sw $t1, -8($fp)	# spill a from $t1 to $fp-8
	  sw $t2, -44($fp)	# spill _tmp7 from $t2 to $fp-44
	  sw $t3, -12($fp)	# spill b from $t3 to $fp-12
	  sw $t4, -48($fp)	# spill _tmp8 from $t4 to $fp-48
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam b
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# load b from $fp-12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam b
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# load b from $fp-12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = a + b
	  lw $t0, -8($fp)	# load a from $fp-8 into $t0
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t0, $t1	
	# _tmp10 = c + _tmp9
	  lw $t3, -16($fp)	# load c from $fp-16 into $t3
	  add $t4, $t3, $t2	
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -52($fp)	# spill _tmp9 from $t2 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp10 from $t4 to $fp-56
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