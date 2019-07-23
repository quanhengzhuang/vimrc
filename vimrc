" 2011.6.3 基本设置
let mapleader = "e"

set number showcmd ruler nobackup
set autoindent expandtab tabstop=4 shiftwidth=4
set ignorecase hlsearch incsearch
set fileencodings=utf-8,gbk

filetype plugin on | syntax on | color torte
let NERDTreeShowBookmarks=1

" leader 快捷键定义
map <silent> <leader>d Oini_set('display_errors', 'On'); error_reporting(E_ALL);<ESC>
map <silent> <leader>i :set paste!<CR>
map <silent> <leader>I :set list!<CR>
map <silent> <leader>N :nohlsearch<CR>
map <silent> <leader>q :q<CR>
map <silent> <leader>p "0p
map <silent> <leader>s :split<CR>
map <silent> <leader>S :vsplit<CR>
map <silent> <leader>t :NERDTreeToggle<CR>
map <silent> <leader>v :tabnew ~/.vimrc<CR>
map <silent> <leader>w :set nowrap!<CR>
" 2013.5.1 0替代^，空格滚屏, 快速切换窗口
map <silent> 0 ^
map <silent> <space> <c-e>j
map <silent> <c-l> <c-w>l
map <silent> <c-j> <c-w>j
map <silent> <c-k> <c-w>k
map <silent> <c-h> <c-w>h
" 2017.3.1 vimdiff 快捷键
map <silent> <c-g> [czz

" 2014.8.21 高亮显示tab和空格
highlight SpecialKey ctermbg=1 ctermfg=4
set list listchars=tab:>-,trail:.

" 2012.6.22 状态栏显示优化
highlight User1 ctermbg=1 ctermfg=3
highlight User2 ctermbg=4 ctermfg=2
set laststatus=2
set statusline=%F\ %1*%m%*\ %r\ %{&paste?'[PASTE]':''}
set statusline+=%=\ (%c,\ %l,\ %p%%)
set statusline+=\ %1*\ %L\ %*
set statusline+=\ %{toupper(&fenc!=''?&fenc:&enc)}\ [0x%B]

" tab, pop, cursor 高亮颜色
highlight TabLine term=underline cterm=bold ctermfg=9 ctermbg=4
highlight TabLineSel term=bold cterm=bold ctermbg=Red ctermfg=yellow
highlight Pmenu guibg=#EE0000 ctermbg=darkred
highlight PmenuSel guibg=#660000 ctermbg=red guifg=yellow ctermfg=yellow
highlight PmenuSbar guibg=#990000 ctermbg=red
highlight PmenuThumb guifg=yellow ctermfg=darkred
highlight CursorLine guibg=#2B0000 ctermbg=darkgreen

" 2014.12.18 显示匹配数
command! -nargs=0 Count execute ':%s///gne'

" 2018.8.29 gofmt
autocmd BufEnter *.go setlocal noexpandtab tabstop=8 shiftwidth=8 nolist

" 2019.7.2 安装 vim-plug
command! InstallVimPlug :!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'scrooloose/nerdtree'
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
Plug 'requestid/vim-phpcheck'
call plug#end()
