.text 

# mover bits para a esquerda ou para a direita.

# para isso, evidentemente, utiliza-se pot�ncias de 2.

# multiplica-se para shifts � esquerda
# divide para shifts � direita

# exemplo 0010 shift para a esquerda => 0100 ou seja, de 2 vira 4

li $8, 2 # valor a ser aplicado o shift.
li $9, 4 # vari�vel que armazenar� o shift.
sll $17, $t8, 1  # $8 armazena o resultado de $s1 com o shift left de 1 casa.
