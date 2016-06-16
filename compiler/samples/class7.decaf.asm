	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Cow_0:
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
	# VTable for class Cow
	  .data
	  .align 2
	  Cow:		# label for class Cow vtable
	  .word _offset_Cow_0
	  .word f_Cow.Moo
	  .word f_Cow.Method
	  .text
  f_Cow.Moo:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp1 = i + j
	  lw $t0, 8($fp)	# load i from $fp+8 into $t0
	  lw $t1, 12($fp)	# load j from $fp+12 into $t1
	  add $t2, $t0, $t1	
	# _tmp2 = _tmp1 + k
	  lw $t3, 16($fp)	# load k from $fp+16 into $t3
	  add $t4, $t2, $t3	
	# _tmp3 = _tmp2 + l
	  lw $t5, 20($fp)	# load l from $fp+20 into $t5
	  add $t6, $t4, $t5	
	# _tmp4 = _tmp3 + m
	  lw $t7, 24($fp)	# load m from $fp+24 into $t7
	  add $s0, $t6, $t7	
	# _tmp5 = _tmp4 + n
	  lw $s1, 28($fp)	# load n from $fp+28 into $s1
	  add $s2, $s0, $s1	
	# Return _tmp5
	  move $v0, $s2		# assign return value into $v0
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
  f_Cow.Method:
	# BeginFunc 36
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 36	# decrement sp to make space for locals/temps
	# _tmp6 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# IfZ _tmp6 Goto _L0
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp6 from $t0 to $fp-8
	  beqz $t0, _L0	# branch if _tmp6 is zero 
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, 8($fp)	# load a from $fp+8 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam a
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp7 = *(this)
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp8 = *(_tmp7)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp9 = ACall _tmp8
	# (save modified registers before flow of control change)
	  sw $t2, -12($fp)	# spill _tmp7 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp8 from $t3 to $fp-16
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp10 = this - _tmp9
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp11 = *(_tmp7 + 4)
	  lw $t3, -12($fp)	# load _tmp7 from $fp-12 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp10
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp12 = ACall _tmp11
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp9 from $t0 to $fp-20
	  sw $t2, -24($fp)	# spill _tmp10 from $t2 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp11 from $t4 to $fp-28
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 28
	  add $sp, $sp, 28	# pop params off stack
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp12 from $t0 to $fp-32
  _L0:
	# _tmp13 = 3
	  li $t0, 3		# load constant value 3 into $t0
	# PushParam _tmp13
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp13 from $t0 to $fp-36
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp14 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -40($fp)	# spill _tmp14 from $t0 to $fp-40
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
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
	# _tmp15 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp15
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
	# BeginFunc 44
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 44	# decrement sp to make space for locals/temps
	# _tmp16 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp17 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp16 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp18 = Cow
	  la $t1, Cow	# load label
	# *(_tmp17) = _tmp18
	  sw $t1, 0($t0) 	# store with offset
	# c = _tmp17
	  move $t2, $t0		# copy value
	# _tmp19 = 6
	  li $t3, 6		# load constant value 6 into $t3
	# PushParam _tmp19
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp20 = *(c)
	  lw $t4, 0($t2) 	# load with offset
	# _tmp21 = *(_tmp20)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp22 = ACall _tmp21
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp17 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp18 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill c from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp19 from $t3 to $fp-24
	  sw $t4, -28($fp)	# spill _tmp20 from $t4 to $fp-28
	  sw $t5, -32($fp)	# spill _tmp21 from $t5 to $fp-32
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp23 = c - _tmp22
	  lw $t1, -8($fp)	# load c from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp24 = *(_tmp20 + 8)
	  lw $t3, -28($fp)	# load _tmp20 from $fp-28 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp23
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp24
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp22 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp23 from $t2 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp24 from $t4 to $fp-44
	  jalr $t4            	# jump to function
	# _tmp25 = 0
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