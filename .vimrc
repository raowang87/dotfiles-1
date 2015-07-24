" Use pathogen to install the following packages
" nerdtree
" supertab
" syntastic
" vim-abolish
" vim-commentary
" vim-fugitive
" vim-gitgutter
" vim-repeat
" vim-sensible
" vim-sleuth
" vim-surround
execute pathogen#infect()
" Basic stuff, highlight search. desert color for dark term, line nums
colorscheme desert
syntax on
set number
set hlsearch
" Put swap files and shit somewhere i dont see them
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
" Tab stuff
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" Flag trailing whitespace
match ErrorMsg '\s\+$'
" Removes trailing spaces
function! TrimWhiteSpace()
    %s/\s\+$//e
    endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
" Automatically do this for code fileson write
autocmd FileType python,java autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileType python,java autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FileType python,java autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd FileType python,java autocmd BufWritePre     * :call TrimWhiteSpace()
" Turn off annoying python style checkers (pylint looking at you
let g:syntastic_python_checkers = ['python']

" Paste behavior with <F2>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

