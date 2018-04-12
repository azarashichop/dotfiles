# 個人的メモ

  1. MSYS2パッケージのダウンロード  
      [MSYS2ダウンロード先](https://msys2.github.io/)
      * i686    --- 32ビット版  
      * x86_64  --- 64ビット版  
 
  2. インストールする。ダブルクリックOK。

  3. PACMANを使えるように、プロキシ設定＋レポジトリとのプロトコル設定
    1. /etc/wgetrc
      ```
      http_proxy=http://proxy01:80
      https_proxy=http://proxy01:80
      ```
    2. /etc/pacman.conf
      XferCommandのうち、curlもしくはwgetを有効化する（コメントアウトを外す）  
      今回は、wgetを有効化する。  
      ついでに、カラー設定と詳細表示を有効化しておく。  
      Color、VerbosePkgListsをアンコメント。  

  4. パッケージを更新する。
    ```
    pacman -Syuu
    ```

    updateがなくなるまでくり返す。

  5. パッケージをインストールする。
    ```
    pacman -S gcc make cmake pkg-config base-devel msys2-devel mingw-w64-i686-toolchain mingw-w64-x86_64-toolchain
    pacman -S MSYS2-runtime-devel mingw-w64-x86_64-jq python python2 ruby perl mingw-w64-x86_64-ag libcrypt-devel gettext-devel
    pacman -S ncurses-devel libreadline-devel ***2018/2/1現在、ncurses-develをインストールすると挙動がおかしくなる！
    ```
    インストール完了後、/msys64/mingw64/binにインストールされたag.exeとjq.exeを/usr/binにコピーする。  
    これで、agコマンドとjqが直接実行可能な状態になる。

  6. gitをインストールする。（Vimも同時に入ってしまう。後で少し操作必要）
    ```
    pacman -S git
    ```

  7. MSYS2-packagesをgit cloneする。
    ```
    cd /usr/src
    git clone https://github.com/Alexpux/MSYS2-packages
    ```

  8. lua、nkfのビルド
    ```
    cd /usr/src
    wget http://www.lua.org/ftp/lua-5.3.4.tar.gz
    ```
    nkfのソースをOSDNで入手、/usr/srcに格納する

    [lua]
    ```  
    cd /usr/src/lua***/src
    make mingw
    make install
    cp lua**.dll /usr/local/bin
    ``` 

    [nkf]
    ```
    cd /usr/src/nkf**
    make
    make install
    ```

  9. Vimのビルド（git入れ直し含む）
    ```
    cd /usr/src/MSYS2-packages/vim
    ```
    PKGBUILDを編集
    ```
    --enable-fail-if-missing
    --enable-luainterp
    --with-lua-prefix=/usr/local
    --enable-terminal
    --with-compliledby=foobar
    ```
    ```
    makepkg
    pacman -R vim git
    pacman -U vim**.tar.xz
    pacman -S git
    ```
  10. C/Migemoのビルド
    ```
    cd /usr/src
    git clone https://github.com/koron/cmigemo
    ./configure --prefix=usr/local
    make mingw-install
    cmigemo --help <== インストール確認
    ```

  11. 環境変数  
    アカウント向けPATH変数に、以下を追加
    ```
    C:\bin\vim80
    C:\msys64\usr\bin
    C:\msys64\mingw64\bin
    C:\msys64\usr\local\bin
    C:\bin\Python27
    C:\bin\Python27\Scripts
    C:\bin\Python35
    C:\bin\Python35\Scripts
    C:\bin\perl
    C:\bin\Ruby23\bin
    C:\Program Files\Putty
    C:\Program Files\Java\jdk-9.0.4\bin
    ```

    HOME変数の新規作成
    ```
    C:\Users\foobar\myenv
    ```

    LANG変数の新規作成
    ```
    en_US/CP932
    ```

  12. 設定ファイル同期（githubから）  
    ```
    cd $HOME
    git clone https://guthub.com/azarashichop/dotfiles
    cd dotfiles
    dotfileslink.bat
    ```

}}}}}  
EOF  
{{{{{  
vim:ft=markdown
