" 2021-04-06 11:28:55 设置 python3 动态库位置
" set pythonthreedll=/usr/bin/libpython3.8.dll

silent! if plug#begin('~/.vim/plugged')
" Edit
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
"Plug 'Valloric/YouCompleteMe'
"Plug 'itchyny/lightline.vim'
call plug#end()
endif

"set clipboard=unnamed

set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
"language en_US
set encoding=utf-8
set termencoding=gbk
set fileformats=unix,dos,mac
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
if has("patch-7.4.710")
	set listchars=tab:━─,trail:~,extends:>,precedes:<,eol:┐,space:·	
	"set listchars=tab:━─,trail:·,extends:>,precedes:<,eol:┐,space:·	
else
	"set listchars=eol:~,tab:>.,trail:~,extends:>,precedes:<
	set listchars=tab:>.,trail:~,extends:>,precedes:<,eol:┑
endif

" 2019/03/25 14:22:34 全局禁用自动补全 include 目录标签搜索
set complete-=i

"map <C-a> <esc>ggVG<CR>

:nnoremap <F7> "=strftime('%Y-%m-%d %H:%M:%S')<CR>p
:inoremap <F7> <C-R>=strftime('%Y-%m-%d %H:%M:%S')<CR>

":nnoremap <silent> <F5> :NERDTree<CR>

map <silent> <F5> :NERDTreeToggle<CR>
imap <silent> <F5> <Esc> :NERDTreeToggle<CR>

let g:NERDTreeChDirMode = 2
let g:NERDTreeIgnore = ['\.o$', '\.pyc$', '\.pyw$', '\~$', '\.gif', '\.jpg', '\.png', '\.exe', '\.xls', '\.xlsx', '\.pdf', '\.bak', '\.doc', '\.docx', '\.zip', '\.swp']
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeCascadeSingleChildDir = 1
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeDirArrowExpandable = "┝"
let g:NERDTreeDirArrowCollapsible = "┥"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set splitbelow
set splitright

set nu
"set list

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>uu :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

let g:ycm_python_binary_path='/usr/bin/python3'
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_auto_trigger = 1
" 禁止自动弹出函数或类定义窗口
let g:ycm_auto_hover=''
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_use_clangd = 1
" set completeopt=menu

" commands mappings
nnoremap <F3> :YcmCompleter GoTo<CR>

"if !has('gui_running')
"set t_Co=256
"colorscheme monokai_pro
"endif
" 在使用 lightline 时候设置以避免模式提示重复
"set noshowmode

set statusline=
set statusline+=%1*\[%n]                                  "buffernr
set statusline+=%2*\ %<%F\                                "File+path
set statusline+=%3*\ %=\ %{''.(&fenc!=''?&fenc:&enc).''}\ "Encoding
set statusline+=%4*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%5*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%6*\ row:%l/%L\ col:%03c\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
hi User2 ctermfg=3  ctermbg=0
hi User6 ctermfg=3  ctermbg=4

set laststatus=2

