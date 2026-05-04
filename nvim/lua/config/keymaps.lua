vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<C-o>', 'i<CR><Esc>O', { noremap = true, silent = true, desc = "Insert line above" })

vim.keymap.set('n', '<CR>', 'o<Esc>', { noremap = true, silent = true, desc = "Insert line below" })
vim.keymap.set('n', '<Tab>', '>>', { noremap = true, silent = true, desc = "Indent line" })
vim.keymap.set('n', '<S-Tab>', '<<', { noremap = true, silent = true, desc = "Unindent line" })

vim.keymap.set('v', '<Tab>', '>', { noremap = true, silent = true, desc = "Indent selection" })
vim.keymap.set('v', '<S-Tab>', '<', { noremap = true, silent = true, desc = "Unindent selection" })

vim.keymap.set('n', '<leader>w', '<cmd> w <CR>', { noremap = true, silent = true, desc = "Save file" })
vim.keymap.set('n', '<leader>W', '<cmd> wq <CR>', { noremap = true, silent = true, desc = "Save and quit" })
vim.keymap.set('n', '<leader>q', '<cmd> q <CR>', { noremap = true, silent = true, desc = "Quit" })
vim.keymap.set('n', '<leader>Q', '<cmd> q! <CR>', { noremap = true, silent = true, desc = "Force quit" })
vim.keymap.set('n', '<leader>s', '<cmd> so <CR>', { noremap = true, silent = true, desc = "Source current file" })

vim.keymap.set('n', '<leader><Tab>', '<cmd> bn <CR>', { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set('n', '<leader><S-Tab>', '<cmd> bp <CR>', { noremap = true, silent = true, desc = "Previous buffer" })

vim.keymap.set('n', '<leader>bd', '<cmd> bd! <CR>', { noremap = true, silent = true, desc = "Delete buffer" })

vim.keymap.set('n', '<leader>sh', '<cmd> split <CR>', { noremap = true, silent = true, desc = "Horizontal split" })
vim.keymap.set('n', '<leader>sv', '<cmd> vsplit <CR>', { noremap = true, silent = true, desc = "Vertical split" })

vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true, desc = "Move to left window" })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true, desc = "Move to lower window" })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true, desc = "Move to upper window" })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true, desc = "Move to right window" })

vim.keymap.set('n', '<leader>en', vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set('n', '<leader>eN', vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set('n', '<leader>E', vim.diagnostic.open_float, { desc = "Show diagnostic float" })

vim.keymap.set('n', '<leader>?', '<cmd>Telescope keymaps<CR>', { noremap = true, silent = true, desc = "Show keymaps" })
