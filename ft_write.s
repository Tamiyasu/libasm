section .text
global ft_write
extern __errno_location

ft_write:	mov		rax, 1 ; sytem call id - write : 1
			syscall
			cmp		rax, 0
			jl		.error
			ret
.error:		push	rax
			call __errno_location wrt ..plt
			mov		rdx,	rax
			pop		rax
			imul	rax,	-1
			mov		[rdx],	rax
			mov		rax,	-1
			ret
