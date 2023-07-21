# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    cheatsheet.md                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llion@student.42mulhouse.fr </var/spool/m  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/21 17:45:12 by llion@student     #+#    #+#              #
#    Updated: 2023/07/21 17:57:15 by llion@student    ###   ########.fr        #
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
