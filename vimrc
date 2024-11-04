
function! GK_clearRemaps()
	mapclear
	imapclear
	nmapclear
	xmapclear
	vmapclear
endfunction
call GK_clearRemaps()

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

nnoremap - <Nop>

nnoremap -h <Nop>
nnoremap -hr <Nop>
nnoremap -hm <Nop>

nnoremap -hk mhgg/INDEX<enter>zz
nnoremap -hj mhgg/INDEX<enter>}zz
nnoremap -hi I  
nnoremap -hu 0xx
nnoremap -hg 0wmhw"sy$/<c-r>s$<enter>zz

nnoremap -h1 mhyygg/INDEX<enter>}zzPI- <esc>
nnoremap -h2 mhyygg/INDEX<enter>}zzPI  - <esc>
nnoremap -h3 mhyygg/INDEX<enter>}zzPI    - <esc>
nnoremap -h4 mhyygg/INDEX<enter>}zzPI      - <esc>
nnoremap -h5 mhyygg/INDEX<enter>}zzPI        - <esc>
nnoremap -h6 mhyygg/INDEX<enter>}zzPI          - <esc>

nnoremap -hr1 mhyygg/INDEX<enter>}PI- <esc>`hzz
nnoremap -hr2 mhyygg/INDEX<enter>}PI  - <esc>`hzz
nnoremap -hr3 mhyygg/INDEX<enter>}PI    - <esc>`hzz
nnoremap -hr4 mhyygg/INDEX<enter>}PI      - <esc>`hzz
nnoremap -hr5 mhyygg/INDEX<enter>}PI        - <esc>`hzz
nnoremap -hr6 mhyygg/INDEX<enter>}PI          - <esc>`hzz

nnoremap -hm1 0wmhy$gg/INDEX<enter>}zzPI- <esc>
nnoremap -hm2 0wmhy$gg/INDEX<enter>}zzPI  - <esc>
nnoremap -hm3 0wmhy$gg/INDEX<enter>}zzPI    - <esc>
nnoremap -hm4 0wmhy$gg/INDEX<enter>}zzPI      - <esc>
nnoremap -hm5 0wmhy$gg/INDEX<enter>}zzPI        - <esc>
nnoremap -hm6 0wmhy$gg/INDEX<enter>}zzPI          - <esc>

nnoremap -l <Nop>
nnoremap -lc <Nop>

nnoremap -lce _cW,ea =j0
	" define to enum

set backupdir=~/vim_backups
set directory=~/vim_backups

function! GK_lcs()
	set lcs=tab::\ 

	" set lcs+=space:-
	set lcs+=nbsp:+
	" set lcs+=multispace:
	set lcs+=trail:&

	"set showbreak:~>
	set showbreak:
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
silent! colo habamax
silent! colo retrobox
"also like: sorbet, wildcharm, zaibatsu, quiet
call GK_noUnderline()

set nu rnu " line numbers
let g:netrw_bufsettings='noma nomod nu rnu' " line numbers in explorer

set belloff=all
set mouse-=a " disable mouse
