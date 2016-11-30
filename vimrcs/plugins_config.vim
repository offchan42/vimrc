"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/off99555/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vim_runtime/sources_forked/{}')
call pathogen#infect('~/.vim_runtime/sources_non_forked/{}')
call pathogen#helptags()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorerHorizontalSplit<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
let MRU_Window_Height = 16
let MRU_Open_File_Use_Tabs = 1
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
" call yankstack#setup()
" nmap <c-p> <Plug>yankstack_substitute_older_paste
" nmap <c-P> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => CTRL-P (https://github.com/ctrlpvim/ctrlp.vim)
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'

let g:ctrlp_map = '<c-p>'
"map <leader>j :CtrlPMixed<cr>
"map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <esc>a<c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
" Show hidden files on start (Press I to toggle)
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
" Need only single click to open/close folder
let g:NERDTreeMouseMode=2
" map <leader>nn :NERDTreeToggle<cr>
" map <leader>nb :NERDTreeFromBookmark
" map <leader>nf :NERDTreeFind<cr>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree Tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:nerdtree_tabs_open_on_gui_startup=0
map <leader>nt :NERDTreeTabsToggle<cr>
map <leader>nf :NERDTreeTabsFind<cr>
map <leader>nn :NERDTreeFocusToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-n>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make alias for commit command like in my git bash
command Gci Gcommit

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:lightline = {
"       \ 'colorscheme': 'solarized',
"       \ }

let readonlySymbol = has('gui_running') ? "🔒" : "READ_ONLY"
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \ },
      \ 'component': {
      \   'readonly': '%{(&filetype=="help")?"":((&readonly)?(readonlySymbol):"")}',
      \   'modified': '%{(&filetype=="help")?"":((&modified)?"+":((&modifiable)?"":"-"))}',
      \   'fugitive': '%{exists("*fugitive#head")?(fugitive#head()):""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '((&filetype)!="help"&&(&readonly))',
      \   'modified': '((&filetype)!="help"&&((&modified)||!(&modifiable)))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=(fugitive#head()))'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']
let g:javascript_plugin_jsdoc = 1
" let g:javascript_conceal_function       = "ƒ"
" let g:javascript_conceal_null           = "ø"
" let g:javascript_conceal_this           = "@"
" let g:javascript_conceal_return         = "⇚"
" let g:javascript_conceal_undefined      = "¿"
" let g:javascript_conceal_NaN            = "ℕ"
" let g:javascript_conceal_prototype      = "¶"
" let g:javascript_conceal_static         = "•"
" let g:javascript_conceal_super          = "Ω"
" let g:javascript_conceal_arrow_function = "⇒"

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
  let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
  execute "tabedit " . l:filename
  execute "SyntasticCheck"
  execute "Errors"
endfunc
nnoremap <silent> <leader>c mq:call SyntasticCheckCoffeescript()<cr>`q


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
"nnoremap <silent> <leader>d :GitGutterToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-expand-region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This plugin can be invoked via + or _ symbol, it would wrap text objects
" like Ctrl-W in JetBrains-like IDE does
let g:expand_region_text_objects = {
      \ 'iw': 0,
      \ 'iW': 0,
      \ 'i"': 1,
      \ 'a"': 1,
      \ "i'": 1,
      \ "a'": 1,
      \ 'i]': 1,
      \ 'a]': 1,
      \ 'ib': 1,
      \ 'ab': 1,
      \ 'iB': 1,
      \ 'aB': 1,
      \ 'il': 0,
      \ 'ip': 1,
      \ 'ie': 0,
      \ 'ii': 1,
      \ 'ai': 1,
      \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MY ADDED PLUGINS "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" auto-pairs plugin
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<M-b>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" neocomplete plugin
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
inoremap <expr><C-Space> neocomplete#start_manual_complete('omni')

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" neocomplete and jedi-vim (Python)
if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
"let g:jedi#popup_on_dot = 0
"let g:neocomplete#force_omni_input_patterns.python =
"      \ '\h\w*\|[^. \t]\.\w*'
" \ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
" alternative pattern: '\h\w*\|[^. \t]\.\w*'
let g:jedi#popup_select_first = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-indent-guides plugin
let g:indent_guides_enable_on_vim_startup = 0
"let g:indent_guides_guide_size = 2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim-easymotion plugin
let g:EasyMotion_smartcase = 1
" this replaces the default substitute behavior by making '<leader>s' do sneak search
" type 2 characters and it will search across windows wonderfully
nmap <Leader>s <Plug>(easymotion-overwin-f2)
xmap <Leader>s <Plug>(easymotion-bd-f2)
omap <Leader>s <Plug>(easymotion-bd-f2)

map <Leader><Leader>l <Plug>(easymotion-lineforward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when jk motion

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" taglist.vim plugin
" the following activate taglist on Windows OS,
" you should install it on Unix-like system using different methods
if !executable('ctags')
  if has("win32")
    let g:Tlist_Ctags_Cmd = '"%userprofile%/.vim_runtime/ctags58/ctags.exe"'
  else
    " this is just a placeholder for ctags so that it won't yell error on startup
    let g:Tlist_Ctags_Cmd = 'CHANGE_THIS_PLACEHOLDER_FOR_CTAGS'
  endif
endif

let g:Tlist_Auto_Open = 0
let Tlist_GainFocus_On_ToggleOpen = 1
nnoremap <silent> <F8> :TlistToggle<CR>

" SimpylFold plugin
" the following 2 lines are required
" see https://github.com/tmhedberg/SimpylFold/issues/27
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

" vim-smooth-scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 3)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 3)<CR>

" vim-markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_no_default_key_mappings = 1

" vim-visual-increment
set nrformats=alpha,octal,hex

" ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
command Ag :Ack!

" incsearch.vim (https://github.com/haya14busa/incsearch.vim)
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" incsearch-easymotion (https://github.com/haya14busa/incsearch-easymotion.vim)
map <leader><leader>/ <Plug>(incsearch-easymotion-/)
map <leader><leader>? <Plug>(incsearch-easymotion-?)
map <leader><leader>g/ <Plug>(incsearch-easymotion-stay)

" vim-asterisk (https://github.com/haya14busa/vim-asterisk)
let g:asterisk#keeppos = 1
map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)
