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




"=== select and load plugins
"=== DEIN START
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
	call dein#add('ctrlpvim/ctrlp.vim')


	call dein#add('Shougo/neoinclude.vim')
	call dein#add('Shougo/neco-vim')
	call dein#add('Shougo/echodoc.vim')
	call dein#add('Shougo/neco-syntax')
	call dein#add('fszymanski/deoplete-emoji')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')

	call dein#add('shougo/deoplete-clangx')
	call dein#add('vim-jp/vim-cpp')

	call dein#add('HerringtonDarkholme/yats.vim')
   call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
	call dein#add('pangloss/vim-javascript')
	call dein#add('othree/yajs.vim')
	call dein#add('maxmellon/vim-jsx-pretty')
	call dein#add('mxw/vim-jsx')
	call dein#add('mattn/emmet-vim')
	call dein#add('hail2u/vim-css3-syntax')


	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Shougo/denite.nvim')



"	call dein#add('autozimu/LanguageClient-neovim', {
"    \ 'rev': 'next',
"    \ 'build': 'bash install.sh',
"    \ })

	"call dein#add('prabirshrestha/async.vim')
	"call dein#add('prabirshrestha/vim-lsp')
	"call dein#add('lighttiger2505/deoplete-vim-lsp')
	"let g:lsp_log_verbose = 1
	"let g:lsp_log_file = expand('./vim-lsp.log')
"
"
	call dein#add('w0rp/ale')
"	call dein#add('OmniSharp/omnisharp-vim')

"=== END DEIN
	call dein#end()
	call dein#save_state()
endif
"
"call dein#install()


"=== post plugins settings
if filereadable(expand("~/.config/nvim/editor.vim"))
 source ~/.config/nvim/editor.vim
endif
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif
if filereadable(expand("~/.config/nvim/bindings.vim"))
  source ~/.config/nvim/bindings.vim
endif
