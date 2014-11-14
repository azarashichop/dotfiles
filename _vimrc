"##############################################################################
"General Settings
"##############################################################################
set nocompatible
set noswapfile
set nobackup
set nowrap
set number
set ruler
set cmdheight=2
set laststatus=2
set title
set linespace=0
set wildmenu
set showcmd
set noshowmode
set list
set listchars=tab:>-
set cursorline
set incsearch
set smartcase
set ignorecase
set wrapscan
set background=dark
set tabstop=4
set shiftwidth=2
set autoindent
set smartindent
set backspace=indent,eol,start
set hidden
set autoread
set t_Co=256
set diffopt=vertical
set noundofile

syntax on
syntax enable

scriptencoding utf-8
set encoding=utf-8

"##############################################################################
"NeoBundle and Plugin Settings:Start
"##############################################################################

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

"###Let NeoBundle manage NeoBundle###
NeoBundleFetch 'Shougo/neobundle.vim'

filetype plugin indent on

"#######################################
"Add plugins section
"#######################################

"###UniteVim###
NeoBundle 'Shougo/unite.vim'

"###Fugitive###
NeoBundle 'tpope/vim-fugitive'

"###ctrlp###
NeoBundle 'ctrlpvim/ctrlp.vim'

"###Colors Watch###
NeoBundle 'cocopon/colorswatch.vim'

"###Color Schemes###
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'itchyny/landscape.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'jonathanfilip/vim-lucius'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'vim-scripts/Wombat'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'cocopon/lightline-hybrid.vim'
NeoBundle 'wolf-dog/nighted.vim'
NeoBundle 'wolf-dog/lightline-nighted.vim'

colorscheme landscape
	let g:solarized_termtrans=1
	highlight Normal ctermbg=none

"###NerdTree###
NeoBundle 'scrooloose/nerdtree'
	let g:NERDTreeShowHidden=1
	let g:NERDTreeDirArrows=0
	autocmd vimenter * if !argc() | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"###Syntastic###
NeoBundle 'scrooloose/syntastic'

"###lightline###
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
	\ 'colorscheme': 'landscape',
	\ 'mode_map': {'c': 'NORMAL'},
	\ 'active': {
	\		'left':[ ['mode', 'paste'], ['fugitive'], ['readonly', 'filename', 'modified'] ],
	\		'right':[ ['lineinfo', 'syntastic'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ]
	\	},
	\ 'component': {
	\   'lineinfo': "\ue0a1  %3l:%-2v"
	\	},
	\ 'component_function': {
	\   'readonly': 'MyReadonly',
	\   'fugitive': 'MyFugitive'
	\	},
	\ 'separator': { 'left': "\ue0b0 ", 'right': "\ue0b2 " },
	\ 'subseparator': { 'left': "\ue0b1 ", 'right': "\ue0b3 " },
	\ }

function! MyReadonly()
	return &readonly ? "\ue0a2 " : ''
endfunction
function! MyFugitive()
	if exists("*fugitive#head")
		let _ = fugitive#head()
		return strlen(_) ? "\ue0a0 "._ : ''
	endif
	return ''
endfunction

"###Modern Tool Bar for gvim###
NeoBundle 'istepura/vim-toolbar-icons-silk'

"#######################################
"New plugins check
"#######################################
NeoBundleCheck

"##############################################################################
"NeoBundle and Plugin Settings:End
"##############################################################################
