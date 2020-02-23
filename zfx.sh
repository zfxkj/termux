#!/bin/bash
#ZFX
clear
cd ~
mkdir zfx/
colorhint="\033[36;43;1m"
colorend="\033[0m"
prompt="\n————————————————————————————————————\n"
function hint (){ echo -e "$prompt" ; }
function logo (){
if [ -e "$PREFIX/bin/toilet" ];then
clear
else
pkg install -y toilet
pkg upgrade -y
pkg update -y
clear
fi
}
function home0 (){
toilet -f mono12 -F gay ZFX
echo -e "\n"
echo -e "\033[32m [1] \033[0m   \033[34m 使用ZSH主题\033[0m\n"
sleep 0.016
echo -e "\033[32m [2] \033[0m   \033[35m 其他工具\033[0m\n"
sleep 0.016
echo -e "\033[32m [3] \033[0m   \033[36m 编程环境配置\033[0m\n"
sleep 0.016
echo -e "\033[32m [4] \033[0m   \033[37m 常用工具\033[0m\n"
sleep 0.016
echo -e "\033[32m [5] \033[0m   \033[33m 更新\033[0m\n"
sleep 0.016
echo -e "\033[32m [99] \033[0m   \033[31m 充软妹币\033[0m\n"
sleep 0.016
echo -e "\033[32m [0] \033[0m   \033[32m 退出\033[0m\n\n\n"
}
function home1 (){
cd ~
read -p "ZFX ~> " home
case $home in
1 )
	sleep 1
	hint ; echo -e "\033[34m 第一个是选择颜色，第二个是选择字体！\033[0m" ; hint
	sleep 7
	pkg install -y curl
	sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
	home0 ; home1 ;;
2 )
	echo -e "\n\n"
	game0 ; game1 ;;
3 )
	echo -e "\n\n"
	work0 ; work1 ;;
4 )
	echo -e "\n\n"
	library0 ; library1 ;;
5 )
	hint ; echo -e "\033[37m 准备更新\033[0m\n" ; hint
	pkg install -y wget
	cd zfx/
	wget -O zfx https://raw.githubusercontent.com/ZFXLYN/termux/master/zfx.sh
	mv -f zfx $PREFIX/bin/
	chmod +x $PREFIX/bin/zfx
	exit
	home0 ; home5 ;;
99 )
	sleep 1
	read -p "请输入充值的软妹币额度：" a
	case $a in
	[0-9]* )
		read -p "请输入支付密码："
		echo -e "连接服务器..."
		sleep 1
		echo -e "\033[31m已成功充入 $a 软妹币！\033[0m"
		sleep 0.2s
		echo -e "\033[32mZFX 已升级为 svip 版！\033[0m" ;;
	* )
		sleep 1 
		echo -e "\033[33m服务器请求错误！\033[0m\n" 
		sleep 0.2s echo -e "\033[34m正在准备进攻... \033[0m\n" 
		sleep 1 
		echo -e "\033[35m网络检测中... \033[0m\n" 
		sleep 1
		echo -e "\033[36m检测完成\033[0m\n"
		sleep 1
		echo -e "\033[37m网站分析中...\033[0m\n"
		sleep 3
		echo -e "\033[31m分析完成\033[0m\n"
		sleep 1
		echo -e "\033[32m服务器漏洞扫描中...\033[0m\n"
		sleep 5
		echo -e "\033[33m扫描速度较慢请耐心等待…\033[0m\n"
		sleep 5
		echo -e "\033[36m服务器扫描完成共发现\033[31m9\033[0m处漏洞\033[0m\n"
		sleep 2
		echo -e "\033[37m服务器入侵中…\033[0m\n"
		sleep 3
		echo -e "\033[31m服务器入侵中  5% \033[0m\n"
		sleep 5
		echo -e "\033[32m服务器入侵中  9% \033[0m\n"
		sleep 7
		echo -e "\033[33m服务器入侵中  13% \033[0m\n"
		sleep 1
		echo -e "\033[34m服务器入侵中  17% \033[0m\n"
		sleep 6
		echo -e "\033[35m服务器入侵中  21% \033[0m\n"
		sleep 9
		echo -e "\033[36m服务器入侵中  27% \033[0m\n"
		sleep 8
		echo -e "\033[37m服务器入侵中  34% \033[0m\n"
		sleep 2
		echo -e "\033[31m服务器入侵中  39% \033[0m\n"
		sleep 4
		echo -e "\033[32m服务器入侵中  43% \033[0m\n"
		sleep 6
		echo -e "\033[33m服务器入侵中  46% \033[0m\n"
		sleep 0.5s
		echo -e "\033[34m服务器入侵中  52% \033[0m\n"
		sleep 7
		echo -e "\033[35m服务器入侵中  57% \033[0m\n"
		sleep 6
		echo -e "\033[36m服务器入侵中  60% \033[0m\n"
		sleep 7
		echo -e "\033[37m服务器入侵中  65% \033[0m\n"
		sleep 2
		echo -e "\033[31m服务器入侵中  68% \033[0m\n"
		sleep 8
		echo -e "\033[32m服务器入侵中  75% \033[0m\n"
		sleep 6
		echo -e "\033[33m服务器入侵中  81% \033[0m\n"
		sleep 4
		echo -e "\033[34m服务器入侵中  88% \033[0m\n"
		sleep 1
		echo -e "\033[35m服务器入侵中  93% \033[0m\n"
		sleep 3
		echo -e "\033[36m服务器入侵中  97% \033[0m\n"
		sleep 5
		echo -e "\033[37m服务器入侵中  100% \033[0m\n"
		sleep 2
		echo -e "\033[31m入侵成功！已抢夺对方全部软妹币！\033[0m\n" ;;
	esac
	exit ;;
0 )
	clear
	source .bashrc
	exit ;;
00 )
	exit ;;
* )
	echo -e "\033[35m 该项超脱了天地之外！\033[0m"
	sleep 1
	home1 ;;
esac
}
function game0 (){
toilet -f mono12 -F gay ZFX
echo -e "\n\n"
echo -e " \033[32m [1] \033[0m   \033[36m 游戏 \033[0m\n"
sleep 0.016
echo -e " \033[32m [2] \033[0m   \033[37m 更换清华源 \033[0m\n"
sleep 0.016
echo -e " \033[32m [3] \033[0m   \033[31m 扩展小键盘 \033[0m\n"
sleep 0.016
echo -e " \033[32m [4] \033[0m   \033[32m 获取储存权限 \033[0m\n"
sleep 0.016
echo -e " \033[32m [5] \033[0m   \033[33m termux启动密码 \033[0m\n"
sleep 0.016
echo -e " \033[32m [6] \033[0m   \033[34m 搜索图片   \033[0m\n"
sleep 0.016
echo -e " \033[32m [7] \033[0m   \033[35m 下载壁纸 \033[0m\n"
sleep 0.016
echo -e " \033[32m [8] \033[0m   \033[36m 下载网易云音乐   \033[0m\n"
sleep 0.016
echo -e " \033[32m [9] \033[0m   \033[37m 无  \033[0m\n"
sleep 0.016
echo -e " \033[32m [10] \033[0m  \033[31m 无   \033[0m\n"
sleep 0.016
echo -e " \033[32m [11] \033[0m   \033[32m 无  \033[0m\n"
sleep 0.016
echo -e " \033[32m [12] \033[0m   \033[33m 更换termux问候语 \033[0m\n"
sleep 0.016
echo -e " \033[32m [13] \033[0m   \033[34m adb fastboot \033[0m\n"
sleep 0.016
echo -e " \033[32m [0] \033[0m   \033[35m 返回 \033[0m\n\n\n"
}
function game1 (){
cd ~
read -p "ZFX ~> " game
case $game in
1 )
	sleep 1
	hint ; echo -e "\033[36m 游戏列表，想要安装哪个游戏就\npkg install +绿色的字，（+不要输入）\033[0m" ; hint
	sleep 3
	echo -e "\n\n\n"
	pkg search game
	echo -e "\n\n\n"
	game0 ; game1 ;;
2 )
	sleep 1
	hint ; echo -e "\033[33m 清华源和官方源\033[0m \n \033[37m [1]  清华源\n [2]  官方源 \033[0m" ; hint
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' $PREFIX/etc/apt/sources.list
	pkg update && pkg upgrade -y
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://termux.org/packages/ stable main@' $PREFIX/etc/apt/sources.list
	pkg update && pkg upgrade -y
	echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
3 )
	sleep 1
	if test -d ~/.termux/ ; then
		:
	else
		mkdir -p ~/.termux/
	fi
	echo -e "extra-keys = [['TAB','>','-','~','/','*','$'],['ESC','(','HOME','UP','END',')','PGUP'],['CTRL','[','LEFT','DOWN','RIGHT',']','PGDN']]" > ~/.termux/termux.properties
	termux-reload-settings
	game0 ; game1 ;;
4 )
	sleep 1
	hint ; echo -e "\033[32m   获取储存权限   \033[0m" ; hint
	termux-setup-storage
	rm -rf /storage
	ln -s /storage/emulated/0/ lyn
	game0 ; game1 ;;
5 )
	sleep 1
	hint ; echo -e "\033[33m   termux启动密码，或关闭程序   \033[0m \n \033[37m [1]  安装\n [2]  卸载 \033[0m" ; hint
	echo -e "\033[32m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
    pkg install -y python
	pkg install -y wget
	cd $PREFIX/tmp
	mkdir login
	cd login
	wget -O login https://raw.githubusercontent.com/ZFXLYN/termux/master/login/login
	wget -O login.py https://raw.githubusercontent.com/ZFXLYN/termux/master/login/login.py
	wget -O setup.sh https://raw.githubusercontent.com/ZFXLYN/termux/master/login/setup.sh
	wget -O uninstall.sh https://raw.githubusercontent.com/ZFXLYN/termux/master/login/uninstall.sh
	wget -O old_login https://raw.githubusercontent.com/ZFXLYN/termux/master/login/old_login
	bash setup.sh
	echo "完成"
	sleep 3
    elif [ "$NUM" -eq "2" ]
    then
    cd $PREFIX/tmp/login
    bash uninstall.sh
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
6 )
	sleep 1
	hint ; echo -e "\033[34m  输入：python picture.py \n搜索图片并下载百度图库\n保存位置为home/zfx/   \033[0m \n \033[37m [1]  安装\n [2]  卸载 \033[0m" ; hint
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y python
	pkg install -y wget
	pip install requests
	wget -O picture.py https://raw.githubusercontent.com/ZFXLYN/termux/master/baidupicture.py
	python picture.py
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf picture.py
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
7 )
	sleep 1
	hint ; echo -e "\033[35m   输入：python bzm.py \n 下载高清壁纸分类较多！\n保存位置为home/zfx/   \033[0m \n \033[37m [1]  安装\n [2]  卸载 \033[0m" ; hint
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y python
	pkg install -y wget
	pip install requests
	wget -O bzm.py https://raw.githubusercontent.com/ZFXLYN/termux/master/bzm.py
	python bzm.py
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf bzm.py
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
8 )
	sleep 1
	hint ; echo -e "\033[36m  输入：python music.py \n 批量下载网易云音乐！ \n保存位置为home/zfx/   \033[0m \n \033[37m [1]  安装\n [2]  卸载 \033[0m" ; hint
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y python
	pkg install -y wget
	pip install requests
	wget -O wymusic.py https://raw.githubusercontent.com/ZFXLYN/termux/master/wymusic.py
	python wymusic.py
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf wymusic.py
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
9 )
	sleep 1
	hint ; echo -e "\033[37m       \033[0m" ; hint
	sleep 3
	game0 ; game1 ;;
10 )
	sleep 1
	hint ; echo -e "\033[31m      \033[0m" ; hint
	game0 ; game1 ;;
11 )
	sleep 1
	hint ; echo -e "\033[32m      \033[0m" ; hint
	sleep 3
	game0 ; game1 ;;
12 )
	sleep 1
	hint ; echo -e "\033[37m [1]  更新\n [2]  还原 \033[0m" ; hint
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	mv -f $PREFIX/etc/motd $PREFIX/etc/motd1
	cp -f .zshrc $PREFIX/tmp/
	cp -f .bashrc $PREFIX/tmp/
	echo "\n toilet -f mono12 -F gay ZFXLYN" >> ~/.zshrc
	source .zshrc
	echo "\n toilet -f mono12 -F gay ZFXLYN" >> ~/.bashrc
	source .bashrc
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf .zshrc .bashrc
    mv -f $PREFIX/tmp/.zshrc ~
    mv -f $PREFIX/tmp/.bashrc ~
    mv -f $PREFIX/etc/motd1 $PREFIX/etc/motd
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
13 )
	sleep 1
	hint ; echo -e "\033[33m adb和fastboot \033[0m \n \033[37m [1]  安装\n [2]  卸载 \033[0m" ; hint
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y unzip
	pkg install -y wget
	wget https://github.com/NibaZShab/NibaZShab.github.io/releases/download/11/11.zip
	unzip 11.zip
	rm -rf 11.zip
	mv -f ~/adb $PREFIX/bin/
	mv -f ~/fastboot $PREFIX/bin/
	chmod +x $PREFIX/bin/adb
	chmod +x $PREFIX/bin/fastboot
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf $PREFIX/bin/adb
    rm -rf $PREFIX/bin/fastboot
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	game0 ; game1 ;;
0 )
	echo -e "\n\n"
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "\033[34m 该项超脱了天地之外！\033[0m"
	sleep 1
	game1 ;;
esac
}
function work0 (){
toilet -f mono12 -F gay ZFX
echo -e "\n\n"
echo -e " \033[32m [1] \033[0m   \033[35m python \033[0m\n"
sleep 0.016
echo -e " \033[32m [2] \033[0m   \033[37m go \033[0m\n"
sleep 0.016
echo -e " \033[32m [3] \033[0m   \033[31m c/c++ \033[0m\n"
sleep 0.016
echo -e " \033[32m [4] \033[0m   \033[32m php \033[0m\n"
sleep 0.016
echo -e " \033[32m [5] \033[0m   \033[33m nodejs \033[0m\n"
sleep 0.016
echo -e " \033[32m [6] \033[0m   \033[34m pip 清华源 \033[0m\n"
sleep 0.016
echo -e " \033[32m [7] \033[0m   \033[35m npm 淘宝源 \033[0m\n"
sleep 0.016
echo -e " \033[32m [0] \033[0m   \033[37m 返回 \033[0m\n\n\n"
}
function work1 (){
cd ~
read -p "ZFX ~> " work
case $work in
1 )
	sleep 1
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y python
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    pkg uninstall -y python
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
2 )
	sleep 1
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y golang
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    pkg uninstall -y golang
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
3 )
	sleep 1
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y clang
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    pkg uninstall -y clang
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
4 )
	sleep 1
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y php
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    pkg uninstall -y php
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
5 )
	sleep 1
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	pkg install -y nodejs
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    pkg uninstall -y nodejs
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
6 )
	sleep 1
	echo -e "\033[37m [1]  清华源\n [2]  官方源 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	if test -e $PREFIX/bin/pip ; then
		sleep 3
		mkdir -p ~/.pip/
		echo -e "[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple\n[install]\ntrusted-host=mirrors.aliyun.com" > ~/.pip/pip.conf
	else
		echo -e "请先安装 python 环境"
	fi
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    if test -e $PREFIX/bin/pip ; then
		rm -rf ~/.pip
	else
	    echo -e "请先安装 python 环境"
	fi
	echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
7 )
	sleep 1
	echo -e "\033[37m [1]  淘宝源\n [2]  官方源 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	if test -e $PREFIX/bin/npm ; then
		npm config set registry https://registry.npm.taobao.org
	else
		echo -e "请先安装 nodejs 环境"
	fi
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    if test -e $PREFIX/bin/npm ; then
		npm config set registry https://registry.npmjs.org/
	else
		echo -e "请先安装 nodejs 环境"
	fi
	echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	work0 ; work1 ;;
0 )
	echo -e "\n\n"
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "\033[31m 该项超脱了天地之外！\033[0m"
	sleep 1
	work1 ;;
esac
}
function library0 (){
toilet -f mono12 -F gay ZFX
echo -e "\n\n"
echo -e " \033[32m [1] \033[0m   \033[32m ip黑客 \033[0m\n"
sleep 0.016
echo -e " \033[32m [2] \033[0m   \033[33m atilo \033[0m\n"
sleep 0.016
echo -e " \033[32m [3] \033[0m   \033[34m you-get视频下载器 \033[0m\n"
sleep 0.016
echo -e " \033[32m [4] \033[0m   \033[35m 钓鱼网站 \033[0m\n"
sleep 0.016
echo -e " \033[32m [5] \033[0m   \033[36m 百度，蓝奏云提取码 \033[0m\n"
sleep 0.016
echo -e " \033[32m [6] \033[0m   \033[37m 手机轰炸机 \033[0m\n"
sleep 0.016
echo -e " \033[32m [7] \033[0m   \033[31m Toolss工具箱 \033[0m\n"
sleep 0.016
echo -e " \033[32m [8] \033[0m   \033[32m bilibili挂机脚本 \033[0m\n"
sleep 0.016
echo -e " \033[32m [9] \033[0m   \033[33m 网易ncm格式转换 \033[0m\n"
sleep 0.016
echo -e " \033[32m [0] \033[0m   \033[34m 返回 \033[0m\n\n\n"
}
function library1 (){
cd ~
read -p "ZFX ~> " library
case $library in
1 )
    sleep 3
    hint ; echo -e "\033[35m 网络ip黑客 \033[0m" ; hint
    echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
    echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
    sleep 5
    pkg install -y python
    pkg install -y python2
    wget -O attack.py https://raw.githubusercontent.com/ZFXLYN/termux/master/attack.py
    python2 attack.py
    echo "完成"
	sleep 3
    elif [ "$NUM" -eq "2" ]
    then
    rm -rf attack.py
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
    library0 ; library1 ;;
2 )
	sleep 1
	hint ; echo -e "\033[36m atilo   images可用列表\n remove卸载   pull安装  clear清空 \033[0m" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	curl -o $PREFIX/bin/atilo https://raw.githubusercontent.com/YadominJinta/atilo/master/atilo
	chmod +x $PREFIX/bin/atilo
	$PREFIX/bin/atilo
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf $PREFIX/bin/atilo
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
3 )
	sleep 1
	hint ; echo -e "\033[37m you-get视频下载器 \033[0m \n \033[31m -o /路径 -O 名称 -u 查看URL地址 -i 查看详情 \033[0m\n\n\n" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sleep 5
	pkg install -y ffmpeg
	pkg install -y python
	pip3 install you-get
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    pip3 uninstall -y you-get
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
4 )
	sleep 1
	hint ; echo -e "\033[32m 钓鱼网站\n下载失败请选择科学上网 \033[0m" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sleep 3
	pkg install -y git
	pkg install -y python
	git clone -b Termux-Support-Branch https://github.com/DarkSecDevelopers/HiddenEye.git
	cd HiddenEye
	python HiddenEye.py
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf HiddenEye.py
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
5 )
	sleep 1
	hint ; echo -e "\033[33m  使用方法：输入 bdp\n获取百度网盘和蓝奏云的提取码！！ \033[0m" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sleep 3
	if [ -e "$PREFIX/bin/npm" ];then
	npm install baidupankey -g
	$PREFIX/bin/bdp
	sleep 10
	else
	echo -e "\033[37m 请按0返回\n前往<编程环境配置>安装6号和8号 \033[0m"
	sleep 7
	fi
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf $PREFIX/bin/bdp
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
6 )
	sleep 1
	hint ; echo -e "\033[34m 短信 电话轰炸机 \033[0m" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sleep 3
	pkg install -y wget
	pkg install -y python
	mkdir tbomb
	cd tbomb
	wget -O tbomb.sh https://raw.githubusercontent.com/ZFXLYN/termux/master/TBomb/tbomb.sh
	wget -O bomber.py https://raw.githubusercontent.com/ZFXLYN/termux/master/TBomb/bomber.py
	wget -O requirements.txt https://raw.githubusercontent.com/ZFXLYN/termux/master/TBomb/requirements.txt
	chmod +x tbomb.sh
	bash tbomb.sh
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf tbomb
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
7 )
	sleep 1
	hint ; echo -e "\033[35m Toolss工具箱 \033[0m" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sleep 3
	pkg install -y wget
	pkg install -y python
	wget -O toolss.py https://raw.githubusercontent.com/ZFXLYN/termux/master/Toolss.py
	python toolss.py
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf toolss.py
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
8 )
	sleep 1
	hint ; echo -e "\033[36m bilibili安装指令 \033[0m" ; hint
	echo -e "\033[37m [1]  安装\n [2]  卸载 \033[0m"
	echo -e "\033[37m 请输入命令： \033[0m"
    read NUM
    if [ "$NUM" -eq "1" ]
    then
	sleep 3
	pkg install -y curl
	pkg install -y php
	pkg install -y git
	git clone https://github.com/lkeme/BiliHelper.git
	mv -f ~/BiliHelper/conf/user.conf.example ~/BiliHelper/conf/user.conf
	curl -sS https://getcomposer.org/installer | php
	mv -f ~/composer.phar ~/BiliHelper/
	cd ~/BiliHelper/
	php composer.phar install
	cd ~
	hint ; echo -e "\033[37m 输入 vi ~/BiliHelper/conf/user.conf 填上自己的b站账号和密码即可 \033[0m" ; hint
	sleep 3
	echo -e "php ~/BiliHelper/index.php" > ~/bilibili
	chmod +x ~/bilibili
	echo "完成"
	sleep 3
	elif [ "$NUM" -eq "2" ]
    then
    rm -rf bilibili BiliHelper
    echo "完成"
	sleep 3
    else
        echo "输入错误！"
        sleep 5
    fi
	library0 ; library1 ;;
9 )
	sleep 1
	hint ; echo -e "\033[31m 网易音乐 \033[0m" ; hint
	sleep 3
	pkg install -y git
	pkg install -y clang
	pkg install -y taglib
	git clone https://github.com/anonymous5l/ncmdump.git
	cd ~/ncmdump/
	echo -e "$colorhint 编译时间较长，请耐心等待 $colorend"
	sleep 2
	g++ main.cpp cJSON.cpp aes.cpp ncmcrypt.cpp -o ncmdump -ltag
	strip ncmdump
	mv -f ncmdump $PREFIX/bin/
	cd ~
	rm -rf ~/ncmdump/
	
	library0 ; library1 ;;
0 )
	echo -e "\n\n"
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "\033[32m 该项超脱了天地之外！\033[0m"
	sleep 1
	library1 ;;
esac
}
logo
sleep 1
home0 ; home1
exit
