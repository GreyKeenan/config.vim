
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

function! GK_book()
	silent! colo lunaperche
	silent! colo torte
	silent! colo quiet
	set nocursorline
	set mouse+=a

	nnoremap <up> <esc>H{{/\S<cr>ztL
	nnoremap <down> <esc>H}/\S<cr>ztL

	nnoremap <s-left> <esc>HO<esc><s-d>i---bmk---<esc>
	nnoremap <s-right> <esc>dd
	nnoremap <right> <esc>H/---bmk---<cr>zt:w<cr>
	nnoremap <left> <esc>H?---bmk---<cr>zt:w<cr>

	nnoremap <c-left> <esc>u
	nnoremap <c-right> <esc><c-r>

	nnoremap <c-up> <esc>zt
endfunction

set backupdir=~/vim_backups
set directory=~/vim_backups

set mouse-=a " disable mouse
set backspace=2

set ai  "auto-indent
call GK_tabSet(8)

set termguicolors

silent! colo industry
silent! colo darkblue
silent! colo slate
silent! colo sorbet
" retrobox, wildcharm, zaibatsu, quiet

set nu rnu  " line numbers
let g:netrw_bufsettings='noma nomod nu rnu' " line numbers in explorer
syntax on
call GK_noUnderline()

set belloff=all
