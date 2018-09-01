set encoding=utf-8
syntax enable
syntax on
if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

"let TTlistToggle*list_Auto_Open=1
colorscheme molokai
set laststatus=2 
set hlsearch
set nocompatible
set autoindent  
set cindent  
set smartindent 
let g:rehash256=1
set t_Co=256
set background=dark
let g:molokai_original=1
"let Tlist_Auto_Highlight_Tag=1
"Tagbar Config
nmap <F9> :TagbarToggle<CR>
let g:tagbar_zoomwidth = 1
let g:tagbar_autopreview=1
let g:tagbar_width = 30

"Nerd Config
"autocmd vimenter * NERDTree
map <F3> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close nt when left window is only nt
let NERDTreeShowBookmarks=1

"autocmd BufReadPost *.cppr*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
"let g:airline_symbols.linenr = '⭡'

let g:airline_theme='fairyfloss'
let g:tagbar_ctags_bin='/usr/bin/ctags'  
let g:SuperTabRetainCompletionType=2
set ignorecase
