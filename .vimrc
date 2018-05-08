" basic
set nocompatible
set t_Co=256 "required
colorscheme desert
set backspace=indent,eol,start
filetype plugin indent on
syntax on
set number
set relativenumber


" NERDTree
""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" indentLine
""""""""""
let g:indentLine_char='┆'
let g:indentLine_enabled = 1


" vim-go
"""""""""""
let g:go_fmt_command = "goimports"
set ts=4  
set expandtab



" lightline
"""""""""""
set laststatus=2
let g:lightline = {
  \   'colorscheme': 'default',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
  \   'component': {
  \     'lineinfo': 'L: %3l:%-2v',
  \   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \}


