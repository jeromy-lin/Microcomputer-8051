	ORG	0	;�{���q0��}�}�l
;��O����==================================================
START:	MOV	A, #FEH	;��ACC�����e��11111110
LOOP:	MOV	R0, #7	;�HR0���������p���p�ƾ�
LOOPL:	MOV	P1, A	;�qPort 1��XACC�����e
	RL	A	;�NACC�����e����
	CALL	DELAY	;�I�s����Ƶ{��
	DJNZ	R0, LOOPL	;LOOPL�j�����R0��
;��O�k��==================================================
	MOV	R0, #7	;�HR0���k�����p���p�ƾ�
LOOPR:	MOV	P1, A	;�qPort 1��XACC�����e
	RR	A	;�NACC�����e�k��
	CALL	DELAY	;�I�s����Ƶ{��
	DJNZ	R0, LOOPR	;LOOPR�j�����R0��
	JMP	LOOP	;�q�Y�}�l
;����Ƶ{��==============================================
DELAY:			;����Ƶ{��(0.1��)
	MOV	R7, #200	;R7�Ȧs�����J200����
D1:	MOV	R6, #250	;R6�Ȧs�����J250����
	DJNZ	R6, $	;���C����R6��
	DJNZ	R7, D1	;D1�j�����R7��
	RET		;��^�D�{��
	END		;�����{��
