cadena:
.asciiz "hola"

longitud:
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

la $a0, cadena

jal strlen

sw $v1, longitud


lw $ra, 20($sp)
lw $fp, 16($sp)
addiu $sp, $sp, 24
j salida


strlen:
addiu $sp, $sp, -32
sw  $ra, 28($sp)
sw $fp, 24($sp)
sw $a0, 20($sp)
addi $fp, $sp, 28

li $v1, 0 # contador


lb $t1, 0($a0)

contador:
beq $t1, $zero, end
addi $v1, $v1, 1
addi $a0, $a0, 1
lb $t1, 0($a0)
j contador



end:

lw  $ra, 28($sp)
lw $fp, 24($sp)
lw $a0, 20($sp)
addiu $sp, $sp, 32

jr $ra

salida:

# retorna al SO
        move $a0, $0
        li      $v0, 4001
        syscall




