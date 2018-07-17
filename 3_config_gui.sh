echo "
\" ====================================================
\" 3.美化vim-gui
\" ====================================================
\" 配色方案
set background=dark
\"colorscheme solarized
\"colorscheme molokai
colorscheme phd

\" 禁止光标闪烁
set gcr=a:block-blinkon0
\" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
\" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

\" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	call system(\"wmctrl -ir \" . v:windowid . \" -b toggle,fullscreen\")
endf
\" 全屏开/关快捷键
map <silent> <F11> :call ToggleFullscreen()<CR>
\" 启动 vim 时自动全屏
autocmd VimEnter * call ToggleFullscreen()


\" 总是显示状态栏
set laststatus=2
\" 显示光标当前位置
set ruler
\" 开启行号显示
set number
\" 高亮显示当前行/列
set cursorline
set cursorcolumn
\" 高亮显示搜索结果
set hlsearch



\" 设置 gvim 显示字体
set guifont=YaHei\\ Consolas\\ Hybrid\\ 11.5

\" 禁止折行
set nowrap

\" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" >> ~/.vimrc
