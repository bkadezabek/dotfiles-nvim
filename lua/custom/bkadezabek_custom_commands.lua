-- NOTE: My custom vim.api commands go here
-- Loaded in init.lua
vim.api.nvim_create_user_command('OpenMotionList', function()
  vim.cmd 'edit ~/.config/nvim/motions-help.lua'
end, {})

-- Remap C-d to scroll down by 10 lines
vim.api.nvim_set_keymap('n', '<C-d>', '15j', { noremap = true })
-- Remap C-u to scroll up by 10 lines
vim.api.nvim_set_keymap('n', '<C-u>', '15k', { noremap = true })

-- Terminal
vim.api.nvim_set_keymap('n', '<leader>to', ':term <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tv', ':vsplit | term <CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':split | term <CR>', { noremap = true, silent = true })
-- Map <leader>tsq to close all terminal windows
--vim.api.nvim_set_keymap('n', '<leader>taq', ':luaclose_all_terminals()<CR>', { noremap = true, silent = true })

-- NOTE: Quickfix list keymaps
vim.keymap.set('n', '<leader>qj', ':cnext<CR>', { noremap = true, silent = true, desc = 'Move down in Quickfix list' })
vim.keymap.set('n', '<leader>qk', ':cprev<CR>', { noremap = true, silent = true, desc = 'Move up in Quickfix list' })
vim.keymap.set('n', ']q', ':cnext<CR>', { noremap = true, silent = true, desc = 'Move down in Quickfix list' })
vim.keymap.set('n', 'đq', ':cnext<CR>', { noremap = true, silent = true, desc = 'Move down in Quickfix list' })
vim.keymap.set('n', '[q', ':cprev<CR>', { noremap = true, silent = true, desc = 'Move up in Quickfix list' })
vim.keymap.set('n', 'šq', ':cprev<CR>', { noremap = true, silent = true, desc = 'Move up in Quickfix list' })
vim.keymap.set('n', '<leader>qc', ':ccl<CR>', { noremap = true, silent = true, desc = 'Close Quickfix list' })
vim.keymap.set('n', '<leader>qq', ':copen<CR>', { noremap = true, silent = true, desc = 'Open Quickfix list' })

-- LSP hover
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })
