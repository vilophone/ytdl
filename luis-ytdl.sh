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
	else
   		spotdl $x
	fi
	mv *.mp3* ~/Music
	cd ~/Music/ ; ~/ytdl/./luis-folderize.sh ; cd ~/ytdl/
done
