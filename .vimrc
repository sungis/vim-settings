filetype off
call pathogen#runtime_append_all_bundles() 
au BufNewFile,BufRead *.less set filetype=less
syntax on
filetype plugin indent on
set nu
set showmatch
set ai
set et
set sw=4
set sts=4
set ts=4
set hls
set expandtab
"乱码问题大解决
set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
  set fileencoding=chinese
else
  set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"解决consle输出乱码
language messages zh_CN.utf-8

"设置一行的最大长度
"set textwidth=80
" 历史记录数
set history=1000
"set mouse=a

"状态行显示的内容
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   
set laststatus=2

syntax enable
set background=dark
"colorscheme koehler
colorscheme fisa

" 当鼠标滚动的时候，鼠标一直在倒数第三行的位置 
set scrolloff=3 

"pydiction 1.2 python auto complete
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20 

map <F10> :CtrlPLine<CR>
" CtrlP (new fuzzy finder)                                                         
"let g:ctrlp_map = ',e'                                                             
"nmap ,g :CtrlPBufTag<CR>                                                           
"nmap ,G :CtrlPBufTagAll<CR>                                                        
"nmap ,f :CtrlPLine<CR>                                                             
"nmap ,m :CtrlPMRUFiles<CR>                                                         
"nmap ,c :CtrlPCmdPalette<CR>                                                       
"" to be able to call CtrlP with default search text                                
"function! CtrlPWithSearchText(search_text, ctrlp_command_end)                      
"    execute ':CtrlP' . a:ctrlp_command_end                                         
"    call feedkeys(a:search_text)                                                   
"endfunction                                                                        
"" CtrlP with default text                                                          
"nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>                
"nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>             
"nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>                  
"nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>                      
"nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>                      
"nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>              
"nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>            
"" Don't change working directory                                                   
"let g:ctrlp_working_path_mode = 0                                                  
"" Ignore files on fuzzy finder                                                     
"let g:ctrlp_custom_ignore = {                                                      
"  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',                                           
"  \ 'file': '\.pyc$\|\.pyo$',                                                      
"  \ }  


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Sort_Type = "name"    " 按照名称排序  
"let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
"let Tlist_Compart_Format = 1    " 压缩方式  
"let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
"let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
"let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
"autocmd FileType java set tags+=D:\tools\java\tags  
"autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags  
"set tags=tags  
"set autochdir 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"其他东东
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"默认打开Taglist 
"let Tlist_Auto_Open=1 
"""""""""""""""""""""""""""""" 
" Tag list (ctags) 
"""""""""""""""""""""""""""""""" 
"let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
"let Tlist_Show_One_File = 1 "不同时显示多个文件的tag，只显示当前文件的 
"let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim 
"let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
"Taglist 显示开关
"nmap <F2> :TlistToggle<CR>
" minibufexpl插件的一般设置
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1     

":map <C-P> :exe "Cp " . expand("<cword>") <CR>

"把80个字符后的字都高这显示出来
set cc=80
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929 
"match OverLength /\%81v.\+/


"自动增加头部注释
let g:vimrc_author='Sungis' 
let g:vimrc_email='mr.sungis@gmail.com' 
let g:vimrc_homepage='http://sungis.github.com'

map <C-l> :tabn<cr>             "下一个tab
map <C-h> :tabp<cr>             "上一个tab
map <C-n> :tabnew<cr>           "新tab
map <C-k> :bn<cr>               "下一个文件
map <C-j> :bp<cr>               "上一个文件

"开启文件夹列表
map <C-t> :NERDTreeToggle<CR>


"<F1> vim 帮助
"let g:snips_trigger_key='<F2>'
let g:tagbar_autofocus = 1
map <F2> :TagbarToggle<CR>
"在当前文件夹下查找选中的文字
nnoremap <silent> <F3> :Grep<CR>
"添加文档头信息
nmap <F4> :AuthorInfoDetect<cr>
"<F5> pep8格式检测
"启动pdb调试
nnoremap <silent> <F6> :Pyclewn pdb % <CR>
"打印pdb快捷键列表
nnoremap <silent> <F7> :Cmapkeys <CR>
"查看光标所在位置 变量名 对应的值
nnoremap <silent> <F8> :exe "Cp " . expand("<cword>")<CR>
"在vim里开启bash
nnoremap <silent> <F12> :ConqueTerm bash <CR>
