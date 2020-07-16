ls *.mp3* > ls.txt # make ls.txt file with all mp3 files listed
set -- *.mp3* ; n=$(echo $#) # set $n = num mp3 files
until [ $n = 0 ] 
do
	t=$(awk "NR==$n" ls.txt) # set $t = single line (mp3 filename in the ls.txt file)
	a=${t%%-*} # `echo $t | egrep -o "^[^-]+"` # set $a = everything in $t before the character '-'. This grabs the artist name
	mkdir "$a" # make artist name titled folder
	mv "$t" "$a" # move mp3 track to artist folder
	((n-=1)) # decrement number of mp3 files by 1
done 

# This only works for spotify songs because it requires finding '-'

#RADIOFY
#	song=${t#*-} ; song=${song%%.*} # set $song = track name without artist name at beginning and ".mp3" at the end
#	mv "$t" "${song} - ${a}.mp3" # 