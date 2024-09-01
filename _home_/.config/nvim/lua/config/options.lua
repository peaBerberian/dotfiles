-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse:append("a") -- enable mouse usage

vim.opt.undolevels = 1000
vim.opt.wildignore = "*.swp,*.bak,*.pyc,*.class"
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
