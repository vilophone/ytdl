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
	INSTALLING YOUTUBE-DL	
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo apt install youtube-dl -y
	printf "
	INSTALLING PIP3
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo apt install python3-pip -y
	printf "
	INSTALLING SPOTDL
	.....................

	.....................

	.....................

	.....................

	.....................

	.....................

	"
	sudo -H pip3 install spotdl

