
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
"nnoremap j gj
"nnoremap k gk

" Force saving files that require root permission
"cmap w!! %!sudo tee > /dev/null %

" The smash escape
inoremap jk <Esc>
inoremap  ่า <Esc>
inoremap fd <Esc>
inoremap ดก <Esc>

" Spacemacs key bindings
nnoremap <leader>wd <c-w>c
nnoremap <leader>ft :NERDTreeTabsToggle<cr>
nnoremap <leader>fr :CtrlPMRUFiles<cr>

" Open new split windows to the right/bottom instead of left/top
set splitright splitbelow

" Allow working with Unicode characters
scriptencoding utf-8
"set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 
set listchars=trail:·,precedes:«,extends:»,tab:→\ 
set list

" Inserting blank lines without going into insert mode
nnoremap <S-CR> O<Esc>S<Esc>j
nnoremap <C-CR> o<Esc>S<Esc>k

" Python PEP8 style guide
au BufNewFile,BufRead *.py
  \ setlocal tabstop=4 |
  \ setlocal softtabstop=4 |
  \ setlocal shiftwidth=4 |
  \ setlocal textwidth=79 |
  \ setlocal expandtab |
  \ setlocal autoindent |
  \ setlocal fileformat=unix

" Web dev style
" au BufNewFile,BufRead *.js, *.html, *.css
"   \ set tabstop=2 |
"   \ set softtabstop=2 |
"   \ set shiftwidth=2

" Enable folding
set foldmethod=indent
set foldlevelstart=99 "start by not closing any folds

" This rewires n and N to do the highlighing...
"nnoremap <silent> n   n:call HLNext(0.05)<cr>
"nnoremap <silent> N   N:call HLNext(0.05)<cr>

" just highlight the match in red...
function! HLNext (blinktime)
  highlight WhiteOnRed ctermfg=white ctermbg=red guifg=white guibg=red
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#\%('.@/.'\)'
  let ring = matchadd('WhiteOnRed', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction

if has('gui_running')
  set cursorline
endif
nnoremap Q <esc>:echo "'Q' is for useless Ex mode.
      \ < < ===== CHECK CAPS LOCK ===== > > "<cr>

" g GG <c-d> <c-u> will stay in the same column
" nice for doing visual block motions
set nostartofline

" Disable automatically insert the current comment leader after hitting
" 'o' or " 'O' in Normal mode. Or after hitting <Enter> in Insert mode.
autocmd FileType * setlocal formatoptions-=ro

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
" Revert with: ":delcommand DiffOrig".
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
        \ | wincmd p | diffthis
endif

set tags-=./tags
set tags+=./doc/tags,doc/tags,./tags;

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""" Thoughtbot .vimrc """""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showcmd
set nowritebackup
set autowrite

set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

set nojoinspaces

set textwidth=80
"highlight ColorColumn ctermbg='magenta' guibg='magenta'
set colorcolumn=+1
"autocmd BufWinEnter * call matchadd('ColorColumn', '\%81v', 100)

set number
set numberwidth=5
" relativenumber confuses other people watching our screen, nice argument!
"set relativenumber
"autocmd InsertEnter * :set number norelativenumber
"autocmd InsertLeave * :set number relativenumber
"autocmd FocusLost * :set norelativenumber
"autocmd FocusGained * :set relativenumber
"nnoremap <c-l> :set relativenumber!<cr><c-l>

" Tab completion
" will insert tab if the preceding character is a space or a tab
" otherwise, do autocomplete <c-n>
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  if pumvisible()
    return "\<c-n>"
  endif
  let col = col('.') - 1
  if !col || getline('.')[col - 1] =~# '\s'
    return "\<tab>"
  else
    return "\<c-n>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-p>

"nnoremap <leader><leader> <c-^>

" Get off my lawn
"nnoremap <Left> :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up> :echoe "Use k"<CR>
"nnoremap <Down> :echoe "Use j"<CR>
noremap <Left> {
noremap <Right> }
noremap <Up> 5<c-y>
noremap <Down> 5<c-e>

" Run commands on the shell
"nnoremap <Leader>r q:i!

" Always use vertical diffs
set diffopt+=vertical

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" change/rename current word and is repeatable using dot (.)
nmap <leader>r *``cgn

" vim-indent-lines
nnoremap <leader>ilt :IndentLinesToggle<cr>

" allow copying in visual mode via ctrl-c
vnoremap <c-c> "*y
" allow pasting via ctrl-v
inoremap <c-v> <c-r><c-o>*
cnoremap <c-v> <c-r>*

" copy this buffer into a new temporary tab
function! PasteUnnamedRegInNewTab()
  let ft = &filetype
  tabnew
  execute "set filetype=" . ft
  norm ""P
endfunction
nnoremap <leader>co gg""yG``zz:call PasteUnnamedRegInNewTab()<cr>
vnoremap <leader>co ""y:call PasteUnnamedRegInNewTab()<cr>

" CtrlP extensions
" if there are timeout delays, you can use backspace to invoke immediate response
" e.g. <c-p>b<bs> to invoke :CtrlPBuffer instantly
nnoremap <silent> <c-p>p :CtrlPMixed<cr>
nnoremap <silent> <c-p>l :CtrlPLine %<cr>
nnoremap <silent> <c-p>f :CtrlPMRUFiles<cr>
nnoremap <silent> <c-p>t :CtrlPTag<cr>
nnoremap <silent> <c-p>b :CtrlPBuffer<cr>
nnoremap <silent> <c-p>bt :CtrlPBufTag<cr>
nnoremap <silent> <c-p>bta :CtrlPBufTagAll<cr>
nnoremap <silent> <c-p>q :CtrlPQuickfix<cr>
nnoremap <silent> <c-p>bd :CtrlPBookmarkDir<cr>
nnoremap <silent> <c-p>bda :CtrlPBookmarkDirAdd<cr>
nnoremap <silent> <c-p>c :CtrlPChange<cr>
nnoremap <silent> <c-p>cs :CtrlPChangeAll<cr>
nnoremap <silent> <c-p>d :CtrlPDir<cr>

" vim-surround with 3 backticks for code (only works for whole line)
" TODO: Make this works on part of a line too
vnoremap S3` <esc>`<O<esc>S```<esc>`>o<esc>S```<esc>k$

" vim-surround with 3 quotes for python block comment (only works for whole line)
" TODO: Make this works on part of a line too
vnoremap S3" <esc>`<O<esc>S"""<esc>`>o<esc>S"""<esc>k$

" allow Ctrl-Backspace to delete preceding big WORD
" FIXME: Does not work properly if there are only one character preceding
inoremap <c-bs> <esc>dBxa

" vim-argwrap (https://github.com/FooSoft/vim-argwrap)
" A nice mnemonic is 'go arg-wrap'
nnoremap <silent> gaw :ArgWrap<cr>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
inoremap <C-U> <C-G>u<C-U>

" mapping <tab> todo something useful (like increasing window size)
" you can use <c-w>= to make all windows equally high and wide
nnoremap <tab> <c-w>>
nnoremap <s-tab> <c-w>+

" generating ctags file named "tags" so that you can use <c-[> and <c-t>
" for moving through tags stack
nnoremap <leader>ct :!ctags -R .

" Open the directory for the current file in Windows
" (http://vim.wikia.com/wiki/Open_the_directory_for_the_current_file_in_Windows)
" oie mnemonic is "open in explorer"
map <leader>oie :!start explorer %:p:h:gs?\/?\\\\\\?<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" stolen from mswin.vim """""""""""""""""""""""

" backspace in Visual mode deletes selection
vnoremap <BS> d

" Alt-Space is System menu
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif
