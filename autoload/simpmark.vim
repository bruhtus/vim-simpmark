" File: autoload/simpmark.vim
" Maintainer: Robertus Diawan Chris <https://github.com/bruhtus>
" License:
" Copyright (c) Robertus Diawan Chris. Distributed under the same terms as Vim itself.
" See :h license
"
" Description:
" simple vim mark management

if !exists('g:simpmark_marks')
  " only display mark [a-zA-Z], mark ', mark ., and mark "
  let g:simpmark_marks = "'.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ" . '\"'
endif

function! simpmark#delete()
  if get(g:, 'simpmark_del_no_display') != 1
    execute 'marks ' . g:simpmark_marks
  endif
  echo 'Mark: '
  let l:mark = nr2char(getchar())
  echo ''
  redraw
  execute 'silent! delm ' . l:mark
endfunction

function! simpmark#gotomark()
  if get(g:, 'simpmark_no_display') != 1
    execute 'marks ' . g:simpmark_marks
  endif
  echo 'Mark: '

  let l:mark = nr2char(getchar())
  echo ''
  redraw

  try
    execute "normal! `" . l:mark
    norm! zz
  catch
    if get(g:, 'simpmark_no_msg') != 1
      echo "Mark doesn't exist"
    endif
  endtry
endfunction
