; Operations that will be completed
; bAns1 = bNum1 + bNum2
; bAns2 = bNum1 + bNum3
; bAns3 = bNum3 + bNum4
; bAns6 = bNum1 - bNum2
; bAns7 = bNum1 - bNum3
; bAns8 = bNum2 - bNum4
; wAns11 = bNum1 * bNum3
; wAns12 = bNum2 * bNum2
; wAns13 = bNum2 * bNum4
; bAns16 = bNum1 / bNum2
; bAns17 = bNum3 / bNum4
; bAns18 = wNum1 / bNum4
; bRem18 = wNum1 % bNum4
section .data
; Successful operation
SUCCESS equ 0
SYS_exit equ 60
bAns1 db 0
bAns2 db 0
bAns3 db 0
bAns6 db 0
bAns7 db 0
bAns8 db 0

wAns1 dw 0
wAns2 dw 0
wAns3 dw 0

bAns16 db 0
bAns17 db 0
bAns18 db 0
bRem18 db 0

bNum1 db 32
bNum2 db 16
bNum3 db 8
bNum4 db 4

section .text
global _start
_start:
; bAns1 = bNum1 + bNum2
mov al, byte [bNum1]
add al, byte [bNum2]
mov byte [bAns1], al
; zero out the registers
xor al al

; bAns2 = bNum1 + bNum3
mov al, byte [bNum1]
add al, byte [bNum3]
mov byte [bAns2], al
; zero out the registers
xor al al

; bAns3 = bNum3 + bNum4
mov al, byte [bNum3]
add al, byte [bNum4]
mov byte [bAns3], al
; zero out the registers
xor al al

; bAns6 = bNum1 - bNum2
mov al, byte [bNum1]
sub al, byte [bNum2]
mov byte[bAns6], al
; zero out the registers
xor al al

; bAns7 = bNum1 - bNum3
mov al, byte [bNum1]
sub al, byte [bNum3]
mov byte [bAns7], al 
; zero out the registers
xor al al

; bAns8 = bNum2 - bNum4
mov al, byte [bNum2]
sub al, byte [bNum4]
mov byte [bAns8], al
; zero out the registers
xor al al

last:   
    ; Call code for exit
    mov     rax, SYS_exit 
    ; Exit program with success
    mov     rdi, SUCCESS 
    syscall

