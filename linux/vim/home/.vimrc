set number	"display numbers
set tabstop=4	"set tab = 4
set hlsearch	"highlight search result
set ruler	"information displayed on the right bottom
set showmode	"information displayed on the left bottom
colorscheme desert "set color scheme
syntax on	"highlight syntax 
filetype on	"auto detect file type
filetype plugin on	"auto use plugin for each file type
set showmatch	"bracket match
set columns=100	"set column number
set lines=30	"set line number
filetype indent on	"detect indent number for each file type
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"	"ctags path change
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1

"使用模板
autocmd BufNewFile *.pl 0r ~/.vim/template/perl.tpl
