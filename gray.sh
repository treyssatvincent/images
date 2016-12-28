clean_extensionjpg(){
mmv \*.[Jj][Pp][Gg] \#1.jpg
mmv \*.[Jj][Pp][Ee][Gg] \#1.jpg
}
clean_extensionpng(){
mmv -v \*.[Pp][Nn][Gg] \#1.png
}
clean_extension(){
clean_extensionpng
clean_extensionjpg
}
gray(){
for img in $(find . -maxdepth 1 -iname '*'$1)
do
	echo -n "Converting $img"
	cp -n $img backup/$img
	convert -colorspace GRAY $img $img && echo ' [Done]';
done
}

mkdir -p backup

clean_extension
gray jpg
gray png
