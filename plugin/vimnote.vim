" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description: send to Evernote from vim

let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_vimnote")
    finish
endif

command! -nargs=0 VimnoteSend :call vimnote#send()

let g:loaded_vimnote = 1

let &cpo = s:save_cpo
unlet s:save_cpo
