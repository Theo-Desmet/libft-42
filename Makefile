# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tdesmet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/28 07:33:29 by tdesmet           #+#    #+#              #
#    Updated: 2021/12/01 16:18:57 by tdesmet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c\
	ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c ft_strlcat.c\
	ft_memmove.c ft_strlcpy.c ft_toupper.c ft_strjoin.c ft_memcmp.c\
	ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memchr.c\
	ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c\
	ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c ft_striteri.c\
	ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c

SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c\
	    ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c\
	    ft_lstiter.c ft_lstmap.c\

CFLAGS = -Wall -Werror -Wextra

CC = gcc

RM = rm -f

OBJ = ${SRC:.c=.o}

OBJ_BONUS = ${SRC_BONUS:.c=.o}

.c.o:
	${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}

LIB = ar rc ${NAME}

${NAME}: ${OBJ}
	${LIB} ${OBJ}


bonus: ${NAME} ${OBJ_BONUS}
	${LIB} ${OBJ_BONUS}

all: ${NAME}


clean:
	${RM} ${OBJ} ${OBJ_BONUS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
