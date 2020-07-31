while [ 1==1 ]
do
	rm *.txt
	clear
	printf " 
                      ▄▄                                               ▄▄         
▀████▀                ██            ▀████▄     ▄███▀                   ██         
  ██                                  ████    ████                                
  ██     ▀███  ▀███ ▀███  ▄██▀███     █ ██   ▄█ ██ ▀███  ▀███  ▄██▀██████  ▄██▀██ 
  ██       ██    ██   ██  ██   ▀▀     █  ██  █▀ ██   ██    ██  ██   ▀▀ ██ ██▀  ██ 
  ██     ▄ ██    ██   ██  ▀█████▄     █  ██▄█▀  ██   ██    ██  ▀█████▄ ██ ██      
  ██    ▄█ ██    ██   ██  █▄   ██     █  ▀██▀   ██   ██    ██  █▄   ██ ██ ██▄    ▄
██████████ ▀████▀███▄████▄██████▀   ▄███▄ ▀▀  ▄████▄ ▀████▀███▄██████▀████▄█████▀ 
                                                                                                                                                                                                                                                                                                                                
                                                                            
"
	printf "Paste a link to download: "
	read x
	if [[ $x == *"youtube"* ]]; then
		youtube-dl --audio-format mp3 -x -i $x
	elif [[ $x == *"album"* ]]; then
   		spotdl -a $x
		spotdl -o mp3 -l *.txt
	elif [[ $x == *"playlist"* ]]; then
   		spotdl -o mp3 -p $x
		spotdl -o mp3 -l *.txt
		echo "Would you like to keep this music in one playlist? (y/n)"
		read b
		if [[ $b == "y" ]]; then
			echo "What would you like to name this playlist? "
			read n
			mv *.mp3* ~/Music
			cd ~/Music
			mkdir "$n"
			mv *.mp3* "$n"
		fi
	elif [[ $x == *"track"* ]]; then
   		spotdl -o mp3 -s $x
	elif [[ $x == *"artist"* ]]; then
  		spotdl -o mp3 -aa $x
		spotdl -o mp3 -l *.txt
	fi
	mv *.mp3* ~/Music
	cd ~/Music/ ; ~/ytdl/./luis-folderize.sh ; cd ~/ytdl/
done

#config "song - artist" manually
# config always skip overwrite manually
