if [ $# -eq 0 ];
then
    chemin=$(pwd)
else
chemin=$1
fi
echo ATTENTION : Si $chemin n\'existe pas le dossier courant sera affecté.
read -r -p "Êtes vous sûr de vouloir nettoyer tous les jpg de ce dossier ? [o/N]" response
if [[ $response =~ ^([yY][eE][sS]|[yY]|[oO][uU][iI]|[oO])$ ]]
then
		cd $chemin
		mmv \*.[Jj][Pp][Gg] \#1.jpg
		mmv \*.[Jj][Pp][Ee][Gg] \#1.jpg
		index=0;
		for i in $(ls *.jpg)
		do
				echo ${i}
				cp "${i}"  $index".jpg.cleanjpg"
				rm "${i}"
				index=$((index+1))
		done
		index=0;
		for i in $(ls *.jpg.cleanjpg)
		do
				echo ${i}
				cp "${i}"  $index".jpg"
				rm "${i}"
				index=$((index+1))
		done
		jhead -purejpg *
else
	  echo action annulée
fi
