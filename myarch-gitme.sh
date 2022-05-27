#!/bin/bash
#
#tput setaf 0 = black
#tput setaf 1 = red
#tput setaf 2 = green
#tput setaf 3 = yellow
#tput setaf 4 = dark blue
#tput setaf 5 = purple
#tput setaf 6 = cyan
#tput setaf 7 = gray
#tput setaf 8 = light blue
#

clear
echo
tput setaf 3
echo "----------------------------------------------------------:START"
tput sgr0
echo

echo "================================================================"
echo "               Grabbing everything from GitHub..."
echo "Make sure your repositories array is correct if anything missing"
echo "================================================================"

# use ls -d */ > list to get the list of the created githubs and copy/paste in

_repositories=(
myarch-calamares-config/
myarch-iso/
myarch-pkgbuild/
myarch_repo/
)

_count=0

mkdir ~/myArch
cd ~/myArch

for name in "${_repositories[@]}"; do
	_count=$[_count+1]
	tput setaf 1;echo "Github "$_count" - "$(basename `pwd`);tput sgr0;
	# if there is no folder then make one
	git clone https://github.com/wheeljack73/$name
	echo "** "$(basename `pwd`)" Done **"
done

echo
tput setaf 3
echo "----------------------------------------------------------:END"
tput sgr0
echo