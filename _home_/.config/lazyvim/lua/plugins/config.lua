return {
  {
    -- vim-eunuch: various UNIX tools
    "tpope/vim-eunuch",
  },
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git diff in a split" },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        always_show_bufferline = true,
      },
    },
  },
  {
    -- vim-mark: Mark and unmark words
    "inkarkat/vim-ingo-library",
    "peaBerberian/Mark--Karkat",
  },
  {
    "stevearc/oil.nvim",
    opts = {
      -- Oil will take over directory buffers (e.g. `vim .` or `:e src/`)
      -- Set to false if you want some other plugin (e.g. netrw) to open when you edit directories.
      default_file_explorer = true,
      columns = {
        "icon",
        "size",
        "mtime",
      },
    },
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          typescript = { "prettier" },
          javascript = { "prettier" },
          javascriptreact = { "prettier" },
          typescriptreact = { "prettier" },
          markdown = { "prettier" },
          rust = { "rustfmt" },
        },
        formatters = {
          -- # Example of using shfmt with extra args
          shfmt = {
            prepend_args = { "-i", "2" },
          },
        },
      }
      return opts
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      -- Set longer timeout for notifications
      timeout = 8000,
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    -- REMOVE THIS once this issue is fixed: https://github.com/yioneko/vtsls/issues/159
    opts = {
      routes = {
        {
          filter = {
            event = "notify",
            find = "Request textDocument/inlayHint failed",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
