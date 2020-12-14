# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/14 16:42:28 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/14 18:05:53 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global ft_write
extern __errno_location

ft_write:	mov		rax		, 1 	; system call id - write : 1
			syscall
			cmp		rax		, 0		; compare 0 and syscall result(rax) 
			jl		.error			; if rax is less than 0, got .error
			ret						; return normal case
.error:		imul	rax		, -1	; result is the errno * (-1),
			mov		rdx		, rax	; keep error code rdx into rdx
			call	__errno_location wrt ..plt ; result is call is pointer of errno, 
			mov		[rax]	, rdx	; set errno
			mov		rax		, -1	; set error code
			ret						; return error case