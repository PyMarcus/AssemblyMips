# ler idade e imprim�-la:
.data 
 
message_to_user: .asciiz "Informe a sua idade: "   # mensagem a ser exibida na tela, armazenada na mem�ria principal

.text 

li $v0, 4  # imprime strings
la $a0, message_to_user  # carrega da mem�ria o texto a ser impresso
syscall


li $v0, 5  # instru��o para entrada de inteiro
syscall   # l� o inteiro, e o armazena em v0

move $v1, $v0  # armazena o cont�do de v0 em v1

li $v0, 1  # indica a impressao de um inteiro
move $a0, $v1  # instru��o para imprimir um inteiro
#la $a0, $v0  # registrador a0, padr�o, para exibi��o ; exibe o conte�do de v0
syscall

