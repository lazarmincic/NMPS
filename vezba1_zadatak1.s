addi x5, x0, 2 # t0
addi x6, x0, 4 # t1
addi x7, x0, 5 # t2

add x8, x5, x6
sub x8, x8, x7

addi x9, x5, 1

beq x0, x6, nula1
beq x0, x7, nula1

#x28 brojac
loop1: 
addi x28, x28, 1
add x9, x6, x9  #t1 se sabira t2 puta
bne x28, x7, loop1

nula1: 

#x18 = s2
addi x18, x0, 1
sll x18, x18, x7


