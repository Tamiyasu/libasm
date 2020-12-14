# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 01:48:29 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/14 17:23:16 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global ft_strcpy

ft_strcpy:	xor		rax		, rax	; init rax index / return
			xor		rdx		, rdx	; init rdx tmp (it is not necessary)
.loop		mov		dl,	byte[rsi + rax] ; copy char of 2nd arg (rsi is start address of char *)
			mov		byte[rdi + rax], dl ; copy char to 1st arg (rdi is start address of char *)
			cmp		byte[rdi + rax], 0	; check the end of string,
			je		.end			; if end of string, goto end.
			inc		rax				; index++
			jmp		.loop
.end		mov		rax, rdi		; the return is the 1st arg
			ret
