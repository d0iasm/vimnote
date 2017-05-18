" File: plugin/vimnote.vim
" Author: https://github.com/d0iasm
" Description: send to Evernote from vim

let s:save_cpo = &cpo
set cpo&vim

scriptencoding utf-8

if !exists("g:loaded_vimnote")
    finish
endif
let g:loaded_vimnote = 1

function! s:set_evernote_client() abort
  let g:evernote_dev_token = input('Your devloper token? ', 'Get from Evernote Web(https://www.evernote.com/api/DeveloperToken.action)')
  pyfile <sfile>:h:h/src/setting.py
endfunction

function! vimnote#send() abort
  if !exists("g:evernote_dev_token")
    call s:set_evernote_client()
  endif
  pyfile <sfile>:h:h/src/vimnote.py
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
