" G E N E R A L  S E T T I N G S

" enter the current millenium
set nocompatible

" disable plugins
filetype off

" enable relative line numbers
set relativenumber
set number

" set a map leader (for extra key combinations)
let mapleader = '\'
let g:mapleader = '\'

" set how many lines of history VIM has te remember
set history=500

" set to autoread when a file is changed from the outside
set autoread

" M A P P I N G S

" map a quick-save
nmap <leader>w :w!<CR>

" M O V E M E N T

" treat long lines as break lines
map j gj
map k gk

" S P E L L  C H E C K I N G

" toggle spell checking
map <leader>ss :setlocal spell!<CR>

" S T A T U S  L I N E

" always show the status line
set laststatus=2

" format the status line
set statusline=
set statusline +=%1*\ %n\ %*        " buffer nummer
set statusline +=%5*%{&ff}%*        " file format
set statusline +=%3*%y%*            " file type
set statusline +=%4*\ %<%F%*        " file path
set statusline +=%2*%m%*            " modified flag
set statusline +=%1*\ %{HasPaste()}%* " paste mode
set statusline +=%1*%=%5l%*         " current line
set statusline +=%2*/%L%*           " total lines
set statusline +=%1*%4v\ %*         " virtual column number
set statusline +=%2*0x%04B\ %*      " character under cursor

" C O L O R S  &  F O N T  S E T T I N G S

" enable syntax highlighting
syntax enable

" tell vim it's using a dark background
" set background=dark

" set UTF-8 as the standard encoding
set encoding=UTF8

" use Unix as standard file type
set ffs=unix,dos,mac

"  V I M  U S E R  I N T E R F A C E

" keep the cursor on screen by 'n' lines
set so=5

" always show the current position
set ruler

" height of the command bar in lines
set cmdheight=1

" ignore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" highlight search result
set hlsearch

" F I L E ,  B A C K U P  A N D  U N D O  S E T T I N G S

" turn off the backup feature
set nobackup
set nowb
set noswapfile

" T E X T ,  T A B S  A N D  I N D E N T A T I O N  S E T T I N G S

" use spaces instead of tabs
set expandtab

" use smarttabs
set smarttab

" set tabwidth to 4 spaces
set shiftwidth=4
set tabstop=4

" set auto indent
set ai

" set smart indent
set si

" set wrap lines
set wrap

" set a (nerd) font
set guifont=Terminus\ 13

" H E L P E R  F U N C T I O N S

function! HasPaste()
    if &paste
        return '[PASTE MODE]'
    en
    return ''
endfunction
