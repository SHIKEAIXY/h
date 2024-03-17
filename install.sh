#!/bin/sh
until
    echo "1.小雨一键安装备份崽"
    echo "2.退出菜单"
    read input
    test $input = 2
    do
        case $input in
        1)
            echo "..."
            bash <(curl -L https://mirror.ghproxy.com/raw.githubusercontent.com/SHIKEAIXY/h/main/xyyz.sh) | bash
            ;;
        2)
            echo "请输入选择（1-2）"
            ;;
        esac
    done
