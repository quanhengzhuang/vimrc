" 基本设置
set number showcmd ruler nobackup fileencodings=utf-8,gbk laststatus=2
set autoindent expandtab tabstop=4 shiftwidth=4
set ignorecase hlsearch incsearch
filetype plugin on | syntax on | color torte

" leader 快捷键定义
let mapleader = "e"
map <leader>h :tabprevious<CR>
map <leader>l :tabnext<CR>
map <leader>i :set paste!<CR>
map <leader>I :set list!<CR>
map <leader>q :q<CR>
map <c-q> :q<CR>
map <leader>p "0p
map <leader>w :set nowrap!<CR>
map <space> <c-e>j
map <c-n> ]czz
map <c-m> [czz
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" 行尾字符、状态栏、go特殊格式
set list listchars=tab:>-,trail:.
set statusline=%F\ %1*%m%*\ %r\ %{&paste?'[PASTE]':''}%=\ (%c,\ %l,\ %p%%)\ %1*\ %L\ %*\ %{toupper(&fenc!=''?&fenc:&enc)}\ [0x%B]
autocmd BufEnter *.go,*.mod setlocal noexpandtab tabstop=8 shiftwidth=8 nolist

command! Vimrc tabnew ~/.vimrc
command! InstallVimPlug :!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'scrooloose/nerdtree' | let NERDTreeShowBookmarks=1 | map <leader>t :NERDTreeToggle<CR>
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/AutoComplPop'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/Mark'
Plug 'quanhengzhuang/vim-tabplus'
Plug 'quanhengzhuang/vim-filefinder'
Plug 'quanhengzhuang/vim-findtags'
Plug 'quanhengzhuang/vim-hiwords'
Plug 'quanhengzhuang/vim-sudowriter'
Plug 'quanhengzhuang/vim-autobackup'
Plug 'quanhengzhuang/vim-ryb'
Plug 'requestid/vim-phpcheck'
call plug#end()
