# - aula-01 instalação do docker

# - Pré requitos para instalação
' 1 - kernel acima de 3.0.8 
  2 -processador de 64bits
'
# - instalação
	curl -sSl https://get.docker.com/ | sh
 
# - ativação do dimon do docker
	systemctl enable docker 
        systemctl restart docker


