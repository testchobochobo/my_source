" ======================================================================
" " bundle
" " ----------------------------------------------------------------------
" be iMproved
set nocompatible               
filetype off


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'tomasr/molokai'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'tpope/vim-endwise.git' 
NeoBundle 'vim-scripts/dbext.vim'
NeoBundle 'scrooloose/nerdtree' 
NeoBundle 'gregsexton/gitv' 
NeoBundle 'tpope/vim-fugitive' 

" rails-support
NeoBundle 'taichouchou2/vim-rails'
NeoBundle 'romanvbabenko/rails.vim'

" Syntax {{{
" haml
NeoBundle 'haml.zip'
" JavaScript
NeoBundle 'JavaScript-syntax'
" jQuery
NeoBundle 'jQuery'
" nginx conf
NeoBundle 'nginx.vim'
" markdown
NeoBundle 'tpope/vim-markdown'
" syntax checking plugins exist for eruby, haml, html, javascript, php, python, ruby and sass.
NeoBundle 'scrooloose/syntastic'
" }}}

"nerdtreetoggle
noremap <C-E> :NERDTreeToggle<CR>
"隠しファイルを表示
let g:NERDTreeShowHidden=1

" required!
filetype plugin indent on     
filetype indent on
syntax on

" カーソル行をハイライト
set cursorline
" カレントウィンドウにのみ罫線を引く
"augroup cch
"autocmd! cch
"autocmd WinLeave * set nocursorline
"autocmd WinEnter,BufRead * set cursorline
"augroup END

hi clear CursorLine
hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" ======================================================================
" " color
" " ----------------------------------------------------------------------
" " 色指定
 set t_Co=256
 syntax on
 colorscheme molokai  

" " カーソル行を強調
 set cursorline
 highlight CursorLine ctermbg=234 cterm=NONE

 " " 全角スペースをハイライトする
 highlight JpSpace cterm=underline ctermfg=Blue
 autocmd BufRead,BufNew * match JpSpace /　/

 " " 挿入モード時、ステータスラインの色を変える
 autocmd InsertEnter * highlight StatusLine ctermbg=Red ctermfg=White
 autocmd InsertLeave * highlight StatusLine ctermbg=Grey ctermfg=Black
 hi Search term=reverse ctermfg=black ctermbg=brown
"
" " 指定の横幅以上はハイライトする (vim 7.3 以上)
@see http://vim-users.jp/2010/09/hack172/
if exists('&colorcolumn')
  set colorcolumn=+1
  autocmd FileType sh,cpp,perl,vim,ruby,python,haskell,scheme,markdown
  setlocal textwidth=80
endif

