

# comandos condicionais:
# beq (salte se forem iguais)
# bne (salte se não forem iguais)
# blt (salte se o primeiro for menor que o segundo)
# bgt (salte se o primeiro for maior que o segundo)
# ble (se o primeiro for menor ou igual ao segundo)
# bge (se o primeiro for maior ou igual ao segundo)

# ####################### EXEMPLO #############################
# Escrever programa em assembly e ver se é impar ou par

.data 
intro: .asciiz "Digite o número: "
par: .asciiz "par"
impar: .asciiz "impar"

.text

# exibir mensagem inicial
li $v0, 4
la $a0, intro
syscall


# receber informações do usuário
li $v0, 5
syscall


# dividir o valor de entrada por 2 para capturar,posteriormente, o resto
li $t1, 2
div $v0, $t1

# pegar o resto e atribuir do registrador hi para o registrador t0
mfhi $t2


# comparar com zero para saber se é par
beq $zero, $t2, isPar  # se for 0, o resto, vai para o rótulo isPar



# se não for par, exibe que é ímpar
li $v0, 4
la $a0, impar
syscall

# finaliza o programa
li $v0, 10
syscall 

# rótulo se for par:
isPar:
	li $v0, 4
	la $a0, par
	syscall


