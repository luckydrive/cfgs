


nmap <leader><leader> :w!<cr>
map <silent> <leader><space> /NeverNeverEverUseThisSentenceAsSomeWord<cr>:noh<cr>

nmap <leader>l :so ~/.config/nvim/init.vim<cr>
nmap <leader>ll :edit ~/.config/nvim/init.vim<cr>
nmap <leader>lg :edit ~/.config/nvim/ginit.vim<cr>
nmap <leader>le :edit ~/.config/nvim/editor.vim<cr>
nmap <leader>lb :edit ~/.config/nvim/bindings.vim<cr>
nmap <leader>lp :edit ~/.config/nvim/plugins.vim<cr>
"nmap <leader>la :edit ~/.config/nvim/autocmd.vim<cr>

"nmap <leader>pi :call dein#install()<cr>
"nmap <leader>pc :call dein#clear_state()<cr>
"nmap <leader>pu :call dein#check_update()<cr>
nmap <leader>i :call dein#install()<cr>
nmap <leader>u :DeinUpdate<cr>

nnoremap <leader>zz :e ++ff=dos<cr>
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <leader>1 :bp<cr>
nnoremap <leader>2 :bn<cr>
nnoremap <leader>z :bp<cr>
nnoremap <leader>x :bn<cr>
"nnoremap <leader>s :buffer #<cr>

map <leader>cd :cd %:p:h<cr>:pwd<cr>
nnoremap <leader>; :pwd<cr>
nnoremap <leader>a :ALEFix<cr>


nnoremap <leader>bc :bd<cr>
nnoremap <leader>cz :bd<cr>
"nnoremap <leader>cc :bd<cr>
nnoremap <leader>aa :bufdo bd<cr>
"nnoremap <leader>w :CtrlPMRU<cr>
nnoremap <leader>e :CtrlP<cr>
"nnoremap <leader>w :CtrlPBuffer<cr>
"nnoremap <leader>p :ALEFix<cr>

nnoremap <leader>n :enew<cr>
"nnoremap <leader>ws :wall<cr>

nnoremap <c-k> 5k
nnoremap <c-j> 5j



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



au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
