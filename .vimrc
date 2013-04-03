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

syntax enable
set background=dark
colorscheme solarized

"pydiction 1.2 python auto complete
let g:pydiction_location = '~/.vim/after/ftplugin/pydiction/complete-dict'
let g:pydiction_menu_height = 20 

let g:snips_trigger_key='<F2>'

nnoremap <silent> <F3> :Grep<CR>
