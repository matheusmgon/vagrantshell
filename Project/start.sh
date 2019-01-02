#!/bin/bash

declare ROOT_DIR=$PWD
declare -a folders=("WEB" "BANCO")
declare -a options=("status" "reload" "halt" "destroy")

initiliaze_box()
{
	for folder in ${folders[@]};
	do
		cd $ROOT_DIR/$folder/
		vagrant up
	done
}

show_menu()
{
	echo -e "Digite o nome da box que deseja gerenciar?"
	select folder in ${folders[@]}; 
	do
		echo -e "O que deseja fazer com a box $folder?"
		select option in ${options[@]};
		do
			cd $ROOT_DIR/$folder/
			vagrant $option
			show_menu
		done
	done
}

initiliaze_box
show_menu