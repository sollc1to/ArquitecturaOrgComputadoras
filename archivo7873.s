# Hello World en MIPS
#
        .data
	X:
	.byte 3
	N:
	.byte 3
	resultado:
	.word 0

        .text
        .globl main
        .globl __start

__start:
main:

addiu $sp,$sp,-24
sw $ra, 20($sp)
sw $fp, 16($sp)
addi $fp, $sp, 20

lb $a0, X
lb $a1, N
jal pow


lw $v1, resultado
lw $ra, 20($fp)
lw $fp, 16($fp)
addiu $sp, $sp, 24
j salir

pow:
addiu $sp,$sp,-24
sw $ra, 20($sp)
sw $fp, 16($sp)
addi $fp, $sp, 20
li $t0, 0

for:
slt $t1, $t0, $a1
beq $t1, $zero, end

MUL $v1, $v1, $a0
addi $t0, 1 
j for

end:
lw $v1, resultado
lw $ra, 20($fp)
lw $fp, 16($fp)
addiu $sp, $sp, 24
jr $ra

        
salir:
# retorna al SO
        move $a0, $0
        li      $v0, 4001
        syscall