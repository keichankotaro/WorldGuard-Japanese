#! /bin/bash

javas=($(find . -type f | grep .java))

for java in "${javas[@]}"; do
	g=$(cat ${java} | grep ${1})
	if [ ${#g} != 0 ]; then
		echo $java
		echo $g
		echo -e "\n\n"
	fi
done
