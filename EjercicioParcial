        .data
memoria:

valor:
	.word 0,0,0
mensaje:
	.asciiz " El resultado de la suma de los 3 numeros es 7, y es multiplo de 2"


__start:
main:
li $t0, 0 #Contador
li $t1, 48 #Rango minimo
li $t2, 57 #Rango maximo

li $t5, 0 #Contador de valores

for: 
lb $t4, mensaje($t0)

beq $t4, $zero, fin
bge $t1, $t4, aumentar #Si $t1 >= $t4, aumenta
ble $t2, $t4, aumentar #Si $t2 <= $t4, aumenta

sw $t4, valores($t5) #Guardo mi numero

addi $t5, 4 #Le sumo un word
aumentar:
addi $t0, 1

j for

fin:

