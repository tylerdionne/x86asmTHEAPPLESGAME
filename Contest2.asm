INCLUDE Irvine32.inc
includelib Winmm.lib 

.data
floor BYTE "_______________________________________________________________________________________________________________________",0
roof BYTE "_______________________________________________________________________________________________________________________",0
side BYTE "|",0

; apple drawing lines definition
;apple1 BYTE "                         .",0
apple2 BYTE "                         .OO",0
apple3 BYTE "                       .OOOO",0
apple4 BYTE "                      .OOOO'",0
apple5 BYTE "                      OOOO'          .-~~~~-.",0
apple6 BYTE "                      OOO'          /   (o)(o)",0
apple7 BYTE "              .OOOOOO `O .OOOOOOO. /      .. |",0
apple8 BYTE "          .OOOOOOOOOOOO OOOOOOOOOO/\    \____/",0
apple9 BYTE "        .OOOOOOOOOOOOOOOOOOOOOOOO/ \\   ,\_/",0
apple10 BYTE "       .OOOOOOO%%OOOOOOOOOOOOO(#/\     /.",0
apple11 BYTE "      .OOOOOO%%%OOOOOOOOOOOOOOO\ \\  \/OO.",0
apple12 BYTE "     .OOOOO%%%%OOOOOOOOOOOOOOOOO\   \/OOOO.",0
apple13 BYTE "     OOOOO%%%%OOOOOOOOOOOOOOOOOOO\_\/\OOOOO",0
apple14 BYTE "     OOOOO%%%OOOOOOOOOOOOOOOOOOOOO\###)OOOO",0
apple15 BYTE "     OOOOOO%%OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO",0
apple16 BYTE "     OOOOOOO%OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO",0
apple17 BYTE "     `OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'",0
apple18 BYTE "   .-~~\OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'",0
apple19 BYTE "  / _/  `\(#\OOOOOOOOOOOOOOOOOOOOOOOOOOOO'",0
apple20 BYTE " / / \  / `~~\OOOOOOOOOOOOOOOOOOOOOOOOOO'",0
apple21 BYTE "|/'  `\//  \\ \OOOOOOOOOOOOOOOOOOOOOOOO'",0
apple22 BYTE " `-.__\_,\OOOOOOOOOOOOOOOOOOOOO'",0
apple23 BYTE "           `OO\#)OOOOOOOOOOOOOOOOOOO'",0
apple24 BYTE "             `OOOOOOOOO''OOOOOOOOO'",0
apple25 BYTE "               `""""""'  `""""""'",0

win1 BYTE "                 ,----..                                                          ,--. ",0                                                                                      
win2 BYTE "                /   /   \                                   .---.   ,---,       ,--.'| ",0
win3 BYTE "        ,---,  /   .     :          ,--,                   /. ./|,`--.' |   ,--,:  : | ",0 
win4 BYTE "       /_ ./| .   /   ;.  \       ,'_ /|               .--'.  ' ;|   :  :,`--.'`|  ' : ",0 
win5 BYTE " ,---, |  ' :.   ;   /  ` ;  .--. |  | :              /__./ \ : |:   |  '|   :  :  | |",0 
win6 BYTE "/___/ \.  : |;   |  ; \ ; |,'_ /| :  . |          .--'.  '   \' .|   :  |:   |   \ | :",0 
win7 BYTE " .  \  \ ,' '|   :  | ; | '|  ' | |  . .         /___/ \ |    ' ''   '  ;|   : '  '; | ",0 
win9 BYTE "  \  ;  `  ,'.   |  ' ' ' :|  | ' |  | |         ;   \  \;      :|   |  |'   ' ;.    ; ",0 
win10 BYTE "   \  \    ' '   ;  \; /  |:  | | :  ' ;          \   ;  `      |'   :  ;|   | | \   | ",0 
win11 BYTE "    '  \   |  \   \  ',  / |  ; ' |  | '           .   \    .\  ;|   |  ''   : |  ; .' ",0 
win12 BYTE "     \  ;  ;   ;   :    /  :  | : ;  ; |            \   \   ' \ |'   :  ||   | '`--'  ",0
win13 BYTE "      :  \  \   \   \ .'   '  :  `--'   \            :   '  |--' ;   |.' '   : | ",0
win14 BYTE "       \  ' ;    `---`     :  ,      .-./             \   \ ;    '---'   ;   |.' ",0
win15 BYTE "        `--`                `--`----'                  '---'             '---'    ",0


lose1 BYTE "                                                    ,--,                                       ", 0    
lose2 BYTE "                 ,----..                         ,---.'|       ,----..                         ", 0  
lose3 BYTE "                /   /   \                        |   | :      /   /   \   .--.--.       ,---,. ", 0  
lose4 BYTE "        ,---,  /   .     :          ,--,         :   : |     /   .     : /  /    '.   ,'  .' | ", 0  
lose5 BYTE "       /_ ./| .   /   ;.  \       ,'_ /|         |   ' :    .   /   ;.  \  :  /`. / ,---.'   | ", 0  
lose6 BYTE " ,---, |  ' :.   ;   /  ` ;  .--. |  | :         ;   ; '   .   ;   /  ` ;  |  |--`  |   |   .' ", 0  
lose7 BYTE "/___/ \.  : |;   |  ; \ ; |,'_ /| :  . |         '   | |__ ;   |  ; \ ; |  :  ;_    :   :  |-, ", 0  
lose8 BYTE " .  \  \ ,' '|   :  | ; | '|  ' | |  . .         |   | :.'||   :  | ; | '\  \    `. :   |  ;/| ", 0  
lose9 BYTE "  \  ;  `  ,'.   |  ' ' ' :|  | ' |  | |         '   :    ;.   |  ' ' ' : `----.   \|   :   .' ", 0  
lose10 BYTE "   \  \    ' '   ;  \; /  |:  | | :  ' ;         |   |  ./ '   ;  \; /  | __ \  \  ||   |  |-, ", 0  
lose11 BYTE "    '  \   |  \   \  ',  / |  ; ' |  | '         ;   : ;    \   \  ',  / /  /`--'  /'   :  ;/| ", 0  
lose12 BYTE "     \  ;  ;   ;   :    /  :  | : ;  ; |         |   ,/      ;   :    / '--'.     / |   |    \ ", 0  
lose13 BYTE "      :  \  \   \   \ .'   '  :  `--'   \        '---'        \   \ .'    `--'---'  |   :   .' ", 0  
lose14 BYTE "       \  ' ;    `---`     :  ,      .-./                      `---`                |   | ,'   ", 0  
lose15 BYTE "        `--`                `--`----'                                               `----'   ", 0

eatenstring BYTE "APPLES EATEN: ",0
score BYTE 0
winscorestring BYTE "SCORE TO WIN: ",0

losestring BYTE "YOU LOSE!!!!!!!!!!!!!!!!!!",0
winstring BYTE "YOU WON!!!!!!!!!!!!!!!!!!!!",0

; by default the player will be at 58,14
xpos BYTE 58
ypos BYTE 14

xapplepos BYTE ?
yapplepos BYTE ?
xpoisonapple BYTE ?
ypoisonapple BYTE ?

; do not know what the input character is 
userinput BYTE ?

winscore BYTE ?

titlestring BYTE "THE APPLES GAME",0
titlestringc2 BYTE "LOADING",0
titlestringc22 BYTE ".",0

PlaySound PROTO, 
	pszSound:PTR BYTE, 
	hmod:DWORD, 
	fdwSound:DWORD 

loseend BYTE "C:\Users\hashway\Downloads\loseend.wav",0  
winend BYTE "C:\Users\hashway\Downloads\winend.wav",0 

.code

main PROC
	; show the title screen
	mov dl, 45
	mov dh, 5
	call Gotoxy
	mov edx, OFFSET titlestring
	; want green text for title screen
	mov eax, white + (black * 16)
	call SetTextColor
	call WriteString

	;mov dl, 25
	;mov dh, 6
	;call Gotoxy
	;mov edx, OFFSET apple1
	;mov eax, green + (black * 16)
	;call SetTextColor
	;call WriteString

	mov dl, 27
	mov dh, 7
	call Gotoxy
	mov edx, OFFSET apple2
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 8
	call Gotoxy
	mov edx, OFFSET apple3
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 9
	call Gotoxy
	mov edx, OFFSET apple4
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 10
	call Gotoxy
	mov edx, OFFSET apple5
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 11
	call Gotoxy
	mov edx, OFFSET apple6
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 12
	call Gotoxy
	mov edx, OFFSET apple7
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 13
	call Gotoxy
	mov edx, OFFSET apple8
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 14
	call Gotoxy
	mov edx, OFFSET apple9
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 15
	call Gotoxy
	mov edx, OFFSET apple10
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 16
	call Gotoxy
	mov edx, OFFSET apple11
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 17
	call Gotoxy
	mov edx, OFFSET apple12
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 18
	call Gotoxy
	mov edx, OFFSET apple13
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 19
	call Gotoxy
	mov edx, OFFSET apple14
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 20
	call Gotoxy
	mov edx, OFFSET apple15
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 21
	call Gotoxy
	mov edx, OFFSET apple16
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 22
	call Gotoxy
	mov edx, OFFSET apple17
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 23
	call Gotoxy
	mov edx, OFFSET apple18
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 24
	call Gotoxy
	mov edx, OFFSET apple18
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 25
	call Gotoxy
	mov edx, OFFSET apple19
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 26
	call Gotoxy
	mov edx, OFFSET apple19
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 27
	call Gotoxy
	mov edx, OFFSET apple20
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 28
	call Gotoxy
	mov edx, OFFSET apple21
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 29
	call Gotoxy
	mov edx, OFFSET apple22
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 30
	call Gotoxy
	mov edx, OFFSET apple23
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 31
	call Gotoxy
	mov edx, OFFSET apple24
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	mov dl, 27
	mov dh, 32
	call Gotoxy
	mov edx, OFFSET apple25
	mov eax, green + (black * 16)
	call SetTextColor
	call WriteString

	; loading at the bottom with delays
	mov dl, 45
	mov dh, 34
	call Gotoxy
	mov edx, OFFSET titlestringc2
	mov eax, white + (black * 16)
	call SetTextColor
	call WriteString

	mov eax, 300
	call Delay
	mov dl, 53
	mov dh, 34
	mov edx, OFFSET titlestringc22
	mov eax, white + (black * 16)
	call SetTextColor
	call WriteString

	mov eax, 300 
	call Delay
	mov dl, 54
	mov dh, 34
	mov edx, OFFSET titlestringc22
	mov eax, white + (black * 16)
	call SetTextColor
	call WriteString

	mov eax, 300 
	call Delay
	mov dl, 55
	mov dh, 34
	mov edx, OFFSET titlestringc22
	mov eax, white + (black * 16)
	call SetTextColor
	call WriteString

	mov eax, white + (black * 16)
	call SetTextColor

	; delay so it seems like its loading 
	mov eax, 2000
	call Delay
	call ClrScr
	mov eax, white (black * 16)
	call SetTextColor

	; done loading/ title screen

    ; DRAWING THE GROUND
    ; set x and y coordinates for the floor
	mov eax, blue + (black * 16)
	call SetTextColor
    mov dl, 0
    mov dh, 28
	call Gotoxy
	mov edx, OFFSET floor
	; write string keep reading from edx register until comes across 0
	call WriteString

	; DRAWING THE ROOF
    ; set x and y coordinates for the floor
    mov dl, 0
    mov dh, 0
	call Gotoxy
	mov edx, OFFSET roof
	; write string keep reading from edx register until comes across 0
	call WriteString

	;draw sides x = 0 y = 1 -> 27 and x = 119 y = 1 - > 27
	mov dl, 0
    mov dh, 1
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 2
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 3
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 4
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 5
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 6
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 7
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 8
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 9
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 10
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 11
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 12
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 13
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 14
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 15
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 16
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 17
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 18
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 19
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 20
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 21
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 22
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 23
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 24
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 25
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 26
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 27
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 0
    mov dh, 28
	call Gotoxy
	mov edx, OFFSET side
	call WriteString

	mov dl, 118
    mov dh, 1
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 2
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 3
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 4
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 5
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 6
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 7
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 8
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 9
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 10
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 11
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 12
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 13
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 14
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 15
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 16
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 17
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 18
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 19
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 20
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 21
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 22
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 23
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 24
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 25
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 26
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 27
	call Gotoxy
	mov edx, OFFSET side
	call WriteString
	mov dl, 118
    mov dh, 28
	call Gotoxy
	mov edx, OFFSET side
	call WriteString

	mov eax, white + (black * 16)


	call drawPlayer

	call makeapple
	call drawapple

	call makepoisonapple
	call drawpoisonapple

	call getwinscore


	game:
		mov eax, white (black * 16)
		call SetTextColor
		; draw the score string and number
		mov dl, 1
		mov dh, 1
		call Gotoxy
		mov edx, OFFSET eatenstring
		call WriteString
		mov al, score
		add al, '0'
		call WriteChar

		; draw score needed to win
		mov dl, 1
		mov dh, 2
		call Gotoxy
		mov edx, OFFSET winscorestring
		call WriteString
		mov al, winscore
		add al, '0'
		call WriteChar

		; make sure not hitting bounds
		mov bl, 0
		cmp bl, ypos
		jne noty1
		jmp gameover
		noty1:
		mov bl, 28
		cmp bl, ypos
		jne noty2
		jmp gameOver
		noty2:

		mov bl, 0
		cmp bl, xpos
		jne notx1
		jmp gameOver
		notx1:
		mov bl, 118
		cmp bl, xpos
		jne notx2
		jmp gameOver
		notx2:

		; if user on the apple gets a point
		; if not on a apple jump to nopoint
		mov bl, xpos
		cmp bl, xapplepos
		jne nopoint
		mov bl, ypos
		cmp bl, yapplepos
		jne nopoint
		; else increment the score and make new apple
		inc score
		mov bl, score
		cmp bl, winscore
		je gameWin
		call makeapple
		call drawapple
		mov eax, white (black * 16)
		call SetTextColor
		; draw a new poison apple and get rid of old one
		mov dl, xpoisonapple
        mov dh, ypoisonapple
	    call Gotoxy
		mov al, " "
	    call WriteChar
		call makepoisonapple
	    call drawpoisonapple
		mov eax, white (black * 16)
		call SetTextColor

		nopoint:

		; if user on a Poison Apple game over
		mov bl, xpos
		cmp bl, xpoisonapple
		jne safe
		mov bl, ypos
		cmp bl, ypoisonapple
		jne safe
		; if ate poison apple game is over
		jmp gameOver

		safe:

		;USER INPUT/MOVEMENT
		; get the key input from the user
		call ReadChar
		mov userinput, al

		; if the user types in X exit the game
		cmp userinput, "x"
		je exitGame

		; use wasd to move up, down, left and right
		cmp userinput, "w"
		je moveUp

		cmp userinput, "s"
		je moveDown

		cmp userinput, "a"
		je moveLeft

		cmp userinput, "d"
		je moveRight

		; decrememt y position to move player up
		moveUp:
			call updatelocation
			dec ypos
			call drawPlayer
			jmp game
		; increment y position to move player down
		moveDown:
			call updatelocation
			inc ypos
			call drawPlayer
			jmp game
		; decrement the x position to move the player left
		moveLeft:
			call updatelocation
			dec xpos
			call drawPlayer
			jmp game
		; increment the x position to move the player right
		moveRight:
			call updatelocation
			inc xpos
			call drawPlayer
			jmp game

	jmp game

	; if the player looses clear the screen display the winstring and exit
	gameOver:
		call ClrScr
		mov eax, red + (black * 16)
		call SetTextColor
		mov dl, 10
		mov dh, 5
		call Gotoxy
		mov edx, OFFSET lose1
		call WriteString
		mov dl, 10
		mov dh, 6
		call Gotoxy
		mov edx, OFFSET lose2
		call WriteString
		mov dl, 10
		mov dh, 7
		call Gotoxy
		mov edx, OFFSET lose3
		call WriteString
		mov dl, 10
		mov dh, 8
		call Gotoxy
		mov edx, OFFSET lose4
		call WriteString
		mov dl, 10
		mov dh, 9
		call Gotoxy
		mov edx, OFFSET lose5
		call WriteString
		mov dl, 10
		mov dh, 10
		call Gotoxy
		mov edx, OFFSET lose6
		call WriteString
		mov dl, 10
		mov dh, 11
		call Gotoxy
		mov edx, OFFSET lose7
		call WriteString
		mov dl, 10
		mov dh, 12
		call Gotoxy
		mov edx, OFFSET lose8
		call WriteString
		mov dl, 10
		mov dh, 13
		call Gotoxy
		mov edx, OFFSET lose9
		call WriteString
		mov dl, 10
		mov dh, 14
		call Gotoxy
		mov edx, OFFSET lose10
		call WriteString
		mov dl, 10
		mov dh, 15
		call Gotoxy
		mov edx, OFFSET lose11
		call WriteString
		mov dl, 10
		mov dh, 16
		call Gotoxy
		mov edx, OFFSET lose12
		call WriteString
		mov dl, 10
		mov dh, 17
		call Gotoxy
		mov edx, OFFSET lose13
		call WriteString
		mov dl, 10
		mov dh, 18
		call Gotoxy
		mov edx, OFFSET lose14
		call WriteString
		mov dl, 10
		mov dh, 19
		call Gotoxy
		mov edx, OFFSET lose15
		call WriteString

		mov eax, white + (black * 16)
		call SetTextColor

		INVOKE PlaySound, OFFSET loseend, NULL,0h 

		jmp exitgame
	
	; if the player wins clear the screen display the winstring and exit
	gameWin:
		call ClrScr

		mov eax, green + (black * 16)
		call SetTextColor

		mov dl, 10
		mov dh, 5
		call Gotoxy
		mov edx, OFFSET win1
		call WriteString
		mov dl, 10
		mov dh, 6
		call Gotoxy
		mov edx, OFFSET win2
		call WriteString
		mov dl, 10
		mov dh, 7
		call Gotoxy
		mov edx, OFFSET win3
		call WriteString
		mov dl, 10
		mov dh, 8
		call Gotoxy
		mov edx, OFFSET win4
		call WriteString
		mov dl, 10
		mov dh, 9
		call Gotoxy
		mov edx, OFFSET win5
		call WriteString
		mov dl, 10
		mov dh, 10
		call Gotoxy
		mov edx, OFFSET win6
		call WriteString
		mov dl, 10
		mov dh, 11
		call Gotoxy
		mov edx, OFFSET win7
		call WriteString
		mov dl, 10
		mov dh, 12
		call Gotoxy
		mov edx, OFFSET win9
		call WriteString
		mov dl, 10
		mov dh, 13
		call Gotoxy
		mov edx, OFFSET win10
		call WriteString
		mov dl, 10
		mov dh, 14
		call Gotoxy
		mov edx, OFFSET win11
		call WriteString
		mov dl, 10
		mov dh, 15
		call Gotoxy
		mov edx, OFFSET win12
		call WriteString
		mov dl, 10
		mov dh, 16
		call Gotoxy
		mov edx, OFFSET win13
		call WriteString
		mov dl, 10
		mov dh, 17
		call Gotoxy
		mov edx, OFFSET win14
		call WriteString
		mov dl, 10
		mov dh, 18
		call Gotoxy
		mov edx, OFFSET win15
		call WriteString

		mov eax, white + (black * 16)
		call SetTextColor

		INVOKE PlaySound, OFFSET winend, NULL,0h 

		jmp exitgame


	exitgame:
		exit
main ENDP

drawPlayer PROC
    mov dl, xpos
    mov dh, ypos
	call Gotoxy
	mov eax, blue + (black * 16)
	call SetTextColor
	mov al, "X"
	; write char takes character put in al register and writes it to screen
	call WriteChar
	ret

drawPlayer ENDP

; DRAWS BLANKS IN THE PLAYERS TRAIL
updatelocation PROC
	mov dl, xpos
    mov dh, ypos
	call Gotoxy
	mov al, " "
	; write char takes character put in al register and writes it to screen
	call WriteChar
	ret
updatelocation ENDP

; DRAWS A RANDOM APPLE ON THE SCREEN 
drawapple PROC
	; want the apple to be red
	mov eax, red (red * 16)
	call SetTextColor
	mov dl, xapplepos
	mov dh, yapplepos
	call Gotoxy
	mov al, "O"
	call WriteChar
	ret
drawapple ENDP

; GETS THE COORDINATES FOR APPLE
makeapple PROC
	; move range we want into eax 
	mov eax, 70
	; generates random number in that range
	call RandomRange
	mov xapplepos, al
	; move range we want into eax
	mov eax, 20
	; generates random number in that range
	call RandomRange
	mov yapplepos, al
	add yapplepos, 5
	ret
makeapple ENDP

; DRAWS A RANDOM POISON APPLE ON THE SCREEN 
drawpoisonapple PROC
	; want poison apples to be green
	mov eax, green (green * 16)
	call SetTextColor
	mov dl, xpoisonapple
	mov dh, ypoisonapple
	call Gotoxy
	mov al, "O"
	call WriteChar
	ret
drawpoisonapple ENDP

; GETS THE COORDINATES FOR POISON APPLE
makepoisonapple PROC
	; move range we want into eax 
	mov eax, 70
	; generates random number in that range
	call RandomRange
	mov xpoisonapple, al
	; move range we want into eax
	mov eax, 20
	; generates random number in that range
	call RandomRange
	mov ypoisonapple, al
	add ypoisonapple, 5
	ret
makepoisonapple ENDP

getwinscore PROC
	mov eax, 10
	; generates random number in that range
	call RandomRange
	mov winscore, 5
	ret
getwinscore ENDP

END main