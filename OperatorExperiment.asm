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
mov al, byte [bNum1]
mov bl, byte [bNum2]
add byte [bAns1], al
add byte [bAns1], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns2 = bNum1 + bNum3
mov al, byte [bNum1]
mov bl, byte [bNum2]
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
mov bl, byte [bNum2]
add byte [bAns5], al
sub byte [bAns5], bl
; zero out the registers for more operations
xor al, al
xor bl, bl

; bAns6 = bNum2 - bNum4 
mov al, byte [bNum2]
mov byte [bAns6], al
sub byte [bAns6], byte [bNum4]
; zero out the registers for more operations
xor al, al

; bAns7 = bNum1 / bNum2
