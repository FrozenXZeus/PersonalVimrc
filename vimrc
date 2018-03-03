" Currently set up for VimPlug
call plug#begin()

" Blinkey Lights
Plug 'flazz/vim-colorschemes'
Plug 'kien/rainbow_parentheses.vim'

" I thought these were nice things...
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'

" The bar thingy below vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git support
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ack/ag support
Plug 'mileszs/ack.vim'

" C Specific plugins
Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'

" Rust related plugins
Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'

call plug#end()

set mouse=a
" vim-airline
" Buffer bar
let g:airline#extensions#tabline#enabled = 1

" Rust Autoformat
let g:rustfmt_autosave = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_rust_checkers = ['cargo']

" Keys shortcut mappings
map <F3> :NERDTreeToggle <CR>
map <F4> :Gblame <CR>

" Generic nice things
colorscheme Benokai
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


" Rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
