"=============================================================================
"                          VIM CONFIGURATION FILE
"=============================================================================

"-----------------------------------------------------------------------------
"                               INTRODUCTION
"-----------------------------------------------------------------------------

" Personal config file for vim/neovim, with its own theme and plugins.

" ---- Prerequisites ----

" Some plugins need more than this file to be able to work seamlessly.

"   - vim-plug: Will need supplementary actions, indicated in their github
"     page.
"     => https://github.com/junegunn/vim-plug

"   - vim-airline : need Powerline fonts installed and set for current terminal.
"     => https://github.com/bling/vim-airline

"   - vim-go : Needs go binaries to be installed. See their github for more
"     infos. Those can be installed at any time after installing this vim
"     config via the ":GoInstallBinaries" command.
"     => https://github.com/fatih/vim-go

"   - ale: Needs eslint to be installed and accessible in the PATH.
"     => https://github.com/w0rp/ale

" ---- Installation ----
" To install this vimrc:

"   1. Install vim or neovim.

"   2. Make sure prerequisites are met.

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

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

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
Plug 'drewtempelmeyer/palenight.vim'
Plug 'gregsexton/Atom'

" ack.vim: Silver searcher integration in vi (ag)
Plug 'mileszs/ack.vim'

" vim-markdown: Markdown tools
Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

" coc.nvim: Auto-completion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" editorconfig-vim: Handle `.editorconfig` files
Plug 'editorconfig/editorconfig-vim'

" vim-airline: 1337 interface :p. Has to have compatible fonts
Plug 'bling/vim-airline'

" Powerline themes
Plug 'vim-airline/vim-airline-themes'

" vim-fugitive: Git tools
Plug 'tpope/vim-fugitive'

" vim-gitgutter: Show diff in gutter
Plug 'airblade/vim-gitgutter'

" tpope/vim-repeat: Repeat some plugins command with '.'
Plug 'tpope/vim-repeat'

" vim-easymotion: Faster navigation in file
Plug 'Lokaltog/vim-easymotion'

" vim-sneak: Very convenient motion plugin (s + 2 letters)
Plug 'justinmk/vim-sneak'

" vim-commentary: Command gcc to add commentary easily
Plug 'tpope/vim-commentary'

" vim-mark: Mark and unmark words
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'

" YankRing.vim: Visual history of yanks
Plug 'vim-scripts/YankRing.vim'

" ale: display errors in gutter
Plug 'w0rp/ale'

" vim-indent-guides: show indentation on current file
Plug 'nathanaelkane/vim-indent-guides'

" switch.vim: Switch text easily
Plug 'AndrewRadev/switch.vim'

" matchit: Extended % matching
Plug 'tmhedberg/matchit'

" gundo.vim: Undo tree
Plug 'sjl/gundo.vim', { 'on':  'GundoToggle' }

" vim-eunuch: various UNIX tools
Plug 'tpope/vim-eunuch'

" rainbow_parentheses: rainbow parentheses to easily match them
Plug 'kien/rainbow_parentheses.vim'

" vim-css3-syntax: css3 syntax
Plug 'hail2u/vim-css3-syntax'

" html5.vim: HTML5 syntax and omnicomplete
Plug 'othree/html5.vim'

" vim-highlightedyank: highlight yank selections for a few seconds
Plug 'machakann/vim-highlightedyank'

" vim-javascript: JS tools (mainly syntax hl and indent)
Plug 'pangloss/vim-javascript'

" vim-jsx: jsx highlighting and indenting
Plug 'mxw/vim-jsx'

" typescript-vim: TypeScript tools
Plug 'leafgarland/typescript-vim'

" c.vim: C language tools
Plug 'vim-scripts/c.vim'

" vim-go: Go language tools
Plug 'fatih/vim-go'

" rust.vim: Rust language tools
Plug 'rust-lang/rust.vim'

" python.vim: Python tools (mainly syntax hl and indent)
Plug 'vim-scripts/python.vim'

" vim-glsl: GLSL syntax
Plug 'tikhomirov/vim-glsl'

" vim-toml: TOML Syntax
Plug 'cespare/vim-toml'

" neoterm: Wrap vim/neovim terminal
Plug 'kassio/neoterm'

" ranger.vim: ranger file explorer integration
Plug 'francoiscabrol/ranger.vim'

"----------------------------------------------------------------------

" " vim-less: less (css files) syntax highlighting/indenting/completion
" Plug 'groenewege/vim-less'

" " vim-qml: Qml highlighting
" Plug 'peterhoeg/vim-qml'

" "  MOS 6502,65c02,65816 Assembly syntax + Merlin Add-Ons
" Plug 'digarok/asmMerlin65816.vim'

" " vim-unimpaired: handy shortcuts with brackets
" Plug 'tpope/vim-unimpaired'

" gv.vim: commit explorer
Plug 'junegunn/gv.vim'

" " vim-abolish: Powerfull syntax tools (Mainly for Substitution and coercion)
" Plug 'tpope/vim-abolish'

" vim-multiple-cursors: CTRL-n to select many occurences of the same pattern
" Plug 'terryma/vim-multiple-cursors'

" " javascript-libraries-syntax.vim: syntax for JavaScript libraries
" Plug 'othree/javascript-libraries-syntax.vim'

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


" ---- easymotion ----
let g:EasyMotion_smartcase=1 " easymotion plugin use smartcase


" ---- vim-airline ----
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'
let g:airline_section_b = "%{airline#extensions#branch#get_head()}"
let g:airline_section_y = ""
let g:airline_section_z = "%3p%% %#__accent_bold#% %l% %#__restore__#% /%#__accent_bold#% %L% %#__restore__#% \ :%3v"


" ---- nerdtree ----
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
      \ b:NERDTreeType == "primary") | q | endif


" ---- yankring ----
let g:yankring_history_dir = '~/.vim'
let g:yankring_clipboard_monitor=0 " fix for yankring and neovim


" ---- ctrlP ----
let g:loaded_ctrlp_yankring = 0
let g:ctrlp_custom_ignore = {
      \'dir':  '\v[\/]\.(git|hg|svn)$',
      \'file': '\v\.(exe|so|dll)$',
      \'tmp': '.*tmp/.*'}


" " ---- tsuquyomi ----
" autocmd FileType typescript setlocal completeopt+=menu,preview


" ---- coc.nvim ----
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" ---- indent-guides ----
set ts=2 sw=2 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1


" ---- rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0


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

autocmd FileType javascript let b:switch_custom_definitions =
      \ [
      \   g:switch_custom_rules.import_export,
      \   g:switch_custom_rules.js_arrow_functions,
      \ ]


" ---- vim-bookmarks ----
let g:bookmark_auto_save = 0
let g:bookmark_show_warning = 0
let g:bookmark_show_toggle_warning = 0


" ---- Supertab ----
" let g:SuperTabDefaultCompletionType = '<C-n>'


" ---- YouCompleteMe ----
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" let g:ycm_keep_logfiles = 1
" let g:ycm_log_level = 'debug'

" let g:ycm_server_python_interpreter="/usr/bin/python"


" ---- deoplete ----
let g:deoplete#enable_at_startup = 1


" ---- Lightline ----
let g:lightline = {
\ 'colorscheme': 'landscape',
\ 'enable': {
\   'statusline': 1,
\   'tabline': 1
\ },
\ 'active': {
\   'left': [['mode', 'paste'], ['filename', 'modified']],
\   'right': [['lineinfo'], ['percent'], ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok']]
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ 'tabline': {
\   'left': [ [ 'tabs' ] ],
\   'right': [ [ 'close' ] ]
\ }
\ }

function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ◆', all_non_errors)
endfunction

function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction

function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

autocmd User ALELint call s:MaybeUpdateLightline()

" Update and show lightline but only if it's visible (e.g., not in Goyo)
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction


" ---- ultisnips ----
let g:UltiSnipsExpandTrigger="<c-SPACE>"
let g:UltiSnipsJumpForwardTrigger="<c-SPACE>"
let g:UltiSnipsJumpBackwardTrigger="<c-LEFT>"

" ---- vim-jsx ----
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" ---- vim-highlightedyank ----
let g:highlightedyank_highlight_duration = 250

" ---- neoterm ----
let g:neoterm_default_mod = "vertical"

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

" Join comments correctly
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
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
set foldmethod=manual

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

augroup LargeFile
  let g:large_file = 1048576 " 1MB

  " Set options:
  "   eventignore+=FileType (no syntax highlighting etc
  "   assumes FileType always on)
  "   noswapfile (save copy of file)
  "   bufhidden=unload (save memory when other file is viewed)
  "   buftype=nowritefile (is read-only)
  "   undolevels=-1 (no undo possible)
  au BufReadPre *
        \ let f=expand("<afile>") |
        \ if getfsize(f) > g:large_file |
        \   set eventignore+=FileType |
        \   syntax off |
        \   setlocal ft= syn= |
        \   setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 |
        \ else |
        \   set eventignore-=FileType |
        \ endif
augroup END

" Do not redraw screen in the middle of a macro. Makes them complete faster.
set lazyredraw

" Persistent undo, even if you close and reopen Vim. Super great when combined
" with the undotree plugin.
set undofile

set foldcolumn=3

" This is Neovim only.
" inccommand shows you in realtime what changes your ex command should make.
" Right now it only supports s, but even that is incredibly useful. If you type
" :s/regex, it will highlight what matches regex. If you then add /change, it
" will show all matches replaced with change. This works with all of the regex
" properties, include backreferences and groups.
if (has("nvim"))
  set inccommand=nosplit
endif


"-----------------------------------------------------------------------------
"                                 MAPPING
"-----------------------------------------------------------------------------

" ---- Close and Save ----
" Close buffer
noremap <silent> <LEADER>x :bp!<bar>sp!<bar>bn!<bar>bd!<CR>

" Save buffer
noremap <silent> <LEADER>s :w<CR>

" Quit
noremap <silent> <LEADER>q :q!<CR>

" Save and quit
noremap <silent> <LEADER>z :wq<CR>

" Close QuickFix + Location List
noremap <silent> <LEADER>d :cclose<CR>:lclose<CR>


" ---- Replace
nnoremap <LEADER>` :%s/<C-R><C-W>//gcI<LEFT><LEFT><LEFT><LEFT>


" ---- Movement improvements
" nnoremap <S-Up> 6k
" nnoremap <S-Down> 6j
" nnoremap <S-Left> 6h
" nnoremap <S-Right> 6l

" nnoremap <C-Up> 6<C-y>
" nnoremap <C-Down> 6<C-e>

" nnoremap <C-Left> 6h
" nnoremap <C-Down> 6j
" nnoremap <C-Up> 6k
" nnoremap <C-Right> 6l

" ---- navigate in jump list
" nnoremap g, <C-o>
" nnoremap g. <C-i>


" ---- Tabulations improvements ----

nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
vnoremap > >gv
vnoremap < <gv

" Sadly, enters in conflict with <C-i> for some reasons
" nnoremap <Tab> >>_


" " ---- Line numbers switching ----
" nnoremap <silent> <F3> :call NumberToggle()<cr>


" " ---- listchars switching ----
" nnoremap <silent> <F4> :set list!<cr>


" ---- Buffer navigation ----
" Move between buffers (Ctrl + left / right or h / l)
noremap <silent> <C-j> :bprevious!<CR>
noremap <silent> <C-k> :bnext!<CR>

" Move between windows splits
" noremap <silent> <C-K> :wincmd k<CR>
" noremap <silent> <C-J> :wincmd j<CR>
" noremap <silent> <C-H> :wincmd h<CR>
" noremap <silent> <C-L> :wincmd l<CR>
noremap <silent> <C-h> :wincmd h<CR>
noremap <silent> <C-l> :wincmd l<CR>


" ---- Splits ----

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

" CoC
nmap <silent> <LEADER>c :CocList<CR>

" FZF:
" Open from name
noremap <silent> <LEADER>p :FZF<CR>

" Navigate between buffers
noremap <silent> <LEADER>b :Buffers<CR>

" Navigate between marks
" noremap <silent> <LEADER>s :Marks<CR>

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

" Ale:
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['eslint', 'tsserver'],
\}

" YankRing:
" Show every lines yanked (YangRing plugin)
nnoremap <silent> <F7> :YRShow<CR>

" Tagbar:
" Open tagBar (need ctags and tagbar plugin)
" nnoremap <F8> :TagbarToggle<CR>

" Gundo:
" Display/hide Gundo
" nnoremap <silent> <F9> :GundoToggle<CR>

" ---- Function keys ----
" F1 open help html
" F2 toggle paste mode
" F4 toggle number style
" F3 toggle listchars
" F5 Refresh file
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

" Terminal
nnoremap <F3> :Ttoggle<cr><C-w><C-w>A
inoremap <F3> <esc>:Ttoggle<cr><C-w><C-w>A
tnoremap <F3> <C-\><C-n>:Ttoggle<cr>

" Noop bad habits
inoremap <ESC> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>


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

" Navigate easily between jumps
function! GotoJump()
  jumps
  let j = input("Please select your jump: ")
  if j != ''
    let pattern = '\v\c^\+'
    if j =~ pattern
      let j = substitute(j, pattern, '', 'g')
      execute "normal " . j . "\g."
    else
      execute "normal " . j . "\g,"
    endif
  endif
endfunction


"-----------------------------------------------------------------------------
"                             COLORSCHEME
"-----------------------------------------------------------------------------

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Remove (or comment) this line if the following colorscheme does not exist
colorscheme hybrid
