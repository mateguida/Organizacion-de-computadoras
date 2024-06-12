;13) Dada la frase "Organización y la Computación", almacenada en la memoria,
;escriba un programa que determine cuantas letras ‘a’ seguidas de ‘c’ hay en ella.
ORG 1000H
FRASE DB "Organizacion de computadoras"
FINFRASE DB ?

ORG 2000H
MOV CX, 0
MOV DX, 0
MOV CX, OFFSET FINFRASE - OFFSET FRASE
MOV BX, OFFSET FRASE
LOOP: CMP byte ptr[BX], 61h 
JZ HayA
INC BX
DEC CX
JZ FIN
JMP LOOP
HayA: INC BX
CMP byte ptr[BX], 63h
JZ AC
DEC CX
JZ FIN
JMP LOOP
AC: INC DX
JMP LOOP
FIN: HLT
END
