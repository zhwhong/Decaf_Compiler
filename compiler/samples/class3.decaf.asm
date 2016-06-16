	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Binky_0:
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
	# VTable for class Binky
	  .data
	  .align 2
	  Binky:		# label for class Binky vtable
	  .word _offset_Binky_0
	  .word f_Binky.Method1
	  .word f_Binky.Method2
	  .word f_Binky.Method3
	  .text
  f_Binky.Method1:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp1 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Binky.Method2:
	# BeginFunc 52
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 52	# decrement sp to make space for locals/temps
	# _tmp2 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp3 = *(_tmp2)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp4 = ACall _tmp3
	# (save modified registers before flow of control change)
	  sw $t1, -8($fp)	# spill _tmp2 from $t1 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp3 from $t2 to $fp-12
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp5 = this - _tmp4
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp6 = *(_tmp2 + 4)
	  lw $t3, -8($fp)	# load _tmp2 from $fp-8 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp5
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp6
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp4 from $t0 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp5 from $t2 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp6 from $t4 to $fp-24
	  jalr $t4            	# jump to function
	# _tmp7 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp8 = 2
	  li $t1, 2		# load constant value 2 into $t1
	# PushParam _tmp8
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp7 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp8 from $t1 to $fp-32
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp9 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp10 = *(_tmp9)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp11 = ACall _tmp10
	# (save modified registers before flow of control change)
	  sw $t1, -36($fp)	# spill _tmp9 from $t1 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp10 from $t2 to $fp-40
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp12 = this - _tmp11
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp13 = *(_tmp9 + 4)
	  lw $t3, -36($fp)	# load _tmp9 from $fp-36 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp13
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp11 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp12 from $t2 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp13 from $t4 to $fp-52
	  jalr $t4            	# jump to function
	# _tmp14 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Binky.Method3:
	# BeginFunc 52
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 52	# decrement sp to make space for locals/temps
	# _tmp15 = *(b)
	  lw $t0, 8($fp)	# load b from $fp+8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp16 = *(_tmp15)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp17 = ACall _tmp16
	# (save modified registers before flow of control change)
	  sw $t1, -8($fp)	# spill _tmp15 from $t1 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp16 from $t2 to $fp-12
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp18 = b - _tmp17
	  lw $t1, 8($fp)	# load b from $fp+8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp19 = *(_tmp15 + 4)
	  lw $t3, -8($fp)	# load _tmp15 from $fp-8 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp18
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp19
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp17 from $t0 to $fp-16
	  sw $t2, -20($fp)	# spill _tmp18 from $t2 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp19 from $t4 to $fp-24
	  jalr $t4            	# jump to function
	# _tmp20 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp21 = 2
	  li $t1, 2		# load constant value 2 into $t1
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t1, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp20 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp21 from $t1 to $fp-32
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp22 = *(this)
	  lw $t0, 4($fp)	# load this from $fp+4 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp23 = *(_tmp22)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp24 = ACall _tmp23
	# (save modified registers before flow of control change)
	  sw $t1, -36($fp)	# spill _tmp22 from $t1 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp23 from $t2 to $fp-40
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp25 = this - _tmp24
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sub $t2, $t1, $t0	
	# _tmp26 = *(_tmp22 + 8)
	  lw $t3, -36($fp)	# load _tmp22 from $fp-36 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp25
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp26
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp24 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp25 from $t2 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp26 from $t4 to $fp-52
	  jalr $t4            	# jump to function
	# _tmp27 = 0
	  li $t0, 0		# load constant value 0 into $t0
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
	# _tmp28 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp28
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
	# _tmp29 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# PushParam _tmp29
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp30 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp29 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp31 = Binky
	  la $t1, Binky	# load label
	# *(_tmp30) = _tmp31
	  sw $t1, 0($t0) 	# store with offset
	# b = _tmp30
	  move $t2, $t0		# copy value
	# _tmp32 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# PushParam _tmp32
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp33 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp30 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp31 from $t1 to $fp-24
	  sw $t2, -8($fp)	# spill b from $t2 to $fp-8
	  sw $t3, -28($fp)	# spill _tmp32 from $t3 to $fp-28
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp34 = Binky
	  la $t1, Binky	# load label
	# *(_tmp33) = _tmp34
	  sw $t1, 0($t0) 	# store with offset
	# c = _tmp33
	  move $t2, $t0		# copy value
	# PushParam c
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp35 = *(b)
	  lw $t3, -8($fp)	# load b from $fp-8 into $t3
	  lw $t4, 0($t3) 	# load with offset
	# _tmp36 = *(_tmp35)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp37 = ACall _tmp36
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp33 from $t0 to $fp-32
	  sw $t1, -36($fp)	# spill _tmp34 from $t1 to $fp-36
	  sw $t2, -12($fp)	# spill c from $t2 to $fp-12
	  sw $t4, -40($fp)	# spill _tmp35 from $t4 to $fp-40
	  sw $t5, -44($fp)	# spill _tmp36 from $t5 to $fp-44
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp38 = b - _tmp37
	  lw $t1, -8($fp)	# load b from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp39 = *(_tmp35 + 12)
	  lw $t3, -40($fp)	# load _tmp35 from $fp-40 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp38
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp39
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp37 from $t0 to $fp-48
	  sw $t2, -52($fp)	# spill _tmp38 from $t2 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp39 from $t4 to $fp-56
	  jalr $t4            	# jump to function
	# _tmp40 = 0
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