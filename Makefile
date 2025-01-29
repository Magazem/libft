.SILENT : ${NAME}

NAME	=   libft.a
SRCS	=	ft_atoi.c \
			ft_isalnum.c \
			ft_strmapi.c \
			ft_striteri.c \
			ft_calloc.c \
			ft_split.c \
			ft_bzero.c \
			ft_isalpha.c \
			ft_isascii.c \
			ft_isdigit.c \
			ft_isprint.c \
			ft_memcpy.c \
			ft_memmove.c \
			ft_memcmp.c \
			ft_memchr.c \
			ft_memset.c \
			ft_strchr.c \
			ft_substr.c \
			ft_strdup.c \
			ft_strlcat.c \
			ft_strlcpy.c \
			ft_strlen.c \
			ft_strnstr.c \
			ft_strncmp.c \
			ft_strrchr.c \
			ft_strtrim.c \
			ft_itoa.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \
			ft_tolower.c \
			ft_toupper.c \
			ft_strjoin.c 

SRC_BONUS = ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c

OBJS	= $(SRCS:.c=.o)
BONUS_OBJS = ${SRC_BONUS:.c=.o}
RM		= rm -f
LIBC	= ar -rcs
FLAGS	= -Wall -Wextra -Werror
INCS	= .
.c.o :
	${CC} ${FLAGS} -c $< -o ${<:.c=.o} -I${INCS}

$(NAME): ${OBJS} 
	${LIBC} $(NAME) $(OBJS) 

all: $(NAME)

bonus: $(NAME) $(BONUS_OBJS)
	${LIBC} $(NAME) $(BONUS_OBJS)
    
fclean: clean
	$(RM) $(NAME)

clean:
	$(RM) -f $(OBJS) $(BONUS_OBJS)
    
re: fclean all
