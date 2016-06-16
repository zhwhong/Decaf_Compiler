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
	# BeginFunc 80
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 80	# decrement sp to make space for locals/temps
	# _tmp1 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp2 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp3 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp4 = _tmp1 == _tmp2
	  seq $t3, $t0, $t1	
	# _tmp5 = _tmp4 == _tmp3
	  seq $t4, $t3, $t2	
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t1, -12($fp)	# spill _tmp2 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp3 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp4 from $t3 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp5 from $t4 to $fp-24
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp6 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp7 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp8 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp9 = _tmp6 == _tmp7
	  seq $t3, $t0, $t1	
	# _tmp10 = _tmp9 == _tmp8
	  seq $t4, $t3, $t2	
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp6 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp7 from $t1 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp8 from $t2 to $fp-36
	  sw $t3, -40($fp)	# spill _tmp9 from $t3 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp10 from $t4 to $fp-44
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp11 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp12 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp13 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp14 = _tmp11 == _tmp12
	  seq $t3, $t0, $t1	
	# _tmp15 = _tmp14 == _tmp13
	  seq $t4, $t3, $t2	
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp11 from $t0 to $fp-48
	  sw $t1, -52($fp)	# spill _tmp12 from $t1 to $fp-52
	  sw $t2, -56($fp)	# spill _tmp13 from $t2 to $fp-56
	  sw $t3, -60($fp)	# spill _tmp14 from $t3 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp15 from $t4 to $fp-64
	  jal _PrintBool     	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp16 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp17 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp18 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp19 = _tmp16 == _tmp17
	  seq $t3, $t0, $t1	
	# _tmp20 = _tmp19 == _tmp18
	  seq $t4, $t3, $t2	
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintBool
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp16 from $t0 to $fp-68
	  sw $t1, -72($fp)	# spill _tmp17 from $t1 to $fp-72
	  sw $t2, -76($fp)	# spill _tmp18 from $t2 to $fp-76
	  sw $t3, -80($fp)	# spill _tmp19 from $t3 to $fp-80
	  sw $t4, -84($fp)	# spill _tmp20 from $t4 to $fp-84
	  jal _PrintBool     	# jump to function
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