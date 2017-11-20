"Start of Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'Valloric/YouCompleteMe'
    Plugin 'scrooloose/nerdtree'
	Plugin 'Xuyuanp/nerdtree-git-plugin'
	Plugin 'dracula/vim'
    Plugin 'Chiel92/vim-autoformat'
call vundle#end()            " required
filetype plugin indent on    " required
"End of Vundle
" Start of vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'powerline/powerline'
    Plug 'vim-airline/vim-airline'
    Plug 'erikw/tmux-powerline'
	Plug 'morhetz/gruvbox'
   " Initialize plugin system
call plug#end()
" End of vim-plug

" Lines below should be temporary remove before run :PluginInstall and :PluginInstall
" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>
noremap <F3> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
map <F7> mzgg=G`z
colorscheme gruvbox
set background=dark
let g:loaded_python_provider = 1
let g:python3_host_prog = 'C:/Users/d874546/AppData/Local/Programs/Python/Python36-32/python.exe'
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp
set autoread
"Start of vim-plug
syntax on
set autoindent
set si "smart indent
noremap <C-e> <C-w>
"map <C-a> <esc>ggVG<CR>
set encoding=utf-8
set cursorline
set clipboard=unnamedplus
set nocompatible
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1
" These lines below is for java completer but still not working
" g:JavaComplete_JavaviDebug = 1
" let g:JavaComplete_Home = 'C:/Users/d874546/.vim/bundle/vim-javacomplete2'

" autocmd FileType java setlocal omnifunc=javacomplete#Complete

" nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
" 
" imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
" 
" nmap <F5> <Plug>(JavaComplete-Imports-Add)
" 
" imap <F5> <Plug>(JavaComplete-Imports-Add)
" 
" nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
" 
" imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
" 
" nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
" 
" imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
