# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cheatsheet.md                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llion@student.42mulhouse.fr </var/spool/m  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/21 17:45:12 by llion@student     #+#    #+#              #
#    Updated: 2023/11/13 21:36:45 by llion@student    ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Commandes de base

- docker run -d --name c1 nginx:latest # lancer un container (-d = background/detach)
- docker ps # liste (-a = all)
- docker stop name/id # stopper container
- docker start name/id # activer container
- docker rm -f name # stopper et supprimer
- docker run -ti --name c1 debian:latest # lancer un terminal interactif
- docker run -ti --rm --name c1 debian:latest # lancer un terminal interactif et supprime le container une fois sorti
- docker run -ti --name c1 --hostname debian:latest # change le hostname
- docker rm -f $(docker ps -qa) # imbrication qui supprime tout

# persister les donnees

- docker volume create mynginx # creer un volume
- docker run -d --name c1 -v mynginx:/usr/share/nginx/html nginx:latest # cree et monte le chemin vers le volume
- docker exec -ti c1 bash # s'accrocher au processus du container
- docker volume inspect mynginx # inspecter les meta-donnees (et le point de montage)
- docker volume rm mynginx # supprimer le volume

# types de volumes

- 3 types : bind, volume, TMPFS
    - bind : surcharge le volume dans le container (on ne le retrouve pas dans la liste des volumes)
    - volume : recurpere les donnees dans le container et les ajoute au volume source
    - TMPFS : environnement ponctuel et ephemere

- docker run -d --name c1 --mount type=bind,source=/data/,destination=/usr/share/nginx/html nginx:latest
- docker run -d --name c2 --mount type=volume,source=mynginx,destination=/usr/share/nginx/html nginx:latest
- docker run -d --name c3 --mount type=TMPFS,destination=/usr/share/nginx/html nginx:latest

# build

- docker build -t myimage:v1.0 .

# sources

- https://www.linode.com/docs/guides/how-to-use-dockerfiles/  [simple Dockerfile et comment le monter]
- https://github.com/axelcoezard/ft_Inception/ [ft_Inception exemple]
- https://docs.docker.com/reference/ [docker ref]
- https://nginx.org/en/docs/ [nginx doc]
- https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-docker/ (nginx dockerfile)
