#!/bin/bash
#
#Autheor:Viking Warlock
#Last Modify:2015-11-30
#

if [ $# -gt 0 ]; then
completeAuto=$1
else
completeAuto="n"
fi

echo -e "-----------------------------------------------"
echo -e "| Viking Warlock's server auto install script |"
echo -e "|                                             |"
echo -e "|                Ubuntu Only                  |"
echo -e "|                                             |"
echo -e "|             Please Hold On ...              |"
echo -e "-----------------------------------------------"
echo
sleep 1
echo -e "\033[40;31mUpdate Resources first\033[0m"
echo
sudo apt-get update
echo -e "\033[40;31mInstalling git,zsh,tmux,vim and pip\033[0m"
sudo apt-get install git tmux vim python-pip -y
echo
sudo apt-get install zsh -y
echo -e "\033[40;34mDone !\033[0m"
echo
echo
sleep 1
echo -e "\033[40;31mStart to set the Vim Environment\033[0m"
echo -e "Cloning file from git..."
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
echo -e "Running script..."
sh ~/.vim_runtime/install_awesome_vimrc.sh
echo
echo -e "\033[40;34mDone !\033[0m"
echo
echo
sleep 1
echo -e "Do you need Python Develop Environment?(y/n)[y]]"
if [ "$completeAuto" = "n" ]
	then
		option = "y"
		read inputs
		if [ -z inputs ];then
		else
			option=$inputs
		fi
fi
if [ "$option" == y* -o "$completeAuto" = "a" ]
	then
		echo -e "\033[40;31mInstalling django and BeautifulSoup\033[0m"
		sudo pip install django beautifulsoup4 --verbose
		echo
		echo -e "\033[40;34mDone !\033[0m"
		echo
		echo
		sleep 1
fi
echo -e "Do you need Server Develop Environment?(ngnix) (y/n)[y]]"
if [ "$completeAuto" = "n" ]
	then
		option = "y"
		read inputs
		if [ -z inputs ];then
		else
			option=$inputs
		fi
fi
if [ "$option" == y* -o "$completeAuto" = "a" ]
	then
		echo -e "\033[40;31mInstalling ngnix\033[0m"
		sudo apt-get install ngnix -y
		echo
		echo -e "\033[40;34mDone !\033[0m"
		# echo -e "\033[40;31mInstalling uwsgi\033[0m"
		# sudo pip install uwsgi==2.0.8
		# echo
		# echo -e "\033[40;34mDone !\033[0m"
		# echo
		echo
		sleep 1
fi
echo -e "Do you need oh-my-zsh ? (y/n)[y]]"
if [ "$completeAuto" = "n" ]
	then		
		option = "y"
		read inputs
		if [ -z inputs ];then
		else
			option=$inputs
		fi
fi
if [ "$option" == y* -o "$completeAuto" = "a" ]
	then
		echo -e "\033[40;31mInstalling oh-my-zsh\033[0m"
		sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
		echo
		echo -e "\033[40;34mDone !\033[0m"
		echo
		echo
		sleep 1
fi
echo -e "\033[40;31mInstall DataBase By Yourself \033[0m"
echo
echo
sleep 2
echo -e "\033[40;34mAuto Install Completed !\033[0m"
echo $?