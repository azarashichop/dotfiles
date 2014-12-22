"###############################################################################
"gui-vim用設定
"###############################################################################

"フォント設定
set guifont=Ricty_for_Powerline:14

"ツールバーを非表示にする
set guioptions-=T

"クリップボードとヤンクバッファを共用する。
set clipboard=unnamed

"タブ表示をvimと同じにする
set guioptions-=e

"gui-vim用のカラースキーム設定
color molokai

"IMEの有効／無効でカーソル色を変える
"半角：グレー、全角：ダークレッド
if has('multi_byte_ime')
  highlight Cursor guifg=NONE guibg=Gray
  highlight CursorIM guifg=NONE guibg=Darkred
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
highlight NonText guifg=DarkCyan
highlight SpecialKey guifg=OliveDrab
highlight LineNr guibg=NONE guifg=Gold
highlight CursorlineNr guifg=DodgerBlue
