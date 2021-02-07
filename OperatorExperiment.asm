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
bAns10 db 0
bAns11 db 0
bAns12 db 0

wAns1 dw 0
wAns2 dw 0
wAns3 dw 0

bNum1 db 32
bNum2 db 16 
bNum3 db 8 
bNum4 db 4 

section .text
global _start
_start:

; bAns1 = bNum1 + bNum2
mov al, bNum1
mov bl, bNum2
; currently working on setting bAns1 = bNum1 + bNum2

