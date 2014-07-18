" 不要用空格代替制表符  
set noexpandtab  
  
" 在行和段开始处使用制表符  
set smarttab  
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set backspace=2
cs add /user/include/cscope.out
set tags += =/usr/include/tags
syntax on
"禁止生成临时文件  
set nobackup  
set noswapfile  
"搜索逐字符高亮  
set hlsearch  
set incsearch  
"编码设置  
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置  
set langmenu=zh_CN.UTF-8  
set helplang=cn
" 我的状态行显示的内容（包括文件类型和解码）  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}  
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%] 
" 总是显示状态行  
set laststatus=2  
" 在编辑过程中，在右下角显示光标位置的状态行  
set ruler   
" 命令行（在状态行下）的高度，默认为1，这里是2  
set cmdheight=2 
" 侦测文件类型  
filetype on  
  
" 载入文件类型插件  
filetype plugin on  
  
" 为特定文件类型载入相关缩进文件  
filetype indent on  
  
" 保存全局变量  
set viminfo+=!  
  
" 带有如下符号的单词不要被换行分割  
set iskeyword+=_,$,@,%,#,-  
" 字符间插入的像素行数目  
set linespace=0  
  
" 增强模式中的命令行自动完成操作  
set wildmenu  
  
" 使回格键（backspace）正常处理indent, eol, start等  
set backspace=2  
  
" 允许backspace和光标键跨越行边界  
set whichwrap+=<,>,h,l  
  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
  
" 通过使用: commands命令，告诉我们文件的哪一行被改变过  
set report=0  
  
" 启动的时候不显示那个援助索马里儿童的提示  
set shortmess=atI  
  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
" 高亮显示匹配的括号  
set showmatch  
  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=5  
  
" 光标移动到buffer的顶部和底部时保持3行距离  
set scrolloff=3  

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
set completeopt=menuone,menu,longest,preview
" 自动关闭补全窗口
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
highlight Pmenu    guibg=darkgrey  guifg=black 
highlight PmenuSel guibg=lightgrey guifg=black
" OmniCppComplete end
"neocomplet set
let g:neocomplcache_enable_at_startup = 1 
