" Enable pathogen
call pathogen#infect()

" Enable filetype plugin
filetype indent on
filetype plugin on

set ruler
set wildmenu
set laststatus=2
set nowrap

syntax on

autocmd FileType python set omnifunc=pythoncomplete#Complete
let python_highlight_all = 1

autocmd BufRead *.py nmap <F5> :!python %<CR>

set encoding=utf-8
set number
set showcmd

set showmatch
set matchtime=2

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

set backspace=eol,start,indent

" No sound on errors
set noerrorbells
set novisualbell

" Soft tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" No swap file
set nobackup
set nowb
set noswapfile

" Indent
set autoindent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Indent selected lines
vnoremap < <gv
vnoremap > >gv

" Don't allow use of arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Highlight bad spaces
highlight BadWhitespace ctermbg=red guibg=red
match BadWhitespace /^\t\+/
match BadWhitespace /\s\+$/

" file finder
nnoremap <Leader>o :FufFile<CR>

if has("gui_running")
	set guioptions-=T
    set guioptions-=l
    set guioptions-=r
    set guioptions-=b
endif

colorscheme wombat
