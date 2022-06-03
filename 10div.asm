.text 

# divisão de inteiros.
li $8, 4
li $9, 3

div $10, $8, $9  # realiza a divisão
# a parte inteira vai para lo,
# o resto vai para hi

# logo, para mover de um registrador lo e hi, faz-se:
mflo $16  # move a parte inteira para s0
mfhi $17  # move do resto , hi, para s1


# dividir 32 por 2 (potencias de 2,pode-se usar shift) divisao, desloca bits para direita
li $12, 32
srl $11, $12, 2  # move o bit 32 4 vezes para a direita, resultando em 8 em $11

