"##############################################################################
"イニシャライズ
"##############################################################################
filetype off
set nocompatible
scriptencoding utf-8
set encoding=utf-8

"##############################################################################
"一般設定
"##############################################################################

"###作業ファイル生成の無効化
	"SWAPファイル無効化
	set noswapfile

	"バックアップファイル無効化
	set nobackup

"###表示関連設定###
	"行折り返しの無効化
	set nowrap

	"行番号の表示
	set number

	"コマンドライン行数を2行にする
	set cmdheight=2

	"コマンドラインを常に表示させる
	set laststatus=2

	"タイトルの表示
	set title

	"行間を空けない（スペーシング無し）
	set linespace=0

	"入力中のコマンドを表示する
	set showcmd

	"モード表示をOff（Lightlineで表示させるため）
	set noshowmode

	"カレント行のハイライト表示
	set cursorline

	"特殊文字の可視化（Tabの可視化）
	set list
	set listchars=tab:>-

	"コマンド入力時、Tabキー補完を有効にする
	set wildmenu

"ターミナルカラーを256色にする
set t_Co=256

"背景色をダークにする
set background=dark

"###検索オプション###
	"インクリメンタルサーチを使う
	set incsearch

	"小文字だけで検索した場合に大文字小文字を区別しない
	set ignorecase

	"大文字が含まれる場合には大文字小文字を区別する
	set smartcase

	"循環検索の有効化
	set wrapscan

"###タブ・インデント関連設定###
	set tabstop=2
	set shiftwidth=2
	set autoindent
	set smartindent

"バックスペースの動作をWindowsと同じにする
set backspace=indent,eol,start

"編集中に他のファイルを表示可能にする
set hidden

"他のプロセスがファイルを変更した際に自動で再読み込みを行う
set autoread

"diff実行時に縦分割で結果を表示する
set diffopt=vertical

"##############################################################################
"キーマップ設定
"##############################################################################

"エスケープ2回でハイライト表示解除
nnoremap <Esc><Esc> :nohlsearch<CR>

"スペース＋「.」で.vimrcを開く（新しいタブで開く）
nnoremap <Space>. :tabnew $HOME/dotfiles/.vimrc

"スペース＋「u」でUnite.vimの呼び出し（Uniteとスペースまで）
nnoremap <Space>u :Unite 

"スペース＋「n」でNERDTree呼び出し
nnoremap <Space>n :NERDTree

"##############################################################################
"NeoBundle￥プラグイン関連開始
"##############################################################################

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
call neobundle#end()

"NeoBundleをNeoBundle自身に管理させる
NeoBundleFetch 'Shougo/neobundle.vim'

"#######################################
"プラグイン追加、プラグイン設定
"#######################################

"Unite Vim（統合UI）
NeoBundle 'Shougo/unite.vim'

"NeoMRU（Unite VimにMRU機能追加）
NeoBundle 'Shougo/neomru.vim'

"NeoComplete（文字入力補完）
NeoBundle 'Shougo/neocomplete.vim'
	let g:neocomplete#enable_at_startup=1

"Fugitive（Git連携）
NeoBundle 'tpope/vim-fugitive'

"ctrlp
"NeoBundle 'ctrlpvim/ctrlp.vim'

"vim-trailing-whitespace（行末スペースの可視化）
NeoBundle 'bronson/vim-trailing-whitespace'

"Colors Watch（カラースキーム情報の抽出）
NeoBundle 'cocopon/colorswatch.vim'

"カラースキームいろいろ
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
	let g:solarized_termcolors=256
	highlight Normal ctermbg=none

"vim-indent-guides（インデントの可視化）
"NeoBundle 'nathanaelkane/vim-indent-guides'
"	let g:indent_guides_enable_on_vim_startup=1
"	let g:indent_guides_start_level=1
"	let g:indent_guides_space_guides=1
"	let g:indent_guides_guide_size=1
"	let g:indent_guides_auto_colors=0
"	autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#262626 ctermbg=gray
"	autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#3c3c3c ctermbg=darkgray
"	let g:indent_guides_color_change_percent = 30

"NERDTree（ディレクトリ内のツリー表示）
NeoBundle 'scrooloose/nerdtree'
	let g:NERDTreeShowHidden=1
	let g:NERDTreeDirArrows=0
"	autocmd vimenter * if !argc() | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Syntastic（シンタックスチェッカ）
NeoBundle 'scrooloose/syntastic'


"###lightline###
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
	\	'colorscheme': 'landscape',
	\	'mode_map': {'c': 'NORMAL'},
	\	'active': {
	\		'left':[ ['mode', 'paste'], ['fugitive'], ['readonly', 'filename', 'modified'] ],
	\		'right':[ ['lineinfo', 'syntastic'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ]
	\	},
	\	'component': {
	\		'lineinfo': ' %3l:%-2v'
	\	},
	\	'component_function': {
	\		'readonly': 'MyReadonly',
	\		'fugitive': 'MyFugitive'
	\	},
	\	'separator': { 'left': '', 'right': '' },
	\	'subseparator': { 'left': '', 'right': '' },
	\	}

function! MyReadonly()
	return &readonly ? '' : ''
endfunction

function! MyFugitive()
	if exists("*fugitive#head")
		let _ = fugitive#head()
		return strlen(_) ? ''._ : ''
	endif
	return ''
endfunction

"vim-toolbar-icons-silk（gvimのツールバーアイコンをモダンに）
NeoBundle 'istepura/vim-toolbar-icons-silk'

"#######################################
"新規プラグインのチェック
"#######################################
NeoBundleCheck

"##############################################################################
"NeoBundle￥プラグイン関連終了
"##############################################################################

"##############################################################################
"終端処理（ファイルタイプ、シンタックス、インデントの有効化）
"##############################################################################

filetype plugin indent on
syntax on
syntax enable
