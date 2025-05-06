
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
	let &shiftwidth = a:size
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

" leader-keys wont time out for remaps
set notimeout nottimeout

nnoremap - <Nop>

nnoremap -<tab>n _v0"sy/^<c-r>s<backspace>[^ \t]<enter>
nnoremap -<tab>N _v0"sy?^<c-r>s<backspace>[^ \t]<enter>
nnoremap -<tab>0n /^[^ \t]<enter>
nnoremap -<tab>0N ?^[^ \t]<enter>

nnoremap -ii migg/INDEX<enter>ztkj
nnoremap -il I  
nnoremap -ih 0xx
nnoremap -ig _miw"sy$/<c-r>s$<enter>ztkj
nnoremap -ib `izz

nnoremap -i1 miyygg/INDEX<enter>}zzPI* <esc>
nnoremap -i2 miyygg/INDEX<enter>}zzPI  * <esc>
nnoremap -i3 miyygg/INDEX<enter>}zzPI    * <esc>
nnoremap -i4 miyygg/INDEX<enter>}zzPI      * <esc>
nnoremap -i5 miyygg/INDEX<enter>}zzPI        * <esc>
nnoremap -i6 miyygg/INDEX<enter>}zzPI          * <esc>

nmap -ir1 -i1`i
nmap -ir2 -i2`i
nmap -ir3 -i3`i
nmap -ir4 -i4`i
nmap -ir5 -i5`i
nmap -ir6 -i6`i

nmap -iu11 -i1dd1kP
nmap -iu21 -i2dd1kP
nmap -iu31 -i3dd1kP
nmap -iu41 -i4dd1kP
nmap -iu51 -i5dd1kP
nmap -iu61 -i6dd1kP

nmap -iu12 -i1dd2kP
nmap -iu22 -i2dd2kP
nmap -iu32 -i3dd2kP
nmap -iu42 -i4dd2kP
nmap -iu52 -i5dd2kP
nmap -iu62 -i6dd2kP

nmap -is -i1-iijV}k:sort<enter>


nnoremap -ce _cW,ea =j0
	" define to enum
" nnoremap -cf _"syt;j/\V<c-r>s<enter>
nnoremap -cf _"sy/(<enter>j/\C<c-r>s<enter>
nnoremap -cgg gg/^[^#]<enter>


nnoremap -t, f,lr<enter>


nmap -mir1 -mi1`i
nmap -mir2 -mi2`i
nmap -mir3 -mi3`i
nmap -mir4 -mi4`i
nmap -mir5 -mi5`i
nmap -mir6 -mi6`i

nnoremap -mi1 mi_wy$gg/INDEX<enter>}zzPI* <esc>
nnoremap -mi2 mi_wy$gg/INDEX<enter>}zzPI  * <esc>
nnoremap -mi3 mi_wy$gg/INDEX<enter>}zzPI    * <esc>
nnoremap -mi4 mi_wy$gg/INDEX<enter>}zzPI      * <esc>
nnoremap -mi5 mi_wy$gg/INDEX<enter>}zzPI        * <esc>
nnoremap -mi6 mi_wy$gg/INDEX<enter>}zzPI          * <esc>

nnoremap -mix I<br><enter><enter><!-- INDEX --><enter><enter><br><enter><esc>
nnoremap -mig 0"syi[/<c-r>s$\c<enter>ztkj

nnoremap -mil _W"wy$i[<esc>A]<esc>o<esc>0D"wpVu:silent! s/[^a-z ]//g<enter>:silent! s/ /-/g<enter>0"wy$ddkA(#<c-r>w)<esc>


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
