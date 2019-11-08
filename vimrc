" 基本设置
set number showcmd ruler nobackup fileencodings=utf-8,gbk laststatus=2
set autoindent expandtab tabstop=4 shiftwidth=4
set ignorecase hlsearch incsearch
filetype plugin on | syntax on | color torte

" leader 快捷键定义
let mapleader = "e"
map <silent> <leader>h :tabprevious<CR>
map <silent> <leader>l :tabnext<CR>
map <silent> <leader>i :set paste!<CR>
map <silent> <leader>I :set list!<CR>
map <silent> <leader>q :q<CR>
map <silent> <c-q> :q<CR>
map <silent> <leader>p "0p
map <silent> <leader>v :tabnew ~/.vimrc<CR>
map <silent> <leader>w :set nowrap!<CR>
map <silent> <space> <c-e>j
map <silent> <c-j> ]czz
map <silent> <c-k> [czz

" 行尾字符、状态栏、go特殊格式
set list listchars=tab:>-,trail:.
set statusline=%F\ %1*%m%*\ %r\ %{&paste?'[PASTE]':''}%=\ (%c,\ %l,\ %p%%)\ %1*\ %L\ %*\ %{toupper(&fenc!=''?&fenc:&enc)}\ [0x%B]
autocmd BufEnter *.go setlocal noexpandtab tabstop=8 shiftwidth=8 nolist

" 安装 vim-plug
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
