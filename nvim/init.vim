" Auto-update plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	\| PlugInstall --sync | source $MYVIMRC
\| endif

" vim-plug

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-utils/vim-man'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' |
	\ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'johnstef99/vim-nerdtree-syntax-highlight'
Plug 'preservim/nerdcommenter'
"Plug 'andweeb/presence.nvim'

Plug 'github/copilot.vim'
call plug#end()

" NERDTree config
let g:NERDTreeChDirMode = 2
let g:NERDTreeIgnore = ['^node_modules$']

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-m> :NERDTreeFocus<CR>

let NERDTreeShowHidden=1

if exists('g:loaded_webdevicons')
	call webdevicons#refresh()
endif

" Airline config

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

let g:airline_theme = 'onedark'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.linenr = ' ln '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.whitespace = ''
let g:airline_symbols.colnr = ' col '

" global config
set number
syntax on
set clipboard=unnamedplus
set hidden
set visualbell
set wildmode=longest,list,full
"set nowrap
set hlsearch
set incsearch
filetype plugin indent on
set smarttab
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set mouse=a
set updatetime=300
set shortmess+=c
set signcolumn=no
set cmdheight=2
set ve+=onemore

" Diff show
function! s:Diffsaved()
	exe ":w !diff % -"
endfunction
com! Diffsaved call s:Diffsaved()

