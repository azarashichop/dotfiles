" neovim Configuration.

"##############################################################################
" イニシャライズ
"##############################################################################
filetype off
set nocompatible
set encoding=utf-8
scriptencoding utf-8
set fileencodings=iso-2022-jp,utf-8,cp932,utf-16le,utf-16,sjis,euc-jp,latin1
set ambiwidth=double

"##############################################################################
" Vim-Jetpack
"##############################################################################

  packadd vim-jetpack
  call jetpack#begin()

  " Vim-jetpack
  call jetpack#add('tani/vim-jetpack', {'opt': 1}) "bootstrap

  " Vim-devicons（deviconを表示させる）
  call jetpack#add('ryanoasis/vim-devicons')

  " Unite Vim（統合UI）と関連プラグイン
  call jetpack#add('Shougo/unite.vim')
  call jetpack#add('Shougo/neomru.vim')
  call jetpack#add('Shougo/unite-outline')
  call jetpack#add('Shougo/vimfiler')
  call jetpack#add('ujihisa/unite-colorscheme')

  " Denite
  call jetpack#add('Shougo/denite.nvim')

  " VimProc（非同期処理の実現）
  call jetpack#add('Shougo/vimproc')

  " deol.nvim（VIM内でシェル実行）
  call jetpack#add('Shougo/deol.nvim')

  " バイナリビューワ
  call jetpack#add('Shougo/vinarise.vim')

  " LSPプラグイン
  call jetpack#add('neovim/nvim-lspconfig')

  " CoC（補完プラグイン）
  call jetpack#add('neoclide/coc.nvim', {'rev': 'release'})

  " ポップアップ表示
  call jetpack#add('Shougo/pum.vim')

  "neco-vim(Vimスクリプト補完プラグイン）
  call jetpack#add('Shougo/neco-vim')

  " neoyank(ヤンクヒストリの表示)
  call jetpack#add('Shougo/neoyank.vim')

  " vim-quickrun
  call jetpack#add('thinca/vim-quickrun')

  " Fugitive（Git連携）
  call jetpack#add('tpope/vim-fugitive')

  " vim-polyglot（多言語パック）
  call jetpack#add('sheerun/vim-polyglot')

  " MarkDown用プラグイン
  call jetpack#add('rcmdnk/vim-markdown')

  " MarkDownプレビュープラグイン
  call jetpack#add('suan/vim-instant-markdown')

  " Cisco IOS用シンタックスハイライト
  call jetpack#add('momota/cisco.vim')

  " メモ用シンタックスハイライト
  call jetpack#add('vim-scripts/HybridText')

  " PowerShell用シンタックスハイライト
  call jetpack#add('vim-scripts/Windows-PowerShell-Syntax-Plugin')

  " カラースキームいろいろ
  call jetpack#add('overcache/NeoSolarized')
  call jetpack#add('tomasr/molokai')
  call jetpack#add('cocopon/lightline-hybrid.vim')
  call jetpack#add('wolf-dog/nighted.vim')
  call jetpack#add('wolf-dog/lightline-nighted.vim')
  call jetpack#add('aereal/vim-colors-japanesque')
  call jetpack#add('jnurmine/Zenburn')
  call jetpack#add('NLKNguyen/papercolor-theme')
  call jetpack#add('freeo/vim-kalisi')
  call jetpack#add('KKPMW/moonshine-vim')
  call jetpack#add('morhetz/gruvbox')
  call jetpack#add('gosukiwi/vim-atom-dark')
  call jetpack#add('muellan/am-colors')
  call jetpack#add('shinchu/lightline-gruvbox.vim')
  call jetpack#add('croaker/mustang-vim')
  call jetpack#add('rhysd/vim-color-spring-night')
  call jetpack#add('raphamorim/lucario', {'rev': 'main'})
  call jetpack#add('trusktr/seti.vim')
  call jetpack#add('Luxed/ayu-vim')

  " indentLine（インデント可視化）
  call jetpack#add('Yggdroot/indentLine')

  " rainbow（対応ブランケットのカラーリング）
  call jetpack#add('luochen1990/rainbow')

  " vim-nerdtree-syntax-highlight（NERDTreeをカラー表示）
  call jetpack#add('tiagofumo/vim-nerdtree-syntax-highlight')

  " NERDTree（ディレクトリ内のツリー表示）
  call jetpack#add('scrooloose/nerdtree')

  " undotree
  call jetpack#add('mbbill/undotree')

  " aerial（アウトライン表示）
  call jetpack#add('stevearc/aerial.nvim')

  " ale（シンタックスチェッカー）
  call jetpack#add('dense-analysis/ale')

  " nvim-treesitter（構文解析ツール）
  call jetpack#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})

  " Gitgutter（gitレポジトリファイルの差分表示）
  call jetpack#add('airblade/vim-gitgutter', {'rev': 'main'})

  " vim-over（置換ユーティリティ）
  call jetpack#add('osyo-manga/vim-over')

  " clever-f（検索後の移動を楽にする＆ハイライト表示）
  call jetpack#add('rhysd/clever-f.vim')

  " vim-anzu（検索位置の表示）
  call jetpack#add('osyo-manga/vim-anzu')

  " agプラグイン
  call jetpack#add('rking/ag.vim')

  " easy-motion（カーソル移動支援）
  call jetpack#add('easymotion/vim-easymotion')

  " vim-operator-user（オペレータプラグイン）
  call jetpack#add('kana/vim-operator-user')

  " vim-operator-flashy（ヤンクした部分を一瞬ハイライトする）
  call jetpack#add('haya14busa/vim-operator-flashy')

  " カレンダー
  call jetpack#add('itchyny/calendar.vim')

  " tagビューワ
  call jetpack#add('majutsushi/tagbar')

  " lightline（ステータスライン装飾プラグイン）
  call jetpack#add('itchyny/lightline.vim')

  " lightline-ale（Lightline-Ale連携)
  call jetpack#add('maximbaz/lightline-ale')

  " lightline-buffer
  call jetpack#add('taohexxx/lightline-buffer')

  "showtime.vim（プレゼン資料作成）
  call jetpack#add('thinca/vim-showtime')

  call jetpack#end()

"##############################################################################
" LSP設定
"##############################################################################

" Python-LSP
lua require'lspconfig'.pylsp.setup{}

" JavaScript-LSP
lua require'lspconfig'.tsserver.setup{}

"##############################################################################
" CoC設定
"##############################################################################

"##############################################################################
" aerial.nvim設定
"##############################################################################

lua <<EOF
require'aerial'.setup {
  on_attach = function(bufnr)
    vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', {buffer = bufnr})
    vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', {buffer = bufnr})
  end
}
EOF

"##############################################################################
" プラグイン設定
"##############################################################################

" indentLine
  let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" NERDTree（ディレクトリ内のツリー表示）
  let g:NERDTreeShowHidden=1
  let g:NERDTreeDirArrowExpandable = ""
  let g:NERDTreeDirArrowCollapsible = ""
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Vim-devicons
  let g:WebDevIconsUnicodeDecorateFolderNodes = 1
  let g:WebDevIconsUnicodeDecorateFileNodes = 1
  let g:webdevicons_enable_unite = 1
  let g:webdevicons_enable_vimfiler = 1
  let g:DevIconsEnableFoldersOpenClose = 1
  " ディレクトリグリフ指定
  let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ""
  let g:DevIconsDefaultFolderOpenSymbol = ""
  " ファイルタイプ別グリフ指定
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
  "let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = "\ue736"
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xml'] = ""
  "let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['zip'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['7z'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['log'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pdf'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['docx'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['doc'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['dotm'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xlsx'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['xls'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pptx'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['potx'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['ppt'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['csv'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jpg'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['jpeg'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['url'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cap'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['exe'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['wav'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['pem'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['crt'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['cer'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['lnk'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols = {}
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['_vimrc'] = ""
  let g:WebDevIconsUnicodeDecorateFileNodesExactSymbols['_gvimrc'] = ""

" vim-nerdtree-syntax-highlight
  let g:NERDTreeLimitedSyntax = 1

" Ale
  let g:ale_enabled = 0
  " javacコンパイル時のエンコードをUTF-8に、表示言語を英語にする
  let g:ale_java_javac_options='-encoding UTF-8 -J-Duser.language=en'
  " LSPを使用しない
  "let g:ale_disable_lsp=1
  " 使用するLinterの選択
  let g:ale_linters = {
  \   'python': ['pylint','pylsp']
  \}

" treesitter
"lua <<EOF
"require'nvim-treesitter.configs'.setup {
"  ensure_installed = { 'lua' },
"  highlight = {
"    enable = true,              -- false will disable the whole extension
"    disable = { 'vue', 'ruby' },  -- list of language that will be disabled
"  },
"  indent = { enable = true, },
"}
"EOF


" vim-anzu
" 一定時間キー入力がないとき、ウインドウを移動したとき、タブを移動したときに
" 検索ヒット数の表示を消去する
augroup vim-anzu
    autocmd!
    autocmd CursorHold,CursorHoldI,WinLeave,TabLeave * call anzu#clear_search_status()
augroup END

" vim-operator-flashy
  map y <Plug>(operator-flashy)
  map Y <Plug>(operator-flashy)$
  let g:operator#flashy#flash_time=1000

  " Unite内の検索にagを使用する。
  if executable('ag')
    let g:unite_source_grep_command = 'ag'
    let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
    let g:unite_source_grep_recursive_opt = ''
  endif

" Lightline
let g:lightline = {
  \ 'colorscheme': 'ayu_mirage',
  \ 'mode_map': {'c': 'NORMAL'},
  \ 'active': {
  \   'left': [
  \             ['mode', 'paste'],
  \             ['fugitive'],
  \             ['readonly', 'modified', 'filename', 'anzu']
  \           ],
  \   'right':  [
  \               ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_fine'],
  \               ['lineinfo', 'date'],
  \               ['percent'],
  \               ['fileformat', 'fileencoding', 'filetype', 'charvaluehex']
  \             ]
  \ },
  \ 'tabline': {
  \   'left': [
  \             ['bufferinfo'],
  \             ['separator'],
  \             ['bufferbefore', 'buffercurrent', 'bufferafter']
  \           ],
  \   'right':[['travler']]
  \ },
  \ 'component': {
  \   'lineinfo': " %3l:%-2v",
  \   'charvaluehex': '0x%B',
  \   'separator_tab': '',
  \   'travler': ""
  \ },
  \ 'component_function': {
  \   'bufferinfo': 'lightline#buffer#bufferinfo',
  \   'fileformat': 'FileformatIcon',
  \   'filetype': 'FiletypeIcon',
  \   'modified': 'ModifiedChecker',
  \   'readonly': 'PermitFlag',
  \   'fugitive': 'GitBranchName',
  \   'anzu': 'anzu#search_status',
  \   'date': 'Calender'
  \ },
  \ 'component_expand': {
  \   'buffercurrent': 'lightline#buffer#buffercurrent',
  \   'bufferbefore': 'lightline#buffer#bufferbefore',
  \   'bufferafter': 'lightline#buffer#bufferafter',
  \   'linter_checking': 'lightline#ale#checking',
  \   'linter_warnings': 'lightline#ale#warnings',
  \   'linter_errors': 'lightline#ale#errors',
  \   'linter_fine': 'lightline#ale#ok'
  \ },
  \ 'component_type': {
  \   'buffercurrent': 'tabsel',
  \   'bufferbefore': 'raw',
  \   'bufferafter': 'raw',
  \   'linter_checking': 'left',
  \   'linter_warnings': 'warning',
  \   'linter_errors': 'error',
  \   'linter_fine': 'left'
  \ },
  \ 'separator': { 'left': "", 'right': "" },
  \ 'subseparator': { 'left': "", 'right': "" }
  \ }

"  \ 'separator': { 'left': "", 'right': "" },
"  \ 'subseparator': { 'left': "", 'right': "" }
"  \ 'separator': { 'left': "", 'right': "" },
"  \ 'subseparator': { 'left': "", 'right': "" }
"  \ 'separator': { 'left': "", 'right': "" },
"  \ 'subseparator': { 'left': "", 'right': "" }
"  \ 'separator': { 'left': "", 'right': "" },
"  \ 'subseparator': { 'left': "", 'right': "" }
"  \ 'separator': { 'left': "", 'right': "" },
"  \ 'subseparator': { 'left': "", 'right': "" }

" Lightline-ale用グリフ指定
  let g:lightline#ale#indicator_checking = "  "
  let g:lightline#ale#indicator_warnings = "  "
  let g:lightline#ale#indicator_errors = "  "
  let g:lightline#ale#indicator_ok = "  "

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
    return ""
  else
    return ""
  endif
endfunction

function! PermitFlag()
  if &filetype == "help"
    return ""
  elseif &readonly
    return ""
  else
    return ""
  endif
endfunction

function! GitBranchName()
  if FugitiveHead() != ''
    return " ".FugitiveHead()
  endif
    return ''
endfunction

function! Calender()
  let _day = strftime("%m/%d")
  let _time = strftime("%H:%M")
  return " "._day."  "._time
endfunction

nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

" lightline-buffer UI
let g:lightline_buffer_logo = ""
"let g:lightline_buffer_readonly_icon = "﫺"
let g:lightline_buffer_readonly_icon = "󱚯"
"let g:lightline_buffer_modified_icon = "贈"
let g:lightline_buffer_modified_icon = ""
let g:lightline_buffer_git_icon = " "
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀'
let g:lightline_buffer_expand_right_icon = '▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '

let g:lightline_buffer_enable_devicons = 1
let g:lightline_buffer_show_bufnr = 1

" vim-markdown
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_liquid=1
let g:vim_markdown_math=0
let g:vim_markdown_frontmatter=1
let g:vim_markdown_toml_frontmatter=1
let g:vim_markdown_json_frontmatter=0

" rainbow
let g:rainbow_active=1

"##############################################################################
" 一般設定
"##############################################################################

"###作業ファイル生成の無効化
  " SWAPファイル無効化
  set noswapfile

  " バックアップファイル無効化
  set nobackup

  " アンドゥファイルの無効化
  set noundofile

" ###表示関連設定###
  " ターミナルでのTrueColor有効化
  set termguicolors

  " ターミナルカラーを256色にする
  set t_Co=256

  " 特殊文字の可視化
  set list
  " set listchars=tab:↦-,trail:-,extends:>,precedes:<
  set listchars=tab:↦-,trail:-,extends:↣,precedes:↢

  " 行折り返しの無効化
  set nowrap

  " 行番号の表示
  set number

  " コマンドライン行数を2行にする
  set cmdheight=2

  " コマンドラインを常に表示させる
  set laststatus=2

  " タイトルの表示
  set title

  " 行間を空けない（スペーシング無し）
  set linespace=0

  " 入力中のコマンドを表示する
  set showcmd

  " モード表示をOff（Lightlineで表示させるため）
  set noshowmode

  " カレント行のハイライト表示
  set cursorline

  " コマンド入力時、Tabキー補完を有効にする
  set wildmenu

  " ウィンドウの透過表示
  set winblend=30
  set pumblend=30

" ###検索オプション###
  " インクリメンタルサーチを使う
  set incsearch

  " 小文字だけで検索した場合に大文字小文字を区別しない
  set ignorecase

  " 大文字が含まれる場合には大文字小文字を区別する
  set smartcase

  " 循環検索の有効化
  set wrapscan

" ###タブ・インデント関連設定###
  " タブ入力時、スペースに展開する
  set expandtab

  " タブをスペース2文字分に展開する
  set tabstop=2

  " タブを入力した際に、スペース2文字分に展開する
  set softtabstop=2

  " 自動インデント時に挿入されるタブ幅
  set shiftwidth=2

  " オートインデント、スマートインデントを有効にする
  set autoindent
  set smartindent

" ###その他の設定

" バックスペースの動作をWindowsと同じにする
set backspace=indent,eol,start

" 編集中に他のファイルを表示可能にする
set hidden

" 常にTablineを表示する
set showtabline=2

" 他のプロセスがファイルを変更した際に自動で再読み込みを行う
set autoread

" diff実行時に縦分割で結果を表示する
set diffopt=vertical

" ペーストモードトグルの有効化
set pastetoggle=<C-s>

" カラースキームの設定
" colorscheme moonshine "Terminal用
set background=dark
  let g:solarized_termtrans=1
  let g:solarized_termcolors=256
  let ayucolor='mirage'
colorscheme ayu

" Pythonのパス指定
let g:python3_host_prog='C:\bin\Python310\python.exe'

"##############################################################################
" キーマップ設定
"##############################################################################

" Leader設定
let mapleader = "\<Space>"

" エスケープ2回でハイライト表示解除
nnoremap <silent><Esc><Esc> :nohlsearch<CR>

" スペース＋「.」でinit.vimを開く
nnoremap <Leader>. :edit $LOCALAPPDATA\nvim\init.vim

" スペース＋「U」でUnite.vimの呼び出し（Uniteとスペースまで）
nnoremap <Leader>U :Unite 

" スペース＋「u」でDenite.vimの呼び出し（Deniteとスペースまで）
nnoremap <Leader>u :Denite 

" スペース＋「n」でNERDTree呼び出し
nnoremap <Leader>n :NERDTree

" スペース＋「de」でdein呼び出し(call dein#)
nnoremap <Leader>de :call dein#

" vim-anzu関連
nmap n <Plug>(anzu-n)
nmap N <Plug>(anzu-N)
nmap * <Plug>(anzu-star)
nmap # <Plug>(anzu-sharp)

" ALE エラー間を移動する
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" undotreeの表示切替
nnoremap <F5> :UndotreeToggle<CR>

" Aerialの切り替え
nmap <Leader>a <cmd>AerialToggle!<CR>

"##############################################################################
"その他設定
"##############################################################################

" マウスを無効にする
set mouse=""

" フォント設定
set guifont=Cyroit\ BS\ Unhinted:h16

" クリップボードとヤンクバッファを共用する。
set clipboard=unnamed

" エラートーンを無効化する
set visualbell t_vb=

" vim-indent-guidesの設定
  let g:indent_guides_enable_on_vim_startup=0
  let g:indent_guides_start_level=1
  let g:indent_guides_space_guides=1
  let g:indent_guides_guide_size=2
  let g:indent_guides_auto_colors=0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=DarkSlateBlue
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=LightSlateGray
  let g:indent_guides_color_change_percent = 30

"##############################################################################
" 終端処理（ファイルタイプ、シンタックス、インデントの有効化、ハイライト）
"##############################################################################

filetype plugin indent on
syntax on
syntax enable
set hlsearch
autocmd FileType text setlocal textwidth=0
if has('gui_running')
  call setcellwidths([[0xE0B0, 0xE0B3, 1]])
else
  call setcellwidths([[0xE0B0, 0xE0B3, 1]])
endif

call setcellwidths([[0xF138, 0xF13A, 2]])
