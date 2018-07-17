echo "
\" ====================================================
\" 4.代码分析 
\" ====================================================
\" 开启语法高亮功能
syntax enable
\" 允许用指定语法高亮配色方案替换默认方案
syntax on

\" -------------代码缩进-------------------
\" 自适应不同语言的智能缩进
filetype indent on
\" 将制表符扩展为空格
set expandtab
\" 设置编辑时制表符占用空格数
set tabstop=4
\" 设置格式化时制表符占用空格数
set shiftwidth=4
\" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4


\" -------------代码缩进可视化-------------------
\" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
\" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
\" 色块宽度
let g:indent_guides_guide_size=1
\" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle


\" -------------代码折叠-------------------
\" 基于缩进或语法进行代码折叠
set foldmethod=syntax
\" 启动 vim 时关闭折叠代码
set nofoldenable


\" -------------接口与实现快速切换----------
\" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>

\" --------------代码收藏--------------------
let g:SignatureMap = {
        \ 'Leader'             : \"m\",
        \ 'PlaceNextMark'      : \"m,\",
        \ 'ToggleMarkAtLine'   : \"m.\",
        \ 'PurgeMarksAtLine'   : \"m-\",
	\ 'DeleteMark'         : \"dm\",
	\ 'PurgeMarks'         : \"mda\",
        \ 'PurgeMarkers'       : \"m<BS>\",
        \ 'GotoPrevSpotAlpha'  : \"\`[\",
        \ 'GotoNextLineAlpha'  : \"\']\",
        \ 'GotoPrevLineAlpha'  : \"\'[\",
        \ 'GotoNextSpotAlpha'  : \"\`]\",
        \ 'GotoNextLineByPos'  : \"]'\",
        \ 'GotoPrevLineByPos'  : \"['\",
        \ 'GotoNextSpotByPos'  : \"mn\",
        \ 'GotoPrevSpotByPos'  : \"mp\",
        \ 'GotoNextMarker'     : \"[+\",
        \ 'GotoPrevMarker'     : \"[-\",
        \ 'GotoNextMarkerAny'  : \"]=\",
        \ 'GotoPrevMarkerAny'  : \"[=\",
        \ 'ListLocalMarks'     : \"ms\",
        \ 'ListLocalMarkers'   : \"m?\"
        \ }


" >>  ~/.vimrc
