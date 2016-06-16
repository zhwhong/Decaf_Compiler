	# standard Decaf preamble 
	  .text
	  .align 2
	  .globl main
  _offset_QueueItem_0:
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
	# VTable for class QueueItem
	  .data
	  .align 2
	  QueueItem:		# label for class QueueItem vtable
	  .word _offset_QueueItem_0
	  .word f_QueueItem.Init
	  .word f_QueueItem.GetData
	  .word f_QueueItem.GetNext
	  .word f_QueueItem.GetPrev
	  .word f_QueueItem.SetNext
	  .word f_QueueItem.SetPrev
	  .text
  f_QueueItem.Init:
	# BeginFunc 100
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 100	# decrement sp to make space for locals/temps
	# _tmp1 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp2 = this + _tmp1
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp3 = *(_tmp2)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp4 = 4
	  li $t4, 4		# load constant value 4 into $t4
	# _tmp5 = this + _tmp4
	  add $t5, $t1, $t4	
	# *(_tmp5) = data
	  lw $t6, 8($fp)	# load data from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# _tmp6 = 8
	  li $t7, 8		# load constant value 8 into $t7
	# _tmp7 = this + _tmp6
	  add $s0, $t1, $t7	
	# _tmp8 = *(_tmp7)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp9 = 8
	  li $s2, 8		# load constant value 8 into $s2
	# _tmp10 = this + _tmp9
	  add $s3, $t1, $s2	
	# *(_tmp10) = next
	  lw $s4, 12($fp)	# load next from $fp+12 into $s4
	  sw $s4, 0($s3) 	# store with offset
	# _tmp11 = 12
	  li $s5, 12		# load constant value 12 into $s5
	# _tmp12 = next + _tmp11
	  add $s6, $s4, $s5	
	# _tmp13 = *(_tmp12)
	  lw $s7, 0($s6) 	# load with offset
	# _tmp14 = 12
	  li $t8, 12		# load constant value 12 into $t8
	# _tmp15 = next + _tmp14
	  add $t9, $s4, $t8	
	# *(_tmp15) = this
	  sw $t1, 0($t9) 	# store with offset
	# _tmp16 = 12
	  li $t1, 12		# load constant value 12 into $t1
	# _tmp17 = this + _tmp16
	  lw $t6, 4($fp)	# load this from $fp+4 into $t6
	  add $s4, $t6, $t1	
	# _tmp18 = *(_tmp17)
	  lw $t6, 0($s4) 	# load with offset
	# _tmp19 = 12
	  sw $t0, -8($fp)	# spill _tmp1 from $t0 to $fp-8
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp20 = this + _tmp19
	  sw $t1, -68($fp)	# spill _tmp16 from $t1 to $fp-68
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  sw $t2, -12($fp)	# spill _tmp2 from $t2 to $fp-12
	  add $t2, $t1, $t0	
	# *(_tmp20) = prev
	  lw $t1, 16($fp)	# load prev from $fp+16 into $t1
	  sw $t1, 0($t2) 	# store with offset
	# _tmp21 = 8
	  li $t1, 8		# load constant value 8 into $t1
	# _tmp22 = prev + _tmp21
	  sw $t3, -16($fp)	# spill _tmp3 from $t3 to $fp-16
	  lw $t3, 16($fp)	# load prev from $fp+16 into $t3
	  sw $t4, -20($fp)	# spill _tmp4 from $t4 to $fp-20
	  add $t4, $t3, $t1	
	# _tmp23 = *(_tmp22)
	  lw $t3, 0($t4) 	# load with offset
	# _tmp24 = 8
	  sw $t5, -24($fp)	# spill _tmp5 from $t5 to $fp-24
	  li $t5, 8		# load constant value 8 into $t5
	# _tmp25 = prev + _tmp24
	  sw $t6, -76($fp)	# spill _tmp18 from $t6 to $fp-76
	  lw $t6, 16($fp)	# load prev from $fp+16 into $t6
	  sw $t7, -28($fp)	# spill _tmp6 from $t7 to $fp-28
	  add $t7, $t6, $t5	
	# *(_tmp25) = this
	  lw $t6, 4($fp)	# load this from $fp+4 into $t6
	  sw $t6, 0($t7) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_QueueItem.GetData:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp26 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp27 = this + _tmp26
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp28 = *(_tmp27)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp28
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
  f_QueueItem.GetNext:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp29 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp30 = this + _tmp29
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp31 = *(_tmp30)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp31
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
  f_QueueItem.GetPrev:
	# BeginFunc 12
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 12	# decrement sp to make space for locals/temps
	# _tmp32 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp33 = this + _tmp32
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp34 = *(_tmp33)
	  lw $t3, 0($t2) 	# load with offset
	# Return _tmp34
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
  f_QueueItem.SetNext:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp35 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# _tmp36 = this + _tmp35
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp37 = *(_tmp36)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp38 = 8
	  li $t4, 8		# load constant value 8 into $t4
	# _tmp39 = this + _tmp38
	  add $t5, $t1, $t4	
	# *(_tmp39) = n
	  lw $t6, 8($fp)	# load n from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_QueueItem.SetPrev:
	# BeginFunc 20
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 20	# decrement sp to make space for locals/temps
	# _tmp40 = 12
	  li $t0, 12		# load constant value 12 into $t0
	# _tmp41 = this + _tmp40
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp42 = *(_tmp41)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp43 = 12
	  li $t4, 12		# load constant value 12 into $t4
	# _tmp44 = this + _tmp43
	  add $t5, $t1, $t4	
	# *(_tmp44) = p
	  lw $t6, 8($fp)	# load p from $fp+8 into $t6
	  sw $t6, 0($t5) 	# store with offset
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  _offset_Queue_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp45 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp45
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
	# VTable for class Queue
	  .data
	  .align 2
	  Queue:		# label for class Queue vtable
	  .word _offset_Queue_0
	  .word f_Queue.Init
	  .word f_Queue.EnQueue
	  .word f_Queue.DeQueue
	  .text
  f_Queue.Init:
	# BeginFunc 96
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 96	# decrement sp to make space for locals/temps
	# _tmp46 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp47 = this + _tmp46
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp48 = *(_tmp47)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp49 = 16
	  li $t4, 16		# load constant value 16 into $t4
	# PushParam _tmp49
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t4, 4($sp)	# copy param value to stack
	# _tmp50 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -8($fp)	# spill _tmp46 from $t0 to $fp-8
	  sw $t2, -12($fp)	# spill _tmp47 from $t2 to $fp-12
	  sw $t3, -16($fp)	# spill _tmp48 from $t3 to $fp-16
	  sw $t4, -20($fp)	# spill _tmp49 from $t4 to $fp-20
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp51 = QueueItem
	  la $t1, QueueItem	# load label
	# *(_tmp50) = _tmp51
	  sw $t1, 0($t0) 	# store with offset
	# _tmp52 = 4
	  li $t2, 4		# load constant value 4 into $t2
	# _tmp53 = this + _tmp52
	  lw $t3, 4($fp)	# load this from $fp+4 into $t3
	  add $t4, $t3, $t2	
	# *(_tmp53) = _tmp50
	  sw $t0, 0($t4) 	# store with offset
	# _tmp54 = 4
	  li $t5, 4		# load constant value 4 into $t5
	# _tmp55 = this + _tmp54
	  add $t6, $t3, $t5	
	# _tmp56 = *(_tmp55)
	  lw $t7, 0($t6) 	# load with offset
	# _tmp57 = 4
	  li $s0, 4		# load constant value 4 into $s0
	# _tmp58 = this + _tmp57
	  add $s1, $t3, $s0	
	# _tmp59 = *(_tmp58)
	  lw $s2, 0($s1) 	# load with offset
	# PushParam _tmp59
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s2, 4($sp)	# copy param value to stack
	# _tmp60 = 4
	  li $s3, 4		# load constant value 4 into $s3
	# _tmp61 = this + _tmp60
	  add $s4, $t3, $s3	
	# _tmp62 = *(_tmp61)
	  lw $s5, 0($s4) 	# load with offset
	# PushParam _tmp62
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s5, 4($sp)	# copy param value to stack
	# _tmp63 = 0
	  li $s6, 0		# load constant value 0 into $s6
	# PushParam _tmp63
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $s6, 4($sp)	# copy param value to stack
	# _tmp64 = *(_tmp56)
	  lw $s7, 0($t7) 	# load with offset
	# _tmp65 = *(_tmp64)
	  lw $t8, 0($s7) 	# load with offset
	# _tmp66 = ACall _tmp65
	# (save modified registers before flow of control change)
	  sw $t0, -24($fp)	# spill _tmp50 from $t0 to $fp-24
	  sw $t1, -28($fp)	# spill _tmp51 from $t1 to $fp-28
	  sw $t2, -32($fp)	# spill _tmp52 from $t2 to $fp-32
	  sw $t4, -36($fp)	# spill _tmp53 from $t4 to $fp-36
	  sw $t5, -40($fp)	# spill _tmp54 from $t5 to $fp-40
	  sw $t6, -44($fp)	# spill _tmp55 from $t6 to $fp-44
	  sw $t7, -48($fp)	# spill _tmp56 from $t7 to $fp-48
	  sw $s0, -52($fp)	# spill _tmp57 from $s0 to $fp-52
	  sw $s1, -56($fp)	# spill _tmp58 from $s1 to $fp-56
	  sw $s2, -60($fp)	# spill _tmp59 from $s2 to $fp-60
	  sw $s3, -64($fp)	# spill _tmp60 from $s3 to $fp-64
	  sw $s4, -68($fp)	# spill _tmp61 from $s4 to $fp-68
	  sw $s5, -72($fp)	# spill _tmp62 from $s5 to $fp-72
	  sw $s6, -76($fp)	# spill _tmp63 from $s6 to $fp-76
	  sw $s7, -80($fp)	# spill _tmp64 from $s7 to $fp-80
	  sw $t8, -84($fp)	# spill _tmp65 from $t8 to $fp-84
	  jalr $t8            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp67 = _tmp56 - _tmp66
	  lw $t1, -48($fp)	# load _tmp56 from $fp-48 into $t1
	  sub $t2, $t1, $t0	
	# _tmp68 = *(_tmp64 + 4)
	  lw $t3, -80($fp)	# load _tmp64 from $fp-80 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp67
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp68
	# (save modified registers before flow of control change)
	  sw $t0, -88($fp)	# spill _tmp66 from $t0 to $fp-88
	  sw $t2, -92($fp)	# spill _tmp67 from $t2 to $fp-92
	  sw $t4, -96($fp)	# spill _tmp68 from $t4 to $fp-96
	  jalr $t4            	# jump to function
	# _tmp69 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 16
	  add $sp, $sp, 16	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Queue.EnQueue:
	# BeginFunc 88
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 88	# decrement sp to make space for locals/temps
	# _tmp70 = 16
	  li $t0, 16		# load constant value 16 into $t0
	# PushParam _tmp70
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp71 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp70 from $t0 to $fp-12
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp72 = QueueItem
	  la $t1, QueueItem	# load label
	# *(_tmp71) = _tmp72
	  sw $t1, 0($t0) 	# store with offset
	# temp = _tmp71
	  move $t2, $t0		# copy value
	# _tmp73 = 4
	  li $t3, 4		# load constant value 4 into $t3
	# _tmp74 = this + _tmp73
	  lw $t4, 4($fp)	# load this from $fp+4 into $t4
	  add $t5, $t4, $t3	
	# _tmp75 = *(_tmp74)
	  lw $t6, 0($t5) 	# load with offset
	# PushParam _tmp75
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t6, 4($sp)	# copy param value to stack
	# _tmp76 = 4
	  li $t7, 4		# load constant value 4 into $t7
	# _tmp77 = this + _tmp76
	  add $s0, $t4, $t7	
	# _tmp78 = *(_tmp77)
	  lw $s1, 0($s0) 	# load with offset
	# _tmp79 = *(_tmp78)
	  lw $s2, 0($s1) 	# load with offset
	# _tmp80 = *(_tmp79)
	  lw $s3, 0($s2) 	# load with offset
	# _tmp81 = ACall _tmp80
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp71 from $t0 to $fp-16
	  sw $t1, -20($fp)	# spill _tmp72 from $t1 to $fp-20
	  sw $t2, -8($fp)	# spill temp from $t2 to $fp-8
	  sw $t3, -24($fp)	# spill _tmp73 from $t3 to $fp-24
	  sw $t5, -28($fp)	# spill _tmp74 from $t5 to $fp-28
	  sw $t6, -32($fp)	# spill _tmp75 from $t6 to $fp-32
	  sw $t7, -36($fp)	# spill _tmp76 from $t7 to $fp-36
	  sw $s0, -40($fp)	# spill _tmp77 from $s0 to $fp-40
	  sw $s1, -44($fp)	# spill _tmp78 from $s1 to $fp-44
	  sw $s2, -48($fp)	# spill _tmp79 from $s2 to $fp-48
	  sw $s3, -52($fp)	# spill _tmp80 from $s3 to $fp-52
	  jalr $s3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp82 = _tmp78 - _tmp81
	  lw $t1, -44($fp)	# load _tmp78 from $fp-44 into $t1
	  sub $t2, $t1, $t0	
	# _tmp83 = *(_tmp79 + 12)
	  lw $t3, -48($fp)	# load _tmp79 from $fp-48 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp82
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp84 = ACall _tmp83
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp81 from $t0 to $fp-56
	  sw $t2, -60($fp)	# spill _tmp82 from $t2 to $fp-60
	  sw $t4, -64($fp)	# spill _tmp83 from $t4 to $fp-64
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp84
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# PushParam i
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t1, 8($fp)	# load i from $fp+8 into $t1
	  sw $t1, 4($sp)	# copy param value to stack
	# _tmp85 = *(temp)
	  lw $t2, -8($fp)	# load temp from $fp-8 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp86 = *(_tmp85)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp87 = ACall _tmp86
	# (save modified registers before flow of control change)
	  sw $t0, -68($fp)	# spill _tmp84 from $t0 to $fp-68
	  sw $t3, -72($fp)	# spill _tmp85 from $t3 to $fp-72
	  sw $t4, -76($fp)	# spill _tmp86 from $t4 to $fp-76
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp88 = temp - _tmp87
	  lw $t1, -8($fp)	# load temp from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp89 = *(_tmp85 + 4)
	  lw $t3, -72($fp)	# load _tmp85 from $fp-72 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp88
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp89
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp87 from $t0 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp88 from $t2 to $fp-84
	  sw $t4, -88($fp)	# spill _tmp89 from $t4 to $fp-88
	  jalr $t4            	# jump to function
	# _tmp90 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 16
	  add $sp, $sp, 16	# pop params off stack
	# EndFunc
	# (below handles reaching end of fn body with no explicit return)
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
  f_Queue.DeQueue:
	# BeginFunc 272
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 272	# decrement sp to make space for locals/temps
	# _tmp91 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp92 = this + _tmp91
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp93 = *(_tmp92)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp94 = *(_tmp93)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp95 = *(_tmp94)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp96 = ACall _tmp95
	# (save modified registers before flow of control change)
	  sw $t0, -12($fp)	# spill _tmp91 from $t0 to $fp-12
	  sw $t2, -16($fp)	# spill _tmp92 from $t2 to $fp-16
	  sw $t3, -20($fp)	# spill _tmp93 from $t3 to $fp-20
	  sw $t4, -24($fp)	# spill _tmp94 from $t4 to $fp-24
	  sw $t5, -28($fp)	# spill _tmp95 from $t5 to $fp-28
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp97 = _tmp93 - _tmp96
	  lw $t1, -20($fp)	# load _tmp93 from $fp-20 into $t1
	  sub $t2, $t1, $t0	
	# _tmp98 = *(_tmp94 + 16)
	  lw $t3, -24($fp)	# load _tmp94 from $fp-24 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp97
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp99 = ACall _tmp98
	# (save modified registers before flow of control change)
	  sw $t0, -32($fp)	# spill _tmp96 from $t0 to $fp-32
	  sw $t2, -36($fp)	# spill _tmp97 from $t2 to $fp-36
	  sw $t4, -40($fp)	# spill _tmp98 from $t4 to $fp-40
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp100 = 4
	  li $t1, 4		# load constant value 4 into $t1
	# _tmp101 = this + _tmp100
	  lw $t2, 4($fp)	# load this from $fp+4 into $t2
	  add $t3, $t2, $t1	
	# _tmp102 = *(_tmp101)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp103 = _tmp99 == _tmp102
	  seq $t5, $t0, $t4	
	# IfZ _tmp103 Goto _L1
	# (save modified registers before flow of control change)
	  sw $t0, -44($fp)	# spill _tmp99 from $t0 to $fp-44
	  sw $t1, -48($fp)	# spill _tmp100 from $t1 to $fp-48
	  sw $t3, -52($fp)	# spill _tmp101 from $t3 to $fp-52
	  sw $t4, -56($fp)	# spill _tmp102 from $t4 to $fp-56
	  sw $t5, -60($fp)	# spill _tmp103 from $t5 to $fp-60
	  beqz $t5, _L1	# branch if _tmp103 is zero 
	# _tmp104 = "Queue Is Empty"
	  .data			# create string constant marked with label
	  _string1: .asciiz "Queue Is Empty"
	  .text
	  la $t0, _string1	# load label
	# PushParam _tmp104
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -64($fp)	# spill _tmp104 from $t0 to $fp-64
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp105 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp105
	  move $v0, $t0		# assign return value into $v0
	  move $sp, $fp		# pop callee frame off stack
	  lw $ra, -4($fp)	# restore saved ra
	  lw $fp, 0($fp)	# restore saved fp
	  jr $ra		# return from function
	# Goto _L0
	  b _L0		# unconditional branch
  _L1:
	# _tmp106 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp107 = this + _tmp106
	  lw $t1, 4($fp)	# load this from $fp+4 into $t1
	  add $t2, $t1, $t0	
	# _tmp108 = *(_tmp107)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp109 = *(_tmp108)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp110 = *(_tmp109)
	  lw $t5, 0($t4) 	# load with offset
	# _tmp111 = ACall _tmp110
	# (save modified registers before flow of control change)
	  sw $t0, -76($fp)	# spill _tmp106 from $t0 to $fp-76
	  sw $t2, -80($fp)	# spill _tmp107 from $t2 to $fp-80
	  sw $t3, -84($fp)	# spill _tmp108 from $t3 to $fp-84
	  sw $t4, -88($fp)	# spill _tmp109 from $t4 to $fp-88
	  sw $t5, -92($fp)	# spill _tmp110 from $t5 to $fp-92
	  jalr $t5            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp112 = _tmp108 - _tmp111
	  lw $t1, -84($fp)	# load _tmp108 from $fp-84 into $t1
	  sub $t2, $t1, $t0	
	# _tmp113 = *(_tmp109 + 16)
	  lw $t3, -88($fp)	# load _tmp109 from $fp-88 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp112
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp114 = ACall _tmp113
	# (save modified registers before flow of control change)
	  sw $t0, -96($fp)	# spill _tmp111 from $t0 to $fp-96
	  sw $t2, -100($fp)	# spill _tmp112 from $t2 to $fp-100
	  sw $t4, -104($fp)	# spill _tmp113 from $t4 to $fp-104
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# temp = _tmp114
	  move $t1, $t0		# copy value
	# _tmp115 = *(temp)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp116 = *(_tmp115)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp117 = ACall _tmp116
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp114 from $t0 to $fp-108
	  sw $t1, -72($fp)	# spill temp from $t1 to $fp-72
	  sw $t2, -112($fp)	# spill _tmp115 from $t2 to $fp-112
	  sw $t3, -116($fp)	# spill _tmp116 from $t3 to $fp-116
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp118 = temp - _tmp117
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  sub $t2, $t1, $t0	
	# _tmp119 = *(_tmp115 + 8)
	  lw $t3, -112($fp)	# load _tmp115 from $fp-112 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp118
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp120 = ACall _tmp119
	# (save modified registers before flow of control change)
	  sw $t0, -120($fp)	# spill _tmp117 from $t0 to $fp-120
	  sw $t2, -124($fp)	# spill _tmp118 from $t2 to $fp-124
	  sw $t4, -128($fp)	# spill _tmp119 from $t4 to $fp-128
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# val = _tmp120
	  move $t1, $t0		# copy value
	# _tmp121 = *(temp)
	  lw $t2, -72($fp)	# load temp from $fp-72 into $t2
	  lw $t3, 0($t2) 	# load with offset
	# _tmp122 = *(_tmp121)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp123 = ACall _tmp122
	# (save modified registers before flow of control change)
	  sw $t0, -132($fp)	# spill _tmp120 from $t0 to $fp-132
	  sw $t1, -8($fp)	# spill val from $t1 to $fp-8
	  sw $t3, -136($fp)	# spill _tmp121 from $t3 to $fp-136
	  sw $t4, -140($fp)	# spill _tmp122 from $t4 to $fp-140
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp124 = temp - _tmp123
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  sub $t2, $t1, $t0	
	# _tmp125 = *(_tmp121 + 16)
	  lw $t3, -136($fp)	# load _tmp121 from $fp-136 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp124
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp126 = ACall _tmp125
	# (save modified registers before flow of control change)
	  sw $t0, -144($fp)	# spill _tmp123 from $t0 to $fp-144
	  sw $t2, -148($fp)	# spill _tmp124 from $t2 to $fp-148
	  sw $t4, -152($fp)	# spill _tmp125 from $t4 to $fp-152
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp127 = *(temp)
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp128 = *(_tmp127)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp129 = ACall _tmp128
	# (save modified registers before flow of control change)
	  sw $t0, -156($fp)	# spill _tmp126 from $t0 to $fp-156
	  sw $t2, -160($fp)	# spill _tmp127 from $t2 to $fp-160
	  sw $t3, -164($fp)	# spill _tmp128 from $t3 to $fp-164
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp130 = temp - _tmp129
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  sub $t2, $t1, $t0	
	# _tmp131 = *(_tmp127 + 12)
	  lw $t3, -160($fp)	# load _tmp127 from $fp-160 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp130
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp132 = ACall _tmp131
	# (save modified registers before flow of control change)
	  sw $t0, -168($fp)	# spill _tmp129 from $t0 to $fp-168
	  sw $t2, -172($fp)	# spill _tmp130 from $t2 to $fp-172
	  sw $t4, -176($fp)	# spill _tmp131 from $t4 to $fp-176
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp132
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp133 = *(_tmp126)
	  lw $t1, -156($fp)	# load _tmp126 from $fp-156 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp134 = *(_tmp133)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp135 = ACall _tmp134
	# (save modified registers before flow of control change)
	  sw $t0, -180($fp)	# spill _tmp132 from $t0 to $fp-180
	  sw $t2, -184($fp)	# spill _tmp133 from $t2 to $fp-184
	  sw $t3, -188($fp)	# spill _tmp134 from $t3 to $fp-188
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp136 = _tmp126 - _tmp135
	  lw $t1, -156($fp)	# load _tmp126 from $fp-156 into $t1
	  sub $t2, $t1, $t0	
	# _tmp137 = *(_tmp133 + 20)
	  lw $t3, -184($fp)	# load _tmp133 from $fp-184 into $t3
	  lw $t4, 20($t3) 	# load with offset
	# PushParam _tmp136
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp137
	# (save modified registers before flow of control change)
	  sw $t0, -192($fp)	# spill _tmp135 from $t0 to $fp-192
	  sw $t2, -196($fp)	# spill _tmp136 from $t2 to $fp-196
	  sw $t4, -200($fp)	# spill _tmp137 from $t4 to $fp-200
	  jalr $t4            	# jump to function
	# _tmp138 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp139 = *(temp)
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp140 = *(_tmp139)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp141 = ACall _tmp140
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp138 from $t0 to $fp-204
	  sw $t2, -208($fp)	# spill _tmp139 from $t2 to $fp-208
	  sw $t3, -212($fp)	# spill _tmp140 from $t3 to $fp-212
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp142 = temp - _tmp141
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  sub $t2, $t1, $t0	
	# _tmp143 = *(_tmp139 + 12)
	  lw $t3, -208($fp)	# load _tmp139 from $fp-208 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp142
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp144 = ACall _tmp143
	# (save modified registers before flow of control change)
	  sw $t0, -216($fp)	# spill _tmp141 from $t0 to $fp-216
	  sw $t2, -220($fp)	# spill _tmp142 from $t2 to $fp-220
	  sw $t4, -224($fp)	# spill _tmp143 from $t4 to $fp-224
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp145 = *(temp)
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp146 = *(_tmp145)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp147 = ACall _tmp146
	# (save modified registers before flow of control change)
	  sw $t0, -228($fp)	# spill _tmp144 from $t0 to $fp-228
	  sw $t2, -232($fp)	# spill _tmp145 from $t2 to $fp-232
	  sw $t3, -236($fp)	# spill _tmp146 from $t3 to $fp-236
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp148 = temp - _tmp147
	  lw $t1, -72($fp)	# load temp from $fp-72 into $t1
	  sub $t2, $t1, $t0	
	# _tmp149 = *(_tmp145 + 16)
	  lw $t3, -232($fp)	# load _tmp145 from $fp-232 into $t3
	  lw $t4, 16($t3) 	# load with offset
	# PushParam _tmp148
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp150 = ACall _tmp149
	# (save modified registers before flow of control change)
	  sw $t0, -240($fp)	# spill _tmp147 from $t0 to $fp-240
	  sw $t2, -244($fp)	# spill _tmp148 from $t2 to $fp-244
	  sw $t4, -248($fp)	# spill _tmp149 from $t4 to $fp-248
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp150
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp151 = *(_tmp144)
	  lw $t1, -228($fp)	# load _tmp144 from $fp-228 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp152 = *(_tmp151)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp153 = ACall _tmp152
	# (save modified registers before flow of control change)
	  sw $t0, -252($fp)	# spill _tmp150 from $t0 to $fp-252
	  sw $t2, -256($fp)	# spill _tmp151 from $t2 to $fp-256
	  sw $t3, -260($fp)	# spill _tmp152 from $t3 to $fp-260
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp154 = _tmp144 - _tmp153
	  lw $t1, -228($fp)	# load _tmp144 from $fp-228 into $t1
	  sub $t2, $t1, $t0	
	# _tmp155 = *(_tmp151 + 24)
	  lw $t3, -256($fp)	# load _tmp151 from $fp-256 into $t3
	  lw $t4, 24($t3) 	# load with offset
	# PushParam _tmp154
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp155
	# (save modified registers before flow of control change)
	  sw $t0, -264($fp)	# spill _tmp153 from $t0 to $fp-264
	  sw $t2, -268($fp)	# spill _tmp154 from $t2 to $fp-268
	  sw $t4, -272($fp)	# spill _tmp155 from $t4 to $fp-272
	  jalr $t4            	# jump to function
	# _tmp156 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# (save modified registers before flow of control change)
	  sw $t0, -276($fp)	# spill _tmp156 from $t0 to $fp-276
  _L0:
	# Return val
	  lw $t0, -8($fp)	# load val from $fp-8 into $t0
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
  _offset_main_0:
	# BeginFunc 4
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 4	# decrement sp to make space for locals/temps
	# _tmp157 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# Return _tmp157
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
	# BeginFunc 268
	  subu $sp, $sp, 8	# decrement sp to make space to save ra, fp
	  sw $fp, 8($sp)	# save fp
	  sw $ra, 4($sp)	# save ra
	  addiu $fp, $sp, 8	# set up new fp
	  subu $sp, $sp, 268	# decrement sp to make space for locals/temps
	# _tmp158 = 8
	  li $t0, 8		# load constant value 8 into $t0
	# PushParam _tmp158
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp159 = LCall _Alloc
	# (save modified registers before flow of control change)
	  sw $t0, -16($fp)	# spill _tmp158 from $t0 to $fp-16
	  jal _Alloc         	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp160 = Queue
	  la $t1, Queue	# load label
	# *(_tmp159) = _tmp160
	  sw $t1, 0($t0) 	# store with offset
	# q = _tmp159
	  move $t2, $t0		# copy value
	# _tmp161 = *(q)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp162 = *(_tmp161)
	  lw $t4, 0($t3) 	# load with offset
	# _tmp163 = ACall _tmp162
	# (save modified registers before flow of control change)
	  sw $t0, -20($fp)	# spill _tmp159 from $t0 to $fp-20
	  sw $t1, -24($fp)	# spill _tmp160 from $t1 to $fp-24
	  sw $t2, -8($fp)	# spill q from $t2 to $fp-8
	  sw $t3, -28($fp)	# spill _tmp161 from $t3 to $fp-28
	  sw $t4, -32($fp)	# spill _tmp162 from $t4 to $fp-32
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp164 = q - _tmp163
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp165 = *(_tmp161 + 4)
	  lw $t3, -28($fp)	# load _tmp161 from $fp-28 into $t3
	  lw $t4, 4($t3) 	# load with offset
	# PushParam _tmp164
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp165
	# (save modified registers before flow of control change)
	  sw $t0, -36($fp)	# spill _tmp163 from $t0 to $fp-36
	  sw $t2, -40($fp)	# spill _tmp164 from $t2 to $fp-40
	  sw $t4, -44($fp)	# spill _tmp165 from $t4 to $fp-44
	  jalr $t4            	# jump to function
	# _tmp166 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp167 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# i = _tmp167
	  move $t2, $t1		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -48($fp)	# spill _tmp166 from $t0 to $fp-48
	  sw $t1, -52($fp)	# spill _tmp167 from $t1 to $fp-52
	  sw $t2, -12($fp)	# spill i from $t2 to $fp-12
  _L2:
	# _tmp168 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp169 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp170 = i == _tmp168
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  seq $t3, $t2, $t0	
	# _tmp171 = _tmp170 == _tmp169
	  seq $t4, $t3, $t1	
	# IfZ _tmp171 Goto _L3
	# (save modified registers before flow of control change)
	  sw $t0, -56($fp)	# spill _tmp168 from $t0 to $fp-56
	  sw $t1, -60($fp)	# spill _tmp169 from $t1 to $fp-60
	  sw $t3, -64($fp)	# spill _tmp170 from $t3 to $fp-64
	  sw $t4, -68($fp)	# spill _tmp171 from $t4 to $fp-68
	  beqz $t4, _L3	# branch if _tmp171 is zero 
	# PushParam i
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp172 = *(q)
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp173 = *(_tmp172)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp174 = ACall _tmp173
	# (save modified registers before flow of control change)
	  sw $t2, -72($fp)	# spill _tmp172 from $t2 to $fp-72
	  sw $t3, -76($fp)	# spill _tmp173 from $t3 to $fp-76
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp175 = q - _tmp174
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp176 = *(_tmp172 + 8)
	  lw $t3, -72($fp)	# load _tmp172 from $fp-72 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp175
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp176
	# (save modified registers before flow of control change)
	  sw $t0, -80($fp)	# spill _tmp174 from $t0 to $fp-80
	  sw $t2, -84($fp)	# spill _tmp175 from $t2 to $fp-84
	  sw $t4, -88($fp)	# spill _tmp176 from $t4 to $fp-88
	  jalr $t4            	# jump to function
	# _tmp177 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp178 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp179 = i + _tmp178
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  add $t3, $t2, $t1	
	# i = _tmp179
	  move $t2, $t3		# copy value
	# Goto _L2
	# (save modified registers before flow of control change)
	  sw $t0, -92($fp)	# spill _tmp177 from $t0 to $fp-92
	  sw $t1, -96($fp)	# spill _tmp178 from $t1 to $fp-96
	  sw $t2, -12($fp)	# spill i from $t2 to $fp-12
	  sw $t3, -100($fp)	# spill _tmp179 from $t3 to $fp-100
	  b _L2		# unconditional branch
  _L3:
	# _tmp180 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp180
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -104($fp)	# spill _tmp180 from $t0 to $fp-104
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
  _L4:
	# _tmp181 = 4
	  li $t0, 4		# load constant value 4 into $t0
	# _tmp182 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp183 = i == _tmp181
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  seq $t3, $t2, $t0	
	# _tmp184 = _tmp183 == _tmp182
	  seq $t4, $t3, $t1	
	# IfZ _tmp184 Goto _L5
	# (save modified registers before flow of control change)
	  sw $t0, -108($fp)	# spill _tmp181 from $t0 to $fp-108
	  sw $t1, -112($fp)	# spill _tmp182 from $t1 to $fp-112
	  sw $t3, -116($fp)	# spill _tmp183 from $t3 to $fp-116
	  sw $t4, -120($fp)	# spill _tmp184 from $t4 to $fp-120
	  beqz $t4, _L5	# branch if _tmp184 is zero 
	# _tmp185 = *(q)
	  lw $t0, -8($fp)	# load q from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp186 = *(_tmp185)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp187 = ACall _tmp186
	# (save modified registers before flow of control change)
	  sw $t1, -124($fp)	# spill _tmp185 from $t1 to $fp-124
	  sw $t2, -128($fp)	# spill _tmp186 from $t2 to $fp-128
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp188 = q - _tmp187
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp189 = *(_tmp185 + 12)
	  lw $t3, -124($fp)	# load _tmp185 from $fp-124 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp188
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp190 = ACall _tmp189
	# (save modified registers before flow of control change)
	  sw $t0, -132($fp)	# spill _tmp187 from $t0 to $fp-132
	  sw $t2, -136($fp)	# spill _tmp188 from $t2 to $fp-136
	  sw $t4, -140($fp)	# spill _tmp189 from $t4 to $fp-140
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp190
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -144($fp)	# spill _tmp190 from $t0 to $fp-144
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp191 = " "
	  .data			# create string constant marked with label
	  _string2: .asciiz " "
	  .text
	  la $t0, _string2	# load label
	# PushParam _tmp191
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -148($fp)	# spill _tmp191 from $t0 to $fp-148
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp192 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp193 = i + _tmp192
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# i = _tmp193
	  move $t1, $t2		# copy value
	# Goto _L4
	# (save modified registers before flow of control change)
	  sw $t0, -152($fp)	# spill _tmp192 from $t0 to $fp-152
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
	  sw $t2, -156($fp)	# spill _tmp193 from $t2 to $fp-156
	  b _L4		# unconditional branch
  _L5:
	# _tmp194 = "\n"
	  .data			# create string constant marked with label
	  _string3: .asciiz "\n"
	  .text
	  la $t0, _string3	# load label
	# PushParam _tmp194
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -160($fp)	# spill _tmp194 from $t0 to $fp-160
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp195 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp195
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -164($fp)	# spill _tmp195 from $t0 to $fp-164
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
  _L6:
	# _tmp196 = 10
	  li $t0, 10		# load constant value 10 into $t0
	# _tmp197 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp198 = i == _tmp196
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  seq $t3, $t2, $t0	
	# _tmp199 = _tmp198 == _tmp197
	  seq $t4, $t3, $t1	
	# IfZ _tmp199 Goto _L7
	# (save modified registers before flow of control change)
	  sw $t0, -168($fp)	# spill _tmp196 from $t0 to $fp-168
	  sw $t1, -172($fp)	# spill _tmp197 from $t1 to $fp-172
	  sw $t3, -176($fp)	# spill _tmp198 from $t3 to $fp-176
	  sw $t4, -180($fp)	# spill _tmp199 from $t4 to $fp-180
	  beqz $t4, _L7	# branch if _tmp199 is zero 
	# PushParam i
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  lw $t0, -12($fp)	# load i from $fp-12 into $t0
	  sw $t0, 4($sp)	# copy param value to stack
	# _tmp200 = *(q)
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  lw $t2, 0($t1) 	# load with offset
	# _tmp201 = *(_tmp200)
	  lw $t3, 0($t2) 	# load with offset
	# _tmp202 = ACall _tmp201
	# (save modified registers before flow of control change)
	  sw $t2, -184($fp)	# spill _tmp200 from $t2 to $fp-184
	  sw $t3, -188($fp)	# spill _tmp201 from $t3 to $fp-188
	  jalr $t3            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp203 = q - _tmp202
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp204 = *(_tmp200 + 8)
	  lw $t3, -184($fp)	# load _tmp200 from $fp-184 into $t3
	  lw $t4, 8($t3) 	# load with offset
	# PushParam _tmp203
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# ACall _tmp204
	# (save modified registers before flow of control change)
	  sw $t0, -192($fp)	# spill _tmp202 from $t0 to $fp-192
	  sw $t2, -196($fp)	# spill _tmp203 from $t2 to $fp-196
	  sw $t4, -200($fp)	# spill _tmp204 from $t4 to $fp-200
	  jalr $t4            	# jump to function
	# _tmp205 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# PopParams 8
	  add $sp, $sp, 8	# pop params off stack
	# _tmp206 = 1
	  li $t1, 1		# load constant value 1 into $t1
	# _tmp207 = i + _tmp206
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  add $t3, $t2, $t1	
	# i = _tmp207
	  move $t2, $t3		# copy value
	# Goto _L6
	# (save modified registers before flow of control change)
	  sw $t0, -204($fp)	# spill _tmp205 from $t0 to $fp-204
	  sw $t1, -208($fp)	# spill _tmp206 from $t1 to $fp-208
	  sw $t2, -12($fp)	# spill i from $t2 to $fp-12
	  sw $t3, -212($fp)	# spill _tmp207 from $t3 to $fp-212
	  b _L6		# unconditional branch
  _L7:
	# _tmp208 = 0
	  li $t0, 0		# load constant value 0 into $t0
	# i = _tmp208
	  move $t1, $t0		# copy value
	# (save modified registers before flow of control change)
	  sw $t0, -216($fp)	# spill _tmp208 from $t0 to $fp-216
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
  _L8:
	# _tmp209 = 17
	  li $t0, 17		# load constant value 17 into $t0
	# _tmp210 = 0
	  li $t1, 0		# load constant value 0 into $t1
	# _tmp211 = i == _tmp209
	  lw $t2, -12($fp)	# load i from $fp-12 into $t2
	  seq $t3, $t2, $t0	
	# _tmp212 = _tmp211 == _tmp210
	  seq $t4, $t3, $t1	
	# IfZ _tmp212 Goto _L9
	# (save modified registers before flow of control change)
	  sw $t0, -220($fp)	# spill _tmp209 from $t0 to $fp-220
	  sw $t1, -224($fp)	# spill _tmp210 from $t1 to $fp-224
	  sw $t3, -228($fp)	# spill _tmp211 from $t3 to $fp-228
	  sw $t4, -232($fp)	# spill _tmp212 from $t4 to $fp-232
	  beqz $t4, _L9	# branch if _tmp212 is zero 
	# _tmp213 = *(q)
	  lw $t0, -8($fp)	# load q from $fp-8 into $t0
	  lw $t1, 0($t0) 	# load with offset
	# _tmp214 = *(_tmp213)
	  lw $t2, 0($t1) 	# load with offset
	# _tmp215 = ACall _tmp214
	# (save modified registers before flow of control change)
	  sw $t1, -236($fp)	# spill _tmp213 from $t1 to $fp-236
	  sw $t2, -240($fp)	# spill _tmp214 from $t2 to $fp-240
	  jalr $t2            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# _tmp216 = q - _tmp215
	  lw $t1, -8($fp)	# load q from $fp-8 into $t1
	  sub $t2, $t1, $t0	
	# _tmp217 = *(_tmp213 + 12)
	  lw $t3, -236($fp)	# load _tmp213 from $fp-236 into $t3
	  lw $t4, 12($t3) 	# load with offset
	# PushParam _tmp216
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t2, 4($sp)	# copy param value to stack
	# _tmp218 = ACall _tmp217
	# (save modified registers before flow of control change)
	  sw $t0, -244($fp)	# spill _tmp215 from $t0 to $fp-244
	  sw $t2, -248($fp)	# spill _tmp216 from $t2 to $fp-248
	  sw $t4, -252($fp)	# spill _tmp217 from $t4 to $fp-252
	  jalr $t4            	# jump to function
	  move $t0, $v0		# copy function return value from $v0
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# PushParam _tmp218
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintInt
	# (save modified registers before flow of control change)
	  sw $t0, -256($fp)	# spill _tmp218 from $t0 to $fp-256
	  jal _PrintInt      	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp219 = " "
	  .data			# create string constant marked with label
	  _string4: .asciiz " "
	  .text
	  la $t0, _string4	# load label
	# PushParam _tmp219
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -260($fp)	# spill _tmp219 from $t0 to $fp-260
	  jal _PrintString   	# jump to function
	# PopParams 4
	  add $sp, $sp, 4	# pop params off stack
	# _tmp220 = 1
	  li $t0, 1		# load constant value 1 into $t0
	# _tmp221 = i + _tmp220
	  lw $t1, -12($fp)	# load i from $fp-12 into $t1
	  add $t2, $t1, $t0	
	# i = _tmp221
	  move $t1, $t2		# copy value
	# Goto _L8
	# (save modified registers before flow of control change)
	  sw $t0, -264($fp)	# spill _tmp220 from $t0 to $fp-264
	  sw $t1, -12($fp)	# spill i from $t1 to $fp-12
	  sw $t2, -268($fp)	# spill _tmp221 from $t2 to $fp-268
	  b _L8		# unconditional branch
  _L9:
	# _tmp222 = "\n"
	  .data			# create string constant marked with label
	  _string5: .asciiz "\n"
	  .text
	  la $t0, _string5	# load label
	# PushParam _tmp222
	  subu $sp, $sp, 4	# decrement sp to make space for param
	  sw $t0, 4($sp)	# copy param value to stack
	# LCall _PrintString
	# (save modified registers before flow of control change)
	  sw $t0, -272($fp)	# spill _tmp222 from $t0 to $fp-272
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