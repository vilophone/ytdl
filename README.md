# ytdl


#### Linux

1. Paste the following into the terminal
    - cd ~/ ; git clone https://github.com/vilophone/ytdl
    - cd ytdl ; sudo chmod 777 *.sh 
    - ./build.sh


#### Windows 10 

1. In "Turn Windows Features On and Off", check the "Windows Subsystem for Linux" option

2. open the Ubuntu app and paste the following:
    - sudo apt update -y ; sudo apt upgrade -y ; sudo apt install git
    - cd ~/ ; git clone https://github.com/vilophone/ytdl
    - cd ytdl ; chmod 777 *
    - ./build.sh
    
    
#### Mac OSX

1. Paste the folling into the terminal:
    - /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    - brew install youtube-dl
    - brew install python3
    - pip3 install spotdl
    - brew install git
    - cd ~/ ; git clone https://github.com/vilophone/ytdl
    - cd ytdl ; sudo chmod 777 *.sh 


-----------------------------------------------------------------------------------------

###### Updating: 

1. For Linux & Windows 10, paste the following into the terminal: 
    - cd ~/ytdl ; ./rebuild.sh


###### Auto-Skip Overwrite & 'song - artist' Output

1. Paste the following into the terminal: 
    - vim ~/.config/spotdl/config.yml
    - change line 10 to the following: 
        - output_file: '{track-name} - {artist}.{output-ext}'  
    - change line 11 to the following:
        - overwrite: skip
        
        
###### Auto-Starting: 

1. Add the following to the bottom of the .bashrc file for autostartup on terminal opening (optional):
    - cd Music ; ~/ytdl/./ytdl.sh 
