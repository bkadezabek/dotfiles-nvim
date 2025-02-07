-- NOTE: My custom vim.api commands go here
-- Loaded in init.lua
vim.api.nvim_create_user_command('OpenMotionList', function()
  vim.cmd 'edit ~/.config/nvim/motions-help.lua'
end, {})

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

-- Search & replace
vim.keymap.set('n', '<leader>qr', function()
  -- Prompt for the search term
  local search = vim.fn.input 'Search for thethe term to replace: '
  if search == '' then
    print 'Search term cannot be empty!'
    return
  end

  -- Prompt for the replacement term
  local replace = vim.fn.input(string.format("Replace '%s' with: ", search))
  if replace == '' then
    print 'Replacement term cannot be empty!'
    return
  end

  -- Escape special characters in the replacement term (search term doesn't need escaping for word-boundary match)
  local escaped_replace = vim.fn.escape(replace, '\\')

  -- Get the quickfix list
  local qflist = vim.fn.getqflist()

  -- Process each entry in the quickfix list
  for _, entry in ipairs(qflist) do
    local bufnr = entry.bufnr
    local lnum = entry.lnum
    local col_start = entry.col
    local col_end = entry.end_col or col_start + #search - 1 -- Use end_col if available or estimate

    if bufnr > 0 and lnum > 0 then
      -- Navigate to the specific buffer and line
      vim.cmd(string.format('buffer %d', bufnr))
      vim.fn.setpos('.', { bufnr, lnum, col_start, 0 })

      -- Get the line text and replace only the relevant range
      local line = vim.fn.getline(lnum)
      local before = line:sub(1, col_start - 1)
      local match = line:sub(col_start, col_end)
      local after = line:sub(col_end + 1)

      if match == search then
        local new_line = before .. escaped_replace .. after
        vim.fn.setline(lnum, new_line)
      end

      -- Save the buffer
      vim.cmd 'silent! update'
    end
  end

  print(string.format("Replaced '%s' with '%s' in Quickfix List entries.", search, replace))
end, { noremap = true, silent = true, desc = 'Search and replace in Quickfix List' })

-- LSP hover
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })
