# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 01:49:04 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/13 01:49:05 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
