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
	# BeginFunc 56
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 56	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp2 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp3 = 8
	  li $t1, 8		# load constant value 8 into $t1
	# _tmp4 = _tmp2 * _tmp3
	  mul $t2, $t0, $t1	
	# _tmp5 = 1
	  li $t3, 1		# load constant value 1 into $t3
	# _tmp6 = _tmp4 + _tmp5
	  add $t4, $t2, $t3	
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp2 from $t0 to $fp-12
	  sw $t1, -16($fp)	# spill _tmp3 from $t1 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp4 from $t2 to $fp-20
	  sw $t3, -24($fp)	# spill _tmp5 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp6 from $t4 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = "hello"
	  .data			# create string constant marked with label
	  _string1: .asciiz "hello"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp7 from $t0 to $fp-32
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp8 from $t0 to $fp-36
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = "cs143\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "cs143\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp9 from $t0 to $fp-40
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp10 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp11 = 3
	  li $t1, 3		# load constant value 3 into $t1
	# _tmp12 = _tmp10 - _tmp11
	  sub $t2, $t0, $t1	
	# _tmp13 = 2
	  li $t3, 2		# load constant value 2 into $t3
	# _tmp14 = _tmp12 - _tmp13
	  sub $t4, $t2, $t3	
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp10 from $t0 to $fp-44
	  sw $t1, -48($fp)	# spill _tmp11 from $t1 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp12 from $t2 to $fp-52
	  sw $t3, -56($fp)	# spill _tmp13 from $t3 to $fp-56
	  sw $t4, -60($fp)	# spill _tmp14 from $t4 to $fp-60
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