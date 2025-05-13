# Hello World en MIPS
#
        .data
memoria:
	.word 0xabcd1234
	.ascii "hola mundo"
x:
	.word 0x00000001
Y:
	.word 0x00000004

        .text
        .globl main
        .globl __start

__start:
main:

lw $t1, X #Cargo en mi registro X
lw $t2, Y # Cargo en mi registro Y

slt $t1,$t2,$t3 #Compara X e Y, y guarda el resultado en $t3

beq $t3, 0, else #Si el resultado es 0, salta al else

add $t4, $t1, $t2

else:

sub $t4, $t1, $t2
        

# retorna al SO
        move $a0, $0
        li      $v0, 4001
        syscall


