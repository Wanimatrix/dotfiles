call plug#begin()

" A default vim configuration
Plug 'tpope/vim-sensible'

" NerdTree
Plug 'scrooloose/nerdtree'  

" NerdTree with tabs
Plug 'jistr/vim-nerdtree-tabs'

" NerdCommenter
Plug 'scrooloose/nerdcommenter'  

" Airline
Plug 'vim-airline/vim-airline'

" Gruvbox
Plug 'morhetz/gruvbox'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Fuzzy search
Plug 'ctrlpvim/ctrlp.vim'

" Refactoring
Plug 'LucHermitte/vim-refactor'

call plug#end()

" Plugin configuration

"" Themeing
colorscheme gruvbox

"" NERDTree
nnoremap <C-p> :NERDTreeTabsToggle<CR>
nnoremap <leader>fit :NERDTreeFind<cr>

"" CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
