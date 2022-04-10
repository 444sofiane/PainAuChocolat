##
## EPITECH PROJECT, 2022
## qfdqffsfsq
## File description:
## fsfqsf
##

SRC =  	 src/test.c \
	 src/main.c

OBJ =	 $(SRC:.c=.o) \

TEST_SRC =      tests/test_dop.c \

TEST_NAME = 	unit_tests

NAME =	   dop

INC = 	 include/

CC =	 gcc

CFLAGS =	 -Wall -Wextra -Wpedantic

CPPFLAGS = -I include/

COVFLAG=	--coverage -lcriterion

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)
	$(RM) *.gcda
	$(RM) *.gcno

fclean:	clean
	$(RM) $(NAME)
	$(RM) *.o
	$(RM) $(TEST_NAME)

re:    fclean all