set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set shiftwidth=4
set tabstop=4
set number
colorscheme desert

if has('gui_running')
	set guifont=Inconsolata:h14:cANSI
endif
