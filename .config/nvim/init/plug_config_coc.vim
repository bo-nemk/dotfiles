" List containing all Coc Plugins
let g:coc_global_extensions = []

" Jump to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gp :call CocAction('jumpDefinition', 'vsplit')<CR>

" Jump to implementation
nmap <silent> gi <Plug>(coc-implementation)

" Rename symbol
nmap <leader>rn <Plug>(coc-rename)

" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <TAB> pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item 
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

