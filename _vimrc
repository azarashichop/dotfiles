"for Kaoriya-vim.

"##############################################################################
"イニシャライズ
"##############################################################################
filetype off
set nocompatible
set encoding=utf-8
scriptencoding utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,sjis,euc-jp "latin1
set ambiwidth=double

"##############################################################################
"Dein.vim、プラグイン設定
"##############################################################################

if has('vim_starting')
  set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
endif

"Deinロード
if dein#load_state('~/.vim/dein/.')
  call dein#begin('~/.vim/dein/.')

"DeinをDein自体に管理させる
  call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')

  "Vim-devicons（deviconを表示させる）
  call dein#add('ryanoasis/vim-devicons')

  "Unite Vim（統合UI）と関連プラグイン
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/unite-outline')
  call dein#add('Shougo/vimfiler')
  call dein#add('ujihisa/unite-colorscheme')

  "Denite
  call dein#add('Shougo/denite.nvim')

  "VimProc（非同期処理の実現）
  call dein#add('Shougo/vimproc')

  "VimShell （VIM内でシェル実行）
  call dein#add('Shougo/vimshell')

  "バイナリビューワ
  call dein#add('Shougo/vinarise.vim')

  "NeoComplete（文字入力補完）
  "call dein#add('Shougo/neocomplete.vim')

  "nvim-yarp（deoplete用追加プラグイン）
  call dein#add('roxma/nvim-yarp')

  "vim-hug-neovim-rpc（deoplete用追加プラグイン）
  call dein#add('roxma/vim-hug-neovim-rpc')

  "deoplete（文字入力補完）
  call dein#add('Shougo/deoplete.nvim')

  "neco-vim(deoplete用Vimスクリプト補完プラグイン）
  call dein#add('Shougo/neco-vim')

  "neco-vim(deoplete用Syntaxファイル補完プラグイン）
  call dein#add('Shougo/neco-syntax')

  "neco-vim(deoplete用lookコマンド連携）
  call dein#add('ujihisa/neco-look')

  "neoyank(ヤンクヒストリの表示)
  call dein#add('Shougo/neoyank.vim')

  "vim-quickrun
  call dein#add('thinca/vim-quickrun')

  "Fugitive（Git連携）
  call dein#add('tpope/vim-fugitive')

  "MarkDown用プラグイン
  "call dein#add('tpope/vim-markdown')
  call dein#add('rcmdnk/vim-markdown')

  "MarkDownプレビュープラグイン
  call dein#add('suan/vim-instant-markdown')

  "Cisco用シンタックスハイライト
  call dein#add('momota/cisco.vim')

  "メモ用シンタックスハイライト
  call dein#add('vim-scripts/HybridText')

  "PowerShell用シンタックスハイライト
  "call dein#add('PProvost/vim-ps1')

  "PowerShell用シンタックスハイライト
  call dein#add('vim-scripts/Windows-PowerShell-Syntax-Plugin')

  "256カラースキームをターミナルでも使えるようにする
  call dein#add('vim-scripts/CSApprox')

  "Colors Watch（カラースキーム情報の抽出）
  call dein#add('cocopon/colorswatch.vim')

  "タブごとにカラースキーム情報を保持する。
  call dein#add('ujihisa/tabpagecolorscheme')

  "カラースキームいろいろ
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('chriskempson/vim-tomorrow-theme')
  call dein#add('itchyny/landscape.vim')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('w0ng/vim-hybrid')
  call dein#add('vim-scripts/twilight')
  call dein#add('jonathanfilip/vim-lucius')
  call dein#add('jpo/vim-railscasts-theme')
  call dein#add('vim-scripts/Wombat')
  call dein#add('tomasr/molokai')
  call dein#add('vim-scripts/rdark')
  call dein#add('cocopon/lightline-hybrid.vim')
  call dein#add('wolf-dog/nighted.vim')
  call dein#add('wolf-dog/lightline-nighted.vim')
  call dein#add('vim-scripts/pyte')
  call dein#add('vim-scripts/newspaper.vim')
  call dein#add('aereal/vim-colors-japanesque')
  call dein#add('atelierbram/vim-colors_duotones')
  call dein#add('jnurmine/Zenburn')
  call dein#add('nielsmadan/harlequin')
  call dein#add('sjl/badwolf')
  call dein#add('atelierbram/Base2Tone-vim')
  call dein#add('NLKNguyen/papercolor-theme')
  call dein#add('pasela/edark.vim')
  call dein#add('chriskempson/base16-vim')
  call dein#add('romainl/Apprentice')
  call dein#add('jacoborus/tender.vim')
  call dein#add('reedes/vim-colors-pencil')
  call dein#add('freeo/vim-kalisi')
  call dein#add('AlessandroYorba/Alduin')
  call dein#add('Haron-Prime/Antares')
  call dein#add('jeetsukumaran/vim-nefertiti')
  call dein#add('KKPMW/moonshine-vim')
  call dein#add('morhetz/gruvbox')
  call dein#add('igungor/schellar')
  call dein#add('0xcharly/vim-frictionless')
  call dein#add('thomd/vim-wasabi-colorscheme')
  call dein#add('junegunn/seoul256.vim')
  call dein#add('gosukiwi/vim-atom-dark')
  call dein#add('whatyouhide/vim-gotham')
  call dein#add('muellan/am-colors')
  call dein#add('michalbachowski/vim-wombat256mod')
  call dein#add('sonjapeterson/1989.vim')
  call dein#add('shinchu/lightline-gruvbox.vim')
  call dein#add('vol2223/vim-colorblind-colorscheme')
  call dein#add('joshdick/onedark.vim')
  call dein#add('croaker/mustang-vim')
  call dein#add('cocopon/iceberg.vim')
  call dein#add('rhysd/vim-color-spring-night')
  call dein#add('raphamorim/lucario')
  call dein#add('jdkanani/vim-material-theme')
  call dein#add('igungor/schellar')
  call dein#add('stepchowfun/base16-circus-scheme')
  call dein#add('trusktr/seti.vim')
  call dein#add('vim-scripts/summerfruit256.vim')
  call dein#add('yasukotelin/shirotelin')
  call dein#add('Rigellute/rigel')

  "unite-gvimrgb(カラーリスト表示）
  call dein#add('LeafCage/unite-gvimrgb')

  "vim-indent-guides（インデントの可視化）
  call dein#add('nathanaelkane/vim-indent-guides')

  "vim-nerdtree-syntax-highlight（NERDTreeをカラー表示）
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

  "NERDTree（ディレクトリ内のツリー表示）
  call dein#add('scrooloose/nerdtree')

  "Gundo（アンドゥ・リドゥ履歴のツリー表示）￢
  call dein#add('sjl/gundo.vim')

  "Syntastic（シンタックスチェッカ）
  call dein#add('vim-syntastic/syntastic')

  "Gitgutter（gitレポジトリファイルの差分表示）
  call dein#add('airblade/vim-gitgutter')

  "vim-over（置換ユーティリティ）
  call dein#add('osyo-manga/vim-over')

  "clever-f（検索後の移動を楽にする＆ハイライト表示）
  call dein#add('rhysd/clever-f.vim')

  "vim-anzu（検索位置の表示）
  call dein#add('osyo-manga/vim-anzu')

  "agプラグイン
  call dein#add('rking/ag.vim')

  "easy-motion（カーソル移動支援）
  call dein#add('easymotion/vim-easymotion')

  "vim-operator-user（オペレータプラグイン）
  call dein#add('kana/vim-operator-user')

  "vim-operator-flashy（ヤンクした部分を一瞬ハイライトする）
  call dein#add('haya14busa/vim-operator-flashy')

  "カレンダー
  call dein#add('itchyny/calendar.vim')

  "tagビューワ
  call dein#add('majutsushi/tagbar')

  "Lightline（ステータスライン装飾プラグイン）
  call dein#add('itchyny/lightline.vim')

  "vim-toolbar-icons-silk（gvimのツールバーアイコンをモダンに）
  call dein#add('istepura/vim-toolbar-icons-silk')

  "showtime.vim（プレゼン資料作成）
  call dein#add('thinca/vim-showtime')

  "Dein終端処理
  call dein#end()
  call dein#save_state()
endif

"もし、未インストールのプラグインがあった場合、インストール
if dein#check_install()
  call dein#install()
endif

"##############################################################################
"プラグイン設定
"##############################################################################

"NeoComplete
  let g:neocomplete#enable_at_startup=1

"deoplete
  let g:deoplete#enable_at_startup=0

"vim-indent-guides
  let g:indent_guides_enable_on_vim_startup=0
  let g:indent_guides_start_level=1
  let g:indent_guides_space_guides=1
  let g:indent_guides_guide_size=1
  let g:indent_guides_auto_colors=0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=gray
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgray
  let g:indent_guides_color_change_percent = 30

"NERDTree（ディレクトリ内のツリー表示）
  let g:NERDTreeShowHidden=1
  let g:NERDTreeDirArrowExpandable = "\uf138"
  let g:NERDTreeDirArrowCollapsible = "\uf13a"

"Vim-devicons
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFileNodes = 1
  let g:webdevicons_enable_unite = 1
  let g:webdevicons_enable_vimfiler = 1
  let g:DevIconsEnableFoldersOpenClose = 1
  "ディレクトリグリフ指定
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = "\uf114"
  let g:DevIconsDefaultFolderOpenSymbol = "\uf115"
  "ファイルタイプ別グリフ指定
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
  "let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = "\ue736"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xml'] = "\uf40d"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = "\uf40e"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['zip'] = "\uf410"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['7z'] = "\uf410"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['log'] = "\ue241"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pdf'] = "\uf1c1"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['docx'] = "\uf1c2"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['doc'] = "\uf1c2"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['dotm'] = "\uf1c2"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xlsx'] = "\uf1c3"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xls'] = "\uf1c3"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pptx'] = "\uf1c4"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['potx'] = "\uf1c4"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ppt'] = "\uf1c4"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jpg'] = "\uf1c5"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jepg'] = "\uf1c5"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['url'] = "\uf26b"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cap'] = "\uf06e"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['exe'] = "\uf2d0"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['wav'] = "\uf025"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pem'] = "\ue60a"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['crt'] = "\ue60a"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cer'] = "\ue60a"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['.vimrc'] = "\ue7c5"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['.gvimrc'] = "\ue7c5"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['_gvimrc'] = "\ue7c5"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['_vimrc'] = "\ue7c5"
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {}

"vim-nerdtree-syntax-highlight
  let g:NERDTreeLimitedSyntax = 1

"Syntastic
  let g:syntastic_enable_signs=1
  let g:syntastic_auto_loc_list=1

"vim-anzu
"anzu設定
"一定時間キー入力がないとき、ウインドウを移動したとき、タブを移動したときに
"検索ヒット数の表示を消去する
augroup vim-anzu
    autocmd!
    autocmd CursorHold,CursorHoldI,WinLeave,TabLeave * call anzu#clear_search_status()
augroup END

"vim-operator-flashy
  map y <Plug>(operator-flashy)
  map Y <Plug>(operator-flashy)$
  let g:operator#flashy#flash_time=1000

"Unite設定
  "ドットファイルも表示させる。
  "call unite#custom#source('file', 'matchers', "matcher_default")

  "Unite内の検索にagを使用する。
  if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif

"Lightline
let g:lightline = {
  \ 'colorscheme': 'molokai',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left':[ ['mode', 'paste'], ['fugitive'], ['readonly', 'modified', 'filename', 'anzu'] ],
  \   'right':[ ['lineinfo', 'date', 'syntastic'], ['percent'], ['fileformat', 'fileencoding', 'filetype'] ]
  \ },
  \ 'component': {
  \   'lineinfo': "\ue0a1%3l:%-2v"
  \ },
  \ 'component_function': {
  \   'fileformat': 'FileformatIcon',
  \   'filetype': 'FiletypeIcon',
  \   'modified': 'ModifiedChecker',
  \   'readonly': 'PermitFlag',
  \   'fugitive': 'FugitiveView',
  \   'anzu': 'anzu#search_status',
  \   'date': 'Calender'
  \ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
  \ }

  let g:unite_force_overwrite_statusline = 0
  let g:vimfiler_force_overwrite_statusline = 0
  let g:vimshell_force_overwrite_statusline = 0

function! FiletypeIcon()
  return winwidth(0) > 70 ? WebDevIconsGetFileTypeSymbol(): ''
endfunction

function! FileformatIcon()
  return winwidth(0) > 70 ? WebDevIconsGetFileFormatSymbol(): ''
endfunction

function! ModifiedChecker()
  if &modified
    return "\uf044"
  else
    return "\uf046"
  endif
endfunction

function! PermitFlag()
  if &filetype == "help"
    return "\uf059"
  elseif &readonly
    return "\uf023"
  else
    return "\uf09c"
  endif
endfunction

function! FugitiveView()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? "\uf126"._ : ''
  endif
  return ''
endfunction

function! Calender()
  let _day = strftime("%m/%d")
  let _time = strftime("%H:%M")
  return "\uf073 "._day." \uf017 "._time
endfunction

"vim-markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_liquid=1
let g:vim_markdown_math=0
let g:vim_markdown_frontmatter=1
let g:vim_markdown_toml_frontmatter=1
let g:vim_markdown_json_frontmatter=0

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

  "特殊文字の可視化
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
colorscheme shirotelin
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256

"Migemoの設定
set migemo
set migemodict=$VIM/dict/migemo-dict

"##############################################################################
"キーマップ設定
"##############################################################################

"Leader設定
let mapleader = "\<Space>"

"エスケープ2回でハイライト表示解除
nnoremap <silent><Esc><Esc> :nohlsearch<CR>

"スペース＋「.」で_vimrcを開く
nnoremap <Leader>. :edit $HOME/dotfiles/_vimrc

"スペース＋「,」で_gvimrcを開く
nnoremap <Leader>, :edit $HOME/dotfiles/_gvimrc

"スペース＋「U」でUnite.vimの呼び出し（Uniteとスペースまで）
nnoremap <Leader>U :Unite 

"スペース＋「u」でDenite.vimの呼び出し（Uniteとスペースまで）
nnoremap <Leader>u :Denite 

"スペース＋「n」でNERDTree呼び出し
nnoremap <Leader>n :NERDTree

"スペース＋「de」でdein呼び出し(call dein#)
nnoremap <Leader>de :call dein#

"vim-anzu関連
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)

"##############################################################################
"終端処理（ファイルタイプ、シンタックス、インデントの有効化、ハイライト）
"##############################################################################

filetype plugin indent on
syntax on
syntax enable
set hlsearch
autocmd FileType text setlocal textwidth=0
