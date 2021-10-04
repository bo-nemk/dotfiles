" Everything should be relative to self
let g:dotvim = expand("<sfile>:p:h")

" Setup nvim
runtime init/global.vim
runtime init/tab.vim
runtime init/find_replace.vim

" Setup Plug & install Plug plugins
runtime init/install_plug.vim
runtime init/plug_install_plugins.vim

" Configure Plug plugins
runtime init/plug_config_coc.vim
runtime init/plug_config_airline.vim
runtime init/plug_config_gruvbox.vim
runtime init/plug_config_vimspector.vim
runtime init/plug_config_vimtex.vim

" Setup Coc plugins
runtime init/coc_explorer.vim
runtime init/coc_spell_checker.vim
runtime init/coc_json.vim
runtime init/coc_snippets.vim
runtime init/coc_pairs.vim
runtime init/coc_jedi.vim
runtime init/coc_vimtex.vim

" Automatically go to the directory of the current window
set autochdir
