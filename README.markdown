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
    <tab> after typing the snippet

To use supertab
---------------
    shift-<tab> to auto complete

Have fun!
