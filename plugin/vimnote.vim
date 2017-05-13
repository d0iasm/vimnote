" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description:

let s:save_cpo = &cpo
set cpo&vim

command! VimnoteSend call vimnote#send()

let &cpo = s:save_cpo
unlet s:save_cpo
