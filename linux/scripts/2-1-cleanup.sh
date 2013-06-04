# 清理log文件
# 需要以root权限运行

cd /var/log
# osx 10.8 没有这两个log文件
# cat /dev/null > messages 
# cat /dev/null > wtmp
echo "log清理完毕！"
