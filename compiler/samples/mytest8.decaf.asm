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
	# BeginFunc 128
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 128	# decrement sp to make space for locals/temps
	# _tmp1 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# c = _tmp1
	  move $t1, $t0		# copy value
	# _tmp2 = "Enter a number: "
	  .data			# create string constant marked with label
	  _string1: .asciiz "Enter a number: "
	  .text
	  la $t2, _string1	# load label
	# PushParam _tmp2
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp1 from $t0 to $fp-16
	  sw $t1, -12($fp)	# spill c from $t1 to $fp-12
	  sw $t2, -20($fp)	# spill _tmp2 from $t2 to $fp-20
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp3 = LCall _ReadInteger
	  jal _ReadInteger   	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# n = _tmp3
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp3 from $t0 to $fp-24
	  sw $t1, -8($fp)	# spill n from $t1 to $fp-8
  _L0:
	# _tmp4 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp5 = _tmp4 < n
	  lw $t1, -8($fp)	# load n from $fp-8 into $t1
	  slt $t2, $t0, $t1	
	# IfZ _tmp5 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp4 from $t0 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp5 from $t2 to $fp-32
	  beqz $t2, _L1	# branch if _tmp5 is zero 
	# _tmp6 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp7 = n % _tmp6
	  lw $t1, -8($fp)	# load n from $fp-8 into $t1
	  rem $t2, $t1, $t0	
	# _tmp8 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp9 = _tmp7 == _tmp8
	  seq $t4, $t2, $t3	
	# IfZ _tmp9 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp6 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp7 from $t2 to $fp-40
	  sw $t3, -44($fp)	# spill _tmp8 from $t3 to $fp-44
	  sw $t4, -48($fp)	# spill _tmp9 from $t4 to $fp-48
	  beqz $t4, _L3	# branch if _tmp9 is zero 
	# PushParam n
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# load n from $fp-8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp10 = " is even, so we halve it: "
	  .data			# create string constant marked with label
	  _string2: .asciiz " is even, so we halve it: "
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp10 from $t0 to $fp-52
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp11 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp12 = n / _tmp11
	  lw $t1, -8($fp)	# load n from $fp-8 into $t1
	  div $t2, $t1, $t0	
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp11 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp12 from $t2 to $fp-60
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp13 = "\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp13 from $t0 to $fp-64
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp14 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp15 = n / _tmp14
	  lw $t1, -8($fp)	# load n from $fp-8 into $t1
	  div $t2, $t1, $t0	
	# n = _tmp15
	  move $t1, $t2		# copy value
	# Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp14 from $t0 to $fp-68
	  sw $t1, -8($fp)	# spill n from $t1 to $fp-8
	  sw $t2, -72($fp)	# spill _tmp15 from $t2 to $fp-72
	  b _L2		# unconditional branch
  _L3:
	# PushParam n
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -8($fp)	# load n from $fp-8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp16 = " is odd, so we 3n + 1: "
	  .data			# create string constant marked with label
	  _string4: .asciiz " is odd, so we 3n + 1: "
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp16 from $t0 to $fp-76
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp17 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# _tmp18 = _tmp17 * n
	  lw $t1, -8($fp)	# load n from $fp-8 into $t1
	  mul $t2, $t0, $t1	
	# _tmp19 = 1
	  li $t3, 1		# load constant value 1 into $t3
	# _tmp20 = _tmp18 + _tmp19
	  add $t4, $t2, $t3	
	# PushParam _tmp20
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp17 from $t0 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp18 from $t2 to $fp-84
	  sw $t3, -88($fp)	# spill _tmp19 from $t3 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp20 from $t4 to $fp-92
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp21 = "\n"
	  .data			# create string constant marked with label
	  _string5: .asciiz "\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp21 from $t0 to $fp-96
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# _tmp23 = _tmp22 * n
	  lw $t1, -8($fp)	# load n from $fp-8 into $t1
	  mul $t2, $t0, $t1	
	# _tmp24 = 1
	  li $t3, 1		# load constant value 1 into $t3
	# _tmp25 = _tmp23 + _tmp24
	  add $t4, $t2, $t3	
	# n = _tmp25
	  move $t1, $t4		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp22 from $t0 to $fp-100
	  sw $t1, -8($fp)	# spill n from $t1 to $fp-8
	  sw $t2, -104($fp)	# spill _tmp23 from $t2 to $fp-104
	  sw $t3, -108($fp)	# spill _tmp24 from $t3 to $fp-108
	  sw $t4, -112($fp)	# spill _tmp25 from $t4 to $fp-112
  _L2:
	# _tmp26 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp27 = c
	  lw $t1, -12($fp)	# load c from $fp-12 into $t1
	  move $t2, $t1		# copy value
	# _tmp28 = _tmp27 + _tmp26
	  add $t3, $t2, $t0	
	# c = _tmp28
	  move $t1, $t3		# copy value
	# Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp26 from $t0 to $fp-116
	  sw $t1, -12($fp)	# spill c from $t1 to $fp-12
	  sw $t2, -120($fp)	# spill _tmp27 from $t2 to $fp-120
	  sw $t3, -124($fp)	# spill _tmp28 from $t3 to $fp-124
	  b _L0		# unconditional branch
  _L1:
	# _tmp29 = "It took "
	  .data			# create string constant marked with label
	  _string6: .asciiz "It took "
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -128($fp)	# spill _tmp29 from $t0 to $fp-128
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam c
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# load c from $fp-12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp30 = " step(s) to reach 1."
	  .data			# create string constant marked with label
	  _string7: .asciiz " step(s) to reach 1."
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp30
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -132($fp)	# spill _tmp30 from $t0 to $fp-132
	  jal _PrintString   	# jump to function
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