#Lab2.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Greeting:
    .ascii "This is your monthly income and expenses!\n\0"
Income: 
    .ascii "How much your monthly income?\n\0"
Grocery:   
    .ascii "How much is your monthly groceries?\n\0"
Rental:
    .ascii "How much is your monthly rent?\n\0"
Activity:
    .ascii "How much do you spend on your activities/games/shoping/etc per month?\n\0"
Expenses:
    .ascii "Your monthly expenses are $\0"
CashFlow:
    .ascii "\nYour cash flow is $\0"

.text
.global _start

_start:
    #PrintGreeting
    lea  rax, Greeting
    call PrintCString

    #Get User's Income
    lea  rax, Income
    call PrintCString
    call ScanInt

    #Store user's income to rcx
    mov  rcx, rax

    lea  rax, Grocery
    call PrintCString
    call ScanInt

    #add to total expenses
    add  rbx, rax

    lea  rax, Rental
    call PrintCString
    call ScanInt

    add  rbx, rax

    lea  rax, Activity
    call PrintCString
    call ScanInt

    add  rbx, rax

    lea  rax, Expenses
    call PrintCString

    mov  rax, rbx
    call PrintInt

    #Calculate Cashflow
    sub  rcx, rbx

    lea  rax, CashFlow
    call PrintCString
   
    #Print the total cashflow
    mov  rax, rcx
    call PrintInt

    call EndProgram


