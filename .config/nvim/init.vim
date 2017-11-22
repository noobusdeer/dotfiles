set timeoutlen=1000 ttimeoutlen=0
set nowrap
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on
colorscheme solarized
set background=dark
let g:solirized_tempcolors=256
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
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end() "required
filetype plugin indent on "required
autocmd VimEnter *
	\ if !argc()
	\ | Startify
	\ | NERDTree
	\ | wincmd w
	\ | endif
nmap <silent> <C-E> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
xmap ga <Plug>(EasyAllign)
nmap ga <Plug>(EasyAllign)
let g:indentLine_char = '|'
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_no_function_highlight = 1
let g:cpp_concepts_highlight = 1
