#Kali/termux packeges installer toool
#Auther : Tauseed zaman


cyan='\e[0;36m' lightcyan='\e[96m' green='\e[0;32m' lightgreen='\e[1;32m' 
white='\e[1;37m' red='\e[1;31m' yellow='\e[1;33m' blue='\e[1;34m' Escape="\033"; 
white="${Escape}[0m"; RedF="${Escape}[31m"; GreenF="${Escape}[32m";

while :
do

echo -e $red "[ ZAMAN ]";

echo -e $red "[1] ~》$yellow Install Text Editors";
echo -e $red "[2] ~》$yellow Pishing Tools"
echo -e $red "[3] ~》$yellow Install Sherlo0ck";

echo -e $red "[0] ~》$yellow Exit Zaman";
read -t 50 -p "Choose from the about: " x

if [ $x -eq 1 ]
then {
	echo -e $red "[1] ~》$yellow Install nano";
	echo -e $red "[2] ~》$yellow Install vim";
	echo -e $red "[3] ~》$yellow Install Micro";
	read editor;
	if [ $editor -eq 1 ] 
	then {
		apt install nano
		echo -e $green "nano text editor installed";
		echo -e $green "type  nano --help for details";
		read "Press any key to return" 
	}
	fi
	
	if [ $editor -eq 2 ] 
	then {
	echo "Installing VIM Text Editor.........";
	sleep 1
	apt install vim;
	echo -e $green "vim text editor installed";
        echo -e $green "type  nano --help for details";
        read -p  "Press any key to return"
	} fi

	if [ $editor -eq 3 ] 
        then {
        	 echo "Installing micro Text Editor.........";
	         sleep 1 
       		 apt install micro;
       		 echo -e $green "Micro text editor installed";
       		 echo -e $green "type  micro --help for details";
       		 read -p  "Press any key to return"
        } fi

}
fi

if [ $x -eq 2 ]
then {
	echo -e $cyan"Welcome to the world of $red pishing $cyan tools" 
	echo -e $red"[1] ~》$yellow Try NexPisher "; 
	echo -e $red"[2] ~》$yellow Try ZPISHER";
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
		echo -e $green"Zpisher Installed...";	
		cd zpisher
		echo -e $red" Executing Zpisher......";
		sleep 1
		bash zpisher.sh	
	}
	fi

}
fi

if [ $x -eq 3 ]
then {
	apt install python3
	git clone https://github.com/sherlock-project/sherlock.git
	cd sherlock
	python3 -m pip install -r requirements.txt
	echo -e $yellow"Enter Target Username:"
	read username
	python sherlock.py $username
}
fi
if [ $x -eq 0 ]
then {
	clear
	exit 0;
	echo " Thanks for using Zaman";
}
fi
done
