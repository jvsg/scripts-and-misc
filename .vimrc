set nocompatible
set nobackup
set nocursorcolumn
set nocursorline
set norelativenumber
set smartcase
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set mouse=a
set number
set ruler

:vmap <C-C> "+y

filetype off

set rtp+=/home/singh882/.vim/bundle/Vundle.vim
call vundle#begin()
                                                                                                                                                                                                            
Plugin 'gmarik/Vundle.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'szw/vim-maximizer'

"---------- Airline Settings----------------

set laststatus=2
let g:airline_detect_paste=1
let g:airline#extensions#tabline#enabled = 1

"---------- Solarized settings -------------
set t_ut= "https://sunaku.github.io/vim-256color-bce.html
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"----------- Pathogen  ---------------------

execute pathogen#infect()

"----------- Ultisnip ----------------------

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Automatically remove whtiespace on :w
autocmd BufWritePre * %s/\s\+$//e
