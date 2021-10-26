
#Kali/termux packeges installer toool
#Auther : Tauseed zaman


cyan='\e[0;36m' lightcyan='\e[96m' green='\e[0;32m' lightgreen='\e[1;32m' 
white='\e[1;37m' red='\e[1;31m' yellow='\e[1;33m' blue='\e[1;34m' Escape="\033"; 
white="${Escape}[0m"; RedF="${Escape}[31m"; GreenF="${Escape}[32m";

while :
do
clear

echo -e $lightgreen " _____   _    __  __    _    _   _" 
echo -e $lightgreen "|__  /  / \  |  \/  |  / \  | \ | |"
echo -e $lightgreen "  / /  / _ \ | |\/| | / _ \ |  \| |"
echo -e $lightgreen " / /_ / ___ \| |  | |/ ___ \| |\  |"
echo -e $lightgreen "/____/_/   \_\_|  |_/_/   \_\_| \_|"
echo 
echo -e $cyan "Kali/Termux Helper Tool for biggnners."
echo -e $red"  --------------------------------------"
echo

echo -e $red "[1] ~》$yellow Text Editors";
echo -e $red "[2] ~》$yellow Pishing Tools"
echo -e $red "[3] ~》$yellow Information Gathering";
echo -e $red "[0] ~》$yellow Exit Zaman";
echo 
read -p "Choose from the above menu : " x

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
	elif [ $editor -eq 2 ] 
	then {
	echo "Installing VIM Text Editor.........";
	sleep 1
	apt install vim;
	echo -e $green "vim text editor installed";
    echo -e $green "type  nano --help for details";
    read -p "Press enter key to return"
	}
	elif [ $editor -eq 3 ] 
        then {
        	 echo "Installing micro Text Editor.........";
	         sleep 1 
       		 apt install micro;
       		 echo -e $green "Micro text editor installed";
       		 echo -e $green "type  micro --help for details";
       		 read -p  "Press enter key to return"
        } 
        else {
        read -p "Invalid entry. Try again";
        }
        fi

}
elif [ $x -eq 2 ]
then {
	echo -e $cyan"Welcome to the world of $red pishing $cyan tools" 
	echo -e $red"[1] ~》$yellow NexPisher "; 
	echo -e $red"[2] ~》$yellow ZPHISHER";
	 read pish; 
	if [ $pish -eq 1 ]
		then {
		apt update ; 
		apt install git -y ; 
		git clone https://github.com/htr-tech/nexphisher.git ; 
		cd nexphisher ; bash setup ; bash nexphisher

	}
	elif [ $pish -eq 2 ]
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
	read -p "Invalid entry. Try again";
	}
	fi
}
elif [ $x -eq 3 ]
then {
	echo -e $cyan"Information Gathering tools" 
	echo -e $red"[1] ~》$yellow Phone Number Tracker"; 
	echo -e $red"[2] ~》$yellow Sherlock";
	echo -e $red"[3] ~》$yellow Exif-Tool";
	read -p "choose from the above menu: " infoo; 
	if [ $infoo -eq 1 ]
		then {
		apt update ; 
		apt install git -y ; 
		git clone https://github.com/htr-tech/nexphisher.git ; 
		cd nexphisher ; bash setup ; bash nexphisher
	
	}
	elif [ $infoo -eq 2 ]
	then  {	
	 echo
	 echo -p "Updating the system...."
	 sleep 1
		apt update
		echo
		echo -p "Upgrading the system..."
		sleep 1
		apt upgrade
		echo
		echo -p "Installing python...."
		sleep 1
		apt install python
		apt install python2
		pip2 install requests		
		pip2 install mechanize		
		git clone https://GitHub.com/ShuBhamg0sain/phone-number-tracker		
		python2 phone-number-tracker/tracker.py
		}
	elif [ $infoo -eq 3 ]
			then  {	
			 echo
			 echo -p "Installing...."
			 sleep 1
			 apt install exitTool
			 echo -e $cyan" Exif-Tool Installed."
			 echo -e $green "type  exiftool --help for details";
       		 read -p  "do you want to continue [y/n]" i
       		 if [ $x -eq "n"]
       		 	then {
       		 		exit 0;
       		 	}
       		 fi
			}
		fi
}
elif [ $x -eq 0 ]
then {
	exit 0;
	echo " Thanks for using Zaman";
}
else {
echo
read -p "Lol! Invalid Entry try again 😞";
}
fi
done
