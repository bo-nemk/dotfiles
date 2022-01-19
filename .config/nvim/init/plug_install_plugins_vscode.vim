" Install all our plugins
call plug#begin(g:pluginDirectory)
    " Comments
    Plug 'tpope/vim-commentary'
call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * 
            \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \| PlugInstall --sync | source $MYVIMRC
            \| endif
