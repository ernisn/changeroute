#!/bin/sh

red='\033[0;31m'
green='\033[0;32m'
none='\033[0m'

until
    echo -e "${green}1${none}. 选择 ${red}电信${none} 出口"
    echo -e "${green}2${none}. 选择 ${red}联通${none} 出口"
    echo -e "${green}3${none}. 查看默认出口"
    echo -e "${green}4${none}. 退出"	
    read input
	test $input = 4
        do
	case $input in
	1) echo -e "选择 ${red}电信${none} 出口"
	   ip route change default via 172.16.4.1 dev eth0 proto static
	   echo "当前默认出口："
	   ip route && exit ;;
	2) echo -e "选择 ${red}联通${none} 出口"
       ip route change default via 172.16.5.1 dev eth0 proto static
	   echo "当前默认出口："
	   ip route && exit ;;
	3) echo "查看默认出口"
	   echo "当前默认出口："
	   ip route && exit ;;
	4) echo "请选择（1-4）"
	esac
done

	
