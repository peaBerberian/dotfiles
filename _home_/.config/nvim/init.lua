-- =============================================================================
--                         NEOVIM CONFIGURATION FILE
-- =============================================================================
--
--------------------------------------------------------------------------------
--                                INTRODUCTION
--------------------------------------------------------------------------------
--
--  Personal config file for neovim, with its own theme and plugins.
--
--  ---- Prerequisites ----
--
--  Some plugins need more than this file to be able to work seamlessly.
--
--    - vim-plug: Will need supplementary actions, indicated in their github
--      page.
--      => https://github.com/junegunn/vim-plug
--
--    - null-ls: Needs eslint to be installed and accessible in the PATH.
--
--    - vim-go : Needs go binaries to be installed. See their github for more
--      infos. Those can be installed at any time after installing this vim
--      config via the ":GoInstallBinaries" command.
--      => https://github.com/fatih/vim-go
--
--    - telescope.nvim: Optionally needs `ripgrep` and `fd` to be installed.
--
--    - Your font might require to be patched to be compatible to "nerdfont"
--      to better display filetypes and such
--
--  ---- Installation ----
--  To install this init.vim file:
--
--    1. Install neovim.
--
--    2. Make sure prerequisites are met
--       You can also run :checkhealth to know if things are missing for the
--       plugins.
--
--    3. Put this config file in the right folder (should be something like
--       '$HOME/.config/nvim/init.vim' for nvim).
--
--    4. Open nvim, type ':PlugInstall' and enter to install the different
--       plugins.
--
--    5. Enjoy this bloated conf!

-- Allows to shut the linter up for the remaining of the file
local vim = vim

-------------------------------------------------------------------------------
--                           BASIC CONFIGURATION
-------------------------------------------------------------------------------

-- Enable 24 bits colors
vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
if vim.fn.exists('+termguicolors') then
  vim.opt.termguicolors = true
end

-------------------------------------------------------------------------------
--                                PLUGINS
-------------------------------------------------------------------------------

if vim.g.vscode then
  return;
end

vim.call('plug#begin', '~/.config/nvim/plugged')
local Plug = vim.fn['plug#']

-- All the following plugins below are added thanks to their github repo.
-- You can go on the respective github url for more informations.

-- More colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'

-- vim-markdown: Markdown tools
-- Plug 'godlygeek/tabular' | Plug 'plasticboy/vim-markdown'

-- -- coc.nvim: Auto-completion engine
Plug('neoclide/coc.nvim', { branch  = 'release'})

-- mason: install lsp, linter etc.
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

-- Auto-completion related thingies
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'hrsh7th/cmp-buffer'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'hrsh7th/cmp-cmdline'
-- Plug 'hrsh7th/nvim-cmp'

-- luaSnip: snippet engine
Plug 'L3MON4D3/LuaSnip'
-- Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets'

-- editorconfig-vim: Handle `.editorconfig` files
Plug 'editorconfig/editorconfig-vim'

-- vim-airline: 1337 interface :p. Has to have compatible fonts
Plug 'bling/vim-airline'

-- Powerline themes
Plug 'vim-airline/vim-airline-themes'

-- vim-fugitive: Git tools
Plug 'tpope/vim-fugitive'

-- gitsigns.nvim: git diff in vim gitgutter
Plug 'lewis6991/gitsigns.nvim'

-- tpope/vim-repeat: Repeat some plugins command with '.'
Plug 'tpope/vim-repeat'

-- vim-sneak: Very convenient motion plugin (s + 2 letters)
Plug 'justinmk/vim-sneak'

-- vim-commentary: Command gcc to add commentary easily
Plug 'tpope/vim-commentary'

-- vim-mark: Mark and unmark words
Plug 'inkarkat/vim-ingo-library'
Plug 'inkarkat/vim-mark'

-- vim-EnhancedJumps: Better jump list management
Plug 'inkarkat/vim-EnhancedJumps'

Plug 'jose-elias-alvarez/null-ls.nvim'

-- -- ale: display errors in gutter
-- Plug 'w0rp/ale'

-- vim-indent-guides: show indentation on current file
Plug 'nathanaelkane/vim-indent-guides'

-- switch.vim: Switch text easily
Plug 'AndrewRadev/switch.vim'

-- matchit: Extended % matching
Plug 'tmhedberg/matchit'

-- undotree: undo history visualizer
Plug 'mbbill/undotree'

-- vim-eunuch: various UNIX tools
Plug 'tpope/vim-eunuch'

-- rainbow_parentheses: rainbow parentheses to easily match them
Plug 'kien/rainbow_parentheses.vim'

-- vim-highlightedyank: highlight yank selections for a few seconds
Plug 'machakann/vim-highlightedyank'

-- c.vim: C language tools
Plug 'vim-scripts/c.vim'

-- vim-go: Go language tools
Plug 'fatih/vim-go'

-- rust.vim: Rust language tools
Plug 'rust-lang/rust.vim'

-- python.vim: Python tools (mainly syntax hl and indent)
Plug 'vim-scripts/python.vim'

-- vim-glsl: GLSL syntax
Plug 'tikhomirov/vim-glsl'

-- vim-toml: TOML Syntax
Plug 'cespare/vim-toml'

-- telescope.nvim: fuzzy finder
Plug 'nvim-lua/plenary.nvim'
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x' })

-- Treesitter configurations
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- Prettier config
Plug('prettier/vim-prettier', {
  ['do'] = 'yarn install --frozen-lockfile --production',
  ['for'] = {
    'javascript',
    'typescript',
    'css',
    'less',
    'scss',
    'json',
    'graphql',
    'markdown',
    'vue',
    'svelte',
    'yaml',
    'html'
  }
})


-- which-key: displays a popup with possible keybindings of the command you
-- started typing
Plug 'folke/which-key.nvim'

-- nvim-web-devicons: Adds file type icons to Vim plugins
Plug 'kyazdani42/nvim-web-devicons'

-- nvim-tree.lua: File Explorer
Plug 'kyazdani42/nvim-tree.lua'

-- indent-blankline.nvim: Show ident lines
Plug 'lukas-reineke/indent-blankline.nvim'

-- toggleterm.nvim: terminal improvements
Plug('akinsho/toggleterm.nvim', {tag = '*'})

-- vim-javascript: JS tools (mainly syntax hl and indent)
Plug 'pangloss/vim-javascript'

-- vim-jsx: jsx highlighting and indenting
Plug 'mxw/vim-jsx'

-- typescript-vim: TypeScript tools
Plug 'leafgarland/typescript-vim'

-- YankRing.vim: Cycle through yanks and prodie visual history
Plug 'vim-scripts/YankRing.vim'

-- -- colorscheme
-- Plug 'drewtempelmeyer/palenight.vim'

-- ack.vim: Silver searcher integration in vi (ag)
-- Plug 'mileszs/ack.vim'

-- ultisnips: To use snippets
-- vim-snippets: Default snippets
-- vim-es6: ES6 snippets
-- coffe-Script-VIM-Snippets: Coffee scripts snippets
-- Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
-- Plug 'SirVer/ultisnips' | Plug 'isRuslan/vim-es6'
-- Plug 'SirVer/ultisnips' | Plug 'carlosvillu/coffeScript-VIM-Snippets'

-- nerdtree: Directory tree
-- nerdtree-git-plugin: Display git status in nerdTree
-- Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
--       \ | Plug 'Xuyuanp/nerdtree-git-plugin'

-- FZF implementation on vim
-- Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
-- Plug 'junegunn/fzf.vim'

-- vim-gitgutter: Show diff in gutter
-- Plug 'airblade/vim-gitgutter'

-- gundo.vim: Undo tree
-- Plug 'sjl/gundo.vim', { 'on':  'GundoToggle' }

-- vim-css3-syntax: css3 syntax
-- Plug 'hail2u/vim-css3-syntax'

-- -- html5.vim: HTML5 syntax and omnicomplete
-- Plug 'othree/html5.vim'

-- -- neoterm: Wrap vim/neovim terminal
-- Plug 'kassio/neoterm'

-- -- ranger.vim: ranger file explorer integration
-- Plug 'francoiscabrol/ranger.vim'

-- -- nvim-colorizer.lua: Colorize rgb values and so on
-- Plug 'norcalli/nvim-colorizer.lua'

-- -- vim-less: less (css files) syntax highlighting/indenting/completion
-- Plug 'groenewege/vim-less'

-- -- vim-qml: Qml highlighting
-- Plug 'peterhoeg/vim-qml'

-- --  MOS 6502,65c02,65816 Assembly syntax + Merlin Add-Ons
-- Plug 'digarok/asmMerlin65816.vim'

-- -- vim-unimpaired: handy shortcuts with brackets
-- Plug 'tpope/vim-unimpaired'

-- -- gv.vim: commit explorer
-- Plug 'junegunn/gv.vim'

-- -- vim-abolish: Powerfull syntax tools (Mainly for Substitution and coercion)
-- Plug 'tpope/vim-abolish'

-- -- vim-multiple-cursors: CTRL-n to select many occurences of the same pattern
-- Plug 'terryma/vim-multiple-cursors'

-- -- javascript-libraries-syntax.vim: syntax for JavaScript libraries
-- Plug 'othree/javascript-libraries-syntax.vim'

-- All of your Plugins must be added before the following line
-- Add plugins to &runtimepath
vim.call('plug#end')

-------------------------------------------------------------------------------
--                           PLUGINS CONFIGURATION
-------------------------------------------------------------------------------

---- vim-javascript ----
vim.g.javascript_plugin_jsdoc = 1


---- vim-markdown ----
vim.g.vim_markdown_folding_disabled=1


---- vim-airline ----
-- Enable the list of buffers
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g.airline_powerline_fonts = 0
vim.g.airline_theme='hybridline'
vim.g.airline_section_b = "%{airline#extensions#branch#get_head()}"
vim.g.airline_section_y = ""
vim.g.airline_section_z = "%3p%% %#__accent_bold#% %l% %#__restore__#% /%#__accent_bold#% %L% %#__restore__#% \\ :%3v"


---- yankring ----
vim.g.yankring_history_dir = '~/.vim'
vim.g.yankring_clipboard_monitor=0 -- fix for yankring and neovim


---- mason ----
require("mason").setup()
require("mason-lspconfig").setup()


---- nvim-cmp ----
vim.opt.completeopt = "menu,menuone,noselect"

-- Set up nvim-cmp.
-- local luasnip = require('luasnip')
-- local cmp = require'cmp'

-- require("luasnip.loaders.from_vscode").lazy_load()
-- cmp.setup({
--   snippet = {
--     expand = function(args)
--       luasnip.lsp_expand(args.body)
--     end,
--   },
--   window = {
--     -- Commented as it seems to break while searching
--     -- completion = cmp.config.window.bordered(),
--     documentation = cmp.config.window.bordered(),
--   },
--   mapping = cmp.mapping.preset.insert({
--     ["<Tab>"] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_next_item()
--       elseif luasnip.expand_or_jumpable() then
--         luasnip.expand_or_jump()
--       else
--         fallback()
--       end
--     end, { "i", "s" }),
--     ["<S-Tab>"] = cmp.mapping(function(fallback)
--       if cmp.visible() then
--         cmp.select_prev_item()
--       elseif luasnip.jumpable(-1) then
--         luasnip.jump(-1)
--       else
--         fallback()
--       end
--     end, { "i", "s" }),
--     -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
--     ['<CR>'] = cmp.mapping.confirm({ select = true }),
--   }),
--   sources = cmp.config.sources({
--     { name = 'luasnip' },
--     { name = 'nvim_lsp' },
--     { name = 'buffer' },
--   })
-- })

-- -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline({ '/', '?' }, {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = 'buffer' }
--   }
-- })

-- -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
-- cmp.setup.cmdline(':', {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = 'path' }
--   }, {
--     { name = 'cmdline' }
--   })
-- })

-- -- Set up lspconfig.
-- -- Use an on_attach function to only map the following keys
-- -- after the language server attaches to the current buffer
-- local on_attach = function(_, bufnr)
--   -- Enable completion triggered by <c-x><c-o>
--   vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

--   -- Mappings.
--   -- See `:help vim.lsp.*` for documentation on any of the below functions
--   local bufopts = { noremap=true, silent=true, buffer=bufnr }
--   vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
-- end

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- capabilities.textDocument.completion.completionItem = {
--   documentationFormat = { "markdown", "plaintext" },
--   snippetSupport = true,
--   preselectSupport = true,
--   insertReplaceSupport = true,
--   labelDetailsSupport = true,
--   deprecatedSupport = true,
--   commitCharactersSupport = true,
--   tagSupport = { valueSet = { 1 } },
--   resolveSupport = {
--     properties = {
--       "documentation",
--       "detail",
--       "additionalTextEdits",
--     },
--   },
-- }
-- local lspconfig = require("lspconfig")
-- local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'sumneko_lua' }

-- -- Ensure the servers above are installed
-- require('mason-lspconfig').setup {
--   ensure_installed = servers,
-- }

-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     capabilities = capabilities,
--     on_attach = on_attach
--   }
-- end

---- indent-guides ----
vim.cmd("set ts=2 sw=2 et")
vim.g.indent_guides_start_level = 1
vim.g.indent_guides_guide_size = 1


---- rainbow_parentheses
vim.g.rbpt_colorpairs = {
  {'brown',       'RoyalBlue3'},
  {'Darkblue',    'SeaGreen3'},
  {'darkgray',    'DarkOrchid3'},
  {'darkgreen',   'firebrick3'},
  {'darkcyan',    'RoyalBlue3'},
  {'darkred',     'SeaGreen3'},
  {'darkmagenta', 'DarkOrchid3'},
  {'brown',       'firebrick3'},
  {'gray',        'RoyalBlue3'},
  {'black',       'SeaGreen3'},
  {'darkmagenta', 'DarkOrchid3'},
  {'Darkblue',    'firebrick3'},
  {'darkgreen',   'RoyalBlue3'},
  {'darkcyan',    'SeaGreen3'},
  {'darkred',     'DarkOrchid3'},
  {'red',         'firebrick3'},
}
vim.g.rbpt_max = 16
vim.g.rbpt_loadcmd_toggle = 0


---- switch ----
vim.g.switch_mapping = "-"
local switch_builtins = {
  ampersands = {'&&', '||'},
  capital_true_false = {
    ['\\CTrue'] =  'False',
    ['\\CFalse'] = 'True',
  },
  true_false = {
    ['\\Ctrue'] = 'false',
    ['\\Cfalse'] = 'true',
  },
}
local switch_custom_rules = {
  on_off = {
    ['\\<on\\>'] =  'off',
    ['\\<off\\>'] = 'on',
  },
  import_export = {
    ['\\<import\\>'] =  'export',
    ['\\<export\\>'] = 'import',
  },
  if_else_else_if = {
    ['\\<if\\>'] =  'else if',
    ['\\<else if\\>'] = 'else',
    ['\\<else\\>'] = 'if',
  },
  camel_case_underscore = {
    ['\\<[a-z0-9]\\+_\\k\\+\\>'] = {
      ['_\\(.\\)'] = '\\U\\1'
    },
    ['\\<[a-z0-9]\\+[A-Z]\\k\\+\\>'] = {
      ['\\([A-Z]\\)'] = '_\\l\\1'
    },
  },
  js_arrow_functions = {
    ['function(\\(.*\\){'] = '(\\1=> {',
    ['(\\(.*\\)=> {'] = 'function(\\1{',
  },
}
vim.g.switch_definitions = switch_builtins;
vim.g.switch_custom_definitions = {
  switch_custom_rules.on_off,
  switch_custom_rules.camel_case_underscore,
  switch_custom_rules.if_else_else_if,
}

local function add_js_switch_def()
  vim.b.switch_custom_definitions = {
    switch_custom_rules.import_export,
    switch_custom_rules.js_arrow_functions,
  }
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescript",
  callback = add_js_switch_def
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript",
  callback = add_js_switch_def
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript.*",
  callback = add_js_switch_def
})


---- vim-bookmarks ----
vim.g.bookmark_auto_save = 0
vim.g.bookmark_show_warning = 0
vim.g.bookmark_show_toggle_warning = 0


---- nvim-tree.lua ----
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "name",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

---- indent-blankline.nvim ----
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}


---- gitsigns.vim ----
require('gitsigns').setup()


---- toggleterm.nvim ----
require("toggleterm").setup({})


---- null-ls.nvim ----
local null_ls = require("null-ls")
local sources = {
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.completion.spell,
  null_ls.builtins.code_actions.eslint_d,
  null_ls.builtins.code_actions.gitsigns,
}
require("null-ls").setup({ sources = sources })


---- which-key ----
require("which-key").setup({})


---- vim-jsx ----
vim.g.jsx_ext_required = 0 -- Allow JSX in normal JS files


---- vim-highlightedyank ----
vim.g.highlightedyank_highlight_duration = 250


-- ---- neoterm ----
-- vim.g.neoterm_default_mod = "vertical"


-- ---- nerdtree ----
-- autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
--       \ b:NERDTreeType == "primary") | q | endif


-- ---- ctrlP ----
-- vim.g.loaded_ctrlp_yankring = 0
-- vim.g.ctrlp_custom_ignore = {
--       \'dir':  '\v[\/]\.(git|hg|svn)$',
--       \'file': '\v\.(exe|so|dll)$',
--       \'tmp': '.*tmp/.*'}


-- ---- tsuquyomi ----
-- autocmd FileType typescript setlocal completeopt+=menu,preview


---- coc.nvim ----

local keyset = vim.keymap.set
-- Auto complete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use tab for trigger completion with characters ahead and navigate.
-- NOTE: There's always complete item selected by default, you may want to enable
-- no select by `"suggest.noselect": true` in your configuration file.
-- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- other plugin before putting this into your config.
local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice.
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- Use <c-j> to trigger snippets
-- keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- Use <c-space> to trigger completion.
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- Use `[g` and `]g` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- GoTo code navigation.
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
-- keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
keyset("n", "gr", "<Plug>(coc-references)", {silent = true})

-- Use K to show documentation in preview window.
function _G.show_docs()
    local cw = vim.fn.expand('<cword>')
    if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        vim.api.nvim_command('h ' .. cw)
    elseif vim.api.nvim_eval('coc#rpc#ready()') then
        vim.fn.CocActionAsync('doHover')
    else
        vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

-- Highlight the symbol and its references when holding the cursor.
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Symbol renaming.
keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})

-- Formatting selected code.
keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})

-- Setup formatexpr specified filetype(s).
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder.
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Applying codeAction to the selected region.
-- Example: `<leader>aap` for current paragraph
local opts = {silent = true, nowait = true}
keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)
keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", opts)

-- Remap keys for applying codeAction to the current buffer.
keyset("n", "<leader>ac", "<Plug>(coc-codeaction)", opts)

-- Apply AutoFix to problem on the current line.
keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", opts)

-- Run the Code Lens action on the current line.
keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", opts)

-- Map function and class text objects
-- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
keyset("x", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("o", "if", "<Plug>(coc-funcobj-i)", opts)
keyset("x", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("o", "af", "<Plug>(coc-funcobj-a)", opts)
keyset("x", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("o", "ic", "<Plug>(coc-classobj-i)", opts)
keyset("x", "ac", "<Plug>(coc-classobj-a)", opts)
keyset("o", "ac", "<Plug>(coc-classobj-a)", opts)

-- Remap <C-f> and <C-b> for scroll float windows/popups.
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true, expr = true}
keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)
keyset("i", "<C-f>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', opts)
keyset("i", "<C-b>",
       'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', opts)
keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', opts)
keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', opts)

-- Use CTRL-S for selections ranges.
-- Requires 'textDocument/selectionRange' support of language server.
keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})

-- Add `:Format` command to format current buffer.
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer.
vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer.
vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Add (Neo)Vim's native statusline support.
-- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- provide custom statusline: lightline.vim, vim-airline.
vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

-- Mappings for CoCList
-- code actions and coc stuff
---@diagnostic disable-next-line: redefined-local
local opts = {silent = true, nowait = true}
-- Show all diagnostics.
keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", opts)
-- Manage extensions.
keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", opts)
-- Show commands.
keyset("n", "<space>c", ":<C-u>CocList commands<cr>", opts)
-- Find symbol of current document.
keyset("n", "<space>o", ":<C-u>CocList outline<cr>", opts)
-- Search workspace symbols.
keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", opts)
-- Do default action for next item.
keyset("n", "<space>j", ":<C-u>CocNext<cr>", opts)
-- Do default action for previous item.
keyset("n", "<space>k", ":<C-u>CocPrev<cr>", opts)
-- Resume latest coc list.
keyset("n", "<space>p", ":<C-u>CocListResume<cr>", opts)


-- ---- Supertab ----
-- vim.g.SuperTabDefaultCompletionType = '<C-n>'


-- " ---- YouCompleteMe ----
-- vim.g.ycm_key_list_select_completion = {'<C-n>', '<Down>'}
-- vim.g.ycm_key_list_previous_completion = {'<C-p>', '<Up>'}

-- vim.g.ycm_autoclose_preview_window_after_completion = 1
-- vim.g.ycm_autoclose_preview_window_after_insertion = 1

-- vim.g.ycm_keep_logfiles = 1
-- vim.g.ycm_log_level = 'debug'

---- vim.g.ycm_server_python_interpreter="/usr/bin/python"


-- -- ---- ultisnips ----
-- vim.g.UltiSnipsExpandTrigger="<c-SPACE>"
-- vim.g.UltiSnipsJumpForwardTrigger="<c-SPACE>"
-- vim.g.UltiSnipsJumpBackwardTrigger="<c-LEFT>"

-------------------------------------------------------------------------------
--                                SETTINGS
-------------------------------------------------------------------------------

---- Search with ag ----
-- If ag (the silver searcher) is available, use it instead of grep
if vim.fn.executable('ag') then
  -- Use ag over grep
  vim.opt.grepprg = "ag\\ --nogroup\\ --nocolor"
  -- Use ag in CtrlP for listing files. Lightning fast and respect .gitignore
  vim.g.ctrlp_user_command = "ag %s -l --nocolor -g \"\""
  -- Use ag in Unite as recursive command.
  vim.g.unite_source_rec_async_command = {
    'ag',
    '--follow',
    '--nocolor',
    '--nogroup',
    '--hidden',
    '-g',
    ''
  }
end

-- Set history to 1000 lines
vim.opt.history = 1000

-- Leader key: space
vim.g.mapleader = " "

-- Incremental search (search while typing)
vim.opt.incsearch = true

-- Auto-completion in command bar
vim.opt.wildmenu = true

vim.opt.laststatus = 2
vim.opt.backspace = "2"

-- Hide buffers when they are abandoned
vim.opt.hidden = true

-- Shorter update time for plugins
vim.opt.updatetime = 400

-- Always show the signcolumn, otherwise it would shift the text each time
-- diagnostics appear/become resolved.
vim.opt.signcolumn = "yes"

 -- More space for bottom messages
vim.opt.cmdheight = 2

-- Join comments correctly
if vim.v.version > 703 or vim.v.version == 703 and vim.has('patch541') then
  vim.opt.formatoptions:append("j")
end

-- TODO understand how to translate those into lua
vim.cmd([[
" " toggle scroll lock led on insert/normal transitions
" augroup scrollLed
"   au!
"   autocmd InsertEnter * silent exe "!xset led"
"   autocmd InsertLeave * silent exe "!xset -led"
" augroup END

" ---- Basic Settings ----
" Load indentation rules and plugins according to filetype
filetype plugin indent on
]]);

vim.opt.mouse:append("a") -- enable mouse usage

vim.opt.undolevels = 1000
vim.opt.wildignore= "*.swp,*.bak,*.pyc,*.class"
vim.opt.title = true
vim.opt.visualbell = true
vim.opt.errorbells = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.list = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enter/quit paste mode
vim.opt.pastetoggle = "<F2>"

-- Authorize project-specific vimrc but in secure mode
vim.opt.exrc = true
vim.opt.secure = true


---- Tabs format ----
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.expandtab = true


---- Folding methods ----
-- Folds must be defined by entering commands (such as zf)
vim.opt.foldmethod = "manual"

-- Always open all folds by default
vim.opt.foldlevel = 99

-- Enables JavaScript code folding
vim.g.javascript_fold = 1

---- GUI ----
-- Replace some chars visualy, like trailing ...
vim.opt.listchars = "tab:>-,trail:.,extends:#,nbsp:."
vim.opt.list = false

vim.opt.splitbelow = true -- An horizontal split is done below the current one
vim.opt.splitright = true -- A vertical split is done at the right of the current one

-- decrease message size and don't give |ins-completion-menu| messages.
-- For example,
-- -- XXX completion (YYY)", "match 1 of 2", "The only match",
-- Pattern not found", "Back at original", etc.
vim.opt.shortmess = "ac"

-- Highlight Search
vim.opt.hlsearch = true

vim.opt.showcmd = true -- Show command in status line
vim.opt.showmatch = true -- Show matching brackets.

vim.opt.ruler = true -- Show position of cursor
vim.opt.number = true -- Show current line number
-- vim.opt.relativenumber = true -- Show relative line numbers

-- Enables HTML/CSS syntax highlighting in your JavaScript file
vim.g.javascript_enable_domhtmlcs = 1

-- Do not redraw screen in the middle of a macro. Makes them complete faster.
vim.opt.lazyredraw = true

-- Persistent undo, even if you close and reopen Vim. Super great when combined
-- with the undotree plugin.
vim.opt.undofile = true

vim.opt.foldcolumn = "3"

-- inccommand shows you in realtime what changes your ex command should make.
-- Right now it only supports s, but even that is incredibly useful. If you type
-- :s/regex, it will highlight what matches regex. If you then add /change, it
-- will show all matches replaced with change. This works with all of the regex
-- properties, include backreferences and groups.
vim.opt.inccommand = "split"

vim.cmd([[
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


"-----------------------------------------------------------------------------
"                                 MAPPING
"-----------------------------------------------------------------------------

" ---- Close and Save ----
" Close buffer
noremap <silent> <LEADER>x :bp!<bar>sp!<bar>bn!<bar>bd!<CR>

" Save buffer
noremap <silent> <LEADER>s :w<CR>
noremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <Esc>:w<CR>a

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
noremap <silent> <C-S-Tab> :bprevious!<CR>
noremap <silent> <C-Tab> :bnext!<CR>

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
nmap <silent> <LEADER>ee :NvimTreeToggle<CR>

" CoC
nmap <silent> <LEADER>c :CocList<CR>

" FZF:
" Open from name
" noremap <silent> <LEADER>p :FZF<CR>

" ---- Telescope ----
noremap <leader>p <cmd>Telescope find_files<cr>
noremap <leader>b <cmd>Telescope buffers<cr>
noremap <leader>fg <cmd>Telescope live_grep<cr>
noremap <leader>fh <cmd>Telescope help_tags<cr>

" Navigate between buffers
" noremap <silent> <LEADER>b :Buffers<CR>

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
noremap <C-`> <C-\><C-n>:ToggleTerm direction=vertical size=80<CR>
inoremap <C-`> <C-\><C-n>:ToggleTerm direction=vertical size=80<CR>
tnoremap <C-`> <C-\><C-n>:ToggleTerm direction=vertical size=80<CR>
noremap <A-`> <C-\><C-n>:ToggleTerm direction=vertical size=80<CR>
inoremap <A-`> <C-\><C-n>:ToggleTerm direction=vertical size=80<CR>
tnoremap <A-`> <C-\><C-n>:ToggleTerm direction=vertical size=80<CR>
tnoremap <C-w> <C-\><C-n><C-w>

" Noop bad habits
" inoremap <ESC> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

noremap <A-Right> <C-\><C-n><C-w>2>
inoremap <A-Right> <C-\><C-n><C-w>2>i
tnoremap <A-Right> <C-\><C-n><C-w>2>

noremap <A-Left> <C-\><C-n><C-w>2<
inoremap <A-Left> <C-\><C-n><C-w>2<i
tnoremap <A-Left> <C-\><C-n><C-w>2<

noremap <A-End> <C-\><C-n><C-w>\|
inoremap <A-End> <C-\><C-n><C-w>\|i
tnoremap <A-End> <C-\><C-n><C-w>\|

noremap <A-Home> <C-\><C-n><C-w>=
inoremap <A-Home> <C-\><C-n><C-w>=i
tnoremap <A-Home> <C-\><C-n><C-w>=

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
]]);


-----------------------------------------------------------------------------
--                             COLORSCHEME
-----------------------------------------------------------------------------

-- If using a dark background within the editing area and syntax highlighting
-- turn on this option as well
vim.opt.background = "dark"

-- Remove (or comment) this line if the following colorscheme does not exist
vim.cmd([[colorscheme hybrid]])
