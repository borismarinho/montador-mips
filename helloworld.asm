

.text
sllv $0, $t1, $s5
srlv $20, $t7, $k1
addiu $0, $1, 0x124
mul $t0, $t1, $t2
lw $zero, -8($at)
add $v0, $v1, $a0
Agora_vai: sub $a1, $a2, $a3
and $t0, $t1, $t2
or $t3, $t4, $t5
nor $t6, $t7, $s0
xor $s1, $s2, $s3
sw $s4, 100($s5)
j Label
jr $ra
jal Labeli
		beq $t0, $1, Label
  slt 	$s6, $s7, $t8
lui $t9, 	0xA00
addu $k0, $k1, $gp
subu $sp, $fp, $ra
sll $0, $1, 10
srl $2, $3, 30
				Teste: li $4, 100000
andi $6, $7, 10
ori $8, $9, 10
xori $10, $11, 150
mult $12, $13
div $14, $15
li $t0, -0x100
Label: mfhi $16
mflo $17
bgez $t1, Agora_vai
bne $0, $t0, Teste
clo $t1, $t2
Labeli: srav $20, $21, $22
sra $23, $24, 12
madd $25, $26
add $27, $28, $29
mult $30, $31

.data
a: .word -1, -2, -125
b: .word -8, -3, 5
