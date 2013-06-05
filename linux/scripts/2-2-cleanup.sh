#!/bin/bash
# 告诉shell，使用bash这个解释器来执行这个脚本

# Cleanup, 第二版

# 清理log文件
# 需要以root权限运行

LOG_DIR=/var/log 	# 使用变量
cd $LOG_DIR

# osx 10.8 没有这两个log文件
# cat /dev/null > messages 
# cat /dev/null > wtmp

echo "log清理完毕！"

exit	# 使用exit来正确可靠得退出脚本
