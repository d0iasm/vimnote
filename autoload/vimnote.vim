" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description:

scriptencoding utf-8

pyfile <sfile>:h:h/src/hello.py

python import vim

function! s:hello()
  python hello()
endfunction
