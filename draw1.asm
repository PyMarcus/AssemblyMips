.data 
# memory
intro: .asciiz "how much stars do u want? "
break_line: .asciiz "\n"
stars: .asciiz "*"

.text
# process

# counters
li $t0, 1 # load 1 to counter
li $t2, 1 # load -1 to counter

# user interation
li $v0, 4
la $a0, intro
syscall  # show intro

li $v0, 5
syscall # entry data

move $t1, $v0

li $v0, 4
whileT0itsSmallerThanEntry:
# loop
	la $a0, stars
	syscall
	addi $t0, $t0, 1
	

ble $t0, $t1, whileT0itsSmallerThanEntry

la $a0, break_line
syscall

# reset t0
li $t0, 1

addi $t2, $t2, 1
ble $t2, $t1, whileT0itsSmallerThanEntry
