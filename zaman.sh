#Kali/termux packeges installer toool
#Auther : Tauseed zaman


cyan='\e[0;36m' lightcyan='\e[96m' green='\e[0;32m' lightgreen='\e[1;32m' 
white='\e[1;37m' red='\e[1;31m' yellow='\e[1;33m' blue='\e[1;34m' Escape="\033"; 
white="${Escape}[0m"; RedF="${Escape}[31m"; GreenF="${Escape}[32m";

while :
do

echo -e $lightgreen " _____   _    __  __    _    _   _" 
echo -e $lightgreen "|__  /  / \  |  \/  |  / \  | \ | |"
echo -e $lightgreen "  / /  / _ \ | |\/| | / _ \ |  \| |"
echo -e $lightgreen " / /_ / ___ \| |  | |/ ___ \| |\  |"
echo -e $lightgreen "/____/_/   \_\_|  |_/_/   \_\_| \_|"
echo 
echo -e $cyan "Kali/Termux Helper Tool for biggnners."
echo -e $red"  --------------------------------------"
echo

echo -e $red "[1] ~》$yellow Install Text Editors";
echo -e $red "[2] ~》$yellow Pishing Tools"
echo -e $red "[3] ~》$yellow Install Sherlo0ck";
echo -e $red "[0] ~》$yellow Exit Zaman";
echo 
read -p "Choose from the about menu : " x

if [ $x -eq 1 ]
then {
	echo
	echo -e $red "[1] ~》$yellow Install nano";
	echo -e $red "[2] ~》$yellow Install vim";
	echo -e $red "[3] ~》$yellow Install Micro";
	echo
	read -p "Choose from the above Menu : " editor;
	if [ $editor -eq 1 ] 
	then {
		apt install nano
		echo -e $green "nano text editor installed";
		echo -e $green "type  nano --help for details";
		read -p "Press enter key to return" 
	}
	fi
	
	if [ $editor -eq 2 ] 
	then {
	echo "Installing VIM Text Editor.........";
	sleep 1
	apt install vim;
	echo -e $green "vim text editor installed";
    echo -e $green "type  nano --help for details";
    read -p "Press enter key to return"
	} fi

	if [ $editor -eq 3 ] 
        then {
        	 echo "Installing micro Text Editor.........";
	         sleep 1 
       		 apt install micro;
       		 echo -e $green "Micro text editor installed";
       		 echo -e $green "type  micro --help for details";
       		 read -p  "Press enter key to return"
        } fi

}
fi

if [ $x -eq 2 ]
then {
	echo -e $cyan"Welcome to the world of $red pishing $cyan tools" 
	echo -e $red"[1] ~》$yellow Try NexPisher "; 
	echo -e $red"[2] ~》$yellow Try ZPHISHER";
	 read pish; 
	if [ $pish -eq 1 ]
		then {
		apt update ; 
		apt install git -y ; 
		git clone https://github.com/htr-tech/nexphisher.git ; 
		cd nexphisher ; bash setup ; bash nexphisher

	}
	fi

	if [ $pish -eq 2 ]
		then {
		echo -e $cyan" Installing...";	
		apt update;
		apt upgrade
		git clone git://github.com/htr-tech/zphisher.git
		echo -e $green"Zphisher Installed...";	
		echo -e $red" Executing Zphisher......";
		sleep 0
		bash zphisher/zphisher.sh	
	}
	else {
	echo
	}
	fi
}
fi

if [ $x -eq 3 ]
then {
	apt install python3
	git clone https://github.com/sherlock-project/sherlock.git
	python3 -m pip install -r sherlock/requirements.txt
	echo -e $yellow"Enter Target Username:"
	read username
	python sherlock/sherlock.py $username
}
fi
if [ $x -eq 0 ]
then {
	exit 0;
	echo " Thanks for using Zaman";
}
else {
echo "Lol! Invalid Entry try again 😞";
}
fi
done
