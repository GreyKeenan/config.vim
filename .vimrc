
function! GK_clearRemaps()
	mapclear
	imapclear
	nmapclear
	xmapclear
	vmapclear
endfunction

function! GK_tabSet(size)
	let &tabstop = a:size
	let &softtabstop = 0
	let shiftwidth = a:size
	set noexpandtab
endfunction

function! GK_tabSet_spaces(size)
	let &tabstop = a:size + a:size / 2
	let &softtabstop = 0
	set expandtab smarttab
	let &shiftwidth = a:size
endfunction


set backupdir=~/gk.vimconfig/backups
set directory=~/gk.vimconfig/backups

set mouse-=a " disable mouse

set ai  "auto-indent
call GK_tabSet(8)

set termguicolors

silent! colorscheme quiet
silent! colorscheme industry
silent! colorscheme slate
silent! colorscheme snazzy
silent! colorscheme sorbet

syntax on
set cursorline

let g:netrw_bufsettings='noma nomod nu rnu' " line numbers in explorer
set nu rnu  " line numbers

