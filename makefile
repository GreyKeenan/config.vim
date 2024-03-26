
default: main.vimrc
	cp main.vimrc ~/.vimrc
	mkdir ~/vim_backups -p

supplant: ~/.vimrc
	cp ~/.vimrc .
