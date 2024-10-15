addi a0, x0, 5 #a
addi a1, x0, 7 #b
addi a2, x0, 10 #c
# rezultat se upisuje u s0
jal x1 proc
# mesto za dalji proizv. kod
beq x0, x0, end
proc: 
slt t0, a1, a0
slt t1, a2, a0
or t0, t0, t1
bne t0, x0, not_a
add s0, x0, a0
jalr x0 x1 0
not_a:
slt t0, a0, a1
slt t1, a2, a1
or t0, t0, t1
bne t0, x0, not_b
add s0, x0, a1
jalr x0 x1 0
not_b:
add s0, x0, a2
jalr x0 x1 0
end: add x0, x0, x0