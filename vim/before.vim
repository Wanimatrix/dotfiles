" Enable line numbers
set number

" Case insensitive search, except when using capitals
set ignorecase
set smartcase

" Do not go to start of line with certain commands
set nostartofline

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm
 
" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=
 
" Enable use of the mouse for all modes
set mouse=a
 
" Set the command window height to 2 lines, to avoid many cases of having to
" "press <Enter> to continue"
set cmdheight=2

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" Indentation settings for using 4 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

set termguicolors

let mapleader= ","

set list
set listchars=eol:⏎,tab:――,nbsp:⎵,space:·


" Set color on column 80
set cc=80

" Turn on c space errors for all c files
autocmd BufNewFile,BufRead *.c let c_space_errors=1

" Easy edit vim config
nnoremap <leader>ev :vsplit ~/.vimrc<cr>
nnoremap <leader>ebv :vsplit ~/.vim/before.vim<cr>
nnoremap <leader>evp :vsplit ~/.vim/plugins.vim<cr>
nnoremap <leader>eav :vsplit ~/.vim/after.vim<cr>

" Easy delete parameter form function
"nnoremap <leader>cdp F,lvt,
