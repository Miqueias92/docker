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


####################      Exercicío da aula          ##############

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



	


