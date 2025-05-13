X:
.byte 3
n:
.byte 3
resultado:
.word 0


        .text
        .globl main
        .globl __start

__start:
main:
       

addiu $sp, $sp, -24
sw  $ra, 20($sp)
sw $fp, 16($sp)
addi $fp, $sp, 20

lb $a0, X
lb $a1, n

jal pow

sw $v1, resultado

lw $ra, 20($sp)
lw $fp, 16($sp)
addiu $sp, $sp, 24
j salida

pow:

addiu $sp, $sp, -32
sw  $ra, 28($sp)
sw $fp, 24($sp)
sw $a0, 16($sp)
sw $a1, 12($sp)
addi $fp, $sp, 20

li $t0, 0 
li $v1,1

for:

slt $t1, $t0, $a1 
beq $t1, $0, end

MUL $v1, $v1, $a0

addi $t0,$t0, 1 
j for

end:
lw $a0, 16($sp)
lw $a1, 12($sp)
lw $ra, 28($sp)
lw $fp, 24($sp)
addiu $sp, $sp, 32

jr $ra


salida:



