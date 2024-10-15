addi t0, x0, 5 # t0-n, n=5 nmax=12
addi s0, x0, 1 #s0 - res
addi t1, x0, 2 # t1-i
fac_loop:
blt t0, t1, skip_loop # for
add t2, x0, x0 # t2 = 0 
add t4, t1, x0
mul_loop:
bge x0, t4, mul_loop_end
andi t3, t4, 1
beq x0,t3 if_jump  
add t2, t2, s0
if_jump:
addi t3, x0, 1
sll s0, s0, t3
srl t4, t4, t3
beq x0, x0, mul_loop
mul_loop_end:
add s0, x0, t2
addi t1, t1, 1
beq x0, x0, fac_loop
skip_loop: add x0, x0, x0
 

 



