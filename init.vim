" configs for Neovim; required at least pyhthon3, pip3 -> neovim, pynvim; nodejs -> neovim, typescript
" run :Ugraderemoteplugins, :checkhealth

let g:python3_host_prog = '/usr/bin/python3'
let g:python_host_prog = '/usr/bin/python'
set nocompatible
set hidden
let mapleader = ","

"=== check for dein installed
let dein_exists=expand('~/.cache/dein/repos/github.com/Shougo/dein.vim/autoload/dein.vim')
if !filereadable(dein_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing dein..."
  echo ""
  silent exec "!\curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && sh ./installer.sh ~/.cache/dein"
endif




if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

if filereadable(expand("~/.config/nvim/editor.vim"))
 source ~/.config/nvim/editor.vim
endif

if filereadable(expand("~/.config/nvim/maps.vim"))
  source ~/.config/nvim/maps.vim
endif

if filereadable(expand("~/.config/nvim/autocmd.vim"))
 source ~/.config/nvim/autocmd.vim
endif

set formatoptions-=cro
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
