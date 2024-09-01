-- -- Mark / Unmark
-- vim.keymap.set("n", "<LEADER>m", "<Plug>MarkSet", { silent = true })
-- vim.keymap.set("v", "<LEADER>m", "<Plug>MarkSet", { silent = true })
-- vim.keymap.set("n", "<LEADER>M", ":MarkClear<CR>:nohl<CR>", { silent = true })

return {
  {
    -- vim-eunuch: various UNIX tools
    "tpope/vim-eunuch",
  },
  -- {
  --   -- vim-mark: Mark and unmark words
  --   "inkarkat/vim-ingo-library",
  --   "inkarkat/vim-mark",
  -- },
  {
    "stevearc/conform.nvim",
    opts = function()
      local opts = {
        formatters_by_ft = {
          lua = { "stylua" },
          fish = { "fish_indent" },
          sh = { "shfmt" },
          typescript = { "prettier" },
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
      timeout = 8000,
    },
  },
}
