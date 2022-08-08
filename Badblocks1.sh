#!/bin/bash
MENU () {
clear
echo
echo " MENU "
echo "Verificando o disco para ver há Badblocks"
echo
echo " 1 - Executa o teste por leitura de informações, é o MÉTODO MAIS SEGURO"
echo " 2 - Executa o teste método mais completo e mais lento:"
echo " 3 - Executa o teste método mais completo e mais lento ATENÇÃO porém ele apaga tudo  "
echo " 4 - Resultado do teste"
echo " 5 - Sair "
echo
echo
read -p "Informe o número da opção desejada : " num
case $num in
    1)
        sudo fdisk -l
        echo
        read -p "Informe o número da apartição a ser analizada: " part
        sudo badblocks -sv -c 1024 /dev/sda$part
        echo
        MENU;;
    2)
       sudo fdisk -l
        echo
        read -p "Informe o número da apartição a ser analizada: " part
        sudo badblocks  -nsv -c 1024 /dev/sda$part
        echo
        MENU;;
 
    3)
       sudo fdisk -l
        echo
        read -p "Informe o número da apartição a ser analizada: " part
        sudo badblocks -wsv -c 10240 /dev/sda$part
        echo
        MENU;;
    4)
       sudo fdisk -l
        echo
        read -p "Informe o número da apartição a ser analizada: " part
        badblocks -s -v -c 10240 /dev/sda$part
        echo
        MENU;;
 
    5)
        echo
        echo "Você escolheu SAIR"  
        echo
        exit
    ;;
   
    *) 
        echo
        echo "Não entendi sua opção. Carectere inesperado!"
        echo "Pressione qualquer tecla para continuar!"
        pausa
        MENU
       
        ;;     
        esac
 
        echo
        }
        pausa () {
            read -p "$*"
            }
            MENU
