	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Garfield_0:
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
	# VTable for class Garfield
	  .data
	  .align 2
	  Garfield:		# label for class Garfield vtable
	  .word _offset_Garfield_0
	  .word f_Garfield.meow
	  .word f_Garfield.reset
	  .text
  _offset_Garfield_4:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# Return _tmp1
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
	# VTable for class Garfield_Cat
	  .data
	  .align 2
	  Garfield_Cat:		# label for class Garfield_Cat vtable
	  .word _offset_Garfield_4
	  .word f_Garfield.meow
	  .text
  f_Garfield.meow:
	# BeginFunc 56
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 56	# decrement sp to make space for locals/temps
	# _tmp2 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp3 = this + _tmp2
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp4 = *(_tmp3)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp5 = 8
	  li $t4, 8		# load constant value 8 into $t4
	# _tmp6 = this + _tmp5
	  add $t5, $t1, $t4	
	# _tmp7 = *(_tmp6)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp8 = 1
	  li $t7, 1		# load constant value 1 into $t7
	# _tmp9 = _tmp7 - _tmp8
	  sub $s0, $t6, $t7	
	# _tmp10 = 8
	  li $s1, 8		# load constant value 8 into $s1
	# _tmp11 = this + _tmp10
	  add $s2, $t1, $s1	
	# *(_tmp11) = _tmp9
	  sw $s0, 0($s2) 	# store with offset
	# _tmp12 = 8
	  li $s3, 8		# load constant value 8 into $s3
	# _tmp13 = this + _tmp12
	  add $s4, $t1, $s3	
	# _tmp14 = *(_tmp13)
	  lw $s5, 0($s4) 	# load with offset
	# PushParam _tmp14
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s5, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp2 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp3 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp4 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp5 from $t4 to $fp-20
	  sw $t5, -24($fp)	# spill _tmp6 from $t5 to $fp-24
	  sw $t6, -28($fp)	# spill _tmp7 from $t6 to $fp-28
	  sw $t7, -32($fp)	# spill _tmp8 from $t7 to $fp-32
	  sw $s0, -36($fp)	# spill _tmp9 from $s0 to $fp-36
	  sw $s1, -40($fp)	# spill _tmp10 from $s1 to $fp-40
	  sw $s2, -44($fp)	# spill _tmp11 from $s2 to $fp-44
	  sw $s3, -48($fp)	# spill _tmp12 from $s3 to $fp-48
	  sw $s4, -52($fp)	# spill _tmp13 from $s4 to $fp-52
	  sw $s5, -56($fp)	# spill _tmp14 from $s5 to $fp-56
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp15 = "\n"
	  .data			# create string constant marked with label
	  _string1: .asciiz "\n"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -60($fp)	# spill _tmp15 from $t0 to $fp-60
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Garfield.reset:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp16 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp17 = this + _tmp16
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp18 = *(_tmp17)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp19 = 8
	  li $t4, 8		# load constant value 8 into $t4
	# _tmp20 = this + _tmp19
	  add $t5, $t1, $t4	
	# *(_tmp20) = x
	  lw $t6, 8($fp)	# load x from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
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
	# _tmp21 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp21
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
	# BeginFunc 76
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 76	# decrement sp to make space for locals/temps
	# _tmp22 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# PushParam _tmp22
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp23 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp22 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp24 = Garfield
	  la $t1, Garfield	# load label
	# *(_tmp23) = _tmp24
	  sw $t1, 0($t0) 	# store with offset
	# _tmp25 = Garfield_Cat
	  la $t2, Garfield_Cat	# load label
	# *(_tmp23 + 4) = _tmp25
	  sw $t2, 4($t0) 	# store with offset
	# g = _tmp23
	  move $t3, $t0		# copy value
	# _tmp26 = 10
	  li $t4, 10		# load constant value 10 into $t4
	# PushParam _tmp26
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp27 = *(g)
	  lw $t5, 0($t3) 	# load with offset
	# _tmp28 = *(_tmp27)
	  lw $t6, 0($t5) 	# load with offset
	# _tmp29 = ACall _tmp28
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp23 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp24 from $t1 to $fp-24
	  sw $t2, -28($fp)	# spill _tmp25 from $t2 to $fp-28
	  sw $t3, -8($fp)	# spill g from $t3 to $fp-8
	  sw $t4, -32($fp)	# spill _tmp26 from $t4 to $fp-32
	  sw $t5, -36($fp)	# spill _tmp27 from $t5 to $fp-36
	  sw $t6, -40($fp)	# spill _tmp28 from $t6 to $fp-40
	  jalr $t6            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp30 = g - _tmp29
	  lw $t1, -8($fp)	# load g from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp31 = *(_tmp27 + 8)
	  lw $t3, -36($fp)	# load _tmp27 from $fp-36 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp30
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp31
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp29 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp30 from $t2 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp31 from $t4 to $fp-52
	  jalr $t4            	# jump to function
	# _tmp32 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp33 = *(g)
	  lw $t1, -8($fp)	# load g from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp34 = *(_tmp33)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp35 = ACall _tmp34
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp32 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp33 from $t2 to $fp-60
	  sw $t3, -64($fp)	# spill _tmp34 from $t3 to $fp-64
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp36 = g - _tmp35
	  lw $t1, -8($fp)	# load g from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp37 = *(_tmp33 + 4)
	  lw $t3, -60($fp)	# load _tmp33 from $fp-60 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp36
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp37
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp35 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp36 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp37 from $t4 to $fp-76
	  jalr $t4            	# jump to function
	# _tmp38 = 0
	  li $t0, 0		# load constant value 0 into $t0
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