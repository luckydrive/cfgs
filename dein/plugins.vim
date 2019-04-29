
"todo coc configuration with deoplete


"=== deoplete
call deoplete#custom#option({
\ 'auto_complete_delay': 0,
\ 'max_list': 128,
\ 'num_processes': 4
\ })

"let g:deoplete#sources = {'_': [ 'ultisnips']}
"call deoplete#custom#option('sources', {
"\ 'cs': ['omnisharp'],
"\ })
"let g:deoplete#sources = {'_': [ 'ale'], 'cs':['omnisharp']}
let g:deoplete#sources ={'cs':['omnisharp']}
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
let g:nvim_typescript#server_options = []



"=== nvim-typescript
"let g:nvim_typescript#javascript_support = 1
"let g:nvim_typescript#signature_complete = 1
"let g:nvim_typescript#type_info_on_hold = 0
"let g:nvim_typescript#max_completion_detail = 16
"let g:nvim_typescript#diagnostics_enable = 1
""autocmd BufWrite *.ts,*.tsx,*.js,*.jsx TSGetDiagnostics
"nnoremap <leader>tt :bd<cr>
"nnoremap <leader>tf :TSGetCodeFix<cr>
"nnoremap <leader>te :TSGetErrorFull<cr>
"nnoremap <leader>td :TSGetDiagnostics<cr>
"nnoremap <leader>ti :TSOrganizeImports<cr>
"nnoremap <leader>tr :TSDef<cr>
"nnoremap <leader>p :TSDefPreview<cr>



"=== ALE (using for  fix generally, lint only *.cs)
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
let g:ale_javascript_prettier_use_local_config = 1
"== lint
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
let g:ale_linters = {
\   'cs': ['OmniSharp'],
\}
"== fix
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



"=== echo-doc
let g:echodoc_enable_at_startup = 1
let g:echodoc_type = 'echo'



"=== utilsnips
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsEditSplit="vertical"




"=== COC
"inoremap <silent><expr> <c-space> coc#refresh()
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"
nnoremap <leader>coc :CocInstall coc-tsserver coc-neosnippet coc-html coc-emmet coc-svg<cr>

"= coc-tsserver
autocmd BufWritePre *.ts,*.tsx,*.js,*.jsx CocCommand tsserver.organizeImports
nnoremap <leader>ti :CocCommand tsserver.organizeImports<cr>
nnoremap <leader>tt :bd<cr>
nnoremap <leader>tf :CocCommand tsserver.executeAutofix<cr>






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
let g:SuperTabClosePreviewOnPopupClose = 0
let g:SuperTabCrMapping = 0






"=== Omnisharp
let g:OmniSharp_selector_ui = 'ctrlp'
let g:omnicomplete_fetch_full_documentation = 0
let g:OmniSharp_typeLookupInPreview = 0
let g:OmniSharp_timeout = 1000
let g:OmniSharp_server_use_mono = 1
let g:OmniSharp_highlight_types = 1
let g:OmniSharp_open_quickfix = 0
let g:OmniSharp_loglevel = 'critical'
"let g:OmniSharp_server_path = '~/.omnisharp/omnisharp-roslyn/OmniSharp.exe'
"=================
autocmd BufNewFile,BufReadPost *.config set filetype=xml
autocmd BufNewFile,BufReadPost *.csproj set filetype=xml
autocmd BufNewFile,BufReadPost *.sln set filetype=xml
augroup omnisharp_commands
   autocmd!

   " When Syntastic is available but not ALE, automatic syntax check on events
   " (TextChanged requires Vim 7.4)
	" autocmd BufEnter,TextChanged,InsertLeave *.cs SyntasticCheck

   " Show type information automatically when the cursor stops moving
   "autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()

    " Update the highlighting whenever leaving insert mode
    autocmd InsertLeave *.cs call OmniSharp#HighlightBuffer()
    "autocmd VimEnter *.cs call OmniSharp#HighlightBuffer()

    " Alternatively, use a mapping to refresh highlighting for the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>th :OmniSharpHighlightTypes<CR>

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>tt :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <C-k> :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <C-j> :OmniSharpNavigateDown<CR>
augroup END

" Contextual code actions (uses fzf, CtrlP or unite.vim when available)
nnoremap <Leader>w :OmniSharpGetCodeActions<CR>
" Run code actions with text selected in visual mode to extract method
xnoremap <Leader>w :call OmniSharp#GetCodeActions('visual')<CR>

" Rename with dialog
nnoremap <Leader>nm :OmniSharpRename<CR>
nnoremap <F2> :OmniSharpRename<CR>
" Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

nnoremap <Leader>p :OmniSharpCodeFormat<CR>

" Start the omnisharp server for the current solution
nnoremap <Leader>ss :OmniSharpStartServer<CR>
nnoremap <Leader>sp :OmniSharpStopServer<CR>

" Enable snippet completion
"let g:OmniSharp_want_snippet=1






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
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx,*.ts,*.tsx,*.cshtml,*.xml'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
