section .text
global ft_read
extern __errno_location

ft_read:	mov		rax, 0 ; sytem call id - read : 0
			syscall
			cmp		rax, 0
			jl		.error
			ret
.error:		push	rax
			call __errno_location
			mov		rdx,	rax
			pop		rax
			imul	rax,	-1
			mov		[rdx],	rax
			mov		rax,	-1
			ret
