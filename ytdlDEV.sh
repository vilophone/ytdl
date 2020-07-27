while [ 1==1 ]
do
	clear
	printf "
 ▀▄▀ ▄▀▄ █ █ ▀█▀ █ █ ██▄ ██▀   ▄▀▀ █▀▄ ▄▀▄ ▀█▀ █ █▀ ▀▄▀   █▀▄ ▄▀▄ █   █ █▄ █ █   ▄▀▄ ▄▀▄ █▀▄ ██▀ █▀▄
  █  ▀▄▀ ▀▄█  █  ▀▄█ █▄█ █▄▄   ▄██ █▀  ▀▄▀  █  █ █▀  █    █▄▀ ▀▄▀ ▀▄▀▄▀ █ ▀█ █▄▄ ▀▄▀ █▀█ █▄▀ █▄▄ █▀▄
 
"
	printf "
Press 'L1' or 'L0' to toggle Luis mode on or off

Press 'r' to resume your last download: ==========>>> "
cd ~/Music
ls *.txt*
	printf "

Paste a link to download: "
	read x
	if [[ $x == *"youtube"* ]]; then
		youtube-dl --audio-format mp3 -x -i $x
	elif [[ $x == *"album"* ]]; then
   		spotdl -a $x
		spotdl -l ~/Music/*.txt*
		~/ytdl/./folderize.sh
	elif [[ $x == *"playlist"* ]]; then
   		spotdl -p $x
		spotdl -l *.txt
		echo "Sort by Artist OR Keep in Playlist? (1/2)"
		read a
		if [[ $a == 1 ]] ; then
			~/ytdl/./folderize.sh
		else
			echo "What would you like to name this playlist?"
			read b
			# automated: curl $x > playlistName.txt ; search for and copy all between first <title> tags into $playlistName
			mkdir "$b"
			mv *.mp3* "$b"
		fi
	elif [[ $x == *"track"* ]]; then
   		spotdl -s $x
		~/ytdl/./folderize.sh
	elif [[ $x == *"artist"* ]]; then
  		spotdl -aa $x
		spotdl -l *.txt
		~/ytdl/./folderize.sh
	elif [[ $x == "r" ]]; then
		echo "resuming last download ... "
		spotdl -l *.txt # resume last unfinished download
		echo "do you want to folderize based on artist name or keep all these songs in one folder? (1/2)"
		read a
		if [[ $a == 1 ]] ; then
			~/ytdl/./folderize.sh
		else
			echo "What would you like to name this playlist?"
			read b
			mkdir "$b"
			mv *.mp3* "$b"
		fi
		if [[ $? -ne 0 ]]; then # if error
			u=1 # do nothing
		else 
			rm *.txt* # remove all txt files (no more resuming downloads)
		fi
	elif [[ $x == "d" ]]; then
		rm *.txt* # remove all txt files (no more resuming downloads)
	elif [[ $x == "l1" ]]; then
		echo "You are now in luis mode --> 'song - artist.mp3'"
		# replace line 10 in ~/.config/spotdl/config.yml with --> output_file: '{track-name} - {artist}.{output.ext}'
	elif [[ $x == "l0" ]]; then
		echo "You are now in normal mode --> 'artist - song.mp3'"
		# replace line 10 in ~/.config/spotdl/config.yml with --> output_file: '{artist} - {track-name}.{output.ext}'
	fi
	if [[ $? -ne 0 ]]; then # if error
		rm ls.txt
	fi
done


# Show list of txt files on main page with title "resumable downloads" [list ~/ytdl/*.txt]
# user can press r1, r2, r3, etc... to select which download to resume
# user can press d1, d2, d3, etc... to delete any unwanted txt files

# if downloading something new, txt file is in ~/Music/ ; else if error occurs ($? != 0) , move txt file to ~/ytdl/


# just make default as 'song - artist' since it is folderized anyway. Only place where not good is in playlists.
# delete luis specific ytdl
# add luis mode
	# display what mode person is in at beginning
	# changing mode changes the actual config so it saves for next time

# add queue mode --> user can add txt files without downloading until later
