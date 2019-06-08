call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'digitaltoad/vim-pug'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'pbrisbin/vim-colors-off'
call plug#end()

runtime! plugin/sensible.vim

" 256 colors
set t_Co=256

set cursorline
set number relativenumber
let g:airline_theme='minimalist'
colorscheme off
set background=dark

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType go setlocal softtabstop=0 noexpandtab
autocmd FileType pug setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab

set list

map <C-n> :NERDTreeToggle<CR>

" fix ^g in NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"

" ctrlp ignore files in gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<leader>p"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" fix for allowing overwrites
"let g:UltiSnipsDontReverseSearchPath="1"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" press jj to escape insert mode
imap jj <Esc>

" ctrl+c to copy
vmap <C-c> "+y
" ctrl+v to paste
nmap <C-v> "+gp
set clipboard=unnamedplus

" auto fix files on save
let g:ale_fix_on_save = 1

" navigate between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
