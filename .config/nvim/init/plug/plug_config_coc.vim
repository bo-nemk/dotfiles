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

" =coc_explorer==============================================================================================
" Append plugin to plugin list
call add(g:coc_global_extensions, 'coc-explorer')

" Key maps
nnoremap <leader>v <cmd>CocCommand explorer<CR>

" =coc_jedi==================================================================================================
call add(g:coc_global_extensions, 'coc-jedi')

" =coc_json==================================================================================================
call add(g:coc_global_extensions, 'coc-json')

" =coc_pairs=================================================================================================
call add(g:coc_global_extensions, 'coc-pairs')

" =coc_snippets==============================================================================================
call add(g:coc_global_extensions, 'coc-snippets')

" Set tab to move to the next snippet
let g:coc_snippet_next = '<tab>'

" =coc_spell_checker=========================================================================================
call add(g:coc_global_extensions, 'coc-spell-checker')

" Key maps
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" =coc_vimtex================================================================================================
call add(g:coc_global_extensions, 'coc-vimtex')
