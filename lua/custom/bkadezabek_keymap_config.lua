-- NOTE: My custom vim.api keymaps go here
-- Loaded in init.lua
--
-- Remap C-d to scroll down by 10 lines
vim.api.nvim_set_keymap('n', '<C-d>', '15j', { noremap = true })

-- Remap C-u to scroll up by 10 lines
vim.api.nvim_set_keymap('n', '<C-u>', '15k', { noremap = true })
