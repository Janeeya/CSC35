#Lab1.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Greeting:
    .ascii "Welcome to the Adventure World!\n\0"

Introducing:   
    .ascii "My name is Janeeya Chanta\n\0"

InspirationQuote:   
    .ascii "Be the change that you wish to see in the world.― Mahatma Gandhi\n\0"

IndependentDay:
    .ascii "In the year \0"

AmericaDay:
    .ascii " is a federal holiday in the United States commemorating the Declaration of Independence of the United States\n\0"

.text
.global _start

_start:
    lea  rax, Greeting
    call PrintCString

    lea  rax, Introducing
    call PrintCString

    lea  rax, InspirationQuote
    call PrintCString

    lea  rax, IndependentDay
    call PrintCString

    mov  rax, 1776
    call PrintInt 

    lea  rax, AmericaDay
    call PrintCString

    call EndProgram
