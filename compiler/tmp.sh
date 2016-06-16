./main <sort.decaf > tmp.asm 2>tmp.errors
./main  -d tac <sort.decaf > tmp.tac
cat syscall.asm>>tmp.asm
spim -file tmp.asm >tmp.out
subl tmp.out
