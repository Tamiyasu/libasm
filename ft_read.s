# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/14 16:42:57 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/14 16:55:24 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global ft_read
extern __errno_location

ft_read:	mov		rax		, 0		; system call id - read : 0
			syscall
			cmp		rax		, 0		; compare 0 and syscall result(rax) 
			jl		.error			; if rax is less than 0, got .error
			ret						; return normal case
.error:		imul	rax		, -1	; result is the errno * (-1),
			move	rdx		, rax	; keep error code rdx,
			call	__errno_location wrt ..plt ; result is call is pointer of errno, 
			mov		[rax]	, rdx	; set errno
			mov		rax		, -1	; set error code
			ret						; return error case