"###############################################################################
"gui-vim用設定
"###############################################################################

"Light-Line用設定
set ambiwidth=single

"ターミナルカラー設定
set t_Co=256

"マウスを無効にする
set mouse=""

"フォント設定
"set guifont=Ricty_for_Powerline:h16:cSHIFTJIS
set guifont=CicaE\ 16

"透過設定
gui

"クリップボードとヤンクバッファを共用する。
set clipboard=unnamed

"エラートーンを無効化する
set visualbell t_vb=

"ツールバーを非表示にする
set guioptions-=T
set guioptions-=m

"タブ表示をvimと同じにする
set guioptions-=e

"プリンタ用のフォント設定
set printfont=Ricty_Writing:h12:cSHIFTJIS

"gui-vim用のbackground、カラースキーム設定
set background=dark
color hybrid

"IMEの有効／無効でカーソル色を変える
"半角：グレー、全角：ダークレッド
"function! s:CursorColor()
"  highlight Cursor guifg=NONE guibg=Gray
"  highlight CursorIM guifg=NONE guibg=Darkred
"endfunction

if has('multi_byte_ime')
  augroup ColorSchemeHook
    autocmd!
    autocmd ColorScheme * call s:CursorColor()
  augroup END
endif

"vim-indent-guidesの設定
  let g:indent_guides_enable_on_vim_startup=0
  let g:indent_guides_start_level=1
  let g:indent_guides_space_guides=1
  let g:indent_guides_guide_size=2
  let g:indent_guides_auto_colors=0
  autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=DarkSlateBlue
  autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=LightSlateGray
  let g:indent_guides_color_change_percent = 30

"改行、タブ文字、行番号の色設定
"highlight NonText guifg=DarkCyan
"highlight SpecialKey guifg=OliveDrab
"highlight LineNr guibg=NONE guifg=Gold
"highlight CursorlineNr guifg=DodgerBlue
