# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 01:48:09 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/13 01:48:14 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
