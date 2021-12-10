#lab7.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Name:
    .ascii "My name is Janeeya Chanta\n\0"
Text:
    .ascii "The winter semester is over\n\0"
Done:
    .ascii "We're done!\n\0"
Victory:
    .ascii "It's not too hard to handle!\0"
Plan:    
    .ascii " Just helping family at the resturant for winter break.\n\0"
.text
.global _start

_start:
    mov rax, 1
    mov rdi, 1
    lea rsi, Name
    mov rdx, 27
    syscall

    mov rax, 1
    mov rdi, 1
    lea rsi, Text
    mov rdx, 29
    syscall
   
    call Twice
    call Twice
    call WinterBreak

Twice:
    mov rax, 1
    mov rdi, 1
    lea rsi, Done
    mov rdx, 13
    syscall
    ret

WinterBreak:    
    mov rax, 1
    mov rdi, 1
    lea rsi, Victory
    mov rdx, 28
    syscall

    mov rax, 1
    mov rdi, 1
    lea rsi, Plan
    mov rdx, 57
    syscall

    mov rax, 60
    syscall
    
    
