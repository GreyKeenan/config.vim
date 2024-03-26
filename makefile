
default: .vimrc
	cp .vimrc ~/.vimrc
	mkdir ~/vim_backups -p

supplant: ~/.vimrc
	cp ~/.vimrc .
