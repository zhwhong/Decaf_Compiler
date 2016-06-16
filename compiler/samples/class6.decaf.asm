	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_Deck_0:
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
	# VTable for class Deck
	  .data
	  .align 2
	  Deck:		# label for class Deck vtable
	  .word _offset_Deck_0
	  .word f_Deck.Shuffle
	  .text
  f_Deck.Shuffle:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp1 = "Shuffle"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Shuffle"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp1
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_Player_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp2 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp2
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
	# VTable for class Player
	  .data
	  .align 2
	  Player:		# label for class Player vtable
	  .word _offset_Player_0
	  .word f_Player.Init
	  .word f_Player.GetDeck
	  .text
  f_Player.Init:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp3 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp4 = this + _tmp3
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp5 = *(_tmp4)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp6 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp7 = this + _tmp6
	  add $t5, $t1, $t4	
	# *(_tmp7) = dj
	  lw $t6, 8($fp)	# load dj from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Player.GetDeck:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp8 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp9 = this + _tmp8
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp10 = *(_tmp9)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp10
	  move $v0, $t3		# assign return value into $v0
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
  _offset_main_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp11 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp11
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
	# _tmp12 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# PushParam _tmp12
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp13 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp12 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp14 = Player
	  la $t1, Player	# load label
	# *(_tmp13) = _tmp14
	  sw $t1, 0($t0) 	# store with offset
	# p = _tmp13
	  move $t2, $t0		# copy value
	# _tmp15 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# PushParam _tmp15
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t3, 4($sp)	# copy param value to stack
	# _tmp16 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp13 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp14 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill p from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp15 from $t3 to $fp-24
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp17 = Deck
	  la $t1, Deck	# load label
	# *(_tmp16) = _tmp17
	  sw $t1, 0($t0) 	# store with offset
	# PushParam _tmp16
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp18 = *(p)
	  lw $t2, -8($fp)	# load p from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp19 = *(_tmp18)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp20 = ACall _tmp19
	# (save modified registers before flow of control change)
	  sw $t0, -28($fp)	# spill _tmp16 from $t0 to $fp-28
	  sw $t1, -32($fp)	# spill _tmp17 from $t1 to $fp-32
	  sw $t3, -36($fp)	# spill _tmp18 from $t3 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp19 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp21 = p - _tmp20
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp22 = *(_tmp18 + 4)
	  lw $t3, -36($fp)	# load _tmp18 from $fp-36 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp21
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp22
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp20 from $t0 to $fp-44
	  sw $t2, -48($fp)	# spill _tmp21 from $t2 to $fp-48
	  sw $t4, -52($fp)	# spill _tmp22 from $t4 to $fp-52
	  jalr $t4            	# jump to function
	# _tmp23 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp24 = *(p)
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp25 = *(_tmp24)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp26 = ACall _tmp25
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp23 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp24 from $t2 to $fp-60
	  sw $t3, -64($fp)	# spill _tmp25 from $t3 to $fp-64
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp27 = p - _tmp26
	  lw $t1, -8($fp)	# load p from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp28 = *(_tmp24 + 8)
	  lw $t3, -60($fp)	# load _tmp24 from $fp-60 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp27
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp29 = ACall _tmp28
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp26 from $t0 to $fp-68
	  sw $t2, -72($fp)	# spill _tmp27 from $t2 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp28 from $t4 to $fp-76
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp30 = *(_tmp29)
	  lw $t1, 0($t0) 	# load with offset
	# _tmp31 = *(_tmp30)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp32 = ACall _tmp31
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp29 from $t0 to $fp-80
	  sw $t1, -84($fp)	# spill _tmp30 from $t1 to $fp-84
	  sw $t2, -88($fp)	# spill _tmp31 from $t2 to $fp-88
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp33 = _tmp29 - _tmp32
	  lw $t1, -80($fp)	# load _tmp29 from $fp-80 into $t1
	  sub $t2, $t1, $t0	
	# _tmp34 = *(_tmp30 + 4)
	  lw $t3, -84($fp)	# load _tmp30 from $fp-84 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp33
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp34
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp32 from $t0 to $fp-92
	  sw $t2, -96($fp)	# spill _tmp33 from $t2 to $fp-96
	  sw $t4, -100($fp)	# spill _tmp34 from $t4 to $fp-100
	  jalr $t4            	# jump to function
	# _tmp35 = 0
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