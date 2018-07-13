" Bones Vimrc

set nocompatible
syntax on
filetype off
let g:mapleader = ' '
let g:maplocalleader = '\'

set background=dark
" colorscheme materialbox
set termguicolors
colorscheme nord
" colorscheme dracula

" for starting sourcing vim on the fly
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap <leader>ev :vsp ~/.vimrc<CR>
set guifont=Hack\ 12

source $HOME/.vim/config/general.vim
source $HOME/.vim/config/packages.vim
source $HOME/.vim/config/configuration.vim
source $HOME/.vim/config/aucommands.vim
source $HOME/.vim/config/statusline.vim
source $HOME/.vim/config/guivim.vim
source $HOME/.vim/config/mappings.vim
