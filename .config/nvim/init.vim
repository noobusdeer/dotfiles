set timeoutlen=1000 ttimeoutlen=0
set nowrap
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

set nocompatible " be iMproved, required
filetype off " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mhinz/vim-startify'
Plugin 'junegunn/vim-easy-align'
call vundle#end() "required
filetype plugin indent on "required
autocmd VimEnter *
	\ if !argc()
	\ | Startify
	\ | NERDTree
	\ | wincmd w
	\ | endif
nmap <silent> <C-E> :NERDTreeToggle<CR>
let NERDTreeShoHidden=1
nmap <silent> <C-N> :NERDTreeTabsToggle<CR>
xmap ga <Plug>(EasyAllign)
nmap ga <Plug>(EasyAllign)
let g:indentLine_char = '|'
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
