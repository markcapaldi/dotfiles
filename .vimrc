runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
 
syntax enable
set background=dark
colorscheme solarized

" https://github.com/garybernhardt/dotfiles
" Map ,e and ,v to open files in the same directory as the current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%
 
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !del ' . old_name
        redraw!
    endif
endfunction
 
map <leader>n :call RenameFile()<cr>
 
" http://www.viemu.com/blog/2009/06/16/a-vim-and-viemu-mapping-you-really-cant-miss-never-type-noh-again/
:nnoremap <esc> :noh<return><esc>
 
" Weird backspace fix http://linux-journal.blogspot.co.uk/2005/04/fix-vim-backspace-doesnt-work.html
set backspace=2
 
" Use Windows clipboard
set clipboard=unnamed
 
" Syntax highlighting
autocmd BufNewFile,BufRead *.vb set ft=vbnet
autocmd BufNewFile,BufRead *.prc set ft=sql
autocmd BufNewFile,BufRead *.viw set ft=sql
autocmd BufNewFile,BufRead *.build set ft=xml
autocmd BufNewFile,BufRead *.config set ft=xml
 
" Set search highlighting on
set hlsearch
 
" Start maximized in Windows
au GUIEnter * simalt ~x
 
syntax on
set nocompatible
filetype on
filetype indent on
filetype plugin on
 
" General options
set incsearch
set ignorecase smartcase
set nowrap
 
" Use four space tabs
set tabstop=4
set shiftwidth=4
set expandtab
 
" Setup 80 column word wrap
set linebreak
set textwidth=80
 
" No menus and no toolbar
set guioptions-=m
set guioptions-=T
 
" Switch line numbering on
set nu
 
if has("win32")
    " Consolas 15 point, ansi character set
    set guifont=Consolas:h12:cANSI
elseif has("mac")
    " Menlo 15 point, ansi character set
    set guifont=Menlo\ Regular:h12
endif

 
" Disable the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

