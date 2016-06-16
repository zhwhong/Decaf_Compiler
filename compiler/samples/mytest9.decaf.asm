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
	# BeginFunc 172
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 172	# decrement sp to make space for locals/temps
	# _tmp1 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# b = _tmp1
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp1 from $t0 to $fp-16
	  sw $t1, -12($fp)	# spill b from $t1 to $fp-12
  _L0:
	# _tmp2 = LCall _ReadInteger
	  jal _ReadInteger   	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# a = _tmp2
	  move $t1, $t0		# copy value
	# _tmp3 = 0
	  li $t2, 0		# load constant value 0 into $t2
	# _tmp4 = 0
	  li $t3, 0		# load constant value 0 into $t3
	# _tmp5 = a == _tmp3
	  seq $t4, $t1, $t2	
	# _tmp6 = _tmp5 == _tmp4
	  seq $t5, $t4, $t3	
	# IfZ _tmp6 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp2 from $t0 to $fp-20
	  sw $t1, -8($fp)	# spill a from $t1 to $fp-8
	  sw $t2, -24($fp)	# spill _tmp3 from $t2 to $fp-24
	  sw $t3, -28($fp)	# spill _tmp4 from $t3 to $fp-28
	  sw $t4, -32($fp)	# spill _tmp5 from $t4 to $fp-32
	  sw $t5, -36($fp)	# spill _tmp6 from $t5 to $fp-36
	  beqz $t5, _L1	# branch if _tmp6 is zero 
	# _tmp7 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# _tmp8 = a == b
	  lw $t1, -8($fp)	# load a from $fp-8 into $t1
	  lw $t2, -12($fp)	# load b from $fp-12 into $t2
	  seq $t3, $t1, $t2	
	# _tmp9 = _tmp8 == _tmp7
	  seq $t4, $t3, $t0	
	# IfZ _tmp9 Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp7 from $t0 to $fp-40
	  sw $t3, -44($fp)	# spill _tmp8 from $t3 to $fp-44
	  sw $t4, -48($fp)	# spill _tmp9 from $t4 to $fp-48
	  beqz $t4, _L4	# branch if _tmp9 is zero 
	# _tmp10 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp11 = b + _tmp10
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp12 = a == _tmp11
	  lw $t3, -8($fp)	# load a from $fp-8 into $t3
	  seq $t4, $t3, $t2	
	# _tmp13 = _tmp12 == _tmp7
	  lw $t5, -40($fp)	# load _tmp7 from $fp-40 into $t5
	  seq $t6, $t4, $t5	
	# IfZ _tmp13 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t0, -52($fp)	# spill _tmp10 from $t0 to $fp-52
	  sw $t2, -56($fp)	# spill _tmp11 from $t2 to $fp-56
	  sw $t4, -60($fp)	# spill _tmp12 from $t4 to $fp-60
	  sw $t6, -64($fp)	# spill _tmp13 from $t6 to $fp-64
	  beqz $t6, _L5	# branch if _tmp13 is zero 
	# _tmp14 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp15 = b + _tmp14
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp16 = a == _tmp15
	  lw $t3, -8($fp)	# load a from $fp-8 into $t3
	  seq $t4, $t3, $t2	
	# _tmp17 = _tmp16 == _tmp7
	  lw $t5, -40($fp)	# load _tmp7 from $fp-40 into $t5
	  seq $t6, $t4, $t5	
	# IfZ _tmp17 Goto _L6
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp14 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp15 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp16 from $t4 to $fp-76
	  sw $t6, -80($fp)	# spill _tmp17 from $t6 to $fp-80
	  beqz $t6, _L6	# branch if _tmp17 is zero 
	# _tmp18 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# _tmp19 = b + _tmp18
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp20 = a == _tmp19
	  lw $t3, -8($fp)	# load a from $fp-8 into $t3
	  seq $t4, $t3, $t2	
	# _tmp21 = _tmp20 == _tmp7
	  lw $t5, -40($fp)	# load _tmp7 from $fp-40 into $t5
	  seq $t6, $t4, $t5	
	# IfZ _tmp21 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t0, -84($fp)	# spill _tmp18 from $t0 to $fp-84
	  sw $t2, -88($fp)	# spill _tmp19 from $t2 to $fp-88
	  sw $t4, -92($fp)	# spill _tmp20 from $t4 to $fp-92
	  sw $t6, -96($fp)	# spill _tmp21 from $t6 to $fp-96
	  beqz $t6, _L7	# branch if _tmp21 is zero 
	# _tmp22 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp23 = b + _tmp22
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp24 = a == _tmp23
	  lw $t3, -8($fp)	# load a from $fp-8 into $t3
	  seq $t4, $t3, $t2	
	# _tmp25 = _tmp24 == _tmp7
	  lw $t5, -40($fp)	# load _tmp7 from $fp-40 into $t5
	  seq $t6, $t4, $t5	
	# IfZ _tmp25 Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -100($fp)	# spill _tmp22 from $t0 to $fp-100
	  sw $t2, -104($fp)	# spill _tmp23 from $t2 to $fp-104
	  sw $t4, -108($fp)	# spill _tmp24 from $t4 to $fp-108
	  sw $t6, -112($fp)	# spill _tmp25 from $t6 to $fp-112
	  beqz $t6, _L8	# branch if _tmp25 is zero 
	# _tmp26 = 5
	  li $t0, 5		# load constant value 5 into $t0
	# _tmp27 = b + _tmp26
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# _tmp28 = a == _tmp27
	  lw $t3, -8($fp)	# load a from $fp-8 into $t3
	  seq $t4, $t3, $t2	
	# _tmp29 = _tmp28 == _tmp7
	  lw $t5, -40($fp)	# load _tmp7 from $fp-40 into $t5
	  seq $t6, $t4, $t5	
	# IfZ _tmp29 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t0, -116($fp)	# spill _tmp26 from $t0 to $fp-116
	  sw $t2, -120($fp)	# spill _tmp27 from $t2 to $fp-120
	  sw $t4, -124($fp)	# spill _tmp28 from $t4 to $fp-124
	  sw $t6, -128($fp)	# spill _tmp29 from $t6 to $fp-128
	  beqz $t6, _L9	# branch if _tmp29 is zero 
	# _tmp30 = 9
	  li $t0, 9		# load constant value 9 into $t0
	# _tmp31 = b * _tmp30
	  lw $t1, -12($fp)	# load b from $fp-12 into $t1
	  mul $t2, $t1, $t0	
	# _tmp32 = a == _tmp31
	  lw $t3, -8($fp)	# load a from $fp-8 into $t3
	  seq $t4, $t3, $t2	
	# _tmp33 = _tmp32 == _tmp7
	  lw $t5, -40($fp)	# load _tmp7 from $fp-40 into $t5
	  seq $t6, $t4, $t5	
	# IfZ _tmp33 Goto _L10
	# (save modified registers before flow of control change)
	  sw $t0, -132($fp)	# spill _tmp30 from $t0 to $fp-132
	  sw $t2, -136($fp)	# spill _tmp31 from $t2 to $fp-136
	  sw $t4, -140($fp)	# spill _tmp32 from $t4 to $fp-140
	  sw $t6, -144($fp)	# spill _tmp33 from $t6 to $fp-144
	  beqz $t6, _L10	# branch if _tmp33 is zero 
	# Goto _L3
	  b _L3		# unconditional branch
  _L4:
	# _tmp34 = "Case B\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Case B\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp34
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -148($fp)	# spill _tmp34 from $t0 to $fp-148
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L2
	  b _L2		# unconditional branch
  _L5:
	# _tmp35 = "Case B+1\n"
	  .data			# create string constant marked with label
	  _string2: .asciiz "Case B+1\n"
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp35
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -152($fp)	# spill _tmp35 from $t0 to $fp-152
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L6:
	# _tmp36 = "Case B+2\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "Case B+2\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp36
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp36 from $t0 to $fp-156
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L2
	  b _L2		# unconditional branch
  _L7:
	# _tmp37 = "Case B+3\n"
	  .data			# create string constant marked with label
	  _string4: .asciiz "Case B+3\n"
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp37
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp37 from $t0 to $fp-160
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L8:
	# _tmp38 = "Case B+4\n"
	  .data			# create string constant marked with label
	  _string5: .asciiz "Case B+4\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -164($fp)	# spill _tmp38 from $t0 to $fp-164
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L9:
	# _tmp39 = "Case B+5\n"
	  .data			# create string constant marked with label
	  _string6: .asciiz "Case B+5\n"
	  .text
	  la $t0, _string6	# load label
	# PushParam _tmp39
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -168($fp)	# spill _tmp39 from $t0 to $fp-168
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L2
	  b _L2		# unconditional branch
  _L10:
	# _tmp40 = "Case B*2\n"
	  .data			# create string constant marked with label
	  _string7: .asciiz "Case B*2\n"
	  .text
	  la $t0, _string7	# load label
	# PushParam _tmp40
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -172($fp)	# spill _tmp40 from $t0 to $fp-172
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L3:
	# _tmp41 = "Default\n"
	  .data			# create string constant marked with label
	  _string8: .asciiz "Default\n"
	  .text
	  la $t0, _string8	# load label
	# PushParam _tmp41
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -176($fp)	# spill _tmp41 from $t0 to $fp-176
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L2:
	# Goto _L0
	  b _L0		# unconditional branch
  _L1:
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