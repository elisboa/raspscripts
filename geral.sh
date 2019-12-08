#!/usr/bin/env bash
# geral.sh
# Script que tem por finalidade monitorar alguns aspectos do hardware do Raspberry Pi 
# Autor: Eduardo Lisboa <eduardo.lisboa@gmail.com>
# Data: 2019/Dez/08

while true ; do clear ; echo "Desempenho do disco: " ; iostat -d mmcblk0 -m ; echo ; echo "Desempenho da memoria: " ; vmstat -Sm ; echo ; /usr/local/sbin/temp.sh ; echo -n "Ultima variacao de tensao: " ; dmesg | grep -i voltage | tail -n1 ; echo -e "\n" ; echo "Processo consumindo mais memoria: " ; ps aux --sort=-%mem | head -n2 ; echo ; echo "Processo consumindo mais CPU: " ; ps aux --sort=%cpu | head -n2 ; echo ; echo "Ultimas mensagens do sistema: " ; dmesg | tac | egrep -vi voltage | head -n 15 ; sleep 3 ; done
