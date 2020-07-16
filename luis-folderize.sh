ls *.mp3* > ls.txt # make ls.txt file with all mp3 files listed
set -- *.mp3* ; n=$(echo $#) # set $n = num mp3 files
until [ $n = 0 ] 
do
	t=$(awk "NR==$n" ls.txt) # set $t = single line (mp3 filename in the ls.txt file)
	a=${t%%-*} # set $a = everything in $t after the character '-'. This grabs the artist name
	song=${t#*-} ; song=${song%%.*} # set $song = track name without artist name at beginning and ".mp3" at the end
#	echo "track is " $t
#	echo "artist is " $a
#	echo "song is " $song
	mv "$t" "${song} - ${a}.mp3" # switcheroo
	mkdir "$a" # make artist name titled folder
	mv "${song} - ${a}.mp3" "$a" # move mp3 track to artist folder
	((n-=1)) # decrement number of mp3 files by 1
done 

# This only works for spotify songs because it requires finding '-'

#RADIOFY
#	mv "$t" "${song} - ${a}.mp3" # 
