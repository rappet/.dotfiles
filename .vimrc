set nocompatible              " be iMproved, required
filetype off                  " required
set encoding=utf-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set number

set listchars=tab:\ \ ,trail:\ 
set list

" call vundle#begin()
" set mouse=a
map <F2> :tabnew<CR>:Explore<CR>
map <F3> :tabp<CR>
map <F4> :tabn<CR>
map <F5> :NERDTreeToggle<CR>

map <C-H> :wincmd h<CR>
map <C-J> :wincmd j<CR>
map <C-K> :wincmd k<CR>
map <C-L> :wincmd l<CR>

"let g:neocomplete#enable_at_startup = 1

" Frage ignorieren
"let g:ycm_confirm_extra_conf = 0

" set foldmethod=manual
" Code-Folding mit <F9>
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/xx/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'rust-lang/rust.vim'
Plugin 'https://github.com/neovimhaskell/haskell-vim.git'
Plugin 'toyamarinyon/vim-swift'
Plugin 'leafgarland/typescript-vim'
Plugin 'https://github.com/khzaw/vim-conceal.git'
Plugin 'editorconfig/editorconfig-vim'

Plugin 'cespare/vim-toml'
syntax on

" Plugin 'racer-rust/vim-racer'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

cmap w!! w !sudo tee % > /dev/null<CR>
let NERDTreeMapOpenInTab='\r'

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set guifont=Monospace\ 8
let g:racer_cmd = "/home/rappet/.cargo/bin/racer"
let g:ycm_rust_src_path = "/home/rappet/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
:set colorcolumn=80

"set rtp+=.local/lib/python3.7/site-packages/powerline/bindings/vim

"python3 from powerline.vim import setup as powerline_setup
"python3 powerline_setup()
"python3 del powerline_setup

set laststatus=2
