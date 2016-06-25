./main < test.decaf > tmp.asm 2>tmp.errors
./main -d tac < test.decaf > tmp.tac
cat syscall.asm>>tmp.asm
spim -file tmp.asm > tmp.out
cat tmp.out
