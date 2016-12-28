# $1: width, $2: delay
set -- "${1:-320}" "${3:-20}"

clean_extensionjpg(){
mmv \*.[Jj][Pp][Gg] \#1.jpg
mmv \*.[Jj][Pp][Ee][Gg] \#1.jpg
}
resizingjpg(){
mogrify "-resize" $1 $2"*.jpg"
}
gifmaking(){
convert -delay $1 -loop 0 $3*.jpg $2.gif
}

clean_extensionjpg
mkdir -p gifmaker_tmp
cp *.jpg gifmaker_tmp
resizingjpg $1 "gifmaker_tmp/"
gifmaking $2 gifmaker "gifmaker_tmp/"
echo gifmaker.gif [DONE]
rm -R gifmaker_tmp 

for i in $(find . -maxdepth 1 -mindepth 1 -type d -printf "%P\n")
do
	echo ${i}
	cd ${i}
	clean_extensionjpg
	mkdir -p gifmaker_tmp
	cp *.jpg gifmaker_tmp
	resizingjpg $1 "gifmaker_tmp/"
	gifmaking $2 "../gifmaker_"$i "gifmaker_tmp/"
	echo "gifmaker_"$i".gif [DONE]"
	rm -R gifmaker_tmp 
	cd ..
done
