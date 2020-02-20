#!/bin/bash
#ZFX
clear
colorhint="\033[36;43;1m"
colorend="\033[0m"
prompt="\n————————————————————————————————————\n"
function hint (){ echo -e "$prompt" ; }
function logo (){
if [ -e "../usr/bin/toilet" ];then
clear
toilet -f mono12 -F gay ZFX
else
pkg install -y toilet
pkg upgrade -y
pkg update -y
clear
toilet -f mono12 -F gay ZFX
fi

}
function home0 (){
echo -e "\n\n"
echo -e " 1   更换清华源\n"
sleep 0.016
echo -e " 2   扩建小键盘\n"
sleep 0.016
echo -e " 3   获取储存权限\n"
sleep 0.016
echo -e " 4   使用ZSH主题\n"
sleep 0.016
echo -e " 5   其他工具\n"
sleep 0.016
echo -e " 6   编程环境配置\n"
sleep 0.016
echo -e " 7   超级大宝贝工具\n"
sleep 0.016
echo -e "99   充软妹币\n"
sleep 0.016
echo -e " 0   退出\n\n\n"
}
function home1 (){
cd ~
read -p "ZFX ~> " home
case $home in
1 )
	sleep 1
	hint ; echo -e "官网：https://mirror.tuna.tsinghua.edu.cn/help/termux/" ; hint
	sleep 3
	sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux stable main@' $PREFIX/etc/apt/sources.list
	apt update && apt upgrade -y
	home0 ; home1 ;;
2 )
	sleep 1
	if test -d ~/.termux/ ; then
		:
	else
		mkdir -p ~/.termux/
	fi
	echo -e "extra-keys = [['TAB','>','-','~','/','*','$'],['ESC','(','HOME','UP','END',')','PGUP'],['CTRL','[','LEFT','DOWN','RIGHT',']','PGDN']]" > ~/.termux/termux.properties
	termux-reload-settings
	home0 ; home1 ;;
3 )
	termux-setup-storage
	home0 ; home1 ;;
4 )
	sleep 1
	hint ; echo -e "第一个是选择颜色，第二个是选择字体！" ; hint
	sleep 7
	pkg install -y curl
	sh -c "$(curl -fsSL https://github.com/Cabbagec/termux-ohmyzsh/raw/master/install.sh)"
	home0 ; home1 ;;
5 )
	echo -e "\n\n"
	game0 ; game1 ;;
6 )
	echo -e "\n\n"
	work0 ; work1 ;;
7 )
	echo -e "\n\n"
	library0 ; library1 ;;
99 )
	sleep 1
	read -p "请输入充值的软妹币额度：" a
	case $a in
	[0-9]* )
		read -p "请输入支付密码："
		echo -e "连接服务器..."
		sleep 1
		echo -e "已成功充入 $a 软妹币！"
		sleep 0.2s
		echo -e "ZFX 已升级为 svip 版！" ;;
	* )
		sleep 1
		echo -e "服务器请求错误！"
		sleep 0.2s
		echo -e "正在进攻..."
		sleep 0.2s
		echo -e "入侵成功！已抢夺对方全部软妹币！" ;;
	esac
	exit ;;
520 )
	echo -e "\n\n"
	hide0 ; hide1 ;;
0 )
	clear
	cat $PREFIX/etc/motd
	exit ;;
00 )
	exit ;;
* )
	echo -e "该项超脱了天地之外！"
	sleep 1
	home1 ;;
esac
}
function game0 (){
echo -e "\n\n\n\n\n"
echo -e " 1   猜数字\n"
sleep 0.016
echo -e " 2   无\n"
sleep 0.016
echo -e " 3   无\n"
sleep 0.016
echo -e " 4   无\n"
sleep 0.016
echo -e " 5   无\n"
sleep 0.016
echo -e " 6   mpv播放器\n"
sleep 0.016
echo -e " 7   无\n"
sleep 0.016
echo -e " 8   neofetch\n"
sleep 0.016
echo -e " 9   纯文本浏览器\n"
sleep 0.016
echo -e " 10  you-get\n"
sleep 0.016
echo -e " 11   ip\n"
sleep 0.016
echo -e " 12   更换termux问候语\n"
sleep 0.016
echo -e " 13   adb fastboot\n"
sleep 0.016
echo -e " 0   返回\n\n\n"
}
function game1 (){
cd ~
read -p "ZFX ~> " game
case $game in
1 )
	sleep 1
	hint ; echo -e "使用方法：输入 van\n 小火车🚂pkg install sl \n 彩虹猫🐱pkg install nyancat \n 贪吃蛇🐍pkg install nsnake \n 显示详细信息pkg install screenfetch" ; hint
	sleep 3
	pkg install -y wget
	wget -O $PREFIX/bin/van https://nibazshab.github.io/404/when/van.sh
	chmod +x $PREFIX/bin/van
	game0 ; game1 ;;
2 )
	sleep 1
	hint ; echo -e "   " ; hint
	sleep 3
	game0 ; game1 ;;
3 )
	sleep 1
	hint ; echo -e "     " ; hint
	sleep 3
	game0 ; game1 ;;
4 )
	sleep 1
	hint ; echo -e "     " ; hint
	sleep 3
	game0 ; game1 ;;
5 )
	sleep 1
	sleep 3
	game0 ; game1 ;;
6 )
	sleep 1
	hint ; echo -e "使用方法：请自行百度" ; hint
	sleep 3
	pkg install -y mpv
	game0 ; game1 ;;
7 )
	sleep 1
	hint ; echo -e "     " ; hint
	sleep 3
	game0 ; game1 ;;
8 )
	sleep 1
	hint ; echo -e "使用方法：输入 neofetch" ; hint
	sleep 3
	pkg install -y neofetch
	game0 ; game1 ;;
9 )
	sleep 1
	hint ; echo -e "名称：w3m\n使用方法：请自行百度" ; hint
	sleep 3
	pkg install -y w3m
	game0 ; game1 ;;
10 )
	sleep 1
	pkg install -y ffmpeg
	pkg install -y python
	pip3 install you-get
	hint ; echo -e "-o /路径 -O 名称 -u 查看URL地址 -i 查看详情" ; hint
	game0 ; game1 ;;
11 )
	sleep 1
	if test -e $PREFIX/bin/curl ; then
		:
	else
		pkg install -y curl
	fi
	ip -br -c addr ; curl myip.ipip.net
	sleep 3
	game0 ; game1 ;;
12 )
	sleep 1
	echo -e "\n\n\n\n\n  ----------------------------------------------------\n\n             民生各有所乐兮，余独好修以为常\n             虽体解吾犹未变兮，岂余心之可惩\n\n\n               　　　／　　　 ／   | \n                　　 Γ￣￣￣￣ |  | \n                　　 |[]::　　 |   | \n                　　 |＿＿_＿＿|　|\n                　　 |[]::　　 |　 | \n                　　 |＿＿_＿＿|　| \n                ｶﾞﾗｯ |＿＿_＿＿|　 | \n                 .彡／(´･ω･)　／|　| \n                   　Γ￣￣￣￣ |　|／ \n                    Ｌ＿＿＿＿_|／\n\n\n" > $PREFIX/etc/motd
	game0 ; game1 ;;
13 )
	sleep 1
	hint ; echo -e "adb    fastboot" ; hint
	sleep 3
	pkg install -y unzip
	pkg install -y wget
	wget https://github.com/NibaZShab/NibaZShab.github.io/releases/download/11/11.zip
	unzip 11.zip
	rm -rf 11.zip
	mv -f ~/adb $PREFIX/bin/
	mv -f ~/fastboot $PREFIX/bin/
	chmod +x $PREFIX/bin/adb
	chmod +x $PREFIX/bin/fastboot
	game0 ; game1 ;;
0 )
	echo -e "\n\n"
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "该项超脱了天地之外！"
	sleep 1
	game1 ;;
esac
}
function work0 (){
echo -e "\n\n\n\n\n"
echo -e " 1   python\n"
sleep 0.016
echo -e " 2   java\n"
sleep 0.016
echo -e " 3   go\n"
sleep 0.016
echo -e " 4   c/c++\n"
sleep 0.016
echo -e " 5   php\n"
sleep 0.016
echo -e " 6   nodejs\n"
sleep 0.016
echo -e " 7   pip 清华源\n"
sleep 0.016
echo -e " 8   npm 淘宝源\n"
sleep 0.016
echo -e " 9   python_3.7\n"
sleep 0.016
echo -e " 0   返回\n\n\n"
}
function work1 (){
cd ~
read -p "ZFX ~> " work
case $work in
1 )
	sleep 1
	pkg install -y python
	work0 ; work1 ;;
2 )
	sleep 1
	pkg install -y wget
	wget -O ~/JDK.deb https://github.com/NibaZShab/NibaZShab.github.io/releases/download/08/08.deb
	dpkg -i ~/JDK.deb
	rm -rf ~/JDK.deb
	work0 ;  work1 ;;
3 )
	sleep 1
	pkg install -y golang
	work0 ; work1 ;;
4 )
	sleep 1
	pkg install -y clang
	work0 ; work1 ;;
5 )
	sleep 1
	pkg install -y php
	work0 ; work1 ;;
6 )
	sleep 1
	pkg install -y nodejs
	work0 ; work1 ;;
7 )
	sleep 1
	if test -e $PREFIX/bin/pip ; then
		hint ; echo -e "恢复官方源：rm -rf ~/.pip/" ; hint
		sleep 3
		mkdir -p ~/.pip/
		echo -e "[global]\nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple\n[install]\ntrusted-host=mirrors.aliyun.com" > ~/.pip/pip.conf
	else
		echo -e "请先安装 python 环境"
	fi
	work0 ; work1 ;;
8 )
	sleep 1
	if test -e $PREFIX/bin/npm ; then
		hint ; echo -e "恢复官方源：npm config set registry https://registry.npmjs.org/" ; hint
		sleep 3
		npm config set registry https://registry.npm.taobao.org
	else
		echo -e "请先安装 nodejs 环境"
	fi
	work0 ; work1 ;;
9 )
	sleep 1
	pkg install -y wget
	pkg install -y unzip
	wget https://github.com/NibaZShab/NibaZShab.github.io/releases/download/12/12.zip
	unzip 12.zip
	rm -rf 12.zip
	dpkg -i ~/python_3.7.5-3_aarch64.deb
	dpkg -i ~/python-static_3.7.5-3_aarch64.deb
	dpkg -i ~/python-tkinter_3.7.5-3_aarch64.deb
	apt-mark python python-static
	work0 ; work1 ;;
0 )
	echo -e "\n\n"
	home0 ; home1 ;;
00 )
	exit ;;
* )
	echo -e "该项超脱了天地之外！"
	sleep 1
	work1 ;;
esac
}
function library0 (){
echo -e "\n\n\n\n\n"
echo -e " 1   浏览器监控\n"
sleep 0.016
echo -e " 2   atilo\n"
sleep 0.016
echo -e " 3   annie视频下载工具\n"
sleep 0.016
echo -e " 4   aria2下载器\n"
sleep 0.016
echo -e " 5   命令行版百度云\n"
sleep 0.016
echo -e " 6   qrcode二维码\n"
sleep 0.016
echo -e " 7   hexo博客\n"
sleep 0.016
echo -e " 8   bilibili挂机脚本\n"
sleep 0.016
echo -e " 9   网易ncm格式转换\n"
sleep 0.016
echo -e " 0   返回\n\n\n"
}
function library1 (){
cd ~
read -p "ZFX ~> " library
case $library in
1 )
    sleep 3
    hint ; echo -e "SocialFish      请使用'python SocialFish.py'命令执行" ; hint
    sleep 5
    pkg install -y git
    pkg install -y python
    pkg install -y php
    pkg install -y curl
    pkg install -y openssh
    pkg install -y grep
    pkg install -y wget
    git clone https://github.com/An0nUD4Y/SocialFish
    cd SocialFish
    pip install -r requirements.txt
    library0 ; library1 ;;
2 )
	sleep 1
	hint ; echo -e "atilo   images可用列表\n remove卸载   pull安装  clear清空" ; hint
	curl -o $PREFIX/bin/atilo https://raw.githubusercontent.com/YadominJinta/atilo/master/atilo
	chmod +x $PREFIX/bin/atilo
	library0 ; library1 ;;
3 )
	sleep 1
	hint ; echo -e "Annie视频下载工具" ; hint
	sleep 3
	pkg install -y golang
	pkg install -y git
	pkg install -y ffmpeg
	git clone https://github.com/iawia002/annie.git
	cd ~/annie/
	echo -e "$colorhint 编译时间较长，请耐心等待 $colorend"
	sleep 2
	GOOS=android GOARCH=arm64 go build -o annie main.go
	mv -f annie $PREFIX/bin/
	cd ~
	rm -rf ~/annie
	chmod -Rf 777 ~/go/
	rm -rf ~/go/
	library0 ; library1 ;;
4 )
	sleep 1
	hint ; echo -e "使用方法：输入 ~/aria2\n文件下载在 /sdcard/Download/\n" ; hint
	sleep 3
	pkg install -y aria2
	pkg install -y wget
	if test -d /sdcard/Download/aria2/ ; then
		if test -e /sdcard/Download/aria2/aria2.session ; then
			:
		else
			touch /sdcard/Download/aria2/aria2.session
		fi
	else
		mkdir -p /sdcard/Download/aria2/
		touch /sdcard/Download/aria2/aria2.session
	fi
	if test -d ~/.config/ ; then
		rm -rf ~/.config/aria2/
	else
		:
	fi
	mkdir -p ~/.config/aria2/
	wget -O ~/.config/aria2/aria2.conf https://github.com/NibaZShab/NibaZShab.github.io/releases/download/09/09.conf
	echo -e "echo \"rpc-key: 123456\"\nsleep 2\nam start -a android.intent.action.VIEW -d http://aria2.net\naria2c --conf-path=$HOME/.config/aria2/aria2.conf" > ~/aria2
	chmod +x ~/aria2
	library0 ; library1 ;;
5 )
	sleep 1
	hint ; echo -e "使用方法：输入 ~/bdy\n百度云文件下载于 /sdcard/Download/\n项目地址：https://github.com/iikira/BaiduPCS-Go" ; hint
	sleep 3
	pkg install -y golang
	pkg install -y git
	git clone https://github.com/iikira/BaiduPCS-Go.git
	cd ~/BaiduPCS-Go/
	echo -e "$colorhint 编译时间较长，请耐心等待 $colorend"
	sleep 2
	GOOS=android GOARCH=arm64 go build -o bdy main.go
	mv -f bdy ~
	cd ~
	rm -rf ~/BaiduPCS-Go/
	chmod -Rf 777 ~/go/
	rm -rf ~/go/
	library0 ; library1 ;;
6 )
	sleep 1
	hint ; echo -e "项目地址：https://github.com/sylnsfar/qrcode" ; hint
	sleep 3
	pkg install -y python
	pip install qrcode
	library0 ; library1 ;;
7 )
	sleep 1
	hint ; echo -e "请阅读小白教程，自行完成博客的搭建\n教程地址：https://nibazshab.github.io/post/3" ; hint
	sleep 3
	library0 ; library1 ;;
8 )
	sleep 1
	hint ; echo -e "使用方法：输入 ~/bilibili\n安装指令感谢 coolapk@大编一号\n项目地址：https://github.com/lkeme/BiliHelper" ; hint
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
	hint ; echo -e "输入 vi ~/BiliHelper/conf/user.conf 填上自己的b站账号和密码即可" ; hint
	sleep 3
	echo -e "php ~/BiliHelper/index.php" > ~/bilibili
	chmod +x ~/bilibili
	library0 ; library1 ;;
9 )
	sleep 1
	hint ; echo -e "网易音乐" ; hint
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
	echo -e "该项超脱了天地之外！"
	sleep 1
	library1 ;;
esac
}
logo
sleep 1
home0 ; home1
exit
