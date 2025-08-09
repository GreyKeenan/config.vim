
default:
	@if [ -f ~/.vimrc ]; then \
		read -p "~/.vimrc already exists. Overwrite? (y/N): " response; \
		if [ "$$response" = y ]; then cp vimrc ~/.vimrc; \
		else echo "(cancelled)"; \
		fi \
	else cp vimrc ~/.vimrc; \
	fi
	@mkdir -p ~/.vim_backups

grab:
	cp ~/.vimrc vimrc
