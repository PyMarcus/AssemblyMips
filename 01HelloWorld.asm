.data
#
# Área de acesso à memória principal
#

message: .asciiz "Hello, world!!!"  # a variavel mensagem recebe o tipo cadeia de caracteres com a msg

.text 
#
# Área que contém instruções do programa e utilização dos registradores do processador
#

li $v0, 4  # instrução para impressão de textos com carregamento imediato (li)
la $a0, message # instrução para carregamento da mensagem a ser impressa no registrador $a0, padrão
syscall  # executa a instrução acima.

	