" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description:

pyfile <sfile>:h/src/hello.py

python import vim

function! s:hello()
  python hello()
endfunction
