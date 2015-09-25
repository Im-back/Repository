#!/bin/bash
#by: I'm back
#Under GPL licence

if [ -z $1 ];then
echo "	usage: $0 <file>";
exit 1;
fi

readarray -t source < $1;
read -p "what do you searching about: " search;
for i in "${source[@]}"; do
	echo $'\n\n';
	echo -e "\033[1;31m${i}\033[0m";
	curl $i | grep -i "$search" > /dev/null && echo -e "\n\n\n \033[1;32m100/100\033[0m\n";
done
