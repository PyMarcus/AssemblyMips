.data 

	texto: .ascii "ola"
	breakline: .ascii "\n"

.text 
	# objetivo: imprimir ol� 10 vezes:
	li $t0, 0  # contador
	loop:
		li $v0, 4 
		la $a0, texto 
		syscall
		addi $t0, $t0, 1  # adiciona a t0 mais uma unidade
		la $a0, breakline
		syscall
		

	ble $t0,9, loop  # verifica se � menor que 10 o contador, se for, executa o loop

