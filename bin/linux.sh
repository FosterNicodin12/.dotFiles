# shebang
#!/bin/bash
FILE=~/.vimrc
# runs unname if it outputs linux, all good, if not post error to linuxsetup.log
if [ `uname` == 'Linux' ]; then #Test the output of the command
	mkdir -p ~/.TRASH	#makes the directory if it does not exist
if [ -f "$FILE" ]; then		#checks to see if the files exist
        mv ~/.vimrc ~/.bup_vimrc	#Moves the original vimrc to the bup_vimrc
        echo "The .vimrc file is now named .bup_vimrc" >> linuxsetup.log	#feeds the message to teh file
        touch ~/.vimrc #Makes the file
        cat ~/.dotfiles/etc/vimrc > ~/.vimrc #Feeds the output of the file into the other file
fi
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc #Appends the bash to the line
	
else
	command 2>linuxsetup.log 	#Sends the error message to the log
        exit
fi
