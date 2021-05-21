syntax on
filetype plugin indent on

set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set clipboard=unnamedplus,autoselect

set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

" Open with NerdTree
autocmd vimenter * NERDTree

" Disabel swap
set noswapfile

" Set relative line numbers
set rnu

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'neoclide/coc.nvim'

Plug 'neovimhaskell/haskell-vim'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'MarcWeber/vim-addon-mw-utils'

Plug 'garbas/vim-snipmate'

Plug 'ervandew/supertab'

Plug 'godlygeek/tabular'

Plug 'haskell/stylish-haskell'

Plug 'vim-syntastic/syntastic'

Plug 'preservim/nerdtree'
" Initialize plugin system
call plug#end()

" Configure Snipmate
let g:snipMate = { 'snippet_version' : 1 }

" Configure Syntastic
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" Configure Ctrl+P
map <silent> <Leader>t :CtrlP()<CR>
noremap <leader>b<space> :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = '\v[\/]dist$'

" Set hotkeys
map <C-n> :NERDTreeToggle<CR>
