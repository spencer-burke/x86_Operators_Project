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

last:    
    ; Call code for exit
    mov     rax, SYS_exit 
    ; Exit program with success
    mov     rdi, SUCCESS 
    syscall

