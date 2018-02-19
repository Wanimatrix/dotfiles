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

" Update ctags on save
Plug 'craigemery/vim-autotag'

" Auto update cscope
" Plug 'erig0/cscope_dynamic', {'on', 'LoadCscope', 'for': ['c', 'cpp']}
" Plug 'erig0/cscope_dynamic'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Use ack search in vim
Plug 'mileszs/ack.vim'

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

"" Cscope

"""cscope mappings
" :map <F10> <Plug>CscopeDBInit
:nnoremap <leader>cal "zyiw:exe "cs f c ".@z.""<CR>
:nnoremap <leader>def "zyiw:exe "cs f g ".@z.""<CR>
:nnoremap <leader>sym "zyiw:exe "cs f s ".@z.""<CR>

if filereadable('cscope.out')
    cscope add cscope.out
endif

""" Load cscope DB even when in subdirectory of project
"function! LoadCscope()
  "let db = findfile(".cscope.big", ".;")
  "if (!empty(db))
    "let path = strpart(db, 0, match(db, "/.cscope.big$"))
    "let g:cscopedb_big_file = path."/.cscope.big"
    "let g:cscopedb_small_file = path."/.cscope.small"
    "let g:cscopedb_src_dirs_file = path."/.cscope.dirs.file"
    "let g:cscopedb_lock_file = path."/.cscopedb.lock"
    "silent execute "!echo '".path."' > ".path."/.cscope.dirs.file" | redraw!
  "endif
"endfunction
"au BufEnter /*.[] call LoadCscope()

"let g:statusline_cscope_flag = ""
"set statusline=[%n]%<%f\ %h%m%r\ %=\
"set statusline+=%(\ [%{g:statusline_cscope_flag}]\ \ \ %)
"set statusline+=%-14.(%l,%c%V%)\ %P
"function! Cscope_dynamic_update_hook(updating)
    "if a:updating
	"let g:statusline_cscope_flag = "\CSCOPE INIT DONE"
    "else
	"let g:statusline_cscope_flag = ""
    "endif
    "execute "redrawstatus!"
"endfunction
"call Cscope_dynamic_update_hook(0)

"" Ack.vim

let g:ackprg = 'ag --nogroup --nocolor --column'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>
