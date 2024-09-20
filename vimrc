
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

function! GK_noUnderline()
	set cursorline
	hi CursorLine cterm=NONE
	hi CursorLineNr cterm=NONE
endfunction


set backupdir=~/vim_backups
set directory=~/vim_backups

function! GK_lcs()
	set lcs=tab::\ 

	" set lcs+=space:-
	set lcs+=nbsp:+
	" set lcs+=multispace:
	set lcs+=trail:&

	set showbreak:~>
	set lcs+=extends:~
	set lcs+=precedes:~

	" set lcs+=eol:`

	set lcs+=conceal:@
endfunction
set ai " auto-indent
call GK_lcs()
set list
set breakindent
" call GK_tabSet(8)

syntax on
set termguicolors
silent! colo industry
silent! colo darkblue
silent! colo slate
silent! colo retrobox
"also like: sorbet, wildcharm, zaibatsu, quiet
call GK_noUnderline()

set nu rnu " line numbers
let g:netrw_bufsettings='noma nomod nu rnu' " line numbers in explorer

set belloff=all
set mouse-=a " disable mouse
