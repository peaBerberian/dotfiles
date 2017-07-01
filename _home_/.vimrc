"=============================================================================
"                          VIM CONFIGURATION FILE
"=============================================================================

"-----------------------------------------------------------------------------
"                               INTRODUCTION
"-----------------------------------------------------------------------------

" Personal config file for vim/neovim, with its own theme and plugins.

" It is mostly configured for the following languages:

"   - JavaScript (up to ECMAScript 6) / JSON / JSX

"   - elm

"   - CSS / LESS

"   - Node.JS

"   - Qml

"   - C / C++

"   - Go

"   - Rust

"   - Python


" ---- Prerequisites ----

" Some plugins need more than this file to be able to work seamlessly.

"   - vim-plug: Will need supplementary actions, indicated in their github
"     page.
"     => https://github.com/junegunn/vim-plug

"   - vim-airline : need Powerline fonts installed and set for current terminal.
"     => https://github.com/bling/vim-airline

"   - tern_for_vim : You will need node.js and npm installed and accessible
"     via respectively a global 'node' and 'npm' commands.
"     => https://github.com/ternjs/tern_for_vim

"   - vim-go : Needs go binaries to be installed. See their github for more
"     infos. Those can be installed at any time after installing this vim
"     config via the ":GoInstallBinaries" command.
"     => https://github.com/fatih/vim-go

"   - TagBar : need exuberant-ctags package.
"     => https://github.com/majutsushi/tagbar

"   - Ag.vim : You will need ack (the silver searcher) installed. This will
"     also be used by the fzf plugin.
"     => https://github.com/epmatsw/ag.vim

"   - YouCompleteMe: Will need some dependencies. Most notably python-devel,
"     gcc, gcc-c++ and cmake.
"     You will also need to compile it manually with the right options, for
"     the desired language.
"     Also, a direct path to python 2.7 had to be provided in this file through
"     'g:ycm_server_python_interpreter' due to a problem with my current
"     distribution. You might need to delete that line or change it.
"     => https://github.com/Valloric/YouCompleteMe

"   - elm-vim: You will need to install several npm packages: elm, elm-test,
"     and elm-oracle.
"     => https://github.com/ElmCast/elm-vim

" ---- Installation ----
" To install this vimrc:

"   1. Install vim or neovim.

"   2. Make sure ALL prerequisites are met.

"   3. Put this config file in the right folder (should be '~/.vimrc' for vim
"      and '~/.config/nvim/init.vim' for nvim).

"   4. Open vim/nvim, type ':PlugInstall' and enter to install the different
"      plugins.

"   5. Enjoy this bloated conf!


"-----------------------------------------------------------------------------
"                          BASIC CONFIGURATION
"-----------------------------------------------------------------------------

" runtime! debian.vim

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has('syntax')
  syntax on
endif

set nocompatible " be iMproved, required

"-----------------------------------------------------------------------------
"                                PLUGINS
"-----------------------------------------------------------------------------

" ---- vim-plug ----
if !has('nvim')
  call plug#begin('~/.vim/plugged')
else
  call plug#begin('~/.config/nvim/plugged')
endif


" ---- Plugin list ----
" All the following plugins below are added thanks to their github repo.
" You can go on the respective github url for more informations.

" More colorschemes
Plug 'flazz/vim-colorschemes'

" ack.vim: Silver searcher integration in vi (ag)
Plug 'epmatsw/ag.vim'

" vim-javascript: JS tools (mainly syntax hl and indent)
Plug 'pangloss/vim-javascript'

" vim-elm: Elm language tools
Plug 'ElmCast/elm-vim'

" c.vim: C language tools
Plug 'vim-scripts/c.vim'

" vim-go: Go language tools
Plug 'fatih/vim-go'

" rust.vim: Rust language tools
Plug 'rust-lang/rust.vim'

" vim-less: less (css files) syntax highlighting/indenting/completion
Plug 'groenewege/vim-less'

" vim-qml: Qml highlighting
Plug 'peterhoeg/vim-qml'

" vim-coffee-script: Coffee script tools (mainly syntax hl and indent)
Plug 'kchmck/vim-coffee-script'

"  MOS 6502,65c02,65816 Assembly syntax + Merlin Add-Ons
Plug 'digarok/asmMerlin65816.vim'

" python.vim: Python tools (mainly syntax hl and indent)
Plug 'vim-scripts/python.vim'

" ejs-syntax: Highlighting of ejs files
Plug 'nikvdp/ejs-syntax'

" emmet-vim: Emmet support
Plug 'mattn/emmet-vim'

" tabular: Tabular plugin
" vim-markdown: Markdown tools
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

" vim-json: JSON tools
Plug 'elzr/vim-json'

" delimitMate: Automatic Closing of brackets, quotes etc.
Plug 'Raimondi/delimitMate'

" supertab: Perform all vim insert mode completions with Tab
Plug 'ervandew/supertab'

" YouCompleteMe: Auto-completion engine
Plug 'Valloric/YouCompleteMe'

" tern_for_vim: JS auto-completion
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }

" deoplete: Auto-completion engine
" Plug 'Shougo/deoplete.nvim' | Plug 'marijnh/tern_for_vim'

" ultisnips: To use snippets
" vim-snippets: Default snippets
" vim-es6: ES6 snippets
" coffe-Script-VIM-Snippets: Coffee scripts snippets
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips' | Plug 'isRuslan/vim-es6'
Plug 'SirVer/ultisnips' | Plug 'carlosvillu/coffeScript-VIM-Snippets'

" nerdtree: Directory tree
" nerdtree-git-plugin: Display git status in nerdTree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
      \ | Plug 'Xuyuanp/nerdtree-git-plugin'

" FZF implementation on vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim-airline: 1337 interface :p. Has to have compatible fonts
Plug 'bling/vim-airline'

" Powerline themes
Plug 'vim-airline/vim-airline-themes'

" vim-fugitive: Git tools
Plug 'tpope/vim-fugitive'

" vim-abolish: Powerfull syntax tools (Mainly for Substitution and coercion)
Plug 'tpope/vim-abolish'

" tpope/vim-repeat: Repeat some plugins command with '.'
Plug 'tpope/vim-repeat'

" vim-gitgutter: Show diff in gutter
Plug 'airblade/vim-gitgutter'

" vim-easymotion: Faster navigation in file
Plug 'Lokaltog/vim-easymotion'

" vim-sneak: Very convenient motion plugin (s + 2 letters)
Plug 'justinmk/vim-sneak'

" vim-commentary: Command gcc to add commentary easily
Plug 'tpope/vim-commentary'

" Mark--Karkat: Mark and unmark words
Plug 'vim-scripts/Mark--Karkat'

" YankRing.vim: Visual history of yanks
Plug 'vim-scripts/YankRing.vim'

" ale: display errors in gutter
Plug 'w0rp/ale'

" syntastic: Display Errors in gutter
" Plug 'scrooloose/syntastic'

" neomake: asynchronous Syntastic for nvim
" Plug 'benekastah/neomake'

" vim-multiple-cursors: CTRL-n to select many occurences of the same pattern
Plug 'terryma/vim-multiple-cursors'

" tagbar: browse tags (need exuberant-ctags)
" Plug 'majutsushi/tagbar'

" vim-indent-guides: show indentation on current file
Plug 'nathanaelkane/vim-indent-guides'

" switch.vim: Switch text easily
Plug 'AndrewRadev/switch.vim'

" vim-surround: Change 'surroundings' (brackets, quotes...) - cs command
Plug 'tpope/vim-surround'

" vimproc: Interactive command execution in Vim needed by Unite
" vimfiler: File explorer for unite
" unite.vim: Unite menu
" Plug 'ujihisa/vimproc' | Plug 'Shougo/vimfiler.vim'
      " \ | Plug 'Shougo/unite.vim'

" vimshell.vim: Vim shell
" Plug 'Shougo/vimshell.vim'

" vim-bookmarks: Beautiful bookmarks management. Integrated with Unite
" Plug 'MattesGroeger/vim-bookmarks'

" vim-jsx: jsx highlighting and indenting
Plug 'mxw/vim-jsx'

" javascript-libraries-syntax.vim: syntax for JavaScript libraries
Plug 'othree/javascript-libraries-syntax.vim'

" matchit: Extended % matching
Plug 'tmhedberg/matchit'

" gundo.vim: Undo tree
Plug 'sjl/gundo.vim', { 'on':  'GundoToggle' }

" vim-flow: flow type checking
" Plug 'flowtype/vim-flow'

" All of your Plugins must be added before the following line
" Add plugins to &runtimepath
call plug#end()


"-----------------------------------------------------------------------------
"                           PLUGINS CONFIGURATION
"-----------------------------------------------------------------------------

" ---- vim-javascript ----
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" ---- vim-markdown ----
let g:vim_markdown_folding_disabled=1


" ---- Syntastic ----
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_javascript_checkers=['eslint']
" let g:syntastic_warning_symbol='WW' " Symbol used for warnings
" let g:syntastic_error_symbol='EE' " Symbol used for errors
" let g:syntastic_mode_map = {
"         \ "mode": "active",
"         \ "active_filetypes": [""],
"         \ "passive_filetypes": ["javascript"] }


" ---- neomake ----
" add eslint
let g:neomake_javascript_eslint_maker = {
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_jscs_maker = {
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_jshint_maker = {
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

" open loclist after neomake
let g:neomake_open_list = 2

" display errors / write in logs
let g:neomake_logfile='/tmp/neomake_error.log'


" ---- easymotion ----
let g:EasyMotion_smartcase=1 " easymotion plugin use smartcase


" ---- airline ----
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

let g:airline_powerline_fonts = 1
let g:airline_theme='serene'


" ---- nerdtree ----
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
      \ b:NERDTreeType == "primary") | q | endif


" ---- yankring ----
let g:yankring_history_dir = '~/.vim'

"fix for yankring and neovim
let g:yankring_clipboard_monitor=0


" ---- ctrlP ----
let g:loaded_ctrlp_yankring = 0
let g:ctrlp_custom_ignore = {
      \'dir':  '\v[\/]\.(git|hg|svn)$',
      \'file': '\v\.(exe|so|dll)$',
      \'tmp': '.*tmp/.*'}


" ---- tagbar ----
" Tagbar set for JavaScript
" let g:tagbar_type_javascript = {
"     \ 'ctagstype' : 'JavaScript',
"     \ 'kinds'     : [
"         \ 'o:objects',
"         \ 'f:functions',
"         \ 'a:arrays',
"         \ 's:strings'
"     \ ]
"     \ }


" ---- indent-guides ----
set ts=2 sw=2 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1


" ---- switch ----
let g:switch_mapping = "-"
let g:switch_builtins =
      \ {
      \   'ampersands': ['&&', '||'],
      \   'capital_true_false': {
      \     '\CTrue':  'False',
      \     '\CFalse': 'True',
      \   },
      \   'true_false': {
      \     '\Ctrue':  'false',
      \     '\Cfalse': 'true',
      \   },
      \   'javascript_function': {
      \     'function \(\k\+\)(': 'var \1 = function(',
      \     '\%(var \)\=\(\k\+\) = function(': 'function \1(',
      \   },
      \   'coffee_arrow': {
      \     '^\(.*\)->': '\1=>',
      \     '^\(.*\)=>': '\1->',
      \   },
      \   'coffee_dictionary_shorthand': {
      \     '\([{,]\s*\)\@<=\(\k\+\)\(\s*[},]\)': '\2: \2\3',
      \     '\([{,]\s*\)\@<=\(\k\+\): \?\2\(\s*[},]\)': '\2\3',
      \   },
      \ }

let g:switch_custom_rules =
      \ {
      \   'on_off': {
      \     '\<on\>':  'off',
      \     '\<off\>': 'on',
      \   },
      \   'import_export': {
      \     '\<import\>':  'export',
      \     '\<export\>': 'import',
      \   },
      \   'if_else_else_if': {
      \     '\<if\>':  'else if',
      \     '\<else if\>': 'else',
      \     '\<else\>': 'if',
      \   },
      \   'camel_case_underscore': {
      \     '\<[a-z0-9]\+_\k\+\>': {
      \       '_\(.\)': '\U\1'
      \     },
      \     '\<[a-z0-9]\+[A-Z]\k\+\>': {
      \       '\([A-Z]\)': '_\l\1'
      \     },
      \   },
      \   'if_bool': {
      \     '\<if\> (true ||.*': {
      \       'if (true ||': 'if (false &&'
      \     },
      \     '\<if\> (false &&.*': {
      \       'if (false && ': 'if ('
      \     },
      \     '\<if\> (\%(true ||\|false &&\)\@!.*': {
      \       'if (': 'if (true || '
      \     },
      \   },
      \   'return_bool': {
      \     '\<return true\> ||.*': {
      \       'return true ||': 'return false &&'
      \     },
      \     '\<return false\> &&.*': {
      \       'return false &&': 'return'
      \     },
      \     '\<return\> \%(true ||\|false &&\)\@!.*': {
      \       'return ': 'return true || '
      \     },
      \   },
      \   'js_arrow_functions': {
      \     'function(\(.*\){': '(\1=> {',
      \     '(\(.*\)=> {': 'function(\1{',
      \   },
      \ }

let g:switch_definitions =
      \ [
      \   g:switch_builtins.ampersands,
      \   g:switch_builtins.capital_true_false,
      \   g:switch_builtins.true_false,
      \ ]

let g:switch_custom_definitions =
      \ [
      \   g:switch_custom_rules.on_off,
      \   g:switch_custom_rules.camel_case_underscore,
      \   g:switch_custom_rules.if_else_else_if,
      \ ]

autocmd FileType javascript let b:switch_definitions =
      \ [
      \   g:switch_builtins.javascript_function,
      \ ]

autocmd FileType javascript let b:switch_custom_definitions =
      \ [
      \   g:switch_custom_rules.import_export,
      \   g:switch_custom_rules.if_bool,
      \   g:switch_custom_rules.return_bool,
      \   g:switch_custom_rules.js_arrow_functions,
      \   g:switch_builtins.coffee_dictionary_shorthand,
      \ ]

autocmd FileType coffee let b:switch_definitions =
      \ [
      \   g:switch_builtins.coffee_arrow,
      \   g:switch_builtins.coffee_dictionary_shorthand,
      \ ]


" ---- vim-bookmarks ----
let g:bookmark_auto_save = 0
let g:bookmark_show_warning = 0
let g:bookmark_show_toggle_warning = 0


" ---- Supertab ----
let g:SuperTabDefaultCompletionType = '<C-n>'


" ---- YouCompleteMe ----
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" let g:ycm_keep_logfiles = 1
" let g:ycm_log_level = 'debug'

" path to python 2.7 as python3 was the one launched by default. This line
" might need to be deleted / changed in the future or under another
" configuration.
let g:ycm_server_python_interpreter="/usr/bin/python2.7"


" ---- deoplete ----
let g:deoplete#enable_at_startup = 1


" ---- ultisnips ----
let g:UltiSnipsExpandTrigger="<c-SPACE>"
let g:UltiSnipsJumpForwardTrigger="<c-SPACE>"
let g:UltiSnipsJumpBackwardTrigger="<c-LEFT>"

" ---- vim-flow ----
let g:flow#enable = 0

" ---- vim-jsx ----
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" ---- vim-elm ----
let g:elm_setup_keybindings = 0

"-----------------------------------------------------------------------------
"                                SETTINGS
"-----------------------------------------------------------------------------

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


" ---- Search with ag ----
" If ag (the silver searcher) is available, use it instead of grep
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " Use ag in CtrlP for listing files. Lightning fast and respect .gitignore
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
  " Use ag in Unite as recursive command.
  let g:unite_source_rec_async_command =
        \ ['ag', '--follow', '--nocolor', '--nogroup',
        \  '--hidden', '-g', '']
endif

" " toggle scroll lock led on insert/normal transitions
" augroup scrollLed
"   au!
"   autocmd InsertEnter * silent exe "!xset led"
"   autocmd InsertLeave * silent exe "!xset -led"
" augroup END

" ---- Basic Settings ----
" Load indentation rules and plugins according to filetype
filetype plugin indent on

" Set history to 1000 lines
set history=1000

" Leader key: space
let g:mapleader=" "

" Incremental search (search while typing)
set incsearch

" Auto-completion in command bar
set wildmenu

set laststatus=2
set t_Co=256
set backspace=2

set mouse+=a " enable mouse usage

set hidden " Hide buffers when they are abandoned

set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells
set nobackup
set noswapfile
set list
set ignorecase
set smartcase

" Enter/quit paste mode
set pastetoggle=<F2>

" Authorize project-specific vimrc but in secure mode
set exrc
set secure


" ---- Tabs format ----
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab


" ---- Folding methods ----
" Folds must be defined by entering commands (such as zf)
set foldmethod=syntax

" Enables JavaScript code folding
let g:javascript_fold=1

" Always open all folds by default
set foldlevel=99

" ---- GUI ----
" Replace some chars visualy, like trailing ...
set listchars=tab:>-,trail:.,extends:#,nbsp:.
set nolist

set splitbelow " An horizontal split is done below the current one
set splitright " A vertical split is done at the right of the current one

" decrease message size
set shortmess=a

" Highlight Search
set hlsearch

set showcmd " Show command in status line
set showmatch " Show matching brackets.

set ruler " Show position of cursor
set number " Show current line number
set relativenumber " Show relative line numbers

" Enables HTML/CSS syntax highlighting in your JavaScript file
let g:javascript_enable_domhtmlcss=1


" ---- Colorscheme ----
" Remove (or comment) this line if the following colorscheme does not exist
colorscheme badwolf

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark


"-----------------------------------------------------------------------------
"                                 MAPPING
"-----------------------------------------------------------------------------

" ---- Close and Save ----
" Close buffer
noremap <silent> <LEADER>x :bp!<bar>sp!<bar>bn!<bar>bd!<CR>

" Save buffer
noremap <silent> <LEADER>s :w<CR>

" Quit
noremap <silent> <LEADER>d :q!<CR>

" Save and quit
noremap <silent> <LEADER>z :wq<CR>

" Hide current split
noremap <silent> <LEADER>wd :hide<CR>


" ---- Tabulations improvements ----
vnoremap > >gv
vnoremap < <gv
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


" ---- Line numbers switching ----
nnoremap <silent> <F3> :call NumberToggle()<cr>


" ---- listchars switching ----
nnoremap <silent> <F4> :set list!<cr>


" ---- Buffer navigation ----
" Move between buffers (Ctrl + left / right or h / l)
noremap <silent> <C-j> :bprevious!<CR>
noremap <silent> <C-k> :bnext!<CR>

" Move between windows splits (ctrl + alt + ...)
" noremap <silent> <C-K> :wincmd k<CR>
" noremap <silent> <C-J> :wincmd j<CR>
" noremap <silent> <C-H> :wincmd h<CR>
" noremap <silent> <C-L> :wincmd l<CR>
noremap <silent> <C-h> :wincmd h<CR>
noremap <silent> <C-l> :wincmd l<CR>


" ---- Splits ----
" Screen split, close to terminator terminal commands
noremap <silent> <LEADER>wv :vsplit<CR>
noremap <silent> <LEADER>ws :split<CR>

" Resize split vertically
nnoremap <silent> <LEADER>w+ :exe "vertical resize " . (winwidth(0) * 10/9)<CR>
nnoremap <silent> <LEADER>w- :exe "vertical resize " . (winwidth(0) * 9/10)<CR>

" Resize split horizontally
nnoremap <silent> <LEADER>w* :exe "resize " . (winheight(0) * 5/4)<CR>
nnoremap <silent> <LEADER>w/ :exe "resize " . (winheight(0) * 3/4)<CR>


" ---- Plugins shortcuts ----

" nerdtree:
" Show tree
nmap <silent> <LEADER>ee :NERDTreeToggle<CR>

" FZF:
" Open from name
noremap <silent> <LEADER>p :FZF<CR>

" Navigate between buffers
noremap <silent> <LEADER>b :Buffers<CR>

" Navigate between marks
" noremap <silent> <LEADER>s :Marks<CR>

" Mark--Karkat:
" Mark/unmark
" nnoremap <silent> <LEADER>m :Mark <C-R><C-W><CR>

" Unmark all
nnoremap <silent> <LEADER>M :MarkClear<CR>:nohl<CR>

" fugitive:
" Git shortcuts
noremap <silent> <LEADER>gd :Gdiff<CR>
noremap <silent> <LEADER>gb :Gblame<CR>
noremap <silent> <LEADER>gs :Gstatus<CR>
noremap <silent> <LEADER>gl :Glog<CR>

" easymotion:
" Easymotion lookup
nmap <silent> <LEADER>gg <Plug>(easymotion-s2)
" nmap <silent> <LEADER>gh <Plug>(easymotion-sn)

" Easymotion movements
map <LEADER>l <Plug>(easymotion-lineforward)
map <LEADER>h <Plug>(easymotion-linebackward)
map <LEADER>j <Plug>(easymotion-j)
map <LEADER>k <Plug>(easymotion-k)

" Syntastic:
" Start checking with syntastic plugin and display possible errors
" nnoremap <F6> :SyntasticCheck<CR>:Errors<CR>

" YankRing:
" Show every lines yanked (YangRing plugin)
nnoremap <silent> <F7> :YRShow<CR>

" Tagbar:
" Open tagBar (need ctags and tagbar plugin)
nnoremap <F8> :TagbarToggle<CR>

" Gundo:
" Display/hide Gundo
nnoremap <silent> <F9> :GundoToggle<CR>


" ---- Function keys ----
" F1 open help html
" F2 toggle paste mode
" F4 toggle number style
" F3 toggle listchars
" F5 Refresh file
" F6 Open syntastic report
" F7 Show/hide Yankring
" F8 Show/hide Tagbar
" F9 Show/hide Gundo
" F10 Show vi type under cursor

" Refresh
nnoremap <silent> <F5> :e!<CR>

" Display vi type under the cursor (cool when conceiving a theme)
nnoremap <silent> <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),
      \"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
      \. "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
      \. ">"<CR>


" ---- Other mappings ----

" Search visual selection on '*' in visual mode
vnoremap <silent> * :call VisualSelection('f')<CR>

" Deactivate Q which enter ex Mode
map Q <Nop>

" Add a ';' at the end of the line
nnoremap <LEADER>; A;<ESC>

" open new line below and escape
nnoremap <LEADER>o o<ESC>

" Copy in clipboard with CTRL-c on visual mode
vnoremap <C-c> "+y

" CTRL-v paste in insert mode
inoremap <C-v> <ESC>"+p

" jk/kj to escape in insert/normal/visual mode
inoremap jk <ESC>
inoremap kj <ESC>


"-----------------------------------------------------------------------------
"                                HELPERS
"-----------------------------------------------------------------------------

function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction

function! VisualSelection(direction) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", '\\/.*$^~[]')
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
  elseif a:direction == 'gv'
    call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

" Toggle between relative line numbers and absolute ones
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
