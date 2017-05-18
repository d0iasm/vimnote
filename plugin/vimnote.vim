" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description: send to Evernote from vim

let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_vimnote")
    finish
endif
let g:loaded_vimnote = 1

command! -nargs=0 VimnoteSend :call vimnote#send()

let &cpo = s:save_cpo
unlet s:save_cpo
