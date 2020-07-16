while [ 1==1 ]
do
	rm *.txt
	clear
	printf " 
 ▀▄▀ ▄▀▄ █ █ ▀█▀ █ █ ██▄ ██▀   ▄▀▀ █▀▄ ▄▀▄ ▀█▀ █ █▀ ▀▄▀   █▀▄ ▄▀▄ █   █ █▄ █ █   ▄▀▄ ▄▀▄ █▀▄ ██▀ █▀▄
  █  ▀▄▀ ▀▄█  █  ▀▄█ █▄█ █▄▄   ▄██ █▀  ▀▄▀  █  █ █▀  █    █▄▀ ▀▄▀ ▀▄▀▄▀ █ ▀█ █▄▄ ▀▄▀ █▀█ █▄▀ █▄▄ █▀▄

"
	printf "Paste a link to download: "
	read x
	if [[ $x == *"youtube"* ]]; then
		youtube-dl --audio-format mp3 -x -i $x
	elif [[ $x == *"album"* ]]; then
   		spotdl -a $x
		spotdl -l *.txt
		./folderize.sh
	elif [[ $x == *"playlist"* ]]; then
   		spotdl -p $x
		spotdl -l *.txt
		echo "Sort by Artist OR Keep in Playlist? (1/2)"
		read a
		if [[ $a == 1 ]] ; then
			./folderize.sh
		else
			echo "What would you like to name this playlist?"
			read b
			# automated: curl $x > playlistName.txt ; search for and copy all between first <title> tags into $playlistName
			mkdir "$b"
			mv *.mp3* "$b"
		fi
	elif [[ $x == *"track"* ]]; then
   		spotdl -s $x
		./folderize.sh
	elif [[ $x == *"artist"* ]]; then
  		spotdl -aa $x
		spotdl -l *.txt
		./folderize.sh
	fi
done


#Additions:
# make no duplicates (check child folders for duplicates before downloading)
# No <Enter> key required (Switch Case?)
# Song+Artist+.mp3
# Remote-Update
# Installation file
#
#
#
