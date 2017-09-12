"for Kaoriya-vim.

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
NeoBundle 'Shougo/unite-outline'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'ujihisa/unite-colorscheme'

"非同期処理の実現
NeoBundle 'Shougo/vimproc'

"VIM内でシェル実行
NeoBundle 'Shougo/vimshell'

"Vim-Shell拡張
"NeoBundle 'supermomonga/vimshell-pure.vim'

"バイナリビューワ
NeoBundle 'Shougo/vinarise.vim'

"NeoComplete（文字入力補完）
NeoBundle 'Shougo/neocomplete.vim'
  let g:neocomplete#enable_at_startup=1

"Minimap
NeoBundle 'koron/minimap-vim'

"vim-quickrun
NeoBundle 'thinca/vim-quickrun'
  let g:quickrun_config = {
\   "java" : {
\     "hook/output_encode/enable" : 1,
\     "hook/output_encode/encoding" : "sjis",
\   },
\}

"Fugitive（Git連携）
NeoBundle 'tpope/vim-fugitive'

"MarkDown用プラグイン
NeoBundle 'tpope/vim-markdown'

"Cisco用シンタックスハイライト
NeoBundle 'momota/cisco.vim'

"メモ用シンタックスハイライト
NeoBundle 'vim-scripts/HybridText'

"256カラースキームをターミナルでも使えるようにする
"NeoBundle 'vim-scripts/CSApprox'

"Colors Watch（カラースキーム情報の抽出）
NeoBundle 'cocopon/colorswatch.vim'

"タブごとにカラースキーム情報を保持する。
NeoBundle 'ujihisa/tabpagecolorscheme'

"カラースキームいろいろ
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'chriskempson/vim-tomorrow-theme'
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
NeoBundle 'vim-scripts/pyte'
NeoBundle 'vim-scripts/newspaper.vim'
NeoBundle 'aereal/vim-colors-japanesque'
NeoBundle 'atelierbram/vim-colors_duotones'
NeoBundle 'jnurmine/Zenburn'
NeoBundle 'nielsmadan/harlequin'
NeoBundle 'sjl/badwolf'
NeoBundle 'atelierbram/Base2Tone-vim'
NeoBundle 'NLKNguyen/papercolor-theme'
NeoBundle 'pasela/edark.vim'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'romainl/Apprentice'
NeoBundle 'jacoborus/tender.vim'
NeoBundle 'reedes/vim-colors-pencil'
NeoBundle 'freeo/vim-kalisi'
NeoBundle 'AlessandroYorba/Alduin'
NeoBundle 'Haron-Prime/Antares'
NeoBundle 'jeetsukumaran/vim-nefertiti'
NeoBundle 'KKPMW/moonshine-vim'
NeoBundle 'morhetz/gruvbox'
NeoBundle 'igungor/schellar'
NeoBundle '0xcharly/vim-frictionless'
NeoBundle 'thomd/vim-wasabi-colorscheme'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'gosukiwi/vim-atom-dark'
NeoBundle 'whatyouhide/vim-gotham'
NeoBundle 'muellan/am-colors'
NeoBundle 'michalbachowski/vim-wombat256mod'
NeoBundle 'sonjapeterson/1989.vim'
NeoBundle 'shinchu/lightline-gruvbox.vim'
NeoBundle 'vol2223/vim-colorblind-colorscheme'

"unite-gvimrgb(カラーリスト表示）
NeoBundle 'LeafCage/unite-gvimrgb'

"vim-indent-guides（インデントの可視化）
NeoBundle 'nathanaelkane/vim-indent-guides'
  let g:indent_guides_enable_on_vim_startup=0
  let g:indent_guides_start_level=1
  let g:indent_guides_space_guides=1
  let g:indent_guides_guide_size=1
  let g:indent_guides_auto_colors=0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=gray
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgray
  let g:indent_guides_color_change_percent = 30

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
  let g:syntastic_enable_signs=1
  let g:syntastic_auto_loc_list=1

"Gitgutter（gitレポジトリファイルの差分表示）
NeoBundle 'airblade/vim-gitgutter'

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

"tagビューワ
NeoBundle 'majutsushi/tagbar'

"Lightline（ステータスライン装飾プラグイン）
NeoBundle 'itchyny/lightline.vim'
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left':[ ['mode', 'paste'], ['fugitive'], ['readonly', 'filename', 'modified', 'anzu'] ],
  \   'right':[ ['lineinfo', 'date', 'syntastic'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ]
  \ },
  \ 'component': {
  \   'lineinfo': "\ue0a1 %3l:%-2v"
  \ },
  \ 'component_function': {
  \   'readonly': 'MyReadonly',
  \   'fugitive': 'MyFugitive',
  \   'anzu': 'anzu#search_status',
  \   'date': 'MyDate'
  \ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
  \ }

  let g:unite_force_overwrite_statusline = 0
  let g:vimfiler_force_overwrite_statusline = 0
  let g:vimshell_force_overwrite_statusline = 0

function! MyReadonly()
  return &readonly ? "\ue0a2" : ''
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? "\ue0a0"._ : ''
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
  "ターミナルカラーを256色にする
  set t_Co=256

  "特殊文字の可視化（Tabの可視化）
  set list
  set listchars=tab:>-,trail:-,extends:>,precedes:<

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

  "コマンド入力時、Tabキー補完を有効にする
  set wildmenu

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

"ペーストモードトグルの有効化
set pastetoggle=<C-s>

"カラースキームの設定
colorscheme japanesque_cust
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256

"Migemoの設定
set migemo
set migemodict=$VIM/dict/migemo-dict

"##############################################################################
"キーマップ設定
"##############################################################################

"エスケープ2回でハイライト表示解除
nnoremap <silent><Esc><Esc> :nohlsearch<CR>

"スペース＋「.」で_vimrcを開く（新しいタブで開く）
nnoremap <Space>. :split $HOME/dotfiles/_vimrc

"スペース＋「,」で_gvimrcを開く（新しいタブで開く）
nnoremap <Space>, :split $HOME/dotfiles/_gvimrc

"スペース＋「u」でUnite.vimの呼び出し（Uniteとスペースまで）
nnoremap <Space>u :Unite 

"スペース＋「n」でNERDTree呼び出し
nnoremap <Space>n :NERDTree

"vim-anzu関連
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)

"Leader設定
let mapleader = "\<Space>"

"##############################################################################
"終端処理（ファイルタイプ、シンタックス、インデントの有効化）
"##############################################################################

filetype plugin indent on
syntax on
syntax enable
set hlsearch
autocmd FileType text setlocal textwidth=0
