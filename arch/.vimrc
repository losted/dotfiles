" Show (partial) command in status line
set showcmd

" Show matching brackets
" set showmatch

" Do case insensitive matching
set ignorecase

" Do smart case matching
set smartcase

" Incremental search
set incsearch

" Automatically save before commands like :next and :make
set autowrite

" Hide buffers when they are abandoned
set hidden

" Enable mouse usage (all modes)
set mouse=a

" set line number
set number

" Turn off vi compatibility, use advanced vim-only features
set nocompatible

" Turn on syntax highlighting
syntax enable

" Set colors to use 256 color palette
set t_Co=256

" Use the system clipboard as the default copy register
set clipboard=unnamed

" Copy indentation level when creating a new line
set autoindent

" Try to put the indent level at the right place
set smartindent

" Keep vim files in the ~/.vim folder
set viminfo='100,h,n~/.vim/viminfo

" Highlight search terms instead of just moving the cursor
set hlsearch

" Pathogen Package Manager
execute pathogen#infect()

" Something to figure out later
filetype plugin indent on

" Use tab for emmet completion
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" use CTRL+ESC to toggle the NERDTREE sidebar
map <C-c> :NERDTreeToggle<CR>
