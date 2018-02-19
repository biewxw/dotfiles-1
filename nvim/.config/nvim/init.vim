"=====================================================
"      __ __ _             __    ___   ___  _
"     / //_/(_)___  ___ _ / /__ |_  | |_  |( )___
"    / ,<  / // _ \/ _ `//  '_// __/ / __/ |/(_-<
"   /_/|_|/_//_//_/\_, //_/\_\/____//____/  /___/
"                 /___/     _
"     ___  ___  ___  _  __ (_)__ _
"    / _ \/ -_)/ _ \| |/ // //  ' \
"   /_//_/\__/ \___/|___//_//_/_/_/
"     _____             ___ _
"    / ___/___   ___   / _/(_)___ _
"   / /__ / _ \ / _ \ / _// // _ `/
"   \___/ \___//_//_//_/ /_/ \_, /
"                            /___/
"
"=====================================================

" Always exit all files

cnoreabbrev q qa

"=====================================================

" Auto commands

augroup General

    autocmd FileType markdown,text setlocal spell

    autocmd BufReadPost * Goyo 90%x90%
    autocmd VimResized * execute "normal \<C-W>="

augroup END

"=====================================================

" Hide UI

set noshowmode
set laststatus=0
set shortmess=atI
set cmdheight=2

"=====================================================

" Map wasd as movement keys

" noremap w k
" noremap a h
" noremap s j
" noremap d l

"=====================================================

" No wrapping in the middle of a word

set linebreak

"=====================================================

" On pressing tab, insert 4 spaces

set expandtab

"=====================================================

" Pickachu

let g:pickachu_default_date_format = "%d.%m.%Y"

"=====================================================

" Plugins

" Plugin directory
call plug#begin('~/.vim/plugged')

" Plugin list
Plug 'junegunn/goyo.vim'
Plug 'DougBeney/pickachu'

" End list
call plug#end()

"=====================================================

" Searching

set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <esc> :noh<return><esc>

"=====================================================

" Show existing tab with 4 spaces width

set tabstop=4

"=====================================================

" Show invisible characters

set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

"=====================================================

" Softwrapped lines keep indent level

set breakindent

"=====================================================

" Spelling

set spelllang=en_au
hi SpellBad ctermbg=1 ctermfg=0

"=====================================================

" Use arrows to move between rows with soft wrapping

nnoremap <down> gj
nnoremap <up> gk
vnoremap <down> gj
vnoremap <up> gk

"=====================================================

" When indenting with '>', use 4 spaces width

set shiftwidth=4

"=====================================================