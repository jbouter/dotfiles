set nu
set rnu
syn on 
syntax enable
set nowrap
set tabstop=2
set shiftwidth=2
set so=5
set expandtab
set autoindent
set nomodeline
execute pathogen#infect()
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
