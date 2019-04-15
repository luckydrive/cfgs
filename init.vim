"nvim rc

"call rpcnotify(0, 'Gui', 'WindowMaximized', 1)
"Guifont Fira\ Code\ Retina:h11
"call rpcnotify(0, 'Gui', 'WindowMaximized', 1)
"GuiFont! Fira\ Code\ Retina:h11
"GuiFont FuraCode\ Nerd\ Font\ Mono:style=Regular,height=12


let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'

set nocompatible

let g:ale_completion_enabled = 0
"=======================================================================
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
"Plug 'itchyny/lightline.vim'
"Plug 'shinchu/lightline-gruvbox.vim'

Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'
Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'

"Plug 'jeetsukumaran/vim-buffergator'
"Plug 'tpope/vim-obsession'
"Plug 'gikmx/ctrlp-obsession'
"Plug 'alvan/vim-closetag'

Plug 'ryanoasis/vim-devicons'

"Plug 'cohama/lexima.vim'
"Plug 'tmsvg/pear-tree'
"Plug 'tpope/vim-markdown'
"Plug 'tpope/vim-fugitive'
Plug 'groenewege/vim-less'
Plug 'hail2u/vim-css3-syntax'
Plug 'skammer/vim-css-color'
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'


"Plug 'Shougo/echodoc.vim'
Plug 'Shougo/neco-syntax'


Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'

Plug 'othree/yajs.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"Plug 'peitalin/vim-jsx-typescript'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'


"Plug 'prettier/vim-prettier', {
"  \ 'do': 'yarn install',
"  \ 'for': ['javascript', 'typescript', 'javascript.jsx', 'typescript.tsx', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }


Plug 'moll/vim-node'



Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
"Plug 'OmniSharp/omnisharp-vim'



call plug#end()
"========================================================================


"====== deoplete cfg
call deoplete#enable()
call deoplete#custom#option({
\ 'auto_complete': v:true,
\ 'auto_complete_delay': 0,
\ 'max_list': 128,
\ 'num_processes': 4
\ })

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 0
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
"let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})


"let g:prettier#exec_cmd_async = 1
"let g:prettier#quickfix_enabled = 0
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

"==== typescript

let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#signature_complete = 0
let g:nvim_typescript#type_info_on_hold = 0
let g:nvim_typescript#server_options = []

let g:nvim_typescript#diagnostics_enable = 0
autocmd BufWrite *.ts,*.tsx TSGetDiagnostics





"====== omni
"let g:OmniSharp_selector_ui = 'ctrlp'
"let g:omnicomplete_fetch_full_documentation = 1
"let g:OmniSharp_typeLookupInPreview = 0
"let g:OmniSharp_timeout = 5
"let g:OmniSharp_server_use_mono = 1
"let g:OmniSharp_highlight_types = 0
"let g:OmniSharp_open_quickfix = 0
"let g:OmniSharp_loglevel = 'critical'
"call deoplete#custom#option('sources', {
"\ 'cs': ['omnisharp'],
"\ })
"let g:SuperTabClosePreviewOnPopupClose = 1

set termguicolors


"Indention Options
syntax enable
filetype indent on
filetype plugin on
set expandtab
set smarttab
set shiftwidth=3
set tabstop=3
set autoindent
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
set formatoptions+=j
set hidden
set history=1000
set modeline
set modelines=10
set noswapfile
set nowb
set nobackup
set nrformats-=octal
set showcmd
set noshowmode
set nospell
set wildignore+=.pyc,.swp

let mapleader = ","
nmap <leader><leader> :w!<cr>
map <silent> <leader><space> /NeverNeverEverUseThisSentenceAsSomeWord<cr>:noh<cr>
nmap <leader>l :so ~/.config/nvim/init.vim<cr>
nmap <leader>ll :edit ~/.config/nvim/init.vim<cr>
nmap <leader>v :so ~/.config/nvim/init.vim<cr>
nmap <leader>vv :edit ~/.config/nvim/init.vim<cr>
"nmap <leader>lg :edit ~/.config/nvim/ginit.vim<cr>
"nnoremap <leader>zz :e ++ff=dos<cr>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>1 :bp<cr>
nnoremap <leader>2 :bn<cr>
nnoremap <leader>z :bp<cr>
nnoremap <leader>x :bn<cr>
"nnoremap <leader>s :buffer #<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>; :pwd<cr>
"nnoremap <leader>a :ALEFix<cr>


nnoremap <leader>bc :bd<cr>
nnoremap <leader>ba :bufdo bd<cr>
nnoremap <leader>w :CtrlPMRU<cr>
nnoremap <leader>e :CtrlP<cr>
nnoremap <leader>w :CtrlPBuffer<cr>
nnoremap <leader>p :ALEFix<cr>

nnoremap <leader>n :enew<cr>
nnoremap <leader>ws :wall<cr>

nnoremap <c-k> 6k
nnoremap <c-j> 6j

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set nocursorline
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
vmap < <gv
vmap > >gv
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <c-Up> <c-w><Up>
nnoremap <c-Down> <c-w><Down>
nnoremap <c-Left> <c-w><Left>
nnoremap <c-Right> <c-w><Right>


"=================
"autocmd BufNewFile,BufReadPost *.config set filetype=xml
"autocmd BufNewFile,BufReadPost *.csproj set filetype=xml
"autocmd BufNewFile,BufReadPost *.sln set filetype=xml


"======
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_invert_tabline=0
let g:gruvbox_italic= 1
colorscheme gruvbox


""================
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1



"===========
let g:SuperTabCrMapping = 1


"===========
let g:indentLine_color_term = 236
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_char = '│'


"=================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"set wildignore+=*\\tmp\\*,*\\node_modules\\*,*\\.git\\*,*\\.vscode\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_custom_ignore = '\(.git|.hg|.svn|dist|node_modules)$\'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|cache)|node_modules|dist|public|build$',
  \ 'file': '\v\.(exe|so|dll|md)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


"==================
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'javascript.jsx': ['eslint'],
\   'json': ['eslint'],
\   'less': ['eslint'],
\   'css': ['eslint'],
\}

let g:ale_fixers= {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'javascript.jsx': ['prettier'],
\   'typescript': ['prettier'],
\   'typescript.jsx': ['prettier'],
\   'json': ['prettier'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'less': ['prettier'],
\}

let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 1
let g:ale_linters_explicit = 1

let g:ale_sign_column_always = 0

let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0

let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0


"let g:CtrlSpaceDefaultMappingKey = "<C-space> "
"let g:CtrlSpaceDefaultMappingKey = "<C-space>"
"let g:CtrlSpaceSymbols = { "File": "◯", "CTab": "▣", "Tabs": "▢" }
"let g:CtrlSpaceIgnoredFiles = '\v(tmp|temp|node_modules|dist|build|.git)[\/]'

"if executable("ag")
        "let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    "endif

"=====closetag
"let g:closetag_filenames = '*.html,*.ts,*.tsx,*.js,*.jsx'
"let g:closetag_regions = {
    "\ 'typescript.tsx': 'jsxRegion,tsxRegion',
    "\ 'javascript.jsx': 'jsxRegion',
    "\ 'typescript': 'jsxRegion,tsxRegion',
    "\ 'javascript': 'jsxRegion',
    "\ }
