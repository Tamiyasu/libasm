section .text
global ft_strcmp

ft_strcmp:	xor		rax,	rax
			xor		rdx,	rdx
			xor		rcx,	rcx

.loop		mov		dl,	byte[rdi + rax]
			mov		cl,	byte[rsi + rax]
			sub		rdx, rcx
			jnz		.end
			cmp		byte[rdi + rax], 0
			je		.end
			inc		rax
			jmp		.loop
.end		mov		rax, rdx 
			ret
