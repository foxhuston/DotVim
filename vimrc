set nocompatible
set nowrap

let $PATH = $PATH . ':' . $HOME . '/.cabal/bin'
let $PATH = $PATH . ':' . $HOME . '/Library/Haskell/bin'

"Vundle

"VUNDLE FIX: PluginUpdate => git pull: git-sh-setup: No such file or directory in MacVim (OK in non-GUI version of Vim)
if has("gui_macvim")
    set shell=/bin/bash\ -l
endif

"Vundle Main
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'dbakker/vim-lint'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tikhomirov/vim-glsl'
Plugin 'dag/vim2hs'
Plugin 'Shougo/vimproc.vim'
" Plugin 'fountain.vim'
Plugin 'mattn/emmet-vim'
Plugin 'sickill/vim-monokai'
Plugin 'godlygeek/tabular'
Plugin 'aperezdc/vim-template'
Plugin 'kchmck/vim-coffee-script'
" Plugin 'eagletmt/neco-ghc'
" Plugin 'eagletmt/ghcmod-vim'
Plugin 'othree/yajs.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

"My Config
syntax on
set number
set backspace=indent,eol,start

set relativenumber
set smartcase
set hlsearch
set incsearch

"nmap ea :GhcModType<CR>

let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

let g:haskell_conceal_wide = 1
let g:templates_directory = '~/.vim/templates/'
let g:airline_powerline_fonts = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set ls=2

"Formatting stuff

set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

hi! link Conceal Operator


"Stuff for mvim.
if has("gui_running")
    set gfn=Monaco\ for\ Powerline:h16
    colorscheme Monokai
endif
