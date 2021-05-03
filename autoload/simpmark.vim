" File: autoload/simpmark.vim
" Maintainer: Robertus Diawan Chris <https://github.com/bruhtus>
" License:
" Copyright (c) Robertus Diawan Chris. Distributed under the same terms as Vim itself.
" See :h license
"
" Description:
" simple vim mark management

function! simpmark#delete()
	" only display mark [a-zA-Z], mark ', and mark .
	marks '.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\"
	echo('Mark: ')
	let l:mark = nr2char(getchar())
	redraw
	execute "silent! delm " . l:mark
endfunction

function! simpmark#gotomark()
	" only display mark [a-zA-Z], mark ', and mark .
	marks '.abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\"
	echo('Mark: ')

	let l:mark = nr2char(getchar())
	redraw

	try
		execute "normal! `" . l:mark
		norm zz
	catch
		echo "Mark doesn't exist"
	endtry
endfunction
