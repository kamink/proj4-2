	lui $r2, 0x70		#a270
	ori $r2, $r2,0x33	#7a33
	disp $r2,0		#c800

	lui $r1, 0x55		#a155
	ori $r1,$r1,0x33	#7533
	disp $r1,1		#c401
	
	
	jal last		#100a
	jr $r3			#3c00
	
	disp $r0,0		#c000	
	j finish		#200c

last:	addp8 $r0,$r1,$r2	#060a
	subp8 $r0,$r1,$r2	#060b
	

finish: sw $r0,0($r1)		#9400
	lw $r2,0($r1)		#b600
