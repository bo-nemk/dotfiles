" Everything should be relative to self
let g:dotvim = expand("<sfile>:p:h")

" Setup nvim
runtime init/global.vim
runtime init/tab.vim

" Setup functions
runtime init/functions/find_replace.vim

" Setup Plug & install Plug plugins
runtime init/plug/install_plug.vim
runtime init/plug/plug_install_plugins.vim
runtime init/plug/plug_config_coc.vim
runtime init/plug/plug_config_airline.vim
runtime init/plug/plug_config_gruvbox.vim
runtime init/plug/plug_config_vimspector.vim
runtime init/plug/plug_config_vimtex.vim
runtime init/plug/plug_config_syntastic.vim

" Automatically go to the directory of the current window
set autochdir
