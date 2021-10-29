#lab4.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Welcome:
    .ascii "Hello!!! Welcome all students to the prize draw.\nLucky numbers are between 1 and 100. Good luck!\n\0"
Guess:
    .ascii "The number you pick : \0" 
Award:
    .ascii "\nYou're a lucky person!!! You will get a free ticket to go to the Maroon 5 concert. Have fun!!!\n\0"
Large:
    .ascii "That is too large\n\0"
Small:
    .ascii "That is too small\n\0"

.text
.global _start

_start:
    lea  rax, Welcome
    call PrintCString

    mov  rax, 100
    call Random
    add  rax, 1
    
    mov  rbx, rax
While:
    lea  rax, Guess
    call PrintCString
    call ScanInt

    cmp  rax, rbx
    je   LuckyNumber
    jl   TooSmall
    jg   TooLarge

TooSmall:
    lea  rax, Small
    call PrintCString
   
    jmp  While

TooLarge:
    lea  rax, Large
    call PrintCString

    jmp  While

LuckyNumber:
    lea  rax, Award
    call PrintCString

    call EndProgram
