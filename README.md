# ytdl

### Installation:

1. Open Terminal
2. Copy the following lines into the terminal and press enter after each line: 

    cd ~/ ; git clone https://github.com/vilophone/ytdl

    cd ytdl ; sudo chmod 777 *.sh 
    ###### enter your password
    ./build.sh
    cd ~/ ; vim .bashrc
3. Setup autostart on terminal open:
    ###### add the following to the bottom of the .bashrc file for autostartup on terminal opening: 
    cd Music ; ~/ytdl/./ytdl.sh


### Updating: 
  - run rebuild.sh --> cd ~/ytdl ; ./rebuild.sh
