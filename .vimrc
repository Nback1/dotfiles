set smartindent                    "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用   

set tabstop=4                        "设置tab键为4个空格，

set shiftwidth =4                   "设置当行之间交错时使用4个空格     

set ai!                                      " 设置自动缩进 

set mouse=a                 "启用鼠标

"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile

set showmatch 

set cursorcolumn    


let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1               "不同时显示多个文件的tag，只显示当前文件的
let Tlist_File_Fold_Auto_Close=1
let Tlist_WinWidt =28                   "设置taglist的宽度
let Tlist_Exit_OnlyWindow=1             "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Left_Windo =1 

"按F1一键编译并运行i
map <F1> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec '!clear'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc
"zhntie
"语法高亮
syntax on
"显示行号
set number
"显示光标所在位置的行号和列号
set ruler
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent
set backspace=2
"设置取消备份 禁止临时文件生成
set nobackup
set noswapfile
"设置匹配模式 类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
set fdm=marker



"inoremap <C-j> <ESC>
inoremap jk <ESC>



" vim-powerline 状态栏美化 
"---------------------------------------
"let g:Powerline_symbols = 'fancy'
"set laststatus=2
"------------
"---------------------------
""c++的头文件
map <F2> :call SetTitle()<CR>
func SetTitle()
let l = 0
let l = l + 1 | call setline(l,'//-------------------------------------------------')
let l = l + 1 | call setline(l,'//Created by Nback')
let l = l + 1 | call setline(l,'//Created Time :'.strftime('%c'))
let l = l + 1 | call setline(l,'//File Name :'.expand('%'))
let l = l + 1 | call setline(l,'//-------------------------------------------------')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'#include <stdio.h>')
let l = l + 1 | call setline(l,'#include <string.h>')
let l = l + 1 | call setline(l,'#include <iostream>')
let l = l + 1 | call setline(l,'#include <algorithm>')
let l = l + 1 | call setline(l,'#include <vector>')
let l = l + 1 | call setline(l,'#include <queue>')
let l = l + 1 | call setline(l,'#include <set>')
let l = l + 1 | call setline(l,'#include <map>')
let l = l + 1 | call setline(l,'#include <list>')
let l = l + 1 | call setline(l,'#include <map>')
let l = l + 1 | call setline(l,'#include <string>')
let l = l + 1 | call setline(l,'#include <math.h>')
let l = l + 1 | call setline(l,'#include <stdlib.h>')
let l = l + 1 | call setline(l,'#include <time.h>')
let l = l + 1 | call setline(l,'using namespace std;')
let l = l + 1 | call setline(l,'typedef double db;')
let l = l + 1 | call setline(l,'typedef long long ll;')
let l = l + 1 | call setline(l,'const int INF = 0x3f3f3f3f;')
let l = l + 1 | call setline(l,'')
let l = l + 1 | call setline(l,'int main()')
let l = l + 1 | call setline(l,'{')
let l = l + 1 | call setline(l,'#ifdef ONLINE_JUDGE')
let l = l + 1 | call setline(l,'#else')
let l = l + 1 | call setline(l,'    freopen("in.txt","r",stdin);')
let l = l + 1 | call setline(l,'    //freopen("out.txt","w",stdout);')
let l = l + 1 | call setline(l,'    int startTime = clock();')
let l = l + 1 | call setline(l,'#endif')
let l = l + 1 | call setline(l,' ')
let l = l + 1 | call setline(l,' ')
let l = l + 1 | call setline(l,'#ifdef ONLINE_JUDGE')
let l = l + 1 | call setline(l,'#else')
let l = l + 1 | call setline(l,'    printf("Time = %dms \n",(int)(clock() - startTime));');
let l = l + 1 | call setline(l,'#endif')
let l = l + 1 | call setline(l,'     return 0;')
let l = l + 1 | call setline(l,'}')
endfunc


