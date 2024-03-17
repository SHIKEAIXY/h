#!/bin/sh
until
    echo "1.执行脚本"
    echo "2.退出菜单"
    read input
    test $input = 2
    do
        case $input in
        1)
            echo "..."
            curl -L https://SHIKEAIXY:qw0295150@gitee.com/SHIKEAIXY/sh/raw/master/install.sh | bash
            ;;
        2)
            echo "请输入选择（1-2）"
            ;;
        esac
    done
