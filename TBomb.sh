#!/bin/bash
clear
echo -e "\e[4;31m SpeedX Productions !!! \e[0m"
echo -e "\e[1;34m Presents \e[0m"
echo -e "\e[1;32m TBomb \e[0m"
echo "按Enter继续"
read a1
if [[ -s update.speedx ]];then
echo "找到所有要求。"
else
echo '安装要求...。'
echo .
echo .
apt install figlet toilet python curl -y
apt install python3-pip
pip install -r requirements.txt
echo This Script Was Made By SpeedX >update.speedx
echo 已安装要求。
echo 按Enter继续...
read upd
fi
while :
do
rm *.xxx >/dev/null 2>&1
clear
echo -e "\e[1;31m"
figlet TBomb
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border SpeedX
echo -e "\e[4;34m This Bomber Was Created By SpeedX \e[0m"
echo -e "\e[1;34m 对于任何查询，请邮寄给我！！！\e[0m"
echo -e "\e[1;32m           Mail: ggspeedx29@gmail.com \e[0m"
echo -e "\e[4;32m   YouTube Page: https://www.youtube.com/c/GyanaTech \e[0m"
echo " "
echo -e "\e[4;31m 请仔细阅读说明！ \e[0m"
echo " "
echo " 按1启动SMS Bomber"
echo " 按2开始呼叫轰炸机"
echo " 按3更新（在Linux和Linux模拟器上工作）"
echo " 按4查看功能"
echo " 按5退出"
read ch
if [ $ch -eq 1 ];then
clear
echo -e "\e[1;32m"
rm *.xxx >/dev/null 2>&1
python3 bomber.py
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 2 ];then
clear
echo -e "\e[1;32m"
echo '通过SpeedX呼叫炸弹'> call.xxx
python3 bomber.py call
rm *.xxx >/dev/null 2>&1
exit 0
elif [ $ch -eq 3 ];then
clear
apt install git -y
echo -e "\e[1;34m 正在下载最新文件..."
git clone https://github.com/TheSpeedX/TBomb
if [[ -s TBomb/TBomb.sh ]];then
cd TBomb
cp -r -f * .. > temp
cd ..
rm -rf  TBomb >> temp
rm update.speedx >> temp
rm temp
chmod +x TBomb.sh
fi
echo -e "\e[1;32m TBomb将立即重启..."
echo -e "\e[1;32m 将安装所有必需的软件包..."
echo -e "\e[1;34m 按Enter继续重新启动..."
read a6
./TBomb.sh
exit
elif [ $ch -eq 4 ];then
clear
echo -e "\e[1;33m"
figlet TBomb
echo -e "\e[1;34mCreated By \e[1;34m"
toilet -f mono12 -F border SpeedX
echo  " "
echo -e "\e[1;32m                   Features\e[1;34m"
echo "  [+] 无限和超快速轰炸"
echo "  [+] 国际轰炸"
echo "  [+] 通话炸弹 "
echo "  [+] 保护清单"
echo "  [+] 自动化的未来更新"
echo "  [+] 易于使用并嵌入代码中"
echo -e "\e[1;32m                   Contributors\e[1;33m"
echo -e "\e[1;33m      [*]  SpeedX   \e[1;31m"
echo "         [-] Mail At: ggspeedx29@gmail.com"
echo -e "\e[1;33m      [*]  The Black Hacker Roxstar   \e[1;31m"
echo "         [-] Ping At: http://wa.me/917600140353"
echo -e "\e[1;33m      [*]  Rieltar   \e[1;31m"
echo "         [-] Ping At: https://t.me/Rieltar"
echo -e "\e[1;33m      [*]  0n1cOn3 (Stefan)   \e[1;31m"
echo "         [-] Mail At: 0n1cOn3@gmx.ch"
echo ""
echo ""
echo -e "\e[1;31m 该脚本仅用于教育目的或恶作剧。\e[0m"
echo -e "\e[1;31m 不要使用它来伤害他人。 \e[0m"
echo -e "\e[1;31m 我不对脚本的滥用负责。 \e[0m"
echo -e "\e[1;32m 如果不起作用，请确保对其进行更新。\e[0m"
echo  " "
echo -e "\e[4;31m 就这样 ！！！\e[0m"
echo -e "\e[1;34m 对于任何查询，请邮寄给我！！！\e[0m"
echo -e "\e[1;32m           Mail: ggspeedx29@gmail.com \e[0m"
echo -e "\e[1;32m       Whatsapp: https://bit.do/speedxgit \e[0m"
echo -e "\e[4;32m   YouTube Page: https://www.youtube.com/c/GyanaTech \e[0m"
echo "按Enter键回家"
read a3
clear
elif [ $ch -eq 5 ];then
clear
echo -e "\e[1;31m"
figlet TBomb
echo -e "\e[1;34m Created By \e[1;32m"
toilet -f mono12 -F border SpeedX
echo -e "\e[1;34m For Any Queries Mail Me!!!\e[0m"
echo -e "\e[1;32m           Mail: ggspeedx29@gmail.com \e[0m"
echo -e "\e[1;32m       Whatsapp: https://bit.do/speedxgit \e[0m"
echo -e "\e[4;32m   YouTube Page: https://www.youtube.com/c/GyanaTech \e[0m"
echo " "
exit 0
else
echo -e "\e[4;32m 输入无效 ！！！ \e[0m"
echo "按Enter键回家"
read a3
clear
fi
done
