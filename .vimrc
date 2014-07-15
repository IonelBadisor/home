execute pathogen#infect()

"------highlight search 
set hlsearch

"------column over 81
"set colorcolumn=81

"filetype plugin indent on
colorscheme desert
syntax on

"nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"gitgutter 
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_highlight_lines = 1

"------------KEY MAP-------------------
set encoding=utf-8
map <C-s> :w<cr>
imap <C-S> <ESC>: w<cr>a
map <F5> <Esc>:wa<CR>:!make<CR>
imap <F5> <Esc>:wa<CR>:!make<CR>a
map <F4> <Esc>:GitGutterToggle<CR>
imap <F4> <Esc>:GitGutterToggle<CR>a
map <F2> <Esc>:NERDTreeToggle<CR>
imap <F2> <Esc>:NERDTreeToggle<CR>
imap <F9> <Esc>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>A
map <F9> <Esc>:r! date "+\%Y-\%m-\%d \%H:\%M:\%S"<CR>A

"new line in normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


set tags=tags;/


"file type 
augroup Binary
au!
au BufReadPre *.bin let &bin=1
au BufReadPost *.bin if &bin | %!xxd
au BufReadPost *.bin set ft=xxd | endif
au BufWritePre *.bin if &bin | %!xxd -r
au BufWritePre *.bin endif
au BufWritePost *.bin if &bin | %!xxd
au BufWritePost *.bin set nomod | endif
augroup END

au BufRead,BufNewFile *.inc set filetype=sh
au BufRead,BufNewFile *.bb set filetype=sh
au BufRead,BufNewFile *.bbappend set filetype=sh
au BufRead,BufNewFile *.adoc set syntax=asciidoc

inoremap <Nul> <C-x><C-o>

"	Airline 
set guifont=Liberation\ Mono\ for\ Powerline\ 10 
let g:airline_powerline_fonts = 1
let g:airline_theme = 'understated'


"❯❯❯❯❯
let g:airline_symbols = {}
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"enable RepmoMap
let repmo_key = ";"
let repmo_revkey = "," 
let g:repmo_mapmotions = "j|k h|l <C-E>|<C-Y> zh|zl" 
