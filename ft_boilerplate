#!/bin/bash

echo "__________________________________________________________________________"
echo "(\ 									"
echo "\'\									"
echo " \'\     __________  							"
echo " / '|   ()_________)	- Automation for my 42 projects [LIBFT INCLUDE] "
echo " \ '/    \ ~~~~~~~~ \							"
echo "   \       \ ~~~~~~   \				+ gnl			"
echo "   ==).      \__________\			+ ft_printf			"
echo "  (__)       ()__________) 						"
echo "__________________________________________________________________________"


echo "Remember to run this script in your root project directory."
echo "Waiting for 5 seconds..."
sleep 5

read -p "What is your username on GitHub? " USERNAME
USERNAME=${USERNAME:-"mewmewdevart"}

read -p "What is your 'libft' called on GitHub? " LIBFT
LIBFT=${LIBFT:-"libft"}

echo "What protocol would you like to use to clone it? "
read -p "HTTPS or SSH? " PROTOCOL
PROTOCOL=${PROTOCOL:-"SSH"}

echo "Creating directories..."
mkdir includes/
mkdir -p libs/libft
mkdir rscs/
mkdir scrs/
echo "Done."

echo "Cloning your 'libft' into 'libraries'..."
if [[ $PROTOCOL == "SSH" || $PROTOCOL == "ssh" ]]; then
	git clone git@github.com:$USERNAME/$LIBFT.git libraries/libft 2> /dev/null
elif [[ $PROTOCOL == "HTTPS" || $PROTOCOL == "https" ]]; then
	git clone https://github.com/$USERNAME/$LIBFT.git libraries/libft 2> /dev/null
else
	echo "Invalid protocol."
	exit 1
fi

echo "Done.\n"

echo "Moving your libft to correct folder..."
mv libraries/libft libraries/library
mv libraries/library/libft/ libs/
rm -rf libraries/library
rm -rf libraries/library/README.md

echo "Do you want to download the Makefiles for the project? (yes/no)"
read answer
if [ "$answer" == "yes" ]; then
  echo "Downloading 'Makefile_1 with simple structure with libft'..."
  wget https://raw.githubusercontent.com/mewmewdevart/42Automation/main/srcsBoilerplate/Makefile_1 2> /dev/null
  echo "Done."
  echo "Downloading 'Makefile_2 with libft and mlx'..."
  wget https://raw.githubusercontent.com/mewmewdevart/42Automation/main/srcsBoilerplate/Makefile_2 2> /dev/null
  echo "Done."

   echo "Don't forget to rename them to the correct name and delete the ones you won't be using."
elif [ "$answer" == "no" ]; then
  echo "No Makefile? Okay!."
else
  echo "Invalid answer. Please type 'yes' or 'no' in lowercase"
fi

echo "Do you want to download the some .gitignore files? (yes/no)"
read answer
if [ "$answer" == "yes" ]; then
  echo "Downloading '.gitignore' to C projects..."
    wget https://raw.githubusercontent.com/mewmewdevart/42Automation/main/srcsBoilerplate/.gitignore_C 2> /dev/null
  echo "Done."
  echo "Downloading '.gitignore' to C++ projects..."
    wget https://raw.githubusercontent.com/mewmewdevart/42Automation/main/srcsBoilerplate/.gitignore_CPlus 2> /dev/null
  echo "Done."
  echo "Don't forget to rename them to the correct name and delete the ones you won't be using."
elif [ "$answer" == "no" ]; then
  echo "No .gitignore? Okay!."
else
  echo "Invalid answer. Please type 'yes' or 'no' in lowercase"
fi
