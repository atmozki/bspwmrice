:set number
:set relativenumber
:set mouse=a


call plug#begin('~/.config/nvim/plugged')

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' } "NerdTree - File Explorer
Plug 'vim-airline/vim-airline', " Bottom Status bar
Plug 'junegunn/fzf.vim' " Fuzzy Search 

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

