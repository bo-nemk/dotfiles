" Hardcoding carrige returns like this is the only way I got it to work, sad.
nnoremap <leader>b <cmd>VimtexCompile<CR>
nnoremap <leader>n <cmd>VimtexView<CR>
nnoremap <leader>m <cmd>VimtexClean<CR>

set linebreak
set breakindent
let &showbreak='-> '

" Built-in nvim spellingschecker => trying coc-spell-checker instead
" set spelllang=en_gb spell
