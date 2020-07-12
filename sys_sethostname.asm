BITS 64

global _start

section .rodata

	hostname db "sys_sethostname", 0
	hostname_len equ $-hostname

section .text

_start:
	mov rax, 0xAA
	mov rdi, hostname
	mov rsi, hostname_len
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0x0
	syscall	
