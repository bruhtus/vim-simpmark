# simpmark.vim

Simpmark is a plugin to manage mark in vim. Simpmark was inpired by [stackexchange answer](https://vi.stackexchange.com/a/9746) about showing the list of marks, but with some improvements.

## Features

First of all,  simpmark list available mark and then you can press any alphabet according to the mark you want to choose. To make it simple, it's like using command `:marks` first and then using `` ` `` (backtick, a normal mode command) to go to the mark you want. The only difference is that simpmark only list `'`, `.`, and alphabet mark (`[a-zA-Z]`) and doesn't list the number mark. And if the mark doesn't exist, it doesn't give you and error. So you can use simpmark just to check the list of marks.

The improvements are:
1. It only show `'`, `.`, and alphabet mark rather than all the available mark so that it doesn't take up a lot of screen space. You can check all the available mark using the default `:marks` command.
2. When go to the mark, the content of the mark appear in the middle of the screen. So you don't have to press `zz` everytime you go to the mark.
3. You can also delete a mark.

## Installation

Install this plugin using your favorite plugin manager, below is a few example of plugin manager that available:
- [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'bruhtus/vim-simpmark'
```
- [packer.nvim](https://github.com/wbthomason/packer.nvim)
```vim
use 'bruhtus/vim-simpmark'
```
- [minpac](https://github.com/k-takata/minpac)
```vim
call minpac#add('bruhtus/vim-simpmark')
```
## Usage

There are two command you can use, `SimpMark` and `SimpMarkDel`. `SimpMark` is the command to go to the mark and `SimpMarkDel` is the command to delete a mark.

This plugin doesn't provide any keybinding, you can make your own keybinding with the command `SimpMark` or `SimpMarkDel`.

For example: <br>
```vim
nnoremap <silent> <leader>m :SimpMark<CR>
nnoremap <silent> dm :SimpMarkDel<CR>
```
