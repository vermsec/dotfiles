" Highlighting
syntax on

" Vundle
filetype off

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu

" Line wrapping
set nowrap
set linebreak
set showbreak=▹

" Auto indent what you can
set autoindent

" Colorscheme
if &t_Co == 256
    try
        color xoria256
    catch /^Vim\%((\a\+)\)\=:E185/
        " Oh well
    endtry
endif

" Switching between buffers
noremap <Space> :n<CR>
noremap <Backspace> :N<CR>
noremap <C-D> :call delete(expand('%')) <bar> argdelete % <bar> bdelete<CR>
set noswapfile
