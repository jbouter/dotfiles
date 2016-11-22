set nu
set rnu
syn on 
syntax enable
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set background=dark
set nomodeline
autocmd vimenter * NERDTree
execute pathogen#infect()
filetype plugin indent on
