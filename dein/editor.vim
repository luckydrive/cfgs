
set hidden
set termguicolors
let mapleader = ","

"Indention Options
syntax enable
filetype indent on
filetype plugin on
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3
set noautoindent
set smartindent
set shiftround

set foldcolumn=0

"Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase
set magic

"Performance Options
set complete-=i
set completeopt-=preview
"set completeopt=menu,menuone,preview,noselect,noinsert
"set completeopt=menu,menuone,preview,noselect,noinsert
"set completeopt-=longest,menuone,preview
"set previewheight=5

set lazyredraw
set tm=666
set ttimeoutlen=33
"set nottybuiltin

"Text Rendering Options
set display+=lastline
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set nobomb
set binary
set ttyfast
set nolinebreak
set scrolloff=7
set sidescrolloff=5
set nowrap
set ffs=unix,dos,mac
"set ffs=dos,unix
set textwidth=80

"User Interface Options
set laststatus=2
set showtabline=2
set conceallevel=2



set ruler
set wildmenu

set tabpagemax=50
set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a
set title

"Code Folding Options
set foldmethod=indent
set foldnestmax=3
set nofoldenable

"Miscellaneous Options
set autoread
set backspace=indent,eol,start
set backupdir=~/.cache/vim
set noconfirm
set dir=~/.cache/vim
set hidden
set history=333
set modeline
set modelines=10
set noswapfile
set nowb
set nobackup
set nrformats-=octal
set showcmd
set noshowmode
set nospell

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
"set wildignore+=*\\tmp\\*,*\\node_modules\\*,*\\.git\\*,*\\.vscode\\*,*.swp,*.zip,*.exe  " Windows




set formatoptions-=cro
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
