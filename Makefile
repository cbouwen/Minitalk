NAME = server

CC = cc
CFLAGS = -Wall -Werror -Wextra -g -fsanitize=address

SRC = server.c

LIBFT_DIR = ./Libft/
LIBFT_LIB = $(LIBFT_DIR)libft.a
LIBFT_INC = -I $(LIBFT_DIR)

PRINTF_DIR = ./Printf/
PRINTF_LIB = $(PRINTF_DIR)printf.a
PRINTF_INC = -I $(PRINTF_DIR)

all : $(NAME)

$(NAME) : $(LIBFT_LIB) $(PRINTF_LIB) $(SRC)
	$(CC) $(CFLAGS) $(SRC) $(LIBFT_LIB) $(PRINTF_LIB) -o $(NAME)

$(LIBFT_LIB):
	make -C $(LIBFT_DIR)

$(PRINTF_LIB):
	make -C $(PRINTF_DIR)

clean : 
	make clean -C $(LIBFT_DIR)
	make clean -C $(PRINTF_DIR)

fclean : clean
	make fclean -C $(LIBFT_DIR)
	make fclean -C $(PRINTF_DIR)
	rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re
