NAME = server client
BONUS_NAME = client_bonus server_bonus

CC = cc
CFLAGS = -Wall -Werror -Wextra -g -fsanitize=address

SERVER_SRC = server.c
CLIENT_SRC = client.c
CLIENT_BONUS_SRC = client_bonus.c
SERVER_BONUS_SRC = server_bonus.c

LIBFT_DIR = ./Libft/
LIBFT_LIB = $(LIBFT_DIR)libft.a
LIBFT_INC = -I $(LIBFT_DIR)

PRINTF_DIR = ./Printf/
PRINTF_LIB = $(PRINTF_DIR)printf.a
PRINTF_INC = -I $(PRINTF_DIR)

all : $(NAME)

client : $(LIBFT_LIB) $(PRINTF_LIB) $(CLIENT_SRC)
	$(CC) $(CFLAGS) $(CLIENT_SRC) $(LIBFT_LIB) $(PRINTF_LIB) -o client

server : $(LIBFT_LIB) $(PRINTF_LIB) $(SERVER_SRC)
	$(CC) $(CFLAGS) $(SERVER_SRC) $(LIBFT_LIB) $(PRINTF_LIB) -o server

$(LIBFT_LIB):
	make -C $(LIBFT_DIR)

$(PRINTF_LIB):
	make -C $(PRINTF_DIR)

bonus : $(BONUS_NAME)

client_bonus : $(LIBFT_LIB) $(PRINTF_LIB) $(CLIENT_BONUS_SRC)
	$(CC) $(CFLAGS) $(CLIENT_BONUS_SRC) $(LIBFT_LIB) $(PRINTF_LIB) -o client_bonus

server_bonus : $(LIBFT_LIB) $(PRINTF_LIB) $(SERVER_BONUS_SRC)
	$(CC) $(CFLAGS) $(SERVER_BONUS_SRC) $(LIBFT_LIB) $(PRINTF_LIB) -o server_bonus


clean : 
	make clean -C $(LIBFT_DIR)
	make clean -C $(PRINTF_DIR)

fclean : clean
	make fclean -C $(LIBFT_DIR)
	make fclean -C $(PRINTF_DIR)
	rm -f $(NAME)
	rm -f $(BONUS_NAME)

re : fclean all

.PHONY : all clean fclean re bonus
