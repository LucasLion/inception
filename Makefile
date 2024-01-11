NAME			=	inception

SRCS_DIR		=	srcs

COMPOSE_FILE	=	${SRCS_DIR}/docker-compose.yml
ENV_FILE		=	${SRCS_DIR}/.env

FLAGS			=	-f ${COMPOSE_FILE} \
					-p ${NAME}

all: build

build: 
	@sudo mkdir -p ~/data/wordpress ~/data/mariadb
	@sudo docker compose ${FLAGS} up -d --build

start:
	@sudo docker compose ${FLAGS} start > /dev/null

stop:
	@sudo docker compose ${FLAGS} stop > /dev/null

status:
	@sudo docker compose ${FLAGS} ps

clean:
	@sudo rm -rf /home/llion/data/wordpress/* > /dev/null
	@sudo rm -rf /home/llion/data/mariadb/* > /dev/null

fclean: clean
	@sudo docker system prune -af

re: stop fclean all

.PHONY: start stop status fclean clean re all