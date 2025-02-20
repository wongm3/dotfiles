-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Move Lines
map('n', '<C-J>', '<cmd>execute \'move .+\' . v:count1<cr>==', { desc = 'Move Down' })
map('n', '<C-K>', '<cmd>execute \'move .-\' . (v:count1 + 1)<cr>==', { desc = 'Move Up' })
map('i', '<C-J>', '<esc><cmd>m .+1<cr>==gi', { desc = 'Move Down' })
map('i', '<C-K>', '<esc><cmd>m .-2<cr>==gi', { desc = 'Move Up' })
map('v', '<C-J>', ':<C-u>execute "\'<,\'>move \'>+" . v:count1<cr>gv=gv', { desc = 'Move Down' })
map('v', '<C-K>', ':<C-u>execute "\'<,\'>move \'<-" . (v:count1 + 1)<cr>gv=gv', { desc = 'Move Up' })

-- Nvim Tmux Navigation
map('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>', { desc = 'Go to Left Window' })
map('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>', { desc = 'Go to Down Window' })
map('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>', { desc = 'Go to Up Window' })
map('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>', { desc = 'Go to Right Window' })
