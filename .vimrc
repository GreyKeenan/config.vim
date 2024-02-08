set backupdir=~/vimmybups
set directory=~/vimmybups

set backspace=2
set ai 
set clipboard=unnamed

colo sorbet 
set termguicolors
set cursorline
syntax on

let g:netrw_bufsettings='noma nomod nu rnu'
set nu rnu 

set mouse-=a "disable mouse so learn better

function! ClearRemaps()
	mapclear
	imapclear
	nmapclear
	xmapclear
	vmapclear
endfunction

function! ActivateRemaps()


	call ClearRemaps()


	" movement
	noremap w k
	noremap a h
	noremap s j
	noremap q l

	noremap <s-w> <c-u>zz
	noremap <s-s> <c-d>zz
	noremap <s-left> H
	noremap <s-right> L
	" pretty sure these 2 are useless:
	noremap <c-up> <c-b>
	noremap <c-down> <c-f>


	noremap <c-a> b
	noremap <s-a> B
	noremap <c-q> e
	noremap <s-q> E
	noremap <tab> W
	noremap <s-tab> w

	noremap <space> f<space>
	noremap <s-space> F<space>

	noremap e _
	noremap E 0
	noremap r $
	noremap R %

	" mode command
	noremap / :
	noremap ; :
	noremap \ .
	
	" search
	noremap ? /

	noremap <c-f> /
	inoremap <c-f> <esc>/

	noremap <c-j> n
	noremap <c-k> N

	noremap . ;
	" noremap , ,

	
	"marks
	noremap <c-m> m


	" mode insert
	noremap h i
	noremap j o
	noremap k O
	noremap l a

	noremap H I
	noremap L A
	noremap <c-l> ea
	noremap <c-h> 0i

	noremap <backspace> s
	noremap <s-backspace> S
	noremap <c-d> s
	noremap ' r
	noremap " R

	inoremap <c-space> <esc>


	" mode visual
	nnoremap t v
	xnoremap t V
	"noremap T viw
	"noremap <c-t> viW
	noremap T V
	nnoremap I viw
	nnoremap i viW


	" white-space
	" nnoremap <cr> o<esc>
	" nnoremap <s-cr> i<cr><esc>
	" inoremap <s-cr> <esc>o


	" tabs,windows,files
	" noremap - gT
	" noremap = gt
	
	noremap <c-b> <c-z>


	" cursor position
	" noremap <s-up> zt
	" noremap <s-down> zb


	" text manipulation:

	" redo
	noremap y <c-r>
	noremap <c-y> <c-r>
	inoremap <c-y> <esc><c-r>

	" undo
	inoremap <c-z> <esc>u
	inoremap <c-u> <esc>u
	noremap <c-z> u
	noremap <c-u> u
	" noremap z u

	" copy
	noremap o y
	noremap O Y
	inoremap <c-o> <esc>y
	inoremap <c-c> <esc>y
	noremap <c-c> y

	" paste
	"noremap p [p
	"noremap P [P
	nmap <c-p> p
	nmap <c-v> p
	inoremap <c-p> <esc>gP
	imap <c-v> <c-p>

	" save
	noremap <c-;> :w<cr>
	nmap <c-s> <c-;>
	nmap <c-/> <c-;>
	inoremap <c-;> <esc>:w<cr>
	imap <c-s> <c-;>
	imap <c-/> <c-;>


	" netrw navigation
	augroup netrw_mapping
		autocmd!
		autocmd filetype netrw call NetrwMapping()
	augroup END
	function! NetrwMapping()
		" how to remap netrw 'sort' key?
		noremap <buffer> s j
		noremap <buffer> S <c-d>
	endfunction



endfunction

" notable keys yet to be reassigned
	" g, c, v, x, z, u
	" some of these are ok as they are though
		" g, x, u

" functionality i want to put somewhere
	" f, F, t, T, ;, ','
	" L, H
	" G, g

call ActivateRemaps()
