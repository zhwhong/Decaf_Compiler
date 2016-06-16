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
	# _tmp2 = 137
	  li $t1, 137		# load constant value 137 into $t1
	# _tmp3 = _tmp1 + _tmp2
	  add $t2, $t0, $t1	
	# _tmp4 = _tmp3
	  move $t3, $t2		# copy value
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp1 from $t0 to $fp-48
	  sw $t1, -52($fp)	# spill _tmp2 from $t1 to $fp-52
	  sw $t2, -56($fp)	# spill _tmp3 from $t2 to $fp-56
	  sw $t3, -60($fp)	# spill _tmp4 from $t3 to $fp-60
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp3
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -56($fp)	# load _tmp3 from $fp-56 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp5 = 84
	  li $t0, 84		# load constant value 84 into $t0
	# _tmp6 = _tmp5 + _tmp2
	  lw $t1, -52($fp)	# load _tmp2 from $fp-52 into $t1
	  add $t2, $t0, $t1	
	# PushParam _tmp6
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp5 from $t0 to $fp-64
	  sw $t2, -68($fp)	# spill _tmp6 from $t2 to $fp-68
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp7 = 84
	  li $t0, 84		# load constant value 84 into $t0
	# e = _tmp7
	  move $t1, $t0		# copy value
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp7 from $t0 to $fp-72
	  sw $t1, -24($fp)	# spill e from $t1 to $fp-24
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -72($fp)	# load _tmp7 from $fp-72 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -72($fp)	# load _tmp7 from $fp-72 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = 166
	  li $t0, 166		# load constant value 166 into $t0
	# f = _tmp8
	  move $t1, $t0		# copy value
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp8 from $t0 to $fp-76
	  sw $t1, -28($fp)	# spill f from $t1 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -76($fp)	# load _tmp8 from $fp-76 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = _tmp8 + _tmp8
	  lw $t0, -76($fp)	# load _tmp8 from $fp-76 into $t0
	  add $t1, $t0, $t0	
	# _tmp10 = _tmp9
	  move $t2, $t1		# copy value
	# _tmp11 = _tmp9
	  move $t3, $t1		# copy value
	# _tmp12 = _tmp8 + _tmp9
	  add $t4, $t0, $t1	
	# _tmp13 = _tmp12
	  move $t5, $t4		# copy value
	# _tmp14 = _tmp12
	  move $t6, $t4		# copy value
	# _tmp15 = _tmp12
	  move $t7, $t4		# copy value
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -80($fp)	# spill _tmp9 from $t1 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp10 from $t2 to $fp-84
	  sw $t3, -88($fp)	# spill _tmp11 from $t3 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp12 from $t4 to $fp-92
	  sw $t5, -96($fp)	# spill _tmp13 from $t5 to $fp-96
	  sw $t6, -100($fp)	# spill _tmp14 from $t6 to $fp-100
	  sw $t7, -104($fp)	# spill _tmp15 from $t7 to $fp-104
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# load _tmp12 from $fp-92 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# load _tmp12 from $fp-92 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# load _tmp12 from $fp-92 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# load _tmp12 from $fp-92 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# f = _tmp12
	  lw $t0, -92($fp)	# load _tmp12 from $fp-92 into $t0
	  move $t1, $t0		# copy value
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t2, -80($fp)	# load _tmp9 from $fp-80 into $t2
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t1, -28($fp)	# spill f from $t1 to $fp-28
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -80($fp)	# load _tmp9 from $fp-80 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -92($fp)	# load _tmp12 from $fp-92 into $t0
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