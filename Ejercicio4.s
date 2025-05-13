addiu $sp, $sp, -24
sw  $ra, 20($sp)
sw $fp, 16($sp)
addi $fp, $sp, 20

lw $a0, numero #cargo el numero

jal funcionRecursiva

sw $v1, resultado

lw $ra, 20($sp)
lw $fp, 16($sp)
addiu $sp, $sp, 24
j salida


funcionRecursiva:
addiu $sp, $sp, -40
sw  $ra, 36($sp)
sw $fp, 32($sp)
sw $a0, 28($sp) #resguardo el argumento
sw $s1, 24($sp) #resguardo 
addi $fp, $sp, 36

li $t1, 1

sub $a0, $a0, $t1
beq $a0, $zero, finRecursividad # si es cero, termino la recursividad

jal funcionRecursiva
addi $a0, $a0, 1

mul $v1, $v1, $a0 #v1 = v1*a0


lw  $ra, 36($sp)
lw $fp, 32($sp)
lw $a0, 28($sp)
lw $s1, 24($sp)
addiu $sp, $sp, 40
jr $ra


finRecursividad:

li $v1, 1 # f(0) = 1
lw  $ra, 36($sp)
lw $fp, 32($sp)
lw $a0, 28($sp)
lw $s1, 24($sp)
addiu $sp, $sp, 40
jr $ra


salida:

