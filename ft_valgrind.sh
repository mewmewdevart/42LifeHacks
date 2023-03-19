#!/bin/bash

echo " ___      ___ ________  ___       ________  ________  ___  ________   ________     "
echo "|\  \    /  /|\   __  \|\  \     |\   ____\|\   __  \|\  \|\   ___  \|\   ___ \    "
echo "\ \  \  /  / | \  \|\  \ \  \    \ \  \___|\ \  \|\  \ \  \ \  \\ \  \ \  \_|\ \   "
echo " \ \  \/  / / \ \   __  \ \  \    \ \  \  __\ \   _  _\ \  \ \  \\ \  \ \  \ \\ \  "
echo "  \ \    / /   \ \  \ \  \ \  \____\ \  \|\  \ \  \\  \\ \  \ \  \\ \  \ \  \_\\ \ "
echo "   \ \__/ /     \ \__\ \__\ \_______\ \_______\ \__\\ _\\ \__\ \__\\ \__\ \_______\ "
echo "    \|__|/       \|__|\|__|\|_______|\|_______|\|__|\|__|\|__|\|__| \|__|\|_______| "


# (baseado nos meus files)
cd bin

first_file=$(find . -maxdepth 1 -type f | head -n 1)

valgrind --track-origins=yes ./"$first_file" > result.txt 2> leaks.txt

grep "ERROR SUMMARY" result.txt > errors.txt

diff teste.txt errors.txt > result.diff

cat result.diff
