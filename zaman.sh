#Kali/termux packeges installer toool
#Auther : Tauseed zaman

while :
do
echo "ZAMAN";
echo "[1] ~》Install nano text CLI text editor ";
echo "[2] ~》Pishing Tools ";
echo "[0] ~》Quite Zaman ❌\n";
read -p "Enter number: " x

if [ $x -eq 1 ]
then {
	clear
	apt install nano
}
fi

if [ $x -eq 2 ]
then {
	clear
	echo "[1] ~》Install NexPisher ";
	if [ $x -eq 1 ]
		then {
		clear
		apt update ; apt install git -y ; 
		git clone git clone https://github.com/htr-tech/nexphisher.git ; 
		cd nexphisher ; bash setup ; bash nexphisher
		
	}
	fi

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