" 基本的にはグローバルな設定だけ書く

set nocompatible
set showmatch showmode showcmd
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

syntax on
filetype on
filetype indent on
filetype plugin on

"行番号の表示
set number

" タブと改行の可視化
set list
set listchars=tab:▸\ ,eol:¬

" 全角スペースの可視化
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
 
if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
  augroup END
  call ZenkakuSpace()
endif

" 新しいウィンドウを下に開く
set splitbelow
" 新しいウィンドウを右に開く
set splitright

" netrwで新しいウィンドウを下に分割する
let g:netrw_alto = 1
" netrwで新しいウィンドウを右に分割する
let g:netrw_altv = 1
" netrwは常にtree view
let g:netrw_liststyle = 3
