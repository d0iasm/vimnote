" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description:

scriptencoding utf-8

if exists("g:loaded_vimnote")
    finish
endif
let g:loaded_vimnote = 1

let s:save_cpo = &cpo
set cpo&vim


" pyfile <sfile>:h:h/src/vimnote.py

" python import vim

function! s:sendPython()
  let inputtext = input('Your name? ', 'defalut')
  " python print "arg is " + vim.eval("arg")
  " python sys.argv = ('l:inputtext', 'l:inputtext')
  pyfile <sfile>:h:h/src/vimnote.py
endfunction

call s:sendPython()


let &cpo = s:save_cpo
unlet s:save_cpo
