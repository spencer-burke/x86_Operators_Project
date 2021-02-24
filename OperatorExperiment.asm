section .data
; Successful operation
SUCCESS equ 0
SYS_exit equ 60

bAns1 db 0
bAns2 db 0
bAns3 db 0
bAns4 db 0
bAns5 db 0
bAns6 db 0
bAns7 db 0
bAns8 db 0
bAns9 db 0

bRem1 db 0

wAns1 dw 0
wAns2 dw 0
wAns3 dw 0

bNum1 db 32
bNum2 db 16 
bNum3 db 8 
bNum4 db 4 

wNum dw 34

section .text
global _start
_start:

; bAns1 = bNum1 + bNum2
mov al, byte [bNum1]
mov bl, byte [bNum2]
add byte [bAns1], al
add byte [bAns1], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns2 = bNum1 + bNum3
mov al, byte [bNum1]
mov bl, byte [bNum3]
add byte [bAns2], al
add byte [bAns2], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns3 = bNum3 + bNum4
mov al, byte [bNum3]
mov bl, byte [bNum4]
add byte [bAns3], al
add byte [bAns3], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns4 = bNum1 - bNum2
mov al, byte [bNum1]
mov bl, byte [bNum2]
add byte [bAns4], al
sub byte [bAns4], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns5 = bNum1 - bNum3
mov al, byte [bNum1]
mov bl, byte [bNum3]
add byte [bAns5], al
sub byte [bAns5], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns6 = bNum2 - bNum4 
mov al, byte [bNum2]
sub al, byte [bNum4]
mov byte[bAns6], al
; zero out the registers for more operations
xor al, al

; bAns7 = bNum1 / bNum2
movzx ax, byte [bNum1]
div byte [bNum2]
mov byte [bAns7], al
; zero out the registers for more operations
xor al, al

; bAns8 = bNum3 / bNum4
mov al, byte [bNum3]
div byte [bNum4]
mov byte [bAns8], al
; zero out the registers for more operations
xor ax, ax

; bAns9 = wNum1 / bNum4
; bRem1 = wNum1 % bNum4
mov ax, word [wNum]
div byte [bNum4]
mov byte [bAns9], al 
mov byte [bRem1], ah 
; zero out the registers for more operations
xor ax, ax

;wAns1 = bNum1 *bNum3
movzx ax, byte [bNum1]
movzx bx, byte [bNum3]
mul bx
mov word [wAns1], ax
; zero out the registers for more operations
xor ax, ax
xor bx, bx

;wAns2 = bNum2 * bNum2
movzx ax, byte [bNum2]
movzx bx, byte [bNum2]
mul bx
mov word [wAns2], ax
; zero out the registers for more operations
xor ax, ax
xor bx, bx

;wAns3 = bNum2 * bNum4
movzx ax, byte [bNum2]
movzx bx, byte [bNum4]
mul bx
mov word [wAns3], ax
; zero out the registers for more operations
xor ax, ax
xor bx, bx

last:    
    ; Call code for exit
    mov     rax, SYS_exit 
    ; Exit program with success
    mov     rdi, SUCCESS 
    syscall

