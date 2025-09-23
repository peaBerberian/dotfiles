local silent_and_nowait = { silent = true, nowait = true }

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- jk to Escape
vim.keymap.set('i', 'jk', [[<C-\><C-n>]])
vim.keymap.set('i', 'kj', [[<C-\><C-n>]])

-- Buffer navigation
vim.keymap.set('n', '<C-j>', ':bprevious!<CR>', silent_and_nowait)
vim.keymap.set('n', '<C-S-Tab>', ':bprevious!<CR>', silent_and_nowait)
vim.keymap.set('n', '<C-k>', ':bnext!<CR>', silent_and_nowait)
vim.keymap.set('n', '<C-Tab>', ':bnext!<CR>', silent_and_nowait)

vim.keymap.set('n', '<LEADER>bd', ':bd!<CR>', {
  silent = true,
  nowait = true,
  desc = 'Close current buffer',
})

-- split navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

vim.keymap.set('n', '<LEADER>fb', ':Telescope buffers<CR>', {
  silent = true,
  nowait = true,
  desc = 'Find buffers',
})
vim.keymap.set('n', '<LEADER>ff', ':Telescope find_files<CR>', {
  silent = true,
  nowait = true,
  desc = 'Find files',
})
vim.keymap.set('n', '<LEADER>fg', ':Telescope git_files<CR>', {
  silent = true,
  nowait = true,
  desc = 'Find git files',
})

-- Save buffer
vim.keymap.set('n', '<C-s>', ':w<CR>', silent_and_nowait)
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>a', silent_and_nowait)

-- Copy in clipboard with CTRL-c on visual mode
vim.keymap.set('v', '<C-c>', '"+y', silent_and_nowait)

-- Marks
vim.keymap.set('n', '<LEADER>m', '<Plug>MarkSet', {
  silent = true,
  nowait = true,
  desc = 'Highlight occurences (word under cursor)',
})
vim.keymap.set('v', '<LEADER>m', '<Plug>MarkSet', {
  silent = true,
  nowait = true,
  desc = 'Highlight occurences (selection)',
})
vim.keymap.set('n', '<LEADER>M', '<Plug>MarkClear', {
  silent = true,
  nowait = true,
  desc = 'Clear all highlights',
})

vim.keymap.set('n', '<LEADER>d', '<c-w>v<cmd>lua vim.lsp.buf.definition()<CR>', {
  silent = true,
  nowait = true,
  desc = 'Go to definition in a vertical split',
})

-- Yank ring iterations
vim.keymap.set({ 'n', 'x' }, 'p', '<Plug>(YankyPutAfter)')
vim.keymap.set({ 'n', 'x' }, 'P', '<Plug>(YankyPutBefore)')
vim.keymap.set({ 'n', 'x' }, 'gp', '<Plug>(YankyGPutAfter)')
vim.keymap.set({ 'n', 'x' }, 'gP', '<Plug>(YankyGPutBefore)')
vim.keymap.set('n', '<c-p>', '<Plug>(YankyPreviousEntry)')
vim.keymap.set('n', '<c-n>', '<Plug>(YankyNextEntry)')

vim.keymap.set('n', '<LEADER>a', "<cmd>echo expand('%')<CR>", {
  nowait = true,
  desc = 'Print current filename',
})

vim.keymap.set('n', '<LEADER>xt', ':lua vim.diagnostic.open_float()<CR>', {
  silent = true,
  nowait = true,
  desc = 'Open diagnostics for current line in float',
})

-- Open terminal
vim.keymap.set('n', '<LEADER>t', ':terminal<CR>a', {
  silent = true,
  nowait = true,
  desc = 'Open terminal',
})

-- Go in normal mode in terminal
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('t', 'jk', '<C-\\><C-n>', {
  silent = true,
  nowait = true,
})
vim.keymap.set('t', 'kj', '<C-\\><C-n>', {
  silent = true,
  nowait = true,
})

-- F2 Toggle inlay hints
vim.keymap.set('n', '<F2>', ':lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<CR>', silent_and_nowait)
