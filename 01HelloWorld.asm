.data
#
# �rea de acesso � mem�ria principal
#

message: .asciiz "Hello, world!!!"  # a variavel mensagem recebe o tipo cadeia de caracteres com a msg

.text 
#
# �rea que cont�m instru��es do programa e utiliza��o dos registradores do processador
#

li $v0, 4  # instru��o para impress�o de textos com carregamento imediato (li)
la $a0, message # instru��o para carregamento da mensagem a ser impressa no registrador $a0, padr�o
syscall  # executa a instru��o acima.

	