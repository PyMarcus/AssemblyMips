.data 
# �rea de dados a serem especificados na mem�ria principal
caractere: .byte 'a' 

.text
# �rea para o instru��es do programa

li $2, 4  # carrega para o registrador v0 a informa��o de impress�o de string / char 
la $4, caractere   # carrega da mem�ria pro registrador o valor do char
syscall  # executa a impress�o

# obs: para encerrar o programa como um system.exit() li $v0, 10
