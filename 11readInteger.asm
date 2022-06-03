# ler idade e imprimí-la:
.data 
 
message_to_user: .asciiz "Informe a sua idade: "   # mensagem a ser exibida na tela, armazenada na memória principal

.text 

li $v0, 4  # imprime strings
la $a0, message_to_user  # carrega da memória o texto a ser impresso
syscall


li $v0, 5  # instrução para entrada de inteiro
syscall   # lê o inteiro, e o armazena em v0

move $v1, $v0  # armazena o contúdo de v0 em v1

li $v0, 1  # indica a impressao de um inteiro
move $a0, $v1  # instrução para imprimir um inteiro
#la $a0, $v0  # registrador a0, padrão, para exibição ; exibe o conteúdo de v0
syscall

