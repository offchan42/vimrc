
" off99555's '.vimrc' configurations
" Extended to the Ultimate .vimrc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file settings
set number
" Maximize the Vim window under Windows OS
if has('gui_running') && (has("win16") || has("win32"))
    au GUIEnter * simalt ~x 
endif

" Stay in visual mode after indentation
vnoremap < <gv
vnoremap > >gv

" Make big Y behaves like other command
map Y y$

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" The smash escape
inoremap jk <Esc>
"inoremap kj <Esc>

" Open new split windows to the right/bottom instead of left/top
set splitright splitbelow

" Allow working with Unicode characters
scriptencoding utf-8
"set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 

""""""""""" Thoughtbot .vimrc """""""""""
set showcmd
set nowritebackup
set autowrite

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set nojoinspaces

set textwidth=80
set colorcolumn=+1

set number
set numberwidth=5
set relativenumber
autocmd InsertEnter * :set number norelativenumber
autocmd InsertLeave * :set number relativenumber
autocmd FocusLost * :set norelativenumber
autocmd FocusGained * :set relativenumber

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Run commands on the shell
nnoremap <Leader>r :!

" Always use vertical diffs
set diffopt+=vertical

" auto-pairs plugin
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" change font size quickly
if has("gui_running")
  nnoremap <C-Up> :silent! let &guifont = substitute(
  \ &guifont,
  \ ':h\zs\d\+',
  \ '\=eval(submatch(0)+1)',
  \ 'g')<CR>
  nnoremap <C-Down> :silent! let &guifont = substitute(
  \ &guifont,
  \ ':h\zs\d\+',
  \ '\=eval(submatch(0)-1)',
  \ 'g')<CR>
endif
