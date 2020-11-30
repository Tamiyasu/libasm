section .text
global _ft_strcmp

_ft_strcmp:	xor	rax,	rax

.loop	mov		dl,	byte[rdi + rax]
		sub		dl,	byte[rsi + rax]
		jnz		.end
		cmp		byte[rdi + rax], 0
		je		.end
		inc		rax
		jmp		.loop

.end	mov		rax, dl
		ret
