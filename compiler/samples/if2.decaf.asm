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
	# BeginFunc 108
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 108	# decrement sp to make space for locals/temps
	# _tmp1 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp2 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp3 = _tmp1 == _tmp2
	  seq $t2, $t0, $t1	
	# IfZ _tmp3 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  sw $t1, -12($fp)	# spill _tmp2 from $t1 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp3 from $t2 to $fp-16
	  beqz $t2, _L1	# branch if _tmp3 is zero 
	# _tmp4 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# PushParam _tmp4
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp4 from $t0 to $fp-20
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L0
	  b _L0		# unconditional branch
  _L1:
	# _tmp5 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp6 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp7 = _tmp5 == _tmp6
	  seq $t2, $t0, $t1	
	# IfZ _tmp7 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp5 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp6 from $t1 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp7 from $t2 to $fp-32
	  beqz $t2, _L3	# branch if _tmp7 is zero 
	# _tmp8 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp8 from $t0 to $fp-36
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L2
	  b _L2		# unconditional branch
  _L3:
	# _tmp9 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# PushParam _tmp9
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp9 from $t0 to $fp-40
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L2:
  _L0:
	# _tmp10 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp11 = 2
	  li $t1, 2		# load constant value 2 into $t1
	# _tmp12 = _tmp10 == _tmp11
	  seq $t2, $t0, $t1	
	# IfZ _tmp12 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp10 from $t0 to $fp-44
	  sw $t1, -48($fp)	# spill _tmp11 from $t1 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp12 from $t2 to $fp-52
	  beqz $t2, _L5	# branch if _tmp12 is zero 
	# _tmp13 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp13 from $t0 to $fp-56
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L4
	  b _L4		# unconditional branch
  _L5:
	# _tmp14 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp15 = 2
	  li $t1, 2		# load constant value 2 into $t1
	# _tmp16 = _tmp14 == _tmp15
	  seq $t2, $t0, $t1	
	# IfZ _tmp16 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp14 from $t0 to $fp-60
	  sw $t1, -64($fp)	# spill _tmp15 from $t1 to $fp-64
	  sw $t2, -68($fp)	# spill _tmp16 from $t2 to $fp-68
	  beqz $t2, _L7	# branch if _tmp16 is zero 
	# _tmp17 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# PushParam _tmp17
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -72($fp)	# spill _tmp17 from $t0 to $fp-72
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L6
	  b _L6		# unconditional branch
  _L7:
	# _tmp18 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp18 from $t0 to $fp-76
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L6:
  _L4:
	# _tmp19 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp20 = 2
	  li $t1, 2		# load constant value 2 into $t1
	# _tmp21 = _tmp19 == _tmp20
	  seq $t2, $t0, $t1	
	# IfZ _tmp21 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp19 from $t0 to $fp-80
	  sw $t1, -84($fp)	# spill _tmp20 from $t1 to $fp-84
	  sw $t2, -88($fp)	# spill _tmp21 from $t2 to $fp-88
	  beqz $t2, _L9	# branch if _tmp21 is zero 
	# _tmp22 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp22 from $t0 to $fp-92
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L8
	  b _L8		# unconditional branch
  _L9:
	# _tmp23 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# _tmp24 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp25 = _tmp23 == _tmp24
	  seq $t2, $t0, $t1	
	# IfZ _tmp25 Goto _L11
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp23 from $t0 to $fp-96
	  sw $t1, -100($fp)	# spill _tmp24 from $t1 to $fp-100
	  sw $t2, -104($fp)	# spill _tmp25 from $t2 to $fp-104
	  beqz $t2, _L11	# branch if _tmp25 is zero 
	# _tmp26 = 2
	  li $t0, 2		# load constant value 2 into $t0
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp26 from $t0 to $fp-108
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# Goto _L10
	  b _L10		# unconditional branch
  _L11:
	# _tmp27 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# PushParam _tmp27
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -112($fp)	# spill _tmp27 from $t0 to $fp-112
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
  _L10:
  _L8:
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