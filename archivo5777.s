# Hello World en MIPS
#
        .data
memoria:
	.word 0xabcd1234
	.ascii "hola mundo"

        .text
        .globl main
        .globl __start

__start:
main:
        li      $t1, 1
        li      $t3, 1
        add     $t0, $t1, $t3

# retorna al SO
        move $a0, $0
        li      $v0, 4001
        syscall