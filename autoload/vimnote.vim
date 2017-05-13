" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description:

let s:save_cpo = &cpo
set cpo&vim

scriptencoding utf-8

if exists("g:loaded_vimnote")
    finish
endif
let g:loaded_vimnote = 1

if !exists("g:token")
  call s:setEvernoteClient()
endif

function! vimnote#set_evernote_client() abort
  let g:token = input('Your devloper token? ', 'Get from Evernote Web(https://www.evernote.com/api/DeveloperToken.action)')
  pyfile <sfile>:h:h/src/setting.py
endfunction

function! vimnote#send() abort
  python Vimnote.getInstance().sendNote()
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
