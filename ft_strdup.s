# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/14 16:42:40 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/14 18:05:10 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy
extern __errno_location

ft_strdup:	push	rdi				; src -> stack
			call	ft_strlen wrt ..plt	; rax is the len of src(rdi) "wrt ..plt" is not necessary?
			mov		rdi		, rax	; preper rdi (malloc 1st arg)
			inc		rdi				; malloc size = strlen + 1
			call	malloc wrt ..plt
			cmp		rax		, 0		; if fail
			jle		.end			; goto end
			mov		rdi		, rax	; malloc rax is the 1st arg of strcpy
			pop		rsi				; src is the 2nd arg of strcpy
			call	ft_strcpy wrt ..plt	
.end:		ret
