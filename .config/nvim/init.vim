set runtimepath+=~/.vim,~/.vim/after
set packpath^=~/.vim

let g:python3_host_prog='/home/bones/.virtualenvs/neovim3/bin/python'
let g:python_host_prog ='/home/bones/.virtualenvs/neovim2/bin/python'

syntax on
filetype off
let g:mapleader = ' '
let g:maplocalleader = '\'

" for starting sourcing vim on the fly
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
nnoremap <leader>ev :vsp ~/.config/nvim/init.vim<CR>

 " Neovim settings {{{
set termguicolors
set background=dark
" set background=light

" colorscheme nord
" colorscheme badwolf
" colorscheme OceanicNext
" colorscheme solarized8_light
" colorscheme solarized8_dark
colorscheme Tomorrow-Night
" colorscheme carbonized-dark
" colorscheme dracula
" colorscheme gotham
" colorscheme yellow-moon

" set noshowmode
" set shortmess=acotT
" set cursorline
set cmdheight=1
set conceallevel=2
set grepprg=rg\ --vimgrep
set title
set magic
set synmaxcol=200
set encoding=utf-8
set modelines=1
set list
set listchars=tab:▸-,extends:❯,precedes:❮
set shell=/bin/bash
set lazyredraw
set foldenable
set foldlevelstart=99
set foldnestmax=10
set nowrap
set diffopt+=vertical
set complete=.,w,b,u,t,i
set completeopt=longest,menuone
set completeopt-=preview
set iskeyword+=_,$,@,%,#  " none of these should be word dividers, so make them not be
set history=5000
set autowrite
set showmatch
set hidden
set gdefault
set ignorecase
set infercase
set smartcase
set nojoinspaces

" For tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set nobackup
set nowritebackup
set noswapfile
set undofile
set dictionary+=/usr/share/dict/words
set spellfile=~/.vim/spell/custom-dictionary.utf-8.add,~/.vim/spell/vim-local-dictionary.utf-8.add
set spellsuggest=file:~/usr/share/dict/british-english,best

set shiftround
set scrolloff=999         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=5
set sidescroll=1
set number
set relativenumber

" Open new split panes to right
set splitbelow
set splitright

" set wildmode=longest,list,full
set wildmode=longest,full
set clipboard+=unnamedplus

" Time out on key codes but not mappings.
set ttimeout
set timeout
set timeoutlen=3000
set ttimeoutlen=100

" Ignore the follwing in vim
set wildignore+=.git " Version Controls"
set wildignore+=node_modules/**/ " Fucking node modules
set wildignore+=node_modules/
set wildignore+=.DS_Store
set wildignore+=.vscode " Version Controls"
set wildignore+=~/.virtualenvs "Exclude python virtual environments.
set wildignore+=build/** "Any build folders.
set wildignore+=env,venv,.ropeproject,.idea
set wildignore+=*.pyc
set wildignore+=__pycache__
set wildignore+=tags
set wildignore+=.pytest_cache

set mouse=n
" }}}

source $HOME/.vim/config/packages.vim
source $HOME/.vim/config/configuration.vim 
source $HOME/.vim/config/aucommands.vim
source $HOME/.vim/config/statusline.vim
source $HOME/.vim/config/guivim.vim
source $HOME/.vim/config/mappings.vim

filetype plugin indent on
filetype plugin on

" vim:foldmethod=marker:foldlevel=0
