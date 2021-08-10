" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup    " do not keep a backup file, use versions instead
set history=50  " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands
set incsearch   " do incremental searching

" Tweaking VIM settings by Viktor Sytnyk <v.sytnyk@fozzy.ua> at 06.04.2016 
set expandtab
set smarttab
set copyindent
set preserveindent
set softtabstop=2
set shiftwidth=2
set tabstop=2
"set list
"set listchars+=nbsp:·,trail:·,precedes:←,extends:→,eol:↲,tab:――

" Color theme and syntax on
filetype plugin on
colorscheme slate
let g:molokai_original = 1
let g:rehash256 = 1

call plug#begin()
  Plug 'fatih/molokai'
  Plug 'vim-airline/vim-airline'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
set mouse=a

" VIM Tabber Powerline style
set tabline=%!tabber#TabLine()

" Line number for go,java source
au FileType go,java set nu

" Background color overwrite
hi Normal ctermfg=252 ctermbg=none
hi Comment ctermfg=243
"hi Normal ctermfg=252 ctermbg=233

" Keys binding
" --------------------------------------
" Insert <TAB> symbol | <Shift> + <Tab>
inoremap <S-Tab> <C-V><Tab>
" Run current file
nnoremap <F9> :!%:p
" HAProxy syntax highlighting
au BufRead,BufNewFile haproxy* set ft=haproxy
