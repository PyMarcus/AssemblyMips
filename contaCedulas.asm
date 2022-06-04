.data 
# local para acesso direto � mem�ria, aloca��o e afins
message: .asciiz "Valor da compra: "

.text
# local que cont�m instru��es 

######### declara��o de vari�veis ###########
# (Tipos de c�dulas)
li $s1, 20
li $s2, 10
li $s3, 5
li $s4, 2
li $s5, 1

# (quantidade de cada c�dula)
li $t1, 2
li $t2, 3
li $t3, 2
li $t4, 5
li $t5, 10

# (true e false)
li $s7, 1


########## Fim da declara��o de vari�veis ####


# exibe para o user a mensagem inicial:
li $v0, 4
la $a0, message
syscall

# recebe a entrada de um n�mero inteiro pelo usu�rio:
li $v0, 5  # inteiro armazenado no registrador $v0, sem acesso � mem�ria
syscall


# compara��es com base em quantidade m�nima:

# 1) verifica se o valor de entrada � maior ou igual a 20, se o for, entra no r�tulo value20:
bge $v0, $s1, value20
value20:
	# divide-se o valor de entrada por 20
	div $v0, $s1
	# pega-se o resultado da divis�o e compara com a quantidade de notas, a fim de obter o m�n
	mflo $t0  # move o resultado para $t0
	# compara o resultado da divisao, se for 1, � verdadeiro
	slt $t6, $t0, $t1
	beq $t6, $s7, true
	beq $t6, $zero, false
	# se falso, $t6 recebe o valor quantitativo:
	false:
	    move $t6, $t1  # se falso, pega o valor de t1
	    j multi        # faz o jump
	true:
	    move $t6, $t0  # se verdadeiro, t6 continua com o valor de entrada
		
	# feito isso, calculo o resultado do resto inteiro:
	multi:	
	     mul $t0, $t6, $s1
	     move $s1, $t6      # resultado salvo em s1
	     sub $t6, $v0, $t0  # valor = valor - 20 * valor m�nimo


# 2) verifica se o valor de entrada � maior ou igual a 20, se o for, entra no r�tulo value20:
move $t7, $t6
bge $t6, $s2, value10
value10:
	# divide-se o valor de entrada por 10
	div $t6, $s2
	# pega-se o resultado da divis�o e compara com a quantidade de notas, a fim de obter o m�n
	mflo $t0  # move o resultado para $t0
	# compara o resultado da divisao, se for 1, � verdadeiro
	slt $t6, $t0, $t2
	beq $t6, $s7, true1
	beq $t6, $zero, false1
	# se falso, $t6 recebe o valor quantitativo:
	false1:
	    move $t6, $t2  # se falso, pega o valor de t1
	    j multi1        # faz o jump
	true1:
	    move $t6, $t0  # se verdadeiro, t6 continua com o valor de entrada
		
	# feito isso, calculo o resultado do resto inteiro:
	multi1:	
	     mul $t0, $t6, $s2
	     move $s2, $t6      # resultado salvo em s1
	     sub $t6, $t7, $t0  # valor = valor - 10 * valor m�nimo

# 3) verifica se o valor de entrada � maior ou igual a 5, se o for, entra no r�tulo value5:
move $t7, $t6
bge $t6, $s2, value5
value5:
	# divide-se o valor de entrada por 5
	div $t6, $s3
	# pega-se o resultado da divis�o e compara com a quantidade de notas, a fim de obter o m�n
	mflo $t0  # move o resultado para $t0
	# compara o resultado da divisao, se for 1, � verdadeiro
	slt $t6, $t0, $t3
	beq $t6, $s7, true2
	beq $t6, $zero, false2
	# se falso, $t6 recebe o valor quantitativo:
	false2:
	    move $t6, $t3  # se falso, pega o valor de t1
	    j multi2        # faz o jump
	true2:
	    move $t6, $t0  # se verdadeiro, t6 continua com o valor de entrada
		
	# feito isso, calculo o resultado do resto inteiro:
	multi2:	
	     mul $t0, $t6, $s3
	     move $s3, $t6      # resultado salvo em s1
	     sub $t6, $t7, $t0  # valor = valor - 5 * valor m�nimo

# 3) verifica se o valor de entrada � maior ou igual a 2, se o for, entra no r�tulo value5:
move $t7, $t6
bge $t6, $s3, value2
value2:
	# divide-se o valor de entrada por 2
	div $t6, $s4
	# pega-se o resultado da divis�o e compara com a quantidade de notas, a fim de obter o m�n
	mflo $t0  # move o resultado para $t0
	# compara o resultado da divisao, se for 1, � verdadeiro
	slt $t6, $t0, $t4
	beq $t6, $s7, true3
	beq $t6, $zero, false3
	# se falso, $t6 recebe o valor quantitativo:
	false3:
	    move $t6, $t4  # se falso, pega o valor de t1
	    j multi3        # faz o jump
	true3:
	    move $t6, $t0  # se verdadeiro, t6 continua com o valor de entrada
		
	# feito isso, calculo o resultado do resto inteiro:
	multi3:	
	     mul $t0, $t6, $s4
	     move $s4, $t6      # resultado salvo em s1
	     sub $t6, $t7, $t0  # valor = valor - 2 * valor m�nimo

# 3) verifica se o valor de entrada � maior ou igual a 5, se o for, entra no r�tulo value5:
move $t7, $t6
bge $t6, $s5, value3
value3:
	# divide-se o valor de entrada por 1
	div $t6, $s5
	# pega-se o resultado da divis�o e compara com a quantidade de notas, a fim de obter o m�n
	mflo $t0  # move o resultado para $t0
	# compara o resultado da divisao, se for 1, � verdadeiro
	slt $t6, $t0, $t5
	beq $t6, $s7, true4
	beq $t6, $zero, false4
	# se falso, $t6 recebe o valor quantitativo:
	false4:
	    move $t6, $t5  # se falso, pega o valor de t1
	    j multi4        # faz o jump
	true4:
	    move $t6, $t0  # se verdadeiro, t6 continua com o valor de entrada
		
	# feito isso, calculo o resultado do resto inteiro:
	multi4:	
	     mul $t0, $t6, $s5
	     move $s5, $t6      # resultado salvo em s1
	     sub $t6, $t7, $t0  # valor = valor - 1 * valor m�nimo


# impress�o do resultado
li $v0, 1
move $a0, $s1
syscall	
li $v0, 1
move $a0, $s2
syscall	
li $v0, 1
move $a0, $s3
syscall	
li $v0, 1
move $a0, $s4
syscall	
li $v0, 1
move $a0, $s5
syscall		
