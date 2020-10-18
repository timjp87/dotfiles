syntax on
filetype plugin indent on

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

Plug 'alx741/vim-stylishask'

Plug 'preservim/nerdtree'
" Initialize plugin system
call plug#end()

" Set hotkeys
map <C-n> :NERDTreeToggle<CR>
