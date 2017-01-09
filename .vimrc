call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'mileszs/ack.vim'

call plug#end()

" vim-airline
" Buffer bar
let g:airline#extensions#tabline#enabled = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1

" Keys shortcut mappings
map <F3> :NERDTreeToggle <CR>

" Generic nice things
colorscheme desert
set encoding=utf-8
set number
set expandtab
set shiftwidth=4
set tabstop=4
set hlsearch
set list
set listchars=tab:>-,eol:↲,trail:·

"File format specific mods
"Set CUDA files as C++ files
autocmd BufRead, BufNewFile *.cu set filetype=cpp

" Uses ag instead of grep
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

if has('gui_running')
    set guifont=Source\ Code\ Pro\ Semibold:h14
endif
