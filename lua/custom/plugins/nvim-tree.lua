-- nvim-tree plugin
return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional, for file icons
  lazy = false, -- Load immediately on startup
  config = function()
    require('nvim-tree').setup {
      -- Custom configuration for nvim-tree
      view = {
        width = 35, -- Width of the nvim-tree window
        side = 'left', -- Open tree on the left
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false, -- Show hidden (dot) files
        custom = {
          -- Godot files ignore
          '.git',
          '.github',
          '.godot',
          '.vscode',
          '.cfg',
          '*.import', -- Ignore Godot import files
          '.DS_STORE',
          '.gdignore', -- Ignore Godot ignore files
          'node_modules', -- Ignore unnecessary folders
          '*.tmp', -- Ignore temporary files
          '*.log', -- Ignore log files
        },
      },
      git = {
        enable = true, -- Show git status icons
      },
    }
    -- Key mapping to toggle nvim-tree
    vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>n', ':NvimTreeFocus<CR>', { noremap = true, silent = true })
  end,
}
