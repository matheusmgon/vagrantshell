#!/bin/bash
reset
echo -e "======================================\n"

echo -e "Iniciando as BOXs \n\n"

echo -e "BOX BANCO\n"
cd /home/matheus/Documentos/Project/BANCO && vagrant up && cd ..
echo -e "BOX WEB \n"
cd /home/matheus/Documentos/Project/WEB && vagrant up && cd ..

clear

echo -e "======================================\n"

echo -e "Iniciando Gerenciamento das BOX \n\n"


validacao="start"
##função para o funcionamento do menu/sistema##
while true $validacao != "sair"
	do
		echo -e "Digite o nome da box que deseja gerenciar?\n"
		echo -e "(web OU banco):"
		read box
		if [ $box == web ]; then
			echo -e "O que deseja fazer com a box WEB?\n"
			echo "1) Status"
			echo "2) Reload"
			echo "3) Desligar"
			echo "4) Destruir"
			echo -e "5) Nada\n\n"
			read opcao
			case $opcao in 
				1)
					cd /home/matheus/Documentos/Project/WEB/ &&  vagrant status
					echo -e "Desligado /n"
					;;

				2)
					cd /home/matheus/Documentos/Project/WEB/ &&  vagrant reload
					echo -e "Reiniciando . . . /n"
					;;

				3)
					cd /home/matheus/Documentos/Project/WEB/ &&  vagrant halt
					echo -e "Atualizando . . . \n"
					;;

				4)
					cd /home/matheus/Documentos/Project/WEB/ &&  vagrant destroy 
					echo -e "DIE MOTHER FUCKER!!!! \n"
					;;
				
				5)
					echo -e "Voltando para a seleção\n"
					;;
					
				*)
					echo -e "Opção não encontrada\n\n"
					;;
			esac

		else 
			echo -e "O que deseja fazer com a box BANCO?\n"
			echo "1) Status"
			echo "2) Reload"
			echo "3) Desligar"
			echo "4) Destruir"
			echo -e "5) Nada\n\n"
			read opcao
			case $opcao in 
				1)
					cd /home/matheus/Documentos/Project/BANCO/ && vagrant status  
					echo -e "Desligado /n"
					;;

				2)
					cd /home/matheus/Documentos/Project/BANCO/ && vagrant reload 
					echo -e "Reiniciando . . . /n"
					;;

				3)
					cd /home/matheus/Documentos/Project/BANCO/ && vagrant halt 
					echo -e "Atualizando . . . \n"
					;;

				4)
					cd /home/matheus/Documentos/Project/BANCO/ && vagrant destroy 
					echo -e "DIE MOTHER FUCKER!!!! \n"
					;;
				
				5)
					echo -e "Voltando para a seleção\n"
					;;	


				*)
					echo -e "Opção não encontrada\n\n"
					;;
			esac
		
		fi

	echo -e "Deseja continuar no programa?\n(sim/nao)"
	read validacao
	if [ $validacao == nao ]; then
		echo -e "Saindo...\n\n\n"
		validacao="sair"
		exit 0
	else
		echo -e "Voltando...\n\n"
		reset
	fi
done



