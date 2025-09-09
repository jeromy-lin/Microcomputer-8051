	ORG	0	;程式從0位址開始
;單燈左移==================================================
START:	MOV	A, #FEH	;讓ACC的內容為11111110
LOOP:	MOV	R0, #7	;以R0為左移的計次計數器
LOOPL:	MOV	P1, A	;從Port 1輸出ACC的內容
	RL	A	;將ACC的內容左移
	CALL	DELAY	;呼叫延遲副程式
	DJNZ	R0, LOOPL	;LOOPL迴圈執行R0次
;單燈右移==================================================
	MOV	R0, #7	;以R0為右移的計次計數器
LOOPR:	MOV	P1, A	;從Port 1輸出ACC的內容
	RR	A	;將ACC的內容右移
	CALL	DELAY	;呼叫延遲副程式
	DJNZ	R0, LOOPR	;LOOPR迴圈執行R0次
	JMP	LOOP	;從頭開始
;延遲副程式==============================================
DELAY:			;延遲副程式(0.1秒)
	MOV	R7, #200	;R7暫存器載入200次數
D1:	MOV	R6, #250	;R6暫存器載入250次數
	DJNZ	R6, $	;本列執行R6次
	DJNZ	R7, D1	;D1迴圈執行R7次
	RET		;返回主程式
	END		;結束程式
