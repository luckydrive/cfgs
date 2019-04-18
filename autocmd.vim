
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline


