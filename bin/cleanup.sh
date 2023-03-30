#Shebang
#!/bin/bash
#Removing vimrc file from home
rm ~/.vimrc
sed -i 's-source ~/dotfiles/bashrc_custom- -g' ~/.bashrc
rmdir ~/.TRASH
