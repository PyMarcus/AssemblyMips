
.text 
# para adicionar, utiliza-se a instru��o add com 3 operandos
# basicamente, utiliza-se os registradores tempor�rios t1-t9

# carregando as vari�veis:
li $8, 5 # t0
li $9, 4 # t1

li $2, 1  # indica que quero realizar uma impress�o
add $8, $8, $9  # somar 4 e 5 e atribuir ao registrador $t0

# para adicionar registradores, usa-se add, para somar inteiros,diretamente, addi