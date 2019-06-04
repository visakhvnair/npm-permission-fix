#!/bin/bash
mkdir ~/.npm-global
if [ $? -eq 0 ]
then
	npm config set prefix '~/.npm-global'
	if [ $? -eq 0 ]
	then
		echo -e "#Added by user `whoami` \n export PATH=~/.npm-global/bin:\$PATH" >> ~/.profile
		if [ $? -eq 0 ]
		then

			source ~/.profile
			if [ $? -eq 0 ]
			then
				echo "Successfully Fixed"
			else
				echo -e "Cannot source ~/.profile manually run  \e[40m\e[92msource ~/.profile\e[0m"
				exit
			fi
		else
			echo -e "Error: Manually run  \n\e[40m\e[92mecho -e \"#Added by user `whoami` \\\n export PATH=~/.npm-global/bin:\$PATH\" >> ~/.profile\e[0m"
			echo -e "\e[40m\e[92msource ~/.profile\e[0m"
			exit
		fi 
	else
		
		echo -e "Error: Manually run the following \n \e[40m\e[92m\nnpm config set prefix '~/.npm-global'\e[0m"
		echo -e "\e[40m\e[92mecho -e \"#Added by user `whoami` \\\nexport PATH=~/.npm-global/bin:\$PATH\" >> ~/.profile\e[0m"
		echo -e "\e[40m\e[92msource ~/.profile\e[0m"
		exit


	fi 
else
	echo -e "\e[31m\e[40m#########################################";
	echo -e "Script Execution faild";
	echo -e "#########################################\e[0m";
	exit
fi 

npm install -g jshint
if [ $? -eq 0 ]
then
 echo -e "  \e[40m\e[92mSuccessfully tested global installation\e[0m"
else
  echo -e " \e[41mCannot fix the issue \e[0m"
fi



