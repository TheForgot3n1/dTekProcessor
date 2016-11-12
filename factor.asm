main:
	addi $a0, $0, 8
	j factor
	
	
	
	
	
factor:
	beq $a0, $0, ifZeroOrOne
	beq $a0, 1, ifZeroOrOne
	add $a2, $a0, $0			
	add $a3, $a0, $0
loop1:
	add $v1, $a3, $0
	addi $a2, $a2, -1		# a2 = n
	add $a1, $a2, $0		# a1 = n
loop2:
	add $a3, $a3, $v1
	addi $a1, $a1, -1
endofloop2:
	beq $a2, 1, endofloop1
	beq $a1, 1, loop1
	beq $0, $0, loop2
endofloop1:
	add $v0, $v1, $0
	
	
stop:
	nop
	beq $0, $0 stop
ifZeroOrOne:
	add $v0, $0, 1
	beq $0, $0, stop