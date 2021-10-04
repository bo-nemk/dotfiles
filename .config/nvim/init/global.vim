" Global leader 
let g:mapleader = ','

" Spelling checker
" set spell spelllang=en_us

" Use relative numbering
set number
set relativenumber 

" Editing vimrc
nnoremap <leader>s <cmd>sp $MYVIMRC<cr>

" Reload vimrc
" nnoremap <leader>r <cmd>so $MYVIMRC<cr>

" Paste from clipboard
nnoremap <leader>p <cmd>execute 'set paste' <bar> execute 'normal! "+p' <bar> execute "set nopaste"<cr>

" Copy from vim to clipboard
vnoremap <leader>c <cmd>normal "+y<cr>

" Buffer switching 
nmap <leader>1 :bfirst<CR>
nmap <leader>2 :bfirst<CR>:bn<CR>
nmap <leader>3 :bfirst<CR>:2bn<CR>
nmap <leader>4 :bfirst<CR>:3bn<CR>
nmap <leader>5 :bfirst<CR>:4bn<CR>
nmap <leader>6 :bfirst<CR>:5bn<CR>
nmap <leader>7 :bfirst<CR>:6bn<CR>
nmap <leader>8 :bfirst<CR>:7bn<CR> 
nmap <leader>9 :bfirst<CR>:8bn<CR> 
nmap <leader>0 :bfirst<CR>:9bn<CR> 


