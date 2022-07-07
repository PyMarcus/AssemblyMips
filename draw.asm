.data
	
informe: .asciiz "Informe quantos *"
ast: .asciiz "* "
bl: .asciiz "\n" # quebra linha

.text 

# contadores
li $t0, 1 
li $t1, 1

# exibe mensagem entrada de dados:
li $v0, 4
la $a0, informe
syscall

# recebe entrada de dados
li $v0, 5 
syscall 

# move valor de entrada para registrador
move $t2, $v0 

# loop para gerar *
li $v0, 4 

loop1:
    # exibe asteriscos
    
    la $a0, ast
    syscall  # exibe *
    addi $t0, $t0, 1  # adiciona ,imediatamente, o valor 1 ao contador
   
# verifica se o numero de asteriscos por linha é válido:
ble $t0, $t2, loop1  # enquanto for menor que t2(entrada)

loop2:
    # chama o loop de exibicao de asteriscos
    
    li $t0, 1  # reseta o contador 1
    la $a0, bl  # quebra linha
    syscall
    addi $t1, $t1, 1  # adiciona, imediatamente, o valor 1 ao contador
    ble $t1, $t2, loop1  # chama loop 1


ble $t1, $t2, loop2  # enquanto o segundo contador for menor que t2(entrada), executa loop
		
			
				
					
						
							
								
									
										
											
												
													
														
															
																	
