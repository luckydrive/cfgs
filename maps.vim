


nmap <leader><leader> :w!<cr>
map <silent> <leader><space> /NeverNeverEverUseThisSentenceAsSomeWord<cr>:noh<cr>

nmap <leader>l :so ~/.config/nvim/init.vim<cr>
nmap <leader>ll :edit ~/.config/nvim/init.vim<cr>
nmap <leader>lg :edit ~/.config/nvim/ginit.vim<cr>
nmap <leader>le :edit ~/.config/nvim/editor.vim<cr>
nmap <leader>lm :edit ~/.config/nvim/maps.vim<cr>
nmap <leader>lp :edit ~/.config/nvim/plugins.vim<cr>
nmap <leader>la :edit ~/.config/nvim/autocmd.vim<cr>

nmap <leader>pi :PlugInstall<cr>
nmap <leader>pc :PlugClean<cr>

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
nnoremap <leader>c :bd<cr>
nnoremap <leader>ba :bufdo bd<cr>
"nnoremap <leader>w :CtrlPMRU<cr>
nnoremap <leader>e :CtrlP<cr>
"nnoremap <leader>w :CtrlPBuffer<cr>
"nnoremap <leader>p :ALEFix<cr>

nnoremap <leader>n :enew<cr>
nnoremap <leader>ws :wall<cr>

nnoremap <c-k> 6k
nnoremap <c-j> 6j



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
