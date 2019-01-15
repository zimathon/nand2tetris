// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@i
M=0 // i=0

@result // refers to another location
M=0

(LOOP)
        @i
        D=M // D=8
        @R1
        D=D-M // D=i-R1
        @END
        D;JEQ // (i-100)>0 goto END

        @result
        D=M // D=i
        @R0
        D=D+M // D=i+R0
        @result
        M=D // result = result+b
(END)
        @result
        D=M
        @R2
        M=D // R2 = result
        @END
        0; JMP // infinite loop