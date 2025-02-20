-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', { desc = 'Go to Left Window' })
vim.keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', { desc = 'Go to Down Window' })
vim.keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', { desc = 'Go to Up Window' })
vim.keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', { desc = 'Go to Right Window' })
