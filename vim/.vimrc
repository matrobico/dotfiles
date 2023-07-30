"Preference mappings
set relativenumber
set linebreak
set showmode
set number
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
"hi CursorLine ctermbg=60 ctermfg=424450
"syntax on
inoremap jk <Esc>
packloadall
set backspace=indent,eol,start

"Easy window switching
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

" Different cursor types between insert and normal mode
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
" reset the cursor on start (for older versions of vim, usually not required)
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END

"For enabling night-owl theme
set termguicolors
syntax enable
colorscheme night-owl
" To enable the lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }

"For vim-go to work properly
"filetype plugin indent on
set autoindent

"NERDTree Mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-k> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Jump to last position when reopening file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
