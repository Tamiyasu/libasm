section .text
global ft_strcpy

ft_strcpy:	xor		rax,	rax
			xor		rdx,	rdx

.loop		mov		dl,	byte[rsi + rax]
			mov		byte[rdi + rax], dl
			cmp		byte[rdi + rax], 0
			je		.end
			inc		rax
			jmp		.loop
.end		mov		rax, rdi
			ret
