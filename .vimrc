" 基本的にはグローバルな設定だけ書く

set nocompatible
set showmatch showmode showcmd
set laststatus=2

syntax on
filetype off

set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'scrooloose/nerdtree.git'
Bundle 'mitechie/pyflakes-pathogen'
Bundle 'reinh/vim-makegreen'
Bundle 'lambdalisue/nose.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'JavaScript-syntax'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-fugitive'
Bundle 'itchyny/lightline.vim'

filetype indent plugin on

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

" NERDTree
let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
  autocmd VimEnter * NERDTree ./
endif

nmap <Leader>n :NERDTreeToggle<CR>

" lightline
let g:lightline = {
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'fugitive', 'filename' ] ]
  \ },
  \ 'component_function': {
  \   'fugitive': 'MyFugitive',
  \   'readonly': 'MyReadonly',
  \   'modified': 'MyModified',
  \   'filename': 'MyFilename'
  \ },
  \ 'separator': { 'left': '⮀', 'right': '⮂' },
  \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
  \ }

function! MyModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
   return ""
  else
    return ""
  endif
endfunction

function! MyReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "⭤"
  else
    return ""
  endif
endfunction

function! MyFugitive()
  if exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? '⭠ '._ : ''
  endif
  return ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
    \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
    \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

" テンプレート
autocmd BufNewFile *.html 0r $HOME/.vim/template/html.txt
