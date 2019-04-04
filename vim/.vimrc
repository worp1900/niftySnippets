" line numbers
set number
" setup key combination Ctrl+N + Ctrl+N to toggle line numbers
:nmap <C-N><C-N> :set invnumber<CR>

set splitright
set splitbelow
set wildmode=list:longest
set wildmenu
set history=1000

" ignore casing in searches
set ignorecase
set smartcase
set title
set scrolloff=3
set ruler
"set visualbell

" show syntax highlighting
syntax on
filetype on
filetype plugin on
filetype indent on

" highlight search results
set hlsearch
" ...dynamically as they are typed.
set incsearch

" configure tab spacing
set expandtab
set tabstop=4
set shiftwidth=4
