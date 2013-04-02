filetype off
call pathogen#runtime_append_all_bundles() 
au BufNewFile,BufRead *.less set filetype=less
map <C-t> :NERDTreeToggle<CR>
syntax on
filetype plugin indent on
set nu
set showmatch
set ai
set et
set sw=2
set sts=2
set ts=8
set hls


"pydiction 1.2 python auto complete
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20 
