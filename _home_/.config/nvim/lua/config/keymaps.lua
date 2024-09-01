-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local silent_and_nowait = { silent = true, nowait = true }

-- jk to Escape
vim.keymap.set("i", "jk", [[<C-\><C-n>]])
vim.keymap.set("i", "kj", [[<C-\><C-n>]])

-- Buffer navigation
vim.keymap.set("n", "<C-j>", ":bprevious!<CR>", silent_and_nowait)
vim.keymap.set("n", "<C-S-Tab>", ":bprevious!<CR>", silent_and_nowait)
vim.keymap.set("n", "<C-k>", ":bnext!<CR>", silent_and_nowait)
vim.keymap.set("n", "<C-Tab>", ":bnext!<CR>", silent_and_nowait)

-- Save buffer
vim.keymap.set("n", "<LEADER>s", ":w<CR>", silent_and_nowait)
vim.keymap.set("n", "<C-s>", ":w<CR>", silent_and_nowait)
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>a", silent_and_nowait)

-- Quit
vim.keymap.set("n", "<LEADER>q", "ZZ<ESC>", silent_and_nowait)

-- Close buffer
vim.keymap.set("n", "<LEADER>x", ":bp!<bar>sp!<bar>bn!<bar>bd!<CR>", silent_and_nowait)

-- Copy in clipboard with CTRL-c on visual mode
vim.keymap.set("v", "<C-c>", '"+y', silent_and_nowait)
