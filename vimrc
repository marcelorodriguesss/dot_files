call pathogen#infect()
call pathogen#helptags()

set mouse-=a
set number
set tabstop=4
set softtabstop=4
set expandtab
set showcmd 
set cursorline
set showmatch
set colorcolumn=79
" set textwidth=79
" set colorcolumn=-2
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
syntax enable

" fix backspace problem 
set backspace=2

" to python-mode
" https://github.com/python-mode/python-mode
" http://vijayanant.github.io/blog/2015/01/04/NEW-Vim-Setup
filetype plugin on
filetype indent on

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" run python inside vim
autocmd FileType python nnoremap <buffer> <F5> :exec '!clear; python3.6' shellescape(@%, 1)<cr>

