

# comandos condicionais:
# beq (salte se forem iguais)
# bne (salte se n�o forem iguais)
# blt (salte se o primeiro for menor que o segundo)
# bgt (salte se o primeiro for maior que o segundo)
# ble (se o primeiro for menor ou igual ao segundo)
# bge (se o primeiro for maior ou igual ao segundo)

# ####################### EXEMPLO #############################
# Escrever programa em assembly e ver se � impar ou par

.data 
intro: .asciiz "Digite o n�mero: "
par: .asciiz "par"
impar: .asciiz "impar"

.text

# exibir mensagem inicial
li $v0, 4
la $a0, intro
syscall


# receber informa��es do usu�rio
li $v0, 5
syscall


# dividir o valor de entrada por 2 para capturar,posteriormente, o resto
li $t1, 2
div $v0, $t1

# pegar o resto e atribuir do registrador hi para o registrador t0
mfhi $t2


# comparar com zero para saber se � par
beq $zero, $t2, isPar  # se for 0, o resto, vai para o r�tulo isPar



# se n�o for par, exibe que � �mpar
li $v0, 4
la $a0, impar
syscall

# finaliza o programa
li $v0, 10
syscall 

# r�tulo se for par:
isPar:
	li $v0, 4
	la $a0, par
	syscall


