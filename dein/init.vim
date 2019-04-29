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



"=== preload cfg
let g:ale_completion_enabled = 0
let g:ale_set_balloons = 0
let g:ale_completion_delay = 0
let g:ale_completion_max_suggestions = 128

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
	call dein#add('cohama/lexima.vim')
	call dein#add('tpope/vim-repeat')
	call dein#add('alvan/vim-closetag')
	call dein#add('ctrlpvim/ctrlp.vim')


	call dein#add('Shougo/neoinclude.vim')
	call dein#add('Shougo/neco-vim')
	call dein#add('Shougo/echodoc.vim')
	call dein#add('Shougo/neco-syntax')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('Shougo/denite.nvim')

	call dein#add('w0rp/ale')
	"call dein#add('SirVer/ultisnips')
	call dein#add('neoclide/coc-neco')
	call dein#add('neoclide/coc.nvim', {'merge':0, 'build': './install.sh nightly'})
	"call dein#add('neoclide/coc-denite')


	call dein#add('OmniSharp/omnisharp-vim')
	"call dein#add('adamclerk/vim-razor')


	"call dein#add('othree/yajs.vim')
	"call dein#add('maxmellon/vim-jsx-pretty')
	"call dein#add('leafgarland/typescript-vim')
	call dein#add('HerringtonDarkholme/yats.vim')
	"call dein#add('peitalin/vim-jsx-typescript')
	"call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
	"call dein#add('mhartington/nvim-typescript')

	"call dein#local('~/GitHub', {},['nvim-typescript'])
  	"let $NVIM_NODE_LOG_FILE='nvim-node.log'
  	"let $NVIM_NODE_LOG_LEVEL='warn'

"====== NOT useful
"  - call dein#add('dimixar/deoplete-omnisharp')
"  - call dein#add('astralhpi/deoplete-omnisharp')
"  - call dein#add('mixedCase/deoplete-omnisharp.git')
"  - call dein#add('cyansprite/deoplete-omnisharp' , {'build': './install.sh'})

"= maybe  will need
"Plug 'groenewege/vim-less'
"Plug 'hail2u/vim-css3-syntax'
"Plug 'skammer/vim-css-color'


"=== END DEIN
	call dein#end()
	call dein#save_state()
endif
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
