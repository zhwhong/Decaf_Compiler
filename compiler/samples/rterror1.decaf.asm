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
	# BeginFunc 100
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 100	# decrement sp to make space for locals/temps
	# _tmp1 = 27
	  li $t0, 27		# load constant value 27 into $t0
	# _tmp2 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp3 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp4 = _tmp2 < _tmp1
	  slt $t3, $t1, $t0	
	# IfZ _tmp4 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp1 from $t0 to $fp-12
	  sw $t1, -16($fp)	# spill _tmp2 from $t1 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp3 from $t2 to $fp-20
	  sw $t3, -24($fp)	# spill _tmp4 from $t3 to $fp-24
	  beqz $t3, _L0	# branch if _tmp4 is zero 
	# Goto _L1
	  b _L1		# unconditional branch
  _L0:
	# _tmp5 = "Decaf runtime error: Array size is <= 0\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Decaf runtime error: Array size is <= 0\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp5 from $t0 to $fp-28
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L1:
	# _tmp6 = _tmp1 * _tmp3
	  lw $t0, -12($fp)	# load _tmp1 from $fp-12 into $t0
	  lw $t1, -20($fp)	# load _tmp3 from $fp-20 into $t1
	  mul $t2, $t0, $t1	
	# _tmp7 = _tmp6 + _tmp3
	  add $t3, $t2, $t1	
	# PushParam _tmp7
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp8 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t2, -32($fp)	# spill _tmp6 from $t2 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp7 from $t3 to $fp-36
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# *(_tmp8) = _tmp1
	  lw $t1, -12($fp)	# load _tmp1 from $fp-12 into $t1
	  sw $t1, 0($t0) 	# store with offset
	# arr = _tmp8
	  move $t2, $t0		# copy value
	# _tmp9 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp10 = 1
	  li $t4, 1		# load constant value 1 into $t4
	# _tmp11 = _tmp9 - _tmp10
	  sub $t5, $t3, $t4	
	# _tmp12 = 0
	  li $t6, 0		# load constant value 0 into $t6
	# _tmp13 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp14 = *(arr)
	  lw $s0, 0($t2) 	# load with offset
	# _tmp15 = _tmp14 == _tmp11
	  seq $s1, $s0, $t5	
	# _tmp16 = _tmp14 < _tmp11
	  slt $s2, $s0, $t5	
	# _tmp17 = _tmp16 || _tmp15
	  or $s3, $s2, $s1	
	# _tmp18 = _tmp11 < _tmp12
	  slt $s4, $t5, $t6	
	# _tmp19 = _tmp18 || _tmp17
	  or $s5, $s4, $s3	
	# IfZ _tmp19 Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp8 from $t0 to $fp-40
	  sw $t2, -8($fp)	# spill arr from $t2 to $fp-8
	  sw $t3, -44($fp)	# spill _tmp9 from $t3 to $fp-44
	  sw $t4, -48($fp)	# spill _tmp10 from $t4 to $fp-48
	  sw $t5, -52($fp)	# spill _tmp11 from $t5 to $fp-52
	  sw $t6, -56($fp)	# spill _tmp12 from $t6 to $fp-56
	  sw $t7, -60($fp)	# spill _tmp13 from $t7 to $fp-60
	  sw $s0, -64($fp)	# spill _tmp14 from $s0 to $fp-64
	  sw $s1, -68($fp)	# spill _tmp15 from $s1 to $fp-68
	  sw $s2, -72($fp)	# spill _tmp16 from $s2 to $fp-72
	  sw $s3, -76($fp)	# spill _tmp17 from $s3 to $fp-76
	  sw $s4, -80($fp)	# spill _tmp18 from $s4 to $fp-80
	  sw $s5, -84($fp)	# spill _tmp19 from $s5 to $fp-84
	  beqz $s5, _L2	# branch if _tmp19 is zero 
	# _tmp20 = "Decaf runtime error: Array subscript out of bound..."
	  .data			# create string constant marked with label
	  _string2: .asciiz "Decaf runtime error: Array subscript out of bounds\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -88($fp)	# spill _tmp20 from $t0 to $fp-88
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# LCall _Halt
	  jal _Halt          	# jump to function
  _L2:
	# _tmp21 = _tmp11 * _tmp13
	  lw $t0, -52($fp)	# load _tmp11 from $fp-52 into $t0
	  lw $t1, -60($fp)	# load _tmp13 from $fp-60 into $t1
	  mul $t2, $t0, $t1	
	# _tmp22 = _tmp21 + _tmp13
	  add $t3, $t2, $t1	
	# _tmp23 = arr + _tmp22
	  lw $t4, -8($fp)	# load arr from $fp-8 into $t4
	  add $t5, $t4, $t3	
	# _tmp24 = *(_tmp23)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp24
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t2, -92($fp)	# spill _tmp21 from $t2 to $fp-92
	  sw $t3, -96($fp)	# spill _tmp22 from $t3 to $fp-96
	  sw $t5, -100($fp)	# spill _tmp23 from $t5 to $fp-100
	  sw $t6, -104($fp)	# spill _tmp24 from $t6 to $fp-104
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