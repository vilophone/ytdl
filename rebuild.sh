	cd ~/
	printf "
	UPDATING REPOSITORIES
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo apt update -y
	printf "
	UPGRADING SYSTEM
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo apt upgrade -y
	printf "
	REMOVING YOUTUBE-DL	
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo apt purge youtube-dl -y
	printf "
	REINSTALLING YOUTUBE-DL	
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo apt install youtube-dl -y
	printf "
	UNINSTALLING SPOTDL
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo -H pip3 uninstall spotdl -y
	printf "
	REINSTALLING SPOTDL
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo -H pip3 install spotdl
	printf "
	UPDATING YTDL GIT
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	rm -rf ~/ytdl
	git clone https://github.com/vilophone/ytdl/
	# restart terminal
