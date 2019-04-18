let g:ale_completion_enabled = 0
let g:ale_set_balloons = 0

if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
"  call dein#add('Shougo/deoplete.nvim')
" if !has('nvim')
"  call dein#add('roxma/nvim-yarp')
"  call dein#add('roxma/vim-hug-neovim-rpc')
" endif


" Alternatives
"Plug 'itchyny/lightline.vim'
"Plug 'shinchu/lightline-gruvbox.vim'
"Plug 'vim-ctrlspace/vim-ctrlspace'
"Plug 'jiangmiao/auto-pairs'
"Plug 'tmsvg/pear-tree'

"Plug 'tpope/vim-markdown'
"Plug 'tpope/vim-fugitive'


call dein#add('morhetz/gruvbox')
call dein#add('vim-airline/vim-airline')
call dein#add('ryanoasis/vim-devicons')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('tpope/vim-surround')
call dein#add('scrooloose/nerdcommenter')
call dein#add('kshenoy/vim-signature')
call dein#add('ervandew/supertab')
call dein#add('yggdroot/indentline')
call dein#add('cohama/lexima.vim')
call dein#add('tpope/vim-repeat')
call dein#add('alvan/vim-closetag')


"Plug 'neoclide/coc-neco'
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
"Plug 'neoclide/coc-denite'
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Plug 'ujihisa/neco-look'
call dein#add('Shougo/neoinclude.vim')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neco-vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/echodoc.vim')
call dein#add('Shougo/neco-syntax')
call dein#add('deoplete-plugins/deoplete-dictionary')
call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
call dein#add('Shougo/denite.nvim')


"for js, jsx
"Plug 'steelsojka/deoplete-flow'
"Plug 'carlitux/deoplete-flow'

"Plug 'othree/yajs.vim'
"Plug 'jelera/vim-javascript-syntax'
call dein#add('maxmellon/vim-jsx-pretty')
"Plug 'othree/javascript-libraries-syntax.vim'


" for ts
call dein#add('HerringtonDarkholme/yats.vim')
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})


"for Node
"Plug 'moll/vim-node'


"Plug 'groenewege/vim-less'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'skammer/vim-css-color'
"Plug 'mattn/emmet-vim', {'for': ['javascript', 'html', 'css', 'less']}


call dein#add('w0rp/ale')
"Plug 'OmniSharp/omnisharp-vim'


"call dein#install()
  call dein#end()
  call dein#save_state()
endif


"call plug#begin(expand('~/.config/nvim/plugged'))
"=====================================================================================================================
"=====================================================================================================================
"call plug#end()



"=== echo-doc
let g:echodoc_enable_at_startup = 1
let g:echodoc_type = 'echo'




"=== coc-prettier
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
"autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.yaml,*.html Prettier
"coc.preferences.formatOnSaveFiletypes": ["css", "less", "javascript", "javascript.jsx", "typescript", "typescript.tsx"],


"=== coc-tsserver
"autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx CocCommand tsserver.organizeImports
"nnoremap <leader>ti :CocCommand tsserver.organizeImports<cr>
"nnoremap <leader>tt :bd<cr>
"nnoremap <leader>tf :CocCommand tsserver.executeAutofix<cr>
"nnoremap <leader>te :TSGetErrorFull<cr>



"=== CtrlSpace
"let g:CtrlSpaceDefaultMappingKey = "<C-space> "
"let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
"let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
"let g:CtrlSpaceSaveWorkspaceOnExit = 1
"if executable("ag")
	"let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
"endif
"nnoremap <silent><leader>e :CtrlSpace O<CR>





"=== CtrlP
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_root_markers = ['.git']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|cache)|node_modules|dist|public|build$',
  \ 'file': '\v\.(exe|so|dll|md)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" for custom search
let g:ctrlp_max_depth = 10
let g:ctrlp_user_command = 'ag -l -g ""'
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d' " Windows






"=== SuperTab
let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabCrMapping = 1






"====== deoplete
call deoplete#custom#option({
\ 'auto_complete_delay': 66,
\ 'max_list': 128,
\ 'num_processes': 4
\ })
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 0





"=== nvim-typescript
let g:nvim_typescript#javascript_support = 1
let g:nvim_typescript#signature_complete = 0
let g:nvim_typescript#type_info_on_hold = 0
let g:nvim_typescript#max_completion_detail = 12
"let g:nvim_typescript#server_options = []
let g:nvim_typescript#diagnostics_enable = 1
autocmd BufWrite *.ts,*.tsx,*.js,*.jsx TSGetDiagnostics
nnoremap <leader>tt :bd<cr>
nnoremap <leader>tf :TSGetCodeFix<cr>
nnoremap <leader>te :TSGetErrorFull<cr>
nnoremap <leader>td :TSGetDiagnostics<cr>
nnoremap <leader>ti :TSOrganizeImports<cr>
nnoremap <leader>tr :TSDef<cr>
nnoremap <leader>p :TSDefPreview<cr>




"=== emmet-vim
"let g:jsx_ext_required = 0
"let g:user_emmet_install_global = 0
"let g:user_emmet_settings = {
"\  'javascript' : {
"\      'extends': 'jsx'
"\  },
"\}




"=== ALE
"let g:ale_javascript_flow_use_home_config = 1
"let g:ale_linters = {
"\   'javascript': ['tsserver'],
"\   'javascript.jsx': ['tsserver'],
"\   'typescript': ['tsserver'],
"\   'typescript.jsx': ['tsserver'],
"\   'json': ['eslint'],
"\   'less': ['lessc'],
"\   'css': ['lessc'],
"\}
let g:ale_javascript_prettier_use_local_config = 1
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

let g:ale_completion_delay = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0
let g:ale_linters_explicit = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = 'E'
let g:ale_sign_warning = 'W'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0






"=== steelsojka/deoplete-flow
"function! StrTrim(txt)
  "return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
"endfunction
"let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))
"if g:flow_path != 'flow not found'
  "let g:deoplete#sources#flow#flow_bin = g:flow_path
"endif



"=== autocomplete-flow
"let g:autocomplete_flow#insert_paren_after_function = 0
"let g:neosnippet#enable_completed_snippet = 1




"=== carlitux/deoplete-flow
"let g:deoplete#sources#flow#filetypes = [
					 "\ 'jsx',
					 "\ 'javascript.jsx'
					 "\ ]




"====== omnisharp
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


"=================
"autocmd BufNewFile,BufReadPost *.config set filetype=xml
"autocmd BufNewFile,BufReadPost *.csproj set filetype=xml
"autocmd BufNewFile,BufReadPost *.sln set filetype=xml


"=== colorscheme
set background=dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_invert_tabline=0
let g:gruvbox_italic= 1
colorscheme gruvbox



"=== airline
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1



"=== indentline
let g:indentLine_color_term = 236
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_char = '│'




"=== closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_filetypes = 'html,xhtml,phtml,javascript,javascript.jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
