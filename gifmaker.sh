# $1: width, $2: height, $3: delay
set -- "${1:-320}" "${2:-240}" "${3:-20}"

clean_extensionjpg(){
mmv \*.[Jj][Pp][Gg] \#1.jpg
mmv \*.[Jj][Pp][Ee][Gg] \#1.jpg
}
resizingjpg(){
mogrify "-resize" $1"x"$2 "*.jpg"
}
gifmaking(){
convert -delay $1 -loop 0 *.jpg $2.gif
}

clean_extensionjpg
resizingjpg $1 $2
gifmaking $3 gifmaker
