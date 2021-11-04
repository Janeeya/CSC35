#lab5.s
#Janeeya Chanta CSC 35-07

.intel_syntax noprefix
.data

Welcome:
    .ascii "Welcome to Cat Lovers Club Vending Status\n\0"
Food:
    .ascii "\n1. Food & Treats (85 tokens)\n\0"
Food2:
    .ascii "\nFood & Treats (85 tokens)\n\0"
Furniture:
    .ascii "2. Cat Furniture (125 tokens)\n\0"
Furniture2:
    .ascii "\nCat Furniture (125 tokens)\n\0"
Toys:
    .ascii "3. Toys & Fun stuff (60 tokens)\n\0"
Toys2:
    .ascii "\nToys & Fun stuff (60 tokens)\n\0"
Clothes:
    .ascii "4. Cat Clothes & Outfits (75 tokens)\n\0"
Clothes2:
    .ascii "\nCat Clothes & Outfits (75 tokens)\n\0"
Health:
    .ascii "5. Health & Wellness (140 tokens)\n\0"
Health2:
    .ascii "\nHealth & Wellness (140 tokens)\n\0"
Cancel:
    .ascii "6. Cancel the order (0 tokens)\n\0"
Cancel2:
    .ascii "\nCancel the order (0 tokens)\n\0"
Spending:
    .ascii "\nHow many tokens are you spending?\n\0"
Selection:
    .ascii "\nEnter your selection: \n\0"
Change:
    .ascii "\nYour change is \0"
Tokens:
    .ascii " tokens.\n\0"
Default:
    .ascii "Your little cat is waiting for you, GO home now!!!\n\0"
.text
.global _start

_start:
    lea  rax, Welcome
    call PrintCString

    lea  rax, Food
    call PrintCString

    lea  rax, Furniture
    call PrintCString

    lea  rax, Toys
    call PrintCString

    lea  rax, Clothes
    call PrintCString

    lea  rax, Health
    call PrintCString

    lea  rax, Cancel
    call PrintCString

    lea  rax, Spending
    call PrintCString
    call ScanInt

    mov  rbx, rax

    lea  rax, Selection
    call PrintCString
    call ScanInt

    cmp  rax, 1
    je   PrintFood
    cmp  rax, 2
    je   PrintFurniture
    cmp  rax, 3
    je   PrintToys
    cmp  rax, 4
    je   PrintClothes
    cmp  rax, 5
    je   PrintHealth
    cmp  rax, 6 
    je   PrintCancel
    jmp  PrintDefault

PrintFood:
    lea  rax, Food2
    call PrintCString
    lea  rax, Change
    call PrintCString

    sub  rbx, 85
    mov  rax, rbx
    call PrintInt
    
    lea  rax, Tokens
    call PrintCString
    jmp  End

PrintFurniture:
    lea  rax, Furniture2
    call PrintCString
    lea  rax, Change
    call PrintCString

    sub  rbx, 125
    mov  rax, rbx
    call PrintInt

    lea  rax, Tokens
    call PrintCString
    jmp  End

PrintToys:
    lea  rax, Toys2
    call PrintCString    
    lea  rax, Change
    call PrintCString

    sub  rbx, 60
    mov  rax, rbx
    call PrintInt

    lea  rax, Tokens
    call PrintCString
    jmp  End

PrintClothes:
    lea  rax, Clothes2
    call PrintCString  
    lea  rax, Change
    call PrintCString
    
    sub  rbx, 75
    mov  rax, rbx
    call PrintInt
    
    lea  rax, Tokens
    call PrintCString
    jmp  End

PrintHealth:
    lea  rax, Health2
    call PrintCString   
    lea  rax, Change
    call PrintCString
    
    sub  rbx, 140
    mov  rax, rbx
    call PrintInt
    
    lea  rax, Tokens
    call PrintCString
    jmp  End

PrintCancel:
    lea  rax, Cancel2
    call PrintCString   
    lea  rax, Change
    call PrintCString
    
    sub  rbx, 0
    mov  rax, rbx
    call PrintInt
    
    lea  rax, Tokens
    call PrintCString
    jmp  End

PrintDefault:
    lea  rax, Default
    call PrintCString
    jmp  End

End:
    call EndProgram

