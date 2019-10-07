" configs for Neovim; required at least pyhthon3, pip3 -> neovim, pynvim; nodejs -> neovim, typescript
" run :Ugraderemoteplugins, :checkhealth

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
set nocompatible

"=== check for dein installed || install
let dein_exists=expand('~/.cache/dein/repos/github.com/Shougo/dein.vim/autoload/dein.vim')
if !filereadable(dein_exists)
  if !executable("curl")"
  	echoerr "You have to install curl or first install vim-plug yourself!"
  	execute "q!"
  endif
  echo "Installing dein..."
  echo ""
  silent exec "!\curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > deinInstaller678.sh && sh ./deinInstaller678.sh ~/.cache/dein && rm deinInstaller678.sh"
endif


set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	


	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
	call dein#add('wsdjeg/dein-ui.vim')


	call dein#add('morhetz/gruvbox')
	call dein#add('vim-airline/vim-airline')
	call dein#add('ryanoasis/vim-devicons')
	call dein#add('tpope/vim-surround')
	call dein#add('scrooloose/nerdcommenter')
	call dein#add('kshenoy/vim-signature')
	call dein#add('ervandew/supertab')
	call dein#add('yggdroot/indentline')
	call dein#add('jiangmiao/auto-pairs')
	call dein#add('tpope/vim-repeat')
	call dein#add('alvan/vim-closetag')
	call dein#add('valloric/matchtagalways')
	call dein#add('vitalk/vim-simple-todo')


	call dein#add('Shougo/neoinclude.vim')
	call dein#add('Shougo/neco-vim')
	call dein#add('Shougo/echodoc.vim')
	call dein#add('Shougo/vimproc.vim', {'build' : 'make'})
	call dein#add('fszymanski/deoplete-emoji')


	call dein#add('vim-scripts/grep.vim')
	call dein#add('vim-scripts/CSApprox')
	call dein#add('tpope/vim-fugitive')
	call dein#add('tpope/vim-rhubarb')
	call dein#add('xolox/vim-misc')
	call dein#add('xolox/vim-session')


	call dein#add('HerringtonDarkholme/yats.vim')
	call dein#add('pangloss/vim-javascript')
	"call dein#add('othree/yajs.vim')
	"call dein#add('maxmellon/vim-jsx-pretty')
	call dein#add('mxw/vim-jsx')
	call dein#add('neovim/node-host', { 'build': 'npm install' })
	call dein#add('billyvg/tigris.nvim', { 'build': './install.sh' })
	"call dein#add('mattn/emmet-vim')
	call dein#add('hail2u/vim-css3-syntax')

	call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })
	call dein#add('Shougo/deol.nvim')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Shougo/denite.nvim')


	call dein#add('junegunn/fzf', { 'build': './install'})
	call dein#add('junegunn/fzf.vim', { 'depends': 'junegunn/fzf' })


	call dein#add('autozimu/LanguageClient-neovim', {
	\ 'rev': 'next',
	\ 'build': 'bash install.sh',
	\ })
call dein#add('prettier/vim-prettier', {
  \ 'build': 'yarn install',
  \ 'on_ft': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] })


"	call dein#add('OmniSharp/omnisharp-vim')

	call dein#end()
	call dein#save_state()
endif
"call dein#install()





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

nmap <leader>pi :call dein#install()<cr>
nmap <leader>pc :call dein#clear_state()<cr>
nmap <leader>pu :call dein#check_update()<cr>
nmap <leader>pp :DeinUpdate<cr>

nnoremap <leader>zz :e ++ff=dos<cr>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>1 :bp<cr>
nnoremap <leader>2 :bn<cr>
nnoremap <leader>z :bp<cr>
nnoremap <leader>x :bn<cr>
"nnoremap <leader>w :buffer #<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>; :pwd<cr>
nnoremap <leader>a :ALEFix<cr>


nnoremap <leader>bc :bd<cr>
nnoremap <leader>aa :bufdo bd<cr>
nnoremap <leader>e :FZF<cr>

nnoremap <leader>n :enew<cr>
nnoremap <leader>ws :wall<cr>

nnoremap <c-k> 5k
nnoremap <c-j> 5j


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




" Denite
"nmap <silent> <F3> :Denite buffer<CR>
"tnoremap <silent> <ESC>   <C-\>_<C-n>
"nmap <silent> <F2> :Deol -split={"horizontally"}<CR>

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



"=== deoplete
call deoplete#custom#option({
\ 'auto_complete_delay': 0,
\ 'max_list': 128,
\ 'num_processes': 4
\ })
let g:deoplete#sources ={'javascript':[],'javascript.jsx':[]}
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1


"=== typescript



let g:LanguageClient_serverCommands = {
    \ 'javascript.jsx': ['node','/usr/bin/typescript-language-server','--stdio'],
    \ 'javascript': ['node','/usr/bin/typescript-language-server','--stdio'],
    \ 'typescript.tsx': ['node','/usr/bin/typescript-language-server','--stdio'],
    \ 'typescript': ['node','/usr/bin/typescript-language-server','--stdio'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>



"=== echo-doc
let g:echodoc_enable_at_startup = 1
let g:echodoc_type = 'echo'



"=== CtrlP
"let g:ctrlp_by_filename = 1
"let g:ctrlp_regexp = 1
"let g:ctrlp_working_path_mode = 'ra'
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_root_markers = ['.git']
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn|cache)|node_modules|dist|build$',
  "\ 'file': '\v\*.(exe|so|dll|md|meta|jpg|png|tiff|db)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }
"let g:ctrlp_max_depth = 5
"let g:ctrlp_user_command = 'ag  -l -a --ignore-dir={node_modules,.git,dist}'
"let g:ctrlp_user_command = 'fzf'

"=== SuperTab
let g:SuperTabClosePreviewOnPopupClose = 0
let g:SuperTabCrMapping = 0




"=== Omnisharp
"let g:OmniSharp_selector_ui = 'ctrlp'
"let g:omnicomplete_fetch_full_documentation = 0
"let g:OmniSharp_typeLookupInPreview = 0
"let g:OmniSharp_timeout = 1000
"let g:OmniSharp_server_use_mono = 1
"let g:OmniSharp_highlight_types = 1
"let g:OmniSharp_open_quickfix = 0
"let g:OmniSharp_loglevel = 'critical'
""let g:OmniSharp_server_path = '~/.omnisharp/omnisharp-roslyn/OmniSharp.exe'
""=================
"autocmd BufNewFile,BufReadPost *.config set filetype=xml
"autocmd BufNewFile,BufReadPost *.csproj set filetype=xml
"autocmd BufNewFile,BufReadPost *.sln set filetype=xml
"augroup omnisharp_commands
   "autocmd!

   "" When Syntastic is available but not ALE, automatic syntax check on events
   "" (TextChanged requires Vim 7.4)
	"" autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

   "" Show type information automatically when the cursor stops moving
   "autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    "" Update the highlighting whenever leaving insert mode
    "autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
    ""autocmd VimEnter *.cs call OmniSharp#HighlightBuffer()

    "" Alternatively, use a mapping to refresh highlighting for the current buffer
    "autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>

    "" The following commands are contextual, based on the cursor position.
    "autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    "" Finds members in the current buffer
    "autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    "autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    "autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    "autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    "autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    "" Navigate up and down by method/property/field
    "autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    "autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
"augroup END

"" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
"nnoremap <Leader>w :OmniSharpGetCodeActions<CR>
"" Run code actions with text selected in visual mode to extract method
"xnoremap <Leader>w :call OmniSharp#GetCodeActions('visual')<CR>

"" Rename with dialog
"nnoremap <Leader>nm :OmniSharpRename<CR>
"nnoremap <F2> :OmniSharpRename<CR>
"" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
"command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

"nnoremap <Leader>p :OmniSharpCodeFormat<CR>

"" Start the omnisharp server for the current solution
"nnoremap <Leader>ss :OmniSharpStartServer<CR>
"nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Enable snippet completion
"let g:OmniSharp_want_snippet=1


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
"let g:indentLine_concealcursor = 'inc'
let g:indentLine_concealcursor = 0
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



"" vim-airline
"if !exists('g:airline_symbols')
  "let g:airline_symbols = {}
"endif

"if !exists('g:airline_powerline_fonts')
  "let g:airline#extensions#tabline#left_sep = ' '
  "let g:airline#extensions#tabline#left_alt_sep = '|'
  "let g:airline_left_sep          = '▶'
  "let g:airline_left_alt_sep      = '»'
  "let g:airline_right_sep         = '◀'
  "let g:airline_right_alt_sep     = '«'
  "let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  "let g:airline#extensions#readonly#symbol   = '⊘'
  "let g:airline#extensions#linecolumn#prefix = '¶'
  "let g:airline#extensions#paste#symbol      = 'ρ'
  "let g:airline_symbols.linenr    = '␊'
  "let g:airline_symbols.branch    = '⎇'
  "let g:airline_symbols.paste     = 'ρ'
  "let g:airline_symbols.paste     = 'Þ'
  "let g:airline_symbols.paste     = '∥'
  "let g:airline_symbols.whitespace = 'Ξ'
"else
  "let g:airline#extensions#tabline#left_sep = ''
  "let g:airline#extensions#tabline#left_alt_sep = ''

  "" powerline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = ''
"endif


"prtetitro
let g:prettier#autoformat = 0
let g:prettier#exec_cmd_async = 1
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

