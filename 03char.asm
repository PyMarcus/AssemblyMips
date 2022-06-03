.data 
# Área de dados a serem especificados na memória principal
caractere: .byte 'a' 

.text
# área para o instruções do programa

li $2, 4  # carrega para o registrador v0 a informação de impressão de string / char 
la $4, caractere   # carrega da memória pro registrador o valor do char
syscall  # executa a impressão

# obs: para encerrar o programa como um system.exit() li $v0, 10
