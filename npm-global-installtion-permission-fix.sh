mkdir ~/.npm-global
if [ $? -eq 0 ]
then
	npm config set prefix '~/.npm-global'
	if [ $? -eq 0 ]
	then
		echo  "#Added by user `whoami` \n export PATH=~/.npm-global/bin:\$PATH" >> ~/.profile
		if [ $? -eq 0 ]
		then

			source ~/.profile
			if [ $? -eq 0 ]
			then
				echo "Successfully Fixed"
			else
				echo  "Cannot source ~/.profile manually run  \e[40m\e[92msource ~/.profile\e[0m"
				exit
			fi
		else
			echo  "Error: Manually run  \n\e[40m\e[92mecho -e \"#Added by user `whoami` \\\n export PATH=~/.npm-global/bin:\$PATH\" >> ~/.profile\e[0m"
			echo "\e[40m\e[92msource ~/.profile\e[0m"
			exit
		fi 
	else
		
		echo "Error: Manually run the following \n \e[40m\e[92m\nnpm config set prefix '~/.npm-global'\e[0m"
		echo "\e[40m\e[92mecho -e \"#Added by user `whoami` \\\nexport PATH=~/.npm-global/bin:\$PATH\" >> ~/.profile\e[0m"
		echo "\e[40m\e[92msource ~/.profile\e[0m"
		exit


	fi 
else
	echo  "\e[31m\e[40m#########################################";
	echo  "Script Execution faild";
	echo  "#########################################\e[0m";
	exit
fi 