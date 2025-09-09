START:	MOV	A, #254	;讓ACC的內容為11111110
LOOP:	MOV	P1, A	;從Port 1輸出ACC的內容
	RL	A			;將ACC的內容左移
	CALL	DELAY	;呼叫延遲副程式
	JMP	LOOP		;跳到LOOP處執行
;===================================================	
DELAY:			;延遲副程式(0.1秒)
	MOV	R7, #200	;R7暫存器載入200次數
D1:	MOV	R6, #250	;R6暫存器載入250次數
	DJNZ	R6, $	;本列執行R6次
	DJNZ	R7, D1	;D1迴圈執行R7次
	RET		;返回主程式
	END		;結束程式
