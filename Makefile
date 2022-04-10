##
## EPITECH PROJECT, 2022
## sfqsfsqf
## File description:
## qfs
##

CC	=	gcc

SRC	=	main.c

OBJ	=	$(SRC:.c=.o)

NAME	=	test


all:	$(NAME)

$(NAME):	 $(OBJ)
	$(CC) $(OBJ) -o $(NAME)


tests_run:
	make -C tests/

clean:
	rm -f $(OBJ)

coverage:
	@gcovr

fclean: clean
	rm -f $(NAME)
	make fclean -C ./tests

re:	fclean all

.PHONY:	$(NAME) all clean fclean