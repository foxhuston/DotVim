runtime vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on

"Formatting stuff

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent


"Stuff for mvim.
if has("gui_running")
    set gfn=Inconsolata:h14
    colorscheme Monokai
endif
