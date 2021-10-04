let g:plug = g:dotvim . "/autoload/plug.vim"
let g:pluginDirectory = g:dotvim . "/plugged/"
if empty(glob(g:plug))
    echo "[init.vim] Plugin Manager plug.vim not found..." 
    echo "[init.vim] Attempting to install plug.vim..."
    execute '!curl -fLo ' . g:plug . ' --create-dirs '
                \ . '"https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'

    " Check if curl download succeeded
    if empty(glob(g:plug))
        echo "[init.vim] Download failed..."
    else
        echo "[init.vim] Download succeeded"
    endif

    " I don't know what this does
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

