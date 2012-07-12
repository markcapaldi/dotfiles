runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

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
 
" Use the Windows clipboard
set clipboard=unnamed
 
" Highlight VB .NET syntax
" http://www.vim.org/scripts/script.php?script_id=1525
autocmd BufNewFile,BufRead *.vb set ft=vbnet
 
" Set search highlighting on
set hlsearch
 
" John Lam's .vimrc file
 
" Start maximized
"au GUIEnter * simalt ~x
"
"http://vim.wikia.com/wiki/Maximize_or_set_initial_window_size
set lines=999 columns=999
 
syntax on
set nocompatible
filetype on
filetype indent on
filetype plugin on
 
" General options
set incsearch
set ignorecase smartcase
set nowrap
 
" Use two space tabs
set tabstop=2
set shiftwidth=2
set noexpandtab
 
" Setup 80 column word wrap
set linebreak
set textwidth=80
 
" No menus and no toolbar
set guioptions-=m 
set guioptions-=T
 
" Switch line numbering on
set nu
 
" Consolas 15 point, ansi character set
set guifont=Consolas:h12:cANSI
 
highlight Normal guifg=White   guibg=Black
highlight Cursor guifg=Black   guibg=Yellow
highlight Keyword guifg=#FF6600
highlight Define guifg=#FF6600
highlight Comment guifg=#9933CC
highlight Type guifg=White gui=NONE
highlight rubySymbol guifg=#339999 gui=NONE
highlight Identifier guifg=White gui=NONE
highlight rubyStringDelimiter guifg=#66FF00
highlight rubyInterpolation guifg=White
highlight rubyPseudoVariable guifg=#339999
highlight Constant guifg=#FFEE98
highlight Function guifg=#FFCC00 gui=NONE
highlight Include guifg=#FFCC00 gui=NONE
highlight Statement guifg=#FF6600 gui=NONE
highlight String guifg=#66FF00
highlight Search guibg=White
 
map ,# :s/^/#/<CR>
map <M-]> :tabnext<CR>
map <M-[> :tabprevious<CR>
map <M-t> :tabnew<CR>
imap <M-]> :tabnext<CR>
imap <M-[> :tabprevious<CR>
imap <M-t> :tabnew<CR>

" Disable the arrow keys
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
