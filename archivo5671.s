# Hello World en MIPS

        .data
memoria:
	calcular:
.ascii "3+6"

resultado_ascii:
.byte 0	
resultado:
.byte 0

__start:
main:

la $t8, calcular

lb $t1, 0($t8)      # cargo el primer operando
lb $t2, 1($t8)    #cargo la operacion
lb $t3, 2($t8)   #cargo segundo operando

sll $t1, $t1, 4 

#desplazo 4 hacia la izquierda asi obtengo el numero

sll $t3, $t3,4 


li $t0, 43 #equivalente a suma en ascii


beq $t2, $t0, suma

sub $t5, $t1,$t4 #si no, resto t1-t4

j cargarResultado

suma: 
add $t5, $t1, $t4 #si no, los sumo

sub $t5, $t1,$t3 


cargarResultado:

li $t6, 10 #cargo 10

sb $t5, resultado #guardo en resultado

slt $t7, $t5, $t6 #Veo si es menor que 10

beq $t7, $zero, escribirN

addi $t5, 48 #le sumo 48

sb $t5, resultado_ascii

j end


escribirN:

li $t5, 78

sb $t5, resultado_ascii

end:



        

# retorna al SO
        move $a0, $0
        li      $v0, 4001
        syscall