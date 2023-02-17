:: dotfile sync program for win.

:: vimrc
mklink %HOME%\_vimrc %HOME%\dotfiles\_vimrc
mklink %HOME%\_gvimrc %HOME%\dotfiles\_gvimrc

:: init.vim
mklink %LOCALAPPDATA%\nvim\init.vim %HOME%\dotfiles\init.vim
