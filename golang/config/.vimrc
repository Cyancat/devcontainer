syntax on

" Set options
set autochdir " 自动设置目录为正在编辑的文件所在的目录
set showcmd " 显示当前操作指令
set autoindent shiftwidth=2
set backspace=indent,eol,start
set cindent shiftwidth=2
set completeopt=menuone,longest,preview
set expandtab " 将 tab 键转换为空格
set formatoptions=tcqro " 使得注释换行时自动加上前导的空格和星号
set fdm=marker
set ignorecase smartcase " 搜索时忽略大小写，但如有一个以上大写则保持大小写敏感
set nu
set ru
set scrolloff=5 " 设定光标离窗口上下边界 5 行时窗口自动滚动
set softtabstop=2 " （不足 4 个时删掉所有剩下的空格）
set tabstop=2 " 设定tab长度为2
set wildmenu
set nobackup
set mouse-=a " 屏蔽鼠标
set novb " 关闭屏闪提示

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1