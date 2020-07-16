ls *.mp3* > ls.txt # make ls.txt file with all mp3 files listed
set -- *.mp3* ; n=$(echo $#) # set $n = num mp3 files
until [ $n = 0 ] 
do
	# if line contains '-', then do everything, else n-1 ----> this will skip youtube songs if they don't have a '-'.
	t=$(awk "NR==$n" ls.txt) # set $t = single line (mp3 filename in the ls.txt file)
	a=${t%%-*} # `echo $t | egrep -o "^[^-]+"` # set $a = everything in $t before the character '-'. This grabs the artist name
	song=${t#*-} ; song=${song%%.*} # set $song = track name without artist name at beginning and ".mp3" at the end
	mv "$t" "${song} - ${a}.mp3" # 
	((n-=1)) # decrement number of mp3 files by 1
done 
rm ls.txt
