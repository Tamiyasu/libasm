# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmurakam <tmurakam@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/13 01:49:26 by tmurakam          #+#    #+#              #
#    Updated: 2020/12/13 01:49:28 by tmurakam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

FLAGS = -Wall -Wextra -Werror

SRCS = ft_strlen.s
SRCS += ft_strcpy.s
SRCS += ft_strcmp.s
SRCS += ft_write.s
SRCS += ft_read.s
SRCS += ft_strdup.s
OBJS = ${SRCS:%.s=%.o}

.s.o:
	nasm -felf64 $< -o $@
${NAME}: ${OBJS}
	ar rcs ${NAME} ${OBJS}
all: ${NAME}
clean:
	${RM} ${OBJS}
fclean: clean
	${RM} ${NAME}
re: fclean all
bonus: ${NAME}
	
.PHONY: all clean fclean re bonus

