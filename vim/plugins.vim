call plug#begin()

" A default vim configuration
Plug 'tpope/vim-sensible'

" NerdTree
Plug 'scrooloose/nerdtree'  

" NerdTree with tabs
Plug 'jistr/vim-nerdtree-tabs'

" NerdCommenter
Plug 'scrooloose/nerdcommenter', { 'on': 'NERDTreeTabsToggle' }  

" Airline
Plug 'vim-airline/vim-airline'

" Gruvbox
Plug 'morhetz/gruvbox'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Fuzzy search
Plug 'kien/ctrlp.vim'

call plug#end()

" Plugin configuration
colorscheme gruvbox
nnoremap <C-p> :NERDTreeTabsToggle<CR>
let g:ctrlp_map = '<c-f>'
