START:	MOV	A, #254	;��ACC�����e��11111110
LOOP:	MOV	P1, A	;�qPort 1��XACC�����e
	RL	A			;�NACC�����e����
	CALL	DELAY	;�I�s����Ƶ{��
	JMP	LOOP		;����LOOP�B����
;===================================================	
DELAY:			;����Ƶ{��(0.1��)
	MOV	R7, #200	;R7�Ȧs�����J200����
D1:	MOV	R6, #250	;R6�Ȧs�����J250����
	DJNZ	R6, $	;���C����R6��
	DJNZ	R7, D1	;D1�j�����R7��
	RET		;��^�D�{��
	END		;�����{��
