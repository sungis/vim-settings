My VIM setup
===========

To install
----------

```
cd ~
git clone https://github.com/sungis/vim-settings.git .vim
ln -s .vim/.vimrc
```

Finished :D

To use Pydiction 

Usage
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


Have fun!
