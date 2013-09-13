runtime vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

syntax on

set number

set backspace=indent,eol,start

"Formatting stuff

set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent


"Stuff for mvim.
if has("gui_running")
    set gfn=Inconsolata:h14
    colorscheme Monokai
endif
