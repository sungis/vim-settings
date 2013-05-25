My VIM setup
===========

To install
----------

```
cd ~
git clone https://github.com/sungis/vim-settings.git .vim
ln -s .vim/.vimrc

Install
=====
sudo apt-get install ctags


cd ~/.vim/install/pyclewn-1.10.py2
sudo python setup.py install

Finished :D

ConqueTerm
=====
http://www.vim.org/scripts/script.php?script_id=2771

        在vim(gvim)中运行终端

       下载conque_1.1.vba，用vim打开后，执行:so %，会自动执行安装.

    五.使用方法

        一共四个命令：

        ConqueTerm        : 在当前的窗口打开

        ConqueTermSplit    :横向分割一个窗口之后打开

        ConqueTermVSplit :竖向分割一个窗口之后打开

        ConqueTermTab    :先建一个tab页之后打开

        在想要退出某个窗口操作时，按一下ESC，之后就会回到vim操作中。

        另外，在bash中，按下i，会自动到达终端最后的光标处，的确很贴心的设计。

Pyclewn
=====
    :help Pyclewn
    :Pyclewn pdb [script.py] ==><F5>
    :Cmapkeys                ==><F6>
    :map <C-P> :exe "Cp " . expand("<cword>") <CR>
    :<C-p>                   ==><F7>

The error is
(Pdb) p
*** SyntaxError: unexpected EOF while parsing

The C-P mapping uses the Vim balloon evaluation feature and this
feature does not seem to work in console mode.

You can get the same result (except it is based on the cursor
position, and not on the mouse position) by mapping C-P this way:

    :map <C-P> :exe "Cp " . expand("<cword>") <CR>

conque
=====
Usage
Type :ConqueTerm <command> to run your command in vim, for example:

    :ConqueTerm bash
    :ConqueTermSplit mysql -h localhost -u joe -p sock_collection
    :ConqueTermTab Powershell.exe
    :ConqueTermVSplit C:\Python27\python.exe


To use Pydiction Usage
=====
Type part of a Python keyword, module name, attribute or method in "insert mode" in Vim, then hit the TAB key and it will auto-complete.

For example, typing:

    raw<Tab>

    will bring up a menu of possibilities, such as:

        raw_input(
            raw_unicode_escape_decode(
                raw_unicode_escape_encode(

pydiction.py
============
Note: You can skip this section if you don't plan to add more modules to complete-dict yourself.  Check if complete-dict already has the modules you intend to use.

This is the Python script used to create the "complete-dict" Vim dictionary file.  I have created and bundled a default complete-dict for your use. I created it using Ubuntu 9.04 Linux, so there won't be any real win32 specific support in it. You're free to run pydiction.py to add, or upgrade, as modules as you want.  The dictionary file will still work if you're using windows, but it won't complete win32 related modules unless you tell it to.      

Usage: In a command prompt, run:

    $ python pydiction.py module ... [-v]


To use NERDTree
---------------
    Press <C-t>

To use snipmate
---------------
    <F2> after typing the snippet

To use supertab
---------------
    shift-<tab> to auto complete

To use Grep
---------------
    :Grep按照指定的规则在指定的文件中查找
    :Rgrep同上, 但是是递归的grep
    :GrepBuffer在所有打开的缓冲区中查找
    :Bgrep同上
    :GrepArgs在vim的argument filenames (:args)中查找
    :Fgrep运行fgrep
    :Rfgrep运行递归的fgrep
    :Egrep运行egrep
    :Regrep运行递归的egrep
    :Agrep运行agrep
    :Ragrep运行递归的agrep

    nnoremap <silent> <F3> :Grep<CR>

    将光标移到"FEAT_QUICKFIX"上, 然后按下F3键
    在最下面的命令行会显示:
    Search for pattern: FEAT_QUICKFIX 此时你还可以编辑该行, grep支持正则表达式, 你想全词匹配的话可以改成:
    Search for pattern: /<FEAT_QUICKFIX/> 然后按下回车:
    在最下面的命令行会显示:
    Search in files: * 是问你搜索范围, 默认是该目录下的所有文件, 此时你还可以编辑该行, 比如你只想搜索源码文件:
    Search in files: *.c *.h 然后在按下回车, 会在弹出的QuickFix窗口中列出所有符合条件的搜索结果, 你可以在其中查找你想要的结果

To use shell
----------------
    从 Vim 内部执行单个 shell 命令，用 ":!{command}"。
    Vim 将执行该程序。当它结束时，你会得到提示，让你击打 <Enter>。这提示允许你 在回去编辑你的文本之前看一看该命令的输出。
    字符 "!" 也用在其它有个程序被调用运行的场合。让我们看一看共有哪些:
    :!{program}             执行 {program}
    :r !{program}           执行 {program} 并读取其输出
    :w !{program}           执行 {program} 传送文本至其输入
    :[range]!{program}      经由 {program} 过滤文本
    % 代表当前文件名
    例子
    :!python %

Have fun!
