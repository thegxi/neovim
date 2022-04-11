"  __  __        __     _____ __  __ 
" |  \/  |_   _  \ \   / /_ _|  \/  |
" | |\/| | | | |  \ \ / / | || |\/| |
" | |  | | |_| |   \ V /  | || |  | |
" |_|  |_|\__, |    \_/  |___|_|  |_|
"         |___/

"===
"=== Basic Config
"===
syntax on "自动语法高亮
set number "显示行号
set cursorline "突出显示当前行
set ruler "打开状态栏标尺
set shiftwidth=2 "设定 << 和 >> 命令移动时的宽度为4
set softtabstop=2 "按退格键时可以一次删4个空格
set tabstop=2 "设定tab长度为4
set nobackup "覆盖文件时不备份
set autochdir "自动切所当前目录为当前文件所在的目录
filetype plugin indent on "开启插件
set backupcopy=yes "设置备份时的行为为覆盖
set ignorecase smartcase "搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set nowrapscan "禁止在搜索到文件两端时重新搜索
set incsearch "输入搜索内容时就显示搜索结果
set noerrorbells "关闭错误信息响铃
set novisualbell "关闭使用可视响铃代替呼叫
set t_vb= "置空错误铃声的终端代码
set showmatch "插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2 "短暂跳转到匹配括号的时间
set magic "设置魔术
set hidden "允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set guioptions-=T "隐藏工具栏
set guioptions-=m "隐藏菜单栏
set smartindent "开启新行时使用智能 自动缩进
set backspace=indent,eol,start "不设定在插入状态无法使用退格键和Delete键回车符
set cmdheight=1 "设定命令行的行数为1
set laststatus=2 "显示状态栏(默认值为1，无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\ "显示在状态栏的信息
"set foldenable "开始折叠
"set foldmethod=syntax "设置语法折叠
"set foldcolumn=0 "设置折叠区域的宽度
"setlocal foldlevel=1 "设置折叠层数
" set foldclose=all "设置为自动关闭折叠
" nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> "用空格键来开头折叠

"===
"=== Key map
"===
let mapleader=" "
map Q :q<CR>
map S :w<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
noremap U 5k
noremap E 5j
noremap W 6w
noremap B 5b
" Ctrl + U/E will move up/down the view port whithout moving the cursor
noremap <C-U> 5<C-y>
noremap <C-E> 5<C-e>
inoremap <C-U> <Esc>5<C-y>a
inoremap <C-e> <Esc>5<C-e>a
" Alt+o 打开ranger
nnoremap <silent> <M-o> :RnvimrToggle<CR>
" Alt 切换到下(+)/上(-)一个标签
nnoremap <M-+> :bp<CR>
nnoremap <M--> :bn<CR>
" Nerdtree quick key
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" 插入模式补全括号
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i

"===
"=== Plugin
"===
call plug#begin('~/.config/nvim/plugged')
" Tab 键补全功能插件
Plug 'ervandew/supertab'
" Coc 智能补全插件引擎
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Airline 标签栏插件
Plug 'Vim-airline/vim-airline'
" Airline 标签栏插件的主题插件
Plug 'Vim-airline/vim-airline-themes'
" Ranger 文件浏览器
Plug 'kevinhwang91/rnvimr'
" Vim 主题插件
Plug 'connorholyday/vim-snazzy'
" Markdown 预览插件
Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install'}
" Vim 文件树插件
Plug 'scrooloose/nerdtree'
call plug#end()

"===
"=== Plugin Setting
"===
" Airline
let g:airline#extensions#tabline#enable = 1
" Ranger 文件浏览器插件配置
let g:rnvimr_ex_enable = 11
" Vim-snazzy 主题插件
let g:SnazzyTransparent = 1
" Markdown-preview 指定浏览器路径
let g:mkdp_path_to_chrome = 'open -a /Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome'
" Markdown-preview 指定预览主题默认为github
let g:mkdp_markdown_css = ''
" Nerdtree 
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
