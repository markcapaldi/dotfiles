" https://github.com/garybernhardt/dotfiles
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
au GUIEnter * simalt ~x
 
" Use CUA keystrokes for clipboard: CTRL-X, CTRL-C, CTRL-V and CTRL-z
source $VIMRUNTIME/mswin.vim
 
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
 
function RubyEndToken ()
  let current_line = getline( '.' )
  let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
  let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
  let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
 
  if match(current_line, braces_at_end) >= 0
    return "\<CR>}\<C-O>O"
  elseif match(current_line, stuff_without_do) >= 0
    return "\<CR>end\<C-O>O"
  elseif match(current_line, with_do) >= 0
    return "\<CR>end\<C-O>O"
  else
    return "\<CR>"
  endif
endfunction
 
function UseRubyIndent ()
  setlocal tabstop=8
  setlocal softtabstop=2
  setlocal shiftwidth=2
  setlocal expandtab
 
  imap <buffer> <CR> <C-R>=RubyEndToken()<CR>
endfunction
 
autocmd FileType ruby,eruby call UseRubyIndent()
 
map ,# :s/^/#/<CR>
map <M-]> :tabnext<CR>
map <M-[> :tabprevious<CR>
map <M-t> :tabnew<CR>
imap <M-]> :tabnext<CR>
imap <M-[> :tabprevious<CR>
imap <M-t> :tabnew<CR>
