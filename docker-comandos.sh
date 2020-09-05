############ comandos docker ##############

# - saber quais containers estão em execução  
	docker ps

# - saber quais containers que não estão em execução
	docker ps -a

# - saber quais imagens tenho no repo local
	docker images

# - baixar uma imagem e rodar o container
	docker run -it ubutun:16.04 /bin/bash

	# docker run 	(vai executar)
	# -it 	(terminal interativo)
	# ubutun:16.04 	(imagem do ubuntu)
	# /bin/bash  (irá executar o bash)

# - sair do container sem mata-lo
    ctrl + p + q	

# - sair do container e mata-lo
    ctrl + d
	
# - voltar para o container
	docker attach [container id]

# - renomear containers
	docker rename [conatinerid] [new_container_name]

# - pesquisar se a imagem uma imagem existe no dockerhub
	docker search [name]
	#ex:
	docker search elasticsearch

# - saber quais processos estão rodando no container
	docker top [containerid]

# - executar comandos no container sem attachar
	docker exec [conatinerid] [comand]
	#exe:
	docker exec 366e3be8f474 /etc/init.d/nginx restart

# - ver as coisas novas (arquivos) que foram adicionadas ao container (diff)
	docker diff [containerid]

# - saber quanto de recursos (cpu/mem) os containers estão usando
	docker stats [containerid]
	#todos os containers
	docker stats

# - remover container (apagar)
	docker rm [containerid]

# - remover/apagar uma imagem 
	docker rmi [image id] 

# - criar uma imagem a partir de um container (Exercício 02)
	docker commit 23e0538ad503 apache2/debian:10

# - salvar uma imagem em um arquivo tar (Exercício 02)
	docker save -o bkp-apache-debian10.tar apache2/debian:10

# - adicionar imagem salva no docker images (Exercício 02)
	docker load < bkp-apache-debian10.tar


####################      Exercicío 01    ##############

# - criar container e configurar para escutar em uma porta externa        
#	         porta externa/interna
	docker run -i -p 8090:80 -t debian:9 /bin/bash 

# - atualizar o Linux
	apt-get update

# - instalar o nginx
	apt-get install nginx -y

# - habilitar o nginx
	systemctl enable nginx 
	#or
	/etc/init.d/nginx restart

# - navegar até a pasta www
	cd /var/www/html

# - instalar o vim
	apt-get install vim

# - criar um arquivo html


# - sair do cotainer sem mata-lo
    ctrl + p + q

# - acessar o navegador

# - fazer commit para salvar as alterações que foram feitas no container
    docker commit [CONTAINERID]


################################## Exercício 02 ################################


# (Criar uma imagem/modificar)
# Objetivo: modificar um container e criar uma imagem modificada do mesmo

# - criação do container
	docker run -ti debian:10

# - atualizar repositório apt
	apt-get update

# - instalar ferramentas (modificações no container)
	apt-get install apache2 vim net-tools -y

# - criar uma imagem do container modificado
	docker commit 23e0538ad503 apache2/debian:10
	
# - visualizar imagem criada
	docker images

# - impacotar imagem criada (caso queira usar em outro servidor/máquina)
	docker save -o bkp-apache-debian10.tar apache2/debian:10

# - descompactar imagem salva em um novo servidor/máquina
	docker load < bkp-apache-debian10.tar

# - criar um novo container com a imagem
	docker run -ti apache2/debian:10

