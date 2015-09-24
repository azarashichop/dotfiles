"##############################################################################
"イニシャライズ
"##############################################################################
filetype off
set nocompatible
scriptencoding utf-8
set encoding=utf-8
set fileencodings=utf-8,cp932,sjis,euc-jp,latin1

"##############################################################################
"NeoBundle、プラグイン設定
"##############################################################################

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"NeoBundleオープン
call neobundle#begin(expand('~/.vim/bundle/'))

"NeoBundleをNeoBundle自身に管理させる
NeoBundleFetch 'Shougo/neobundle.vim'

"Unite Vim（統合UI）関連
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle "Shougo/unite-outline"
NeoBundle "Shougo/vimfiler"
NeoBundle "Shougo/vimproc"
NeoBundle "Shougo/vimshell"

"NeoComplete（文字入力補完）
NeoBundle 'Shougo/neocomplete.vim'
  let g:neocomplete#enable_at_startup=1

"vim-quickrun
NeoBundle "thinca/vim-quickrun"

"Fugitive（Git連携）
NeoBundle 'tpope/vim-fugitive'

"ctrlp
"NeoBundle 'ctrlpvim/ctrlp.vim'

"vim-trailing-whitespace（行末スペースの可視化）
"NeoBundle 'bronson/vim-trailing-whitespace'

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


"unite-gvimrgb(カラーリスト表示）
NeoBundle 'LeafCage/unite-gvimrgb'

"vim-indent-guides（インデントの可視化）
NeoBundle 'nathanaelkane/vim-indent-guides'

"NERDTree（ディレクトリ内のツリー表示）
NeoBundle 'scrooloose/nerdtree'
  let g:NERDTreeShowHidden=1
  let g:NERDTreeDirArrows=0
" autocmd vimenter * if !argc() | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Gundo（アンドゥ・リドゥ履歴のツリー表示）￢
NeoBundle 'sjl/gundo.vim'

"Syntastic（シンタックスチェッカ）
NeoBundle 'scrooloose/syntastic'

"vim-anzu（検索位置の表示）
NeoBundle 'osyo-manga/vim-anzu'
"anzu設定
" 一定時間キー入力がないとき、ウインドウを移動したとき、タブを移動したときに
" 検索ヒット数の表示を消去する
augroup vim-anzu
    autocmd!
    autocmd CursorHold,CursorHoldI,WinLeave,TabLeave * call anzu#clear_search_status()
augroup END

"カレンダー
NeoBundle 'itchyny/calendar.vim'
  let g:calendar_google_calendar = 1
  let g:calendar_google_task = 1

"Lightline（ステータスライン装飾プラグイン）
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
  \ 'colorscheme': 'solarized_dark',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left':[ ['mode', 'paste'], ['fugitive'], ['readonly', 'filename', 'modified', 'anzu'] ],
  \   'right':[ ['lineinfo', 'date' , 'syntastic'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ]
  \ },
  \ 'component': {
  \   'lineinfo': "\ue0a1  %3l:%-2v"
  \ },
  \ 'component_function': {
  \   'readonly': 'MyReadonly',
  \   'fugitive': 'MyFugitive',
  \   'anzu': 'anzu#search_status',
  \   'date': 'MyDate'
  \ },
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

function! MyDate()
  return strftime("%m/%d %H:%M ")
endfunction

"vim-toolbar-icons-silk（gvimのツールバーアイコンをモダンに）
NeoBundle 'istepura/vim-toolbar-icons-silk'

"新規プラグインのチェック
NeoBundleCheck

"NeoBudleクローズ
call neobundle#end()

"##############################################################################
"一般設定
"##############################################################################

"###作業ファイル生成の無効化
  "SWAPファイル無効化
  set noswapfile

  "バックアップファイル無効化
  set nobackup

  "アンドゥファイルの無効化
  set noundofile

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
  set listchars=tab:>-,trail:-,extends:>,precedes:<

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
  "タブ入力時、スペースに展開する
  set expandtab

  "タブをスペース2文字分に展開する
  set tabstop=2

  "タブを入力した際に、スペース2文字分に展開する
  set softtabstop=2

  "自動インデント時に挿入されるタブ幅
  set shiftwidth=2

  "オートインデント、スマートインデントを有効にする
  set autoindent
  set smartindent

"###その他の設定

"バックスペースの動作をWindowsと同じにする
set backspace=indent,eol,start

"編集中に他のファイルを表示可能にする
set hidden

"他のプロセスがファイルを変更した際に自動で再読み込みを行う
set autoread

"diff実行時に縦分割で結果を表示する
set diffopt=vertical

"ペーストモードトグル
set pastetoggle=<C-s>

"カラースキームの設定
colorscheme landscape
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  highlight Normal ctermbg=none

"##############################################################################
"キーマップ設定
"##############################################################################

"エスケープ2回でハイライト表示解除
nnoremap <Esc><Esc> :nohlsearch<CR>

"スペース＋「.」で_vimrcを開く（新しいタブで開く）
nnoremap <Space>. :tabnew $HOME/dotfiles/_vimrc

"スペース＋「,」で_gvimrcを開く（新しいタブで開く）
nnoremap <Space>, :tabnew $HOME/dotfiles/_gvimrc

"スペース＋「u」でUnite.vimの呼び出し（Uniteとスペースまで）
nnoremap <Space>u :Unite 

"スペース＋「n」でNERDTree呼び出し
nnoremap <Space>n :NERDTree

"vim-anzu関連
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)

"##############################################################################
"終端処理（ファイルタイプ、シンタックス、インデントの有効化）
"##############################################################################

filetype plugin indent on
syntax on
syntax enable
autocmd FileType text setlocal textwidth=0
