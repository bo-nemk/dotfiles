" Configure vimspector bindings to be human / VSCode defauts
let g:vimspector_enable_mappings = 'HUMAN'
nmap <F1> <cmd>VimspectorReset<CR>

" Install some vimspector stuff
" TODO: Move this to different files...?
let g:vimspector_install_gadgets = ['debugpy']
