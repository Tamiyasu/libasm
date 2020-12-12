# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 01:48:40 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/13 01:48:56 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global ft_strlen									; discrive the name of function(when call ft_strlen, start the label)

ft_strlen:		xor		rax,	rax					; initialize rax to 0 (xor between same number is 0 always)

.loop:			cmp		byte [rdi + rax], 0			; set dl with address [rdi + rax] (rdi is first arg for ft_strlen: the char * pointer)
				je		.end						; if the compare is equal jump to .end label.
				inc		rax							; increment rax
				jmp		.loop						; jump to .loop lavel

.end			ret									; return (rax)
