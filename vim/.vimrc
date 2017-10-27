


set splitright
set splitbelow
set wildmode=list:longest
set wildmenu
set hidden
set history=1000

" extended % matching
runtime macros/matchit.vim

set ignorecase 
set smartcase
set title
set scrolloff=3
set ruler
"set visualbell

syntax on
filetype on
filetype plugin on
filetype indent on

au BufNewFile,BufRead *.eco set syntax=cobol

set hlsearch
set incsearch " ...dynamically as they are typed.

" enable line numbers
set number

" tag stuff
noremap ü <C-]>
noremap Ü <C-w>]
noremap ö <C-O> 
noremap ä <C-w>}

map PRE :set previewwindow

set formatoptions+=r  
set formatoptions+=q
" this is required for compatibility with cindent
set cpoptions-=<
set cinkeys-=0#
set indentkeys-=0#

"inoremap # X<BS>#

set bg=dark

set mouse=a
set ttymouse=xterm2
set nocompatible


set expandtab
set tabstop=4
set shiftwidth=4

nmap <F11> 1G=G
imap <F11> <ESC>1G=Ga

cab ffb FuzzyFinderBuffer
cab ff FuzzyFinderFile
cab ffm FuzzyFinderMruFile

autocmd vimleave * :mks! ~/.vim/sessions/default.vim
