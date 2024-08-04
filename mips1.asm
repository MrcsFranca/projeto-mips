.data
	soma: .asciiz "A soma é: "
	quad: .asciiz "O quadrado da soma é: "
	divi: .asciiz "O resultado da sua divisão inteira é: "
	divf: .asciiz "O resultado do resto da divisão é: "
	newline: .asciiz "\n"
.text
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	li $v0, 5
	syscall
	move $t2, $v0
	
	li $v0, 4
	la $a0, soma
	syscall
	
	add $s0, $t0, $t1
	add $s1, $t0, $t1
	
	li $v0, 1
	move $a0, $s0 
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 4
	la $a0, quad
	syscall

	mul $s3, $s0, $s1
	li $v0, 1
	move $a0, $s3
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 4
	la $a0, divi
	syscall
	
	div $s3, $t2
	mflo $s4
	li $v0, 1
	move $a0, $s4
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 4
	la $a0, divf
	syscall
	
	div $s3, $t2
	mfhi $s5
	li $v0, 1
	move $a0, $s5
	syscall
