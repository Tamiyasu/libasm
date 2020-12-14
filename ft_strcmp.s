# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 01:48:09 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/14 17:18:18 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global ft_strcmp

ft_strcmp:	xor		rax		, rax	; initialize rax char in 1st str / diff / ret 
			xor		rdx		, rdx	; initialize rdx index;
			xor		rcx		, rcx	; initialize rcx char in 2st str
.loop		mov		al		, byte[rdi + rdx]	; copy the uchar to rax(al)
			mov		cl		, byte[rsi + rdx]	; copy the uchar to rcx(cl)
			sub		rax		, rcx	; rax = rax - rcx if not zero (rax not same rcx),
			jnz		.end			;     go to end
			cmp		byte[rdi + rdx]	, 0 ; if end of 1st string
			je		.end			;	  go to end.
			inc		rdx				; index++;
			jmp		.loop			; next loop.
.end		ret
