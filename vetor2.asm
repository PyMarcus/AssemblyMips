# percorrer o vetor

.data 


	vetor: .space 20 # 20 bites (8 bytes)

.text 
	# apontando para a base do vetor
	la $t0, vetor 
	
	# setando  o print:
	li $v0, 1
	li $t1, 20  # limite de tamanho
	li $t2, 0   # indice do vetor
	
	loop:
		lw $a0, ($t0)  # carrega 32 bits para a0 no endereco de memoria de t0(aponta) #pega o valor que está no endereço de memória
		syscall # imprime na tela
		
		addi $t2, $t2, 4  # 4 bits ( de 4 em 4 bits, percorre-se o vetor)
		addi $t0, $t0, 4  # acrescenta de 4 em 4
	blt $t2, $t1, loop 

	