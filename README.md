# The Ultimate vimrc [[OFF'S EDITION]]

## Prerequisite
If you don't have Vim installed, I suggest you to install 64-bit
version and here is the suggested link: https://bintray.com/micbou/generic/vim

There are two versions:

* **Basic**: If you want something small just copy [basic.vim](vimrcs/basic.vim) into your ~/.vimrc and you will have a great basic setup
* **Awesome**: This includes a ton of useful plugins, color schemes and configurations

I would of course recommend using the awesome version.

## How to install the Awesome version?
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following:

	git clone https://github.com/off99555/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_awesome_vimrc.sh
	cd ~/.vim_runtime && git submodule update --init --recursive && cd ~-

1. If you want to use neocomplete (Autocomplete) plugin, you'll
need to have Lua installed, please refer to
https://github.com/Shougo/neocomplete.vim#requirements for further instructions.

2. If you want to use **taglist.vim** plugin (**F8**) then you also need to install **ctags** which
can be found at http://ctags.sourceforge.net/ (Don't install if you use Windows
because the Windows version is already installed inside this repository)

3. If you want to use Python's Omni autocomplete feature with **CTRL-X CTRL-O**
then install Python 2 and set **PYTHONHOME** to the directory where you have
**python.exe** lying around. Refer to http://stackoverflow.com/a/40566169/2593810 for more
information.
Try entering `:py print 2**10` and if it outputs `1024` then you are good to go.

4. If you want to use flake8 python static file checkers (**F7**) please use
   python **pip** or any python environment manager to install **flake8** like
   so: `pip install flake8`

5. I also recommend using [Source Code Pro font from Adobe](http://store1.adobe.com/cfusion/store/html/index.cfm?event=displayFontPackage&code=1960)
(it's free and awesome font for writing and programming).
The Awesome vimrc is already setup to try to use it.
I suggest you to download the font from this less troublesome repository:
https://github.com/adobe-fonts/source-code-pro

## How to install the Basic version?
The basic version is basically just one file and no plugins. You can check out [basic.vim](https://github.com/off99555/vimrc/blob/master/vimrcs/basic.vim).

This is useful to install on remote servers where you don't need many plugins and you don't do many edits.

	git clone git://github.com/off99555/vimrc.git ~/.vim_runtime
	sh ~/.vim_runtime/install_basic_vimrc.sh


## How to install on Windows?

Use [msysgit (Git Bash)](http://msysgit.github.com/) to checkout the repository and run the installation instructions above. No special instructions needed ;-)


## How to install on Linux

Install like on Windows but instead of using Git Bash, you can just simply use a
real Bash!

## How to update to latest version?

Simply just do a git pull rebase!

    cd ~/.vim_runtime
    git pull --rebase


## Some screenshots

**LATEST SCREENSHOT**: This is my current working gVim on Windows. It uses **dark
solarized** colorscheme.
![Screenshot 0](screenshots/2016-11-14_02-29-15.png?raw=true)

Colors when editing a Python file of a **peaksea** colorscheme
![Screenshot 1](http://files1.wedoist.com/e952fdb343b1e617b90d256e474d0370/as/screenshot_1.png)

Opening recently opened files [mru.vim](https://github.com/vim-scripts/mru.vim):
![Screenshot 2](http://files1.wedoist.com/1967b0e48af40e513d1a464e08196990/as/screenshot_2.png)

[NERD Tree](https://github.com/scrooloose/nerdtree) plugin in a terminal window:
![Screenshot 3](http://files1.wedoist.com/b1509d7ed9e9f357e8d04797f9fad67b/as/screenshot3.png)

Old Windows showoff time!
![Screenshot 4](http://files1.wedoist.com/4e85163d97b81422240c822c82022f2f/as/screenshot_4.png)

Distraction free mode using [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2)
(Default key to trigger is `<leader>z`):
![Screenshot 5](https://d2dq6e731uoz0t.cloudfront.net/a5182977c3d6c2a6cd3f9e97398ca8ca/as/zen_mode.jpg)


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each of them provide a much better Vim experience!

* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manages the runtime path of the plugins
* [snipMate.vim](https://github.com/garbas/vim-snipmate): snipMate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Buffer Explorer / Browser. This plugin can be opened with `<leader+o>`
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for the Perl module / CLI script 'ack'
* [ag.vim](https://github.com/rking/ag.vim): A much faster Ack
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder.
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. Includes my own fork which adds syntax highlighting to MRU. This plugin can be opened with `<leader+f>`
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing `gf`
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination. (In this case, it's `+` and `_`)
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2): 
Remove all clutter and focus only on the essential. Similar to iA Writer or Write Room [Read more here](http://amix.dk/blog/post/19744)
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim
<!-- * [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Maintains a history of previous yanks, changes and deletes -->
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
* and a lot more! (Please check inside the `sources_non_forked` directory)

## Included color schemes

* [peaksea](https://github.com/vim-scripts/peaksea): amix' favorite
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized):
Off's favorite! (this is the default colorscheme for this repository)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)
* [Zenburn](https://github.com/jnurmine/Zenburn): This colorscheme is used by
  default if you do not have a GUI version running on your system.
  AKA you run Vim in a terminal of some sort.


## Included modes

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/tpope/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim): Highlights configuration files for nginx
* [vim-go](https://github.com/fatih/vim-go)


## How to include your own stuff?

After you have installed the setup you can append **~/.vim_runtime/my_configs.vim** to fill in any configurations that are important for you.

You can also install your own plugins, for instance, via pathogen we can install [vim-rails](https://github.com/tpope/vim-rails):

	cd ~/.vim_runtime
	git clone git://github.com/tpope/vim-rails.git sources_non_forked/vim-rails
	
Now you have vim-rails installed ;-)


## Key Mappings

### Plugin related mappings

Open [bufexplorer](https://github.com/vim-scripts/bufexplorer.zip) and see and manage the current buffers (`<leader>o`):
    
    map <leader>o :BufExplorer<cr>

Open [MRU.vim](https://github.com/vim-scripts/mru.vim) and see the recently open files (`<leader>f`):

    map <leader>f :MRU<CR>

Open [ctrlp.vim](https://github.com/kien/ctrlp.vim) plugin (`<leader>j`)

Managing the [NERD Tree](https://github.com/scrooloose/nerdtree) plugin:

    map <leader>nt :NERDTreeTabsToggle<cr>
    map <leader>nf :NERDTreeTabsFind<cr>
    map <leader>nn :NERDTreeFocusToggle<cr>

[goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2) lets you only focus on one thing at a time. It removes all the distractions and centers the content. It has a special look when editing Markdown, reStructuredText and textfiles. It only has one mapping. (`<leader>z`)

    map <leader>z :Goyo<cr>

### Normal mode mappings

Fast saving of a buffer (`<leader>w`):

	nmap <leader>w :w!<cr>
	
Disable highlight when `<leader><cr>` is pressed:
	
	map <silent> <leader><cr> :noh<cr>

Smart way to move between windows (`<ctrl>j` etc.):
	
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

Closing of current buffer(s) (`<leader>bd` and (`<leader>ba`)):
	
	" Close current buffer
	map <leader>bd :Bclose<cr>
	
	" Close all buffers
	map <leader>ba :1,1000 bd!<cr>
	
Useful mappings for managing tabs:
	
	map <leader>tn :tabnew<cr>
	map <leader>to :tabonly<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabmove 
	
	" Opens a new tab with the current buffer's path
	" Super useful when editing files in the same directory
	map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
	
Switch CWD to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	
Open vimgrep and put the cursor in the right position:
	
	map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

Vimgreps in the current file:
	
	map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

Remove the Windows ^M - when the encodings gets messed up:
	
	noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
	
Quickly open a buffer for scripbble:
	
	map <leader>q :e ~/buffer<cr>

Toggle paste mode on and off:
	
	map <leader>pp :setlocal paste!<cr>


### Insert mode mappings

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Visual mode mappings

Visual mode pressing `*` or `#` searches for the current selection:

	vnoremap <silent> * :call VisualSelection('f')<CR>
	vnoremap <silent> # :call VisualSelection('b')<CR>

When you press gv you vimgrep after the selected text:

	vnoremap <silent> gv :call VisualSelection('gv')<CR>

When you press `<leader>r` you can search and replace the selected text:

	vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>
	

### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line:

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>

Write the file as sudo (only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 


### Spell checking
Pressing `<leader>ss` will toggle and untoggle spell checking

    map <leader>ss :setlocal spell!<cr>

Shortcuts using `<leader>` instead of special chars

    map <leader>sn ]s
    map <leader>sp [s
    map <leader>sa zg
    map <leader>s? z=

### Cope	
Do :help cope if you are unsure what cope is. It's super useful!

When you search with vimgrep, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Vimscript mappings:

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>

## How to uninstall
Do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`

