#lab6.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Menu: 
    .ascii "Chocolate Lava Cake     :  60 grams \n"
    .ascii "Cookie Butter Milk      :  40 grams \n"
    .ascii "Ranbow Icre Cream       :  35 grams \n\0"
Chocolate: 
    .ascii "\nHow many chocolate lava cake do you take?\n\0"
Cookie: 
    .ascii "How many cookie butter milk would you prefer?\n\0"
IceCream:
    .ascii "How many ranbow ice cream do you want?\n\0"
Total:
    .ascii "\nThat's \0"
Grams:
    .ascii " grams of sugar!\n\0"
Sugar:
    .ascii "\nHow much sugar can the student have?\n\0"
CanEat:
    .ascii "\nThe student can only eat this \0"
Times:
    .ascii " times\n\0"

.text
.global _start

_start:
    lea  rax, Menu
    call PrintCString

    lea  rax, Chocolate
    call PrintCString
    call ScanInt

    mov  rbx, 60
    imul rbx
    
    add  rcx, rax

    lea  rax, Cookie
    call PrintCString
    call ScanInt

    mov  rbx, 40
    imul rbx

    add  rcx, rax

    lea  rax, IceCream
    call PrintCString
    call ScanInt

    mov  rbx, 35
    imul rbx

    add  rcx, rax

    lea  rax, Total
    call PrintCString
    
    mov  rax, rcx
    call PrintInt
    
    lea  rax, Grams
    call PrintCString

    lea  rax, Sugar
    call PrintCString
    call ScanInt

    mov  rbx, rcx

    cqo
    idiv rbx

    mov  rcx, rax

    lea  rax, CanEat
    call PrintCString
    
    mov  rax, rcx
    call PrintInt

    lea  rax, Times
    call PrintCString

    call EndProgram



