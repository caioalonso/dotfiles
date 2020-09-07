call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
"Plug 'scrooloose/nerdtree'
Plug 'honza/vim-snippets'
Plug 'digitaltoad/vim-pug'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'pbrisbin/vim-colors-off'
Plug '/usr/bin/fzf'
Plug 'junegunn/fzf.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'fatih/vim-go'
Plug 'thoughtbot/vim-rspec'
Plug 'rust-lang/rust.vim'
call plug#end()

runtime! plugin/sensible.vim

" 256 colors
set t_Co=256

set number relativenumber
let g:airline_theme='minimalist'
set background=light

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType go setlocal softtabstop=0 noexpandtab
autocmd FileType pug setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 expandtab
autocmd FileType html setlocal tabstop=8 softtabstop=0 noexpandtab

"show whitespace
set list
set listchars=trail:·

"map <C-n> :NERDTreeToggle<CR>

" fix ^g in NERDTree
"let g:NERDTreeNodeDelimiter = "\u00a0"

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
"vmap <C-c> "+y
" ctrl+v to paste
"nmap <C-v> "+gp
"set clipboard=unnamedplus

" auto fix files on save
let g:ale_fix_on_save = 1

" navigate between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Solargraph setup
" Required for operations modifying multiple buffers like rename.
set hidden
let g:LanguageClient_serverCommands = {
  \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
  \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
  \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
  \ 'python': ['/usr/local/bin/pyls'],
  \ 'ruby': ['tcp://localhost:7658', 'stdio'],
  \ }
let g:LanguageClient_autoStop = 0
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>

nnoremap <C-space> :Files<Cr>

nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

let mapleader=" "
map <Leader>t :tabnew<cr>
map <Leader>p :tabprevious<cr>
map <Leader>n :tabnext<cr>

set tags=./.tags;

map <Leader>spec :call RunCurrentSpecFile()<CR>
let g:rspec_command = "!brspec --drb {spec}"

let @+ = expand("%")
