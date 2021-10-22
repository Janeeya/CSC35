#Lab3.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Welcome:
    .ascii "Hello Everyone, Welcome to the preparatory program\n\0"
Options:
    .ascii "These are your options, Press 1 for Yes, Press 2 for No\nAll the questions add up to 100\n\0"
Quest1:
    .ascii "Are you preparing for the next exam?\n\0"
Quest2:
    .ascii "Are you preparing for the presentation?\n\0"
Quest3:
    .ascii "Have you finished washing the dishes?\n\0"
Quest4:
    .ascii "Did you finish math homework?\n\0"
Quest5:
    .ascii "Do you have nice clothes for the party yet?\n\0"
Quest6:
    .ascii "Are you afraid of an animal?\n\0"
Total:
    .ascii "Your total stress level is at \0"
GreatJob:
    .ascii "\nYou prepared very well, Keep going you will be win!\n\0"
Stress:
    .ascii "\nOh so sad :( You need more time for yourself. Here! this music will cheer you up. Kepp Fighting!!\n\0"

.text
.global _start

_start:
    lea  rax, Welcome
    call PrintCString
    
    lea  rax, Options
    call PrintCString

    lea  rax, Quest1
    call PrintCString
    
    call ScanInt
    cmp  rax, 2
    je   Equal1
    
    jmp  Question2

Equal1:
    mov  rax, 30
    add  rbx, rax

Question2:
    lea  rax, Quest2
    call PrintCString
    
    call ScanInt
    cmp  rax, 2
    je   Equal2
    
    jmp  Question3

Equal2:
    mov  rax, 20
    add  rbx, rax

Question3:
    lea  rax, Quest3
    call PrintCString
    
    call ScanInt
    cmp  rax, 2
    je   Equal3

    jmp  Question4

Equal3:
    mov  rax, 10
    add  rbx, rax

Question4:
    lea  rax, Quest4
    call PrintCString
    
    call ScanInt
    cmp  rax, 2
    je   Equal4

    jmp  Question5

Equal4:
    mov  rax, 20
    add  rbx, rax

Question5:
    lea  rax, Quest5
    call PrintCString
    
    call ScanInt
    cmp  rax, 2
    je   Equal5
    
    jmp  Question6

Equal5:
    mov  rax, 15
    add  rbx, rax

Question6:
    lea  rax, Quest6
    call PrintCString
    
    call ScanInt
    cmp  rax, 2
    je   Equal6
    
    jmp  TotalPoint

Equal6:
    mov  rax, 5
    add  rbx, rax

TotalPoint:
    lea  rax, Total
    call PrintCString
    mov  rax, rbx
    call PrintInt

    cmp  rax, 70
    jge  Else

    lea  rax, GreatJob
    call PrintCString
    jmp  End

Else:
    lea  rax, Stress
    call PrintCString

End:
    call EndProgram

