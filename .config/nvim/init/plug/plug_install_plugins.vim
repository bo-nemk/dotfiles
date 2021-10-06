" Install all our plugins
call plug#begin(g:pluginDirectory)
    " Coc
    Plug 'neoclide/coc.nvim' ", {'branch': 'release'}

    " Linting
    " [DISABLED AS ITS REALLY ANNOYING]
    " Plug 'vim-syntastic/syntastic'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'ryanoasis/vim-devicons'

    " Gruvbox
    Plug 'rafi/awesome-vim-colorschemes'
    Plug 'colepeters/spacemacs-theme.vim'

    " Autocompletion
    Plug 'tpope/vim-commentary'

    " Debugger
    Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python'}

    " Vimtex
    Plug 'lervag/vimtex'
call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * 
            \ if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
            \| PlugInstall --sync | source $MYVIMRC
            \| endif
