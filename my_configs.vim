
" off99555's '.vimrc' configurations
" Extended to the Ultimate .vimrc

let g:airline_theme='base16_solarized'
let g:airline#extensions#tabline#enabled = 1
" Always show Airline bar even if there is only one window
set laststatus=2

Plugin 'altercation/vim-colors-solarized'
syntax enable

Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
" Open NERDTree on startup if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close Vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Change default arrows UI
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

Plugin 'terryma/vim-smooth-scroll'
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 3)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 3)<CR>

Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
"Plugin 'valloric/youcompleteme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
colorscheme solarized " Requires vim-colors-solarized plugin
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file settings
set background=dark
set number
set hlsearch
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
syntax on
set incsearch
" allow backspacing over autoindent, line breaks, and the start of the insert
set backspace=indent,eol,start
if has('gui_running')
    set guifont=consolas:h11
    set lines=50 columns=120
    " Maximize the Vim window under Windows OS
    au GUIEnter * simalt ~x 
endif

" Stay in visual mode after indentation
vnoremap < <gv
vnoremap > >gv

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

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
set encoding=utf-8
"set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 

