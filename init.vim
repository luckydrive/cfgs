" configs for Neovim; required at least pyhthon3, pip3 -> neovim, pynvim; nodejs -> neovim, typescript
" run :Ugraderemoteplugins, :checkhealth let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
set nocompatible

let vimplug_exists=expand('~/.config/nvim/autoload/plug.vim')

let g:vim_bootstrap_langs = "html,javascript,typescript"
let g:vim_bootstrap_editor = "nvim"				" nvim or vim

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"

  autocmd VimEnter * PlugInstall
endif


call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'kshenoy/vim-signature'
"Plug 'ervandew/supertab'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'alvan/vim-closetag'
Plug 'valloric/matchtagalways'
Plug 'vitalk/vim-simple-todo'


Plug 'vim-scripts/grep.vim'
Plug 'vim-scripts/CSApprox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-neoinclude' | Plug 'Shougo/neoinclude.vim'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-github'
Plug 'ncm2/ncm2-syntax' | Plug 'Shougo/neco-syntax'
Plug 'ncm2/ncm2-cssomni'
Plug 'ncm2/ncm2-html-subscope'
Plug 'ncm2/ncm2-markdown-subscope'

Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'shougo/denite.nvim'
Plug 'shougo/deol.nvim'
Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
Plug 'shougo/neco-syntax'
Plug 'shougo/neoinclude.vim'
Plug 'shougo/neco-vim'
Plug 'shougo/echodoc.vim'
Plug 'shougo/vimproc.vim', {'build' : 'make'}
Plug 'fszymanski/deoplete-emoji'

Plug 'zchee/deoplete-jedi'

Plug 'dense-analysis/ale'
Plug 'OmniSharp/omnisharp-vim'

Plug 'autozimu/LanguageClient-neovim', {
\ 'branch': 'next',
\ 'do': 'bash install.sh',
\ }

call plug#end()





set hidden
set termguicolors
let mapleader = ","

"Indention Options
syntax enable
filetype indent on
filetype plugin on
set expandtab
set smarttab
"change TAB here
set shiftwidth=4
set tabstop=4
set softtabstop=4

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
"set completeopt-=preview
set completeopt=noinsert,menuone,noselect
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
set textwidth=120

"User Interface Options
set laststatus=2
set showtabline=0
set conceallevel=0



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

set wildmode=list:longest,list:full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
"set wildignore+=*\\tmp\\*,*\\node_modules\\*,*\\.git\\*,*\\.vscode\\*,*.swp,*.zip,*.exe  " Windows
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
set grepprg=ag\ --nogroup\ --nocolor



set formatoptions-=cro
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

nmap <leader><leader> :w!<cr>
nmap <leader>q :q!<cr>
map <silent> <leader><space> /NeverNeverEverUseThisSentenceAsSomeWord<cr>:noh<cr>

nmap <leader>l :so ~/.config/nvim/init.vim<cr>
nmap <leader>ll :edit ~/.config/nvim/init.vim<cr>
"nmap <leader>lg :edit ~/.config/nvim/ginit.vim<cr>

nmap <leader>pi :PlugInstall<cr>
nmap <leader>pc :PlugClean<cr>
nmap <leader>pu :PlugUpdate<cr>
nmap <leader>pp :PlugStatus<cr>

nnoremap <leader>bb :e ++ff=dos<cr>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>1 :bp<cr>
nnoremap <leader>2 :bn<cr>
nnoremap <leader>z :bp<cr>
nnoremap <leader>x :bn<cr>
"nnoremap <leader>w :buffer #<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>; :pwd<cr>


nnoremap <leader>bc :bd<cr>
nnoremap <leader>ba :bufdo bd<cr>
nnoremap <leader>e :FZF<cr>

nnoremap <leader>n :enew<cr>
nnoremap <leader>ws :wall<cr>
nnoremap <leader>wq :wall<cr>:qall<cr>

nnoremap <c-k> 4k
nnoremap <c-j> 4j


" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e



"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
  autocmd!
  autocmd BufEnter * :syntax sync maxlines=200
augroup END



"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" session management
nnoremap <leader>so :OpenSession<Space>
nnoremap <leader>ss :SaveSession<Space>
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>



"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

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



" Disable visualbell
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

"" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

if has('macunix')
  " pbcopy for OSX copy/paste
  vmap <C-x> :!pbcopy<CR>
  vmap <C-c> :w !pbcopy<CR><CR>
endif




au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline


"setplugins

"let g:LanguageClient_serverCommands = {
    "\ }

"nnoremap <F5> :call LanguageClient_contextMenu()<CR>






"let g:LanguageClient_serverCommands = {
    "\ 'cs': ['tcp://127.0.0.1:20002'],
    "\ }



"ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set shortmess+=c
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'css',
            \ 'priority': 9,
            \ 'subscope_enable': 1,
            \ 'scope': ['css','scss'],
            \ 'mark': 'css',
            \ 'word_pattern': '[\w\-]+',
            \ 'complete_pattern': ':\s*',
            \ 'on_complete': ['ncm2#on_complete#omni', 'csscomplete#CompleteCSS'],
            \ })




"=== SuperTab
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabCrMapping = 1
  autocmd FileType *
    \ if &omnifunc != '' |
    \   call SuperTabChain(&omnifunc, "<c-p>") |
    \ endif




"deop
let g:deoplete#enable_at_startup = 1
call deoplete#custom#var('tabnine', {
\ 'line_limit': 500,
\ 'max_num_results': 20,
\ })
let g:deoplete#sources ={'_':[]}





"=== Omnisharp
let g:OmniSharp_start_server = 1
let g:OmniSharp_port = 20002
let g:OmniSharp_server_stdio = 1

let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_highlight_types = 2
let g:omnicomplete_fetch_full_documentation = 0
let g:OmniSharp_typeLookupInPreview = 0
let g:OmniSharp_timeout = 0
let g:OmniSharp_highlight_types = 1
let g:OmniSharp_open_quickfix = 0
let g:OmniSharp_loglevel = 'critical'

""=================
autocmd BufNewFile,BufReadPost *.config set filetype=xml
autocmd BufNewFile,BufReadPost *.csproj set filetype=xml
autocmd BufNewFile,BufReadPost *.sln set filetype=xml
augroup omnisharp_commands
   autocmd!

   " When Syntastic is available but not ALE, automatic syntax check on events
   " (TextChanged requires Vim 7.4)
	" autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

   " Show type information automatically when the cursor stops moving
   autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

	" Update the highlighting whenever leaving insert mode
	autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
	"autocmd VimEnter *.cs call OmniSharp#HighlightBuffer()

	" Alternatively, use a mapping to refresh highlighting for the current buffer
	autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>

	" The following commands are contextual, based on the cursor position.
	autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>ti :OmniSharpFindImplementations<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>ts :OmniSharpFindSymbol<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>tu :OmniSharpFindUsages<CR>

	" Finds members in the current buffer
	autocmd FileType cs nnoremap <buffer> <Leader>tm :OmniSharpFindMembers<CR>

	autocmd FileType cs nnoremap <buffer> <Leader>tx :OmniSharpFixUsings<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>tc :OmniSharpDocumentation<CR>
	autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
	autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

	" Navigate up and down by method/property/field
	autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
	autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader>tw :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader>tw :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>tn :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>tf :OmniSharpCodeFormat<CR>


noremap <Leader>tb :OmniSharpStartServer<CR>
noremap <Leader>to :OmniSharpStopAllServers<CR>




"ale
let g:ale_linters_explicit = 1
let g:ale_linters = { 'cs': ['OmniSharp'] }
let g:ale_sign_error = 'e'
let g:ale_sign_warning = 'w'
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_completion_enabled = 0



"=== colorscheme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_invert_tabline=0
let g:gruvbox_italic= 1
colorscheme gruvbox


let g:airline_theme='gruvbox'

"=== airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1



"=== indentline
let g:indentLine_enabled = 1
let g:indentLine_color_term = 236
let g:indentLine_faster = 1
let g:indentLine_concealcursor = 'inc'
"let g:indentLine_concealcursor = 0
let g:indentLine_conceallevel = 2
let g:indentLine_char = '│'



"=== closetag
let g:closetag_filenames = '*.xml,*.html,*.js,*.ts,*.jsx,*.tsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'




" session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1


if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif


" vim-airline
let g:airline#extensions#branch#enabled = 1
let g:airline_skip_empty_sections = 1



"match tag always
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}


"todo
let g:simple_todo_map_keys = 0

