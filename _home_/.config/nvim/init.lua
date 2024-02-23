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
--       '$HOME/.config/nvim/init.lua' for nvim).
--
--    4. Enjoy this bloated conf!

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

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- All the following plugins below are added thanks to their github repo.
-- You can go on the respective github url for more informations.
require("lazy").setup({
  -- More colorschemes
  "sainnhe/sonokai",

  -- -- coc.nvim: Auto-completion engine
  -- { 'neoclide/coc.nvim', branch = 'release' },

  -- mason: install lsp, linter etc.
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',

  -- luaSnip: snippet engine
  'L3MON4D3/LuaSnip',
  'rafamadriz/friendly-snippets',

  -- editorconfig-vim: Handle `.editorconfig` files
  'editorconfig/editorconfig-vim',

  -- vim-airline: 1337 interface :p. Has to have compatible fonts
  'bling/vim-airline',

  -- Powerline themes
  'vim-airline/vim-airline-themes',

  -- vim-fugitive: Git tools
  'tpope/vim-fugitive',

  -- gitsigns.nvim: git diff in vim gitgutter
  'lewis6991/gitsigns.nvim',

  -- tpope/vim-repeat: Repeat some plugins command with '.'
  'tpope/vim-repeat',

  -- vim-sneak: Very convenient motion plugin (s + 2 letters)
  'justinmk/vim-sneak',

  -- vim-commentary: Command gcc to add commentary easily
  'tpope/vim-commentary',

  -- vim-mark: Mark and unmark words
  'inkarkat/vim-ingo-library',
  'inkarkat/vim-mark',

  -- vim-EnhancedJumps: Better jump list management
  -- 'inkarkat/vim-EnhancedJumps',

  -- ALE: linting support
  'dense-analysis/ale',

  -- switch.vim: Switch text easily
  'AndrewRadev/switch.vim',

  -- matchit: Extended % matching
  'tmhedberg/matchit',

  -- undotree: undo history visualizer
  'mbbill/undotree',

  -- vim-eunuch: various UNIX tools
  'tpope/vim-eunuch',

  -- rainbow_parentheses: rainbow parentheses to easily match them
  'kien/rainbow_parentheses.vim',

  -- vim-highlightedyank: highlight yank selections for a few seconds
  'machakann/vim-highlightedyank',

  -- telescope.nvim: fuzzy finder
  'nvim-lua/plenary.nvim',
  { 'nvim-telescope/telescope.nvim', branch = '0.1.x' },

  -- Treesitter configurations
  -- { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },

  -- Prettier config
  {
    'prettier/vim-prettier',
    ['build'] = 'yarn install --frozen-lockfile --production',
  },


  -- which-key: displays a popup with possible keybindings of the command you
  -- started typing
  'folke/which-key.nvim',

  -- nvim-web-devicons: Adds file type icons to Vim plugins
  'kyazdani42/nvim-web-devicons',

  -- nvim-tree.lua: File Explorer
  'kyazdani42/nvim-tree.lua',

  -- indent-blankline.nvim: Show ident lines
  'lukas-reineke/indent-blankline.nvim',

  -- toggleterm.nvim: terminal improvements
  'akinsho/toggleterm.nvim',

  -- vim-jsx: jsx highlighting and indenting
  'mxw/vim-jsx',

  -- YankRing.vim: Cycle through yanks and prodie visual history
  'vim-scripts/YankRing.vim',

  -- iamcco/markdown-preview.nvim: Markdown previewer
  { 'iamcco/markdown-preview.nvim', ['build'] = 'cd app && yarn install'  },

  -- folke/noice.nvim beautiful UI for commandline, messages and popup
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   opts = {
  --     -- add any options here
  --   },
  --   dependencies = {
  --     -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
  --     "MunifTanjim/nui.nvim",
  --     -- OPTIONAL:
  --     --   `nvim-notify` is only needed, if you want to use the notification view.
  --     --   If not available, we use `mini` as the fallback
  --     "rcarriga/nvim-notify",
  --   }
  -- },

  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",

  'folke/trouble.nvim',
})

-------------------------------------------------------------------------------
--                           PLUGINS CONFIGURATION
-------------------------------------------------------------------------------

local keyset = vim.keymap.set
local silent_and_nowait = {silent = true, nowait = true}
local silent_nowait_and_expr = {silent = true, nowait = true, expr = true}

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


---- noice ----
-- require("noice").setup({
--   lsp = {
--     -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
--     override = {
--       ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
--       ["vim.lsp.util.stylize_markdown"] = true,
--       ["cmp.entry.get_documentation"] = true,
--     },
--   },
--   -- you can enable a preset for easier configuration
--   presets = {
--     bottom_search = true, -- use a classic bottom cmdline for search
--     command_palette = true, -- position the cmdline and popupmenu together
--     long_message_to_split = true, -- long messages will be sent to a split
--     inc_rename = false, -- enables an input dialog for inc-rename.nvim
--     lsp_doc_border = false, -- add a border to hover docs and signature help
--   },
-- })


---- nvim-cmp ----

vim.opt.completeopt = "menu,menuone,noselect"

-- Set up nvim-cmp.
local luasnip = require('luasnip')
local cmp = require'cmp'

require("luasnip.loaders.from_vscode").lazy_load()
cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    -- Commented as it seems to break while searching
    -- completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'luasnip' },
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})


---- mason ----
require("mason").setup()
require("mason-lspconfig").setup()


---- nvim-lspconfig ----

local lspconfig = require('lspconfig')
local util = require("lspconfig/util")
local buf_map = function(bufnr, mode, lhs, rhs, opts)
    vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts or {
        silent = true,
    })
end
-- local capabilities = require('cmp_nvim_lsp').default_capabilities()
local on_attach = function(client, bufnr)
    vim.cmd("command! LspImplementation lua vim.lsp.buf.implementation()")
    -- buf_map(bufnr, "n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<cr>")
    buf_map(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.rename()<cr>")
    buf_map(bufnr, "n", "gy", "<cmd>lua vim.lsp.buf.type_definition()<cr>")
    buf_map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>")
    buf_map(bufnr, "n", "<leader>r", "<cmd>lua vim.lsp.buf.references()<cr>")
    -- buf_map(bufnr, "n", "<leader>q",
    --     '<cmd>lua vim.lsp.buf.format({ async = true })<cr>')
    -- buf_map(bufnr, "v", "<leader>q",
    --     '<cmd>lua vim.lsp.buf.format()<cr>')
    buf_map(bufnr, "n", "<leader>,",
        "<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })<cr>")
    buf_map(bufnr, "n", "<leader>.",
        "<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })<cr>")
    buf_map(bufnr, "n", "<leader><leader>,",
        "<cmd>lua vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.WARN })<cr>")
    buf_map(bufnr, "n", "<leader><leader>.",
        "<cmd>lua vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.WARN })<cr>")
    buf_map(bufnr, "n", "<leader><", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
    buf_map(bufnr, "n", "<leader>>", "<cmd>lua vim.diagnostic.goto_next()<cr>")
    buf_map(bufnr, "n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>")
    buf_map(bufnr, "n", "<Leader>va", "<cmd>lua vim.diagnostic.open_float()<cr>")
    buf_map(bufnr, "i", "<C-x><C-x>", "<cmd>lua vim.lsp.buf.signature_help()<cr>")

    if client.server_capabilities.inlayHintProvider then
        vim.lsp.inlay_hint(bufnr, true)
    end
    vim.keymap.set("n", "<F2>", function()
      vim.lsp.inlay_hint(bufnr)
    end, silent_and_nowait)
  end

lspconfig.tsserver.setup({
    root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
    init_options = {
      preferences = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = true,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
        importModuleSpecifierPreference = 'non-relative',
      },
    },
    on_attach = function(client, bufnr)
      client.server_capabilities.document_formatting = false
      client.server_capabilities.document_range_formatting = false
      on_attach(client, bufnr)
    end,
  })

lspconfig.rust_analyzer.setup {
  -- Server-specific settings. See `:help lspconfig-setup`
  settings = {
    ['rust-analyzer'] = {
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true
      },
      add_return_type = {
        enable = true
      },
      diagnostics = {
        enable = true;
      },
      inlayHints = {
        enable = true,
        showParameterNames = true,
        parameterHintsPrefix = "<- ",
        otherHintsPrefix = "=> ",
      },
    },
  },
}

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})


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
vim.g.switch_mapping = ""
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
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

---- indent-blankline.nvim ----
require("ibl").setup()


---- gitsigns.vim ----
require('gitsigns').setup()


---- toggleterm.nvim ----
require("toggleterm").setup({})


---- null-ls.nvim ----
-- local null_ls = require("null-ls")
-- local sources = {
--   null_ls.builtins.formatting.stylua,
--   null_ls.builtins.diagnostics.eslint,
--   null_ls.builtins.completion.spell,
--   null_ls.builtins.code_actions.eslint_d,
--   null_ls.builtins.code_actions.gitsigns,
-- }
-- require("null-ls").setup({ sources = sources })


---- which-key ----
require("which-key").setup({})


---- vim-jsx ----
vim.g.jsx_ext_required = 0 -- Allow JSX in normal JS files


---- vim-highlightedyank ----
vim.g.highlightedyank_highlight_duration = 250

---- nvim-treesitter ----
-- require'nvim-treesitter.configs'.setup {
--   -- A list of parser names, or "all" (the five listed parsers should always be installed)
--   ensure_installed = { "javascript", "typescript", "rust", "markdown", "html" },

--   -- Install parsers synchronously (only applied to `ensure_installed`)
--   sync_install = false,

--   -- Automatically install missing parsers when entering buffer
--   -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--   auto_install = false,

--   -- List of parsers to ignore installing (or "all")
--   ignore_install = {},

--   ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
--   -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!
--   highlight = {
--     enable = true,

--     -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
--     -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
--     -- the name of the parser)
--     -- list of language that will be disabled
--     disable = {},

--     -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--     -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--     -- Using this option may slow down your editor, and you may see some duplicate highlights.
--     -- Instead of true it can also be a list of languages
--     additional_vim_regex_highlighting = false,
--   },

--   incremental_selection = {
--     enable = true,
--     keymaps = {
--       init_selection = '<CR>',
--       scope_incremental = '<CR>',
--       -- node_incremental = '<TAB>',
--       node_decremental = '<S-CR>',
--     },
--   },
-- }


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

-- -- Auto complete
-- function _G.check_back_space()
--     local col = vim.fn.col('.') - 1
--     return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
-- end

-- -- Use tab for trigger completion with characters ahead and navigate.
-- -- NOTE: There's always complete item selected by default, you may want to enable
-- -- no select by `"suggest.noselect": true` in your configuration file.
-- -- NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
-- -- other plugin before putting this into your config.
-- local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
-- keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
-- keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
--
-- -- Make <CR> to accept selected completion item or notify coc.nvim to format
-- -- <C-g>u breaks current undo, please make your own choice.
-- keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

-- -- Use <c-j> to trigger snippets
-- -- keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
-- -- Use <c-space> to trigger completion.
-- keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- -- Use `[g` and `]g` to navigate diagnostics
-- -- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
-- keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", {silent = true})
-- keyset("n", "]g", "<Plug>(coc-diagnostic-next)", {silent = true})

-- -- GoTo code navigation.
-- keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})
-- keyset("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
-- -- keyset("n", "gi", "<Plug>(coc-implementation)", {silent = true})
-- keyset("n", "gr", "<Plug>(coc-references)", {silent = true})

-- -- Use K to show documentation in preview window.
-- function _G.show_docs()
--     local cw = vim.fn.expand('<cword>')
--     if vim.fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
--         vim.api.nvim_command('h ' .. cw)
--     elseif vim.api.nvim_eval('coc#rpc#ready()') then
--         vim.fn.CocActionAsync('doHover')
--     else
--         vim.api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
--     end
-- end
-- keyset("n", "K", '<CMD>lua _G.show_docs()<CR>', {silent = true})

-- -- Highlight the symbol and its references when holding the cursor.
-- vim.api.nvim_create_augroup("CocGroup", {})
-- vim.api.nvim_create_autocmd("CursorHold", {
--     group = "CocGroup",
--     command = "silent call CocActionAsync('highlight')",
--     desc = "Highlight symbol under cursor on CursorHold"
-- })

-- -- Symbol renaming.
-- keyset("n", "<leader>rn", "<Plug>(coc-rename)", {silent = true})

-- -- Formatting selected code.
-- keyset("x", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})
-- keyset("n", "<leader>f", "<Plug>(coc-format-selected)", {silent = true})

-- -- Setup formatexpr specified filetype(s).
-- vim.api.nvim_create_autocmd("FileType", {
--     group = "CocGroup",
--     pattern = "typescript,json",
--     command = "setl formatexpr=CocAction('formatSelected')",
--     desc = "Setup formatexpr specified filetype(s)."
-- })

-- -- Update signature help on jump placeholder.
-- vim.api.nvim_create_autocmd("User", {
--     group = "CocGroup",
--     pattern = "CocJumpPlaceholder",
--     command = "call CocActionAsync('showSignatureHelp')",
--     desc = "Update signature help on jump placeholder"
-- })

-- -- Applying codeAction to the selected region.
-- -- Example: `<leader>aap` for current paragraph
-- keyset("x", "<leader>a", "<Plug>(coc-codeaction-selected)", silent_and_nowait)
-- keyset("n", "<leader>a", "<Plug>(coc-codeaction-selected)", silent_and_nowait)

-- -- Remap keys for applying codeAction to the current buffer.
-- keyset("n", "<leader>ac", "<Plug>(coc-codeaction)", silent_and_nowait)

-- -- Apply AutoFix to problem on the current line.
-- keyset("n", "<leader>qf", "<Plug>(coc-fix-current)", silent_and_nowait)

-- -- Run the Code Lens action on the current line.
-- keyset("n", "<leader>cl", "<Plug>(coc-codelens-action)", silent_and_nowait)

-- -- Map function and class text objects
-- -- NOTE: Requires 'textDocument.documentSymbol' support from the language server.
-- keyset("x", "if", "<Plug>(coc-funcobj-i)", silent_and_nowait)
-- keyset("o", "if", "<Plug>(coc-funcobj-i)", silent_and_nowait)
-- keyset("x", "af", "<Plug>(coc-funcobj-a)", silent_and_nowait)
-- keyset("o", "af", "<Plug>(coc-funcobj-a)", silent_and_nowait)
-- keyset("x", "ic", "<Plug>(coc-classobj-i)", silent_and_nowait)
-- keyset("o", "ic", "<Plug>(coc-classobj-i)", silent_and_nowait)
-- keyset("x", "ac", "<Plug>(coc-classobj-a)", silent_and_nowait)
-- keyset("o", "ac", "<Plug>(coc-classobj-a)", silent_and_nowait)

-- -- Remap <C-f> and <C-b> for scroll float windows/popups.
-- ---@diagnostic disable-next-line: redefined-local
-- keyset("n", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', silent_nowait_and_expr)
-- keyset("n", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', silent_nowait_and_expr)
-- keyset("i", "<C-f>",
--        'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(1)<cr>" : "<Right>"', silent_nowait_and_expr)
-- keyset("i", "<C-b>",
--        'coc#float#has_scroll() ? "<c-r>=coc#float#scroll(0)<cr>" : "<Left>"', silent_nowait_and_expr)
-- keyset("v", "<C-f>", 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-f>"', silent_nowait_and_expr)
-- keyset("v", "<C-b>", 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-b>"', silent_nowait_and_expr)

-- -- Use CTRL-S for selections ranges.
-- -- Requires 'textDocument/selectionRange' support of language server.
-- keyset("n", "<C-s>", "<Plug>(coc-range-select)", {silent = true})
-- keyset("x", "<C-s>", "<Plug>(coc-range-select)", {silent = true})

-- keyset("n", "<C-;>", ":Switch<CR>", {silent = true})

-- -- Add `:Format` command to format current buffer.
-- vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- -- " Add `:Fold` command to fold current buffer.
-- vim.api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- -- Add `:OR` command for organize imports of the current buffer.
-- vim.api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- -- Add (Neo)Vim's native statusline support.
-- -- NOTE: Please see `:h coc-status` for integrations with external plugins that
-- -- provide custom statusline: lightline.vim, vim-airline.
-- vim.opt.statusline:prepend("%{coc#status()}%{get(b:,'coc_current_function','')}")

-- -- Mappings for CoCList
-- -- code actions and coc stuff
-- ---@diagnostic disable-next-line: redefined-local
-- -- Show all diagnostics.
-- keyset("n", "<space>a", ":<C-u>CocList diagnostics<cr>", silent_and_nowait)
-- -- Manage extensions.
-- keyset("n", "<space>e", ":<C-u>CocList extensions<cr>", silent_and_nowait)
-- -- Show commands.
-- keyset("n", "<space>c", ":<C-u>CocList commands<cr>", silent_and_nowait)
-- -- Find symbol of current document.
-- keyset("n", "<space>o", ":<C-u>CocList outline<cr>", silent_and_nowait)
-- -- Search workspace symbols.
-- keyset("n", "<space>s", ":<C-u>CocList -I symbols<cr>", silent_and_nowait)
-- -- Do default action for next item.
-- keyset("n", "<space>j", ":<C-u>CocNext<cr>", silent_and_nowait)
-- -- Do default action for previous item.
-- keyset("n", "<space>k", ":<C-u>CocPrev<cr>", silent_and_nowait)
-- -- Resume latest coc list.
-- keyset("n", "<space>p", ":<C-u>CocListResume<cr>", silent_and_nowait)

-- trouble.vim ----
keyset("n", "<space>t", ":<C-u>Trouble<cr>", silent_and_nowait)

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
nnoremap <silent> <C-j> :bprevious!<CR>
nnoremap <silent> <C-k> :bnext!<CR>
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
\  'typescript': ['eslint'],
\}
let g:ale_virtualtext_cursor = 'current'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_disable_lsp = 1
let g:ale_use_neovim_diagnostics_api = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

" YankRing:
" Show every lines yanked (YangRing plugin)
nnoremap <silent> <F7> :YRShow<CR>

" Tagbar:
" Open tagBar (need ctags and tagbar plugin)
" nnoremap <F8> :TagbarToggle<CR>

" Gundo:
" Display/hide Gundo
" nnoremap <silent> <F9> :GundoToggle<CR>

" vim-mark:
nnoremap <silent> <LEADER>m <Plug>MarkSet
vnoremap <silent> <LEADER>m <Plug>MarkSet
nnoremap <silent> <Leader>r <Plug>MarkRegex


" ---- Function keys ----
" F1 open help html
" F2 toggle inlay_hint
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

-- Remove (or comment) this line if the following colorscheme does not exist
vim.cmd([[
  colorscheme sonokai
  highlight! LspInlayHint guibg=NONE guifg=#558877
]])
