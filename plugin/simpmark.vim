" File: plugin/simpmark.vim
" Maintainer: Robertus Diawan Chris <https://github.com/bruhtus>
" License:
" Copyright (c) Robertus Diawan Chris. Distributed under the same terms as Vim itself.
" See :h license
"
" Description:
" simple vim mark management

if exists('g:loaded_simpmark')
  finish
endif

let g:loaded_simpmark = 1

command! SimpMark call simpmark#gotomark()
command! SimpMarkDel call simpmark#delete()
