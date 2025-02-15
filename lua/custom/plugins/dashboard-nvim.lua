return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Define custom highlight groups based on extracted colors
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = '#D55FDF' }) -- Gold header
    vim.api.nvim_set_hl(0, 'DashboardTop1', { fg = '#62AFEF' }) -- Gold header
    vim.api.nvim_set_hl(0, 'DashboardTop2', { fg = '#D19A66' }) -- Gold header
    vim.api.nvim_set_hl(0, 'DashboardTop3', { fg = '#EF5970' }) -- Gold header
    vim.api.nvim_set_hl(0, 'DashboardTop4', { fg = '#89CA79' }) -- Gold header
    vim.api.nvim_set_hl(0, 'DashboardTop5', { fg = '#2BBAC5' }) -- Gold header
    vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = '#00BFFF' }) -- DeepSkyBlue shortcuts
    vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = '#89CA79' }) -- LawnGreen footer

    -- Setup dashboard with the themed highlights
    require('dashboard').setup {
      theme = 'hyper', -- or 'doom'
      config = {
        header = {
          '',
          '      ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗  █████╗ ██████╗ ██████╗  ',
          '      ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██╔══██╗ ',
          '      ██║  ██║███████║███████╗███████║██████╔╝██║   ██║███████║██████╔╝██║  ██║ ',
          '      ██║  ██║██╔══██║╚════██║██╔══██║██╔══██╗██║   ██║██╔══██║██╔══██╗██║  ██║ ',
          '      ██████╔╝██║  ██║███████║██║  ██║██████╔╝╚██████╔╝██║  ██║██║  ██║██████╔╝ ',
          '      ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ',
          '',
          '',
        },
        -- week_header = {
        --   enable = true,
        --   concat = ' @bkadezabek',
        -- },
        shortcut = {
          {
            desc = ' Files',
            group = 'DashboardTop1',
            action = 'Telescope find_files',
            key = 'f',
          },
          {
            desc = ' Word',
            group = 'DashboardTop2',
            action = 'Telescope live_grep',
            key = 'w',
          },
          {
            desc = '󰑥 Recents',
            group = 'DashboardTop3',
            action = 'Telescope oldfiles',
            key = 'r',
          },
          {
            desc = ' Config',
            group = 'DashboardTop4',
            action = 'edit ~/.config/nvim/init.lua',
            key = 'c',
          },
          {
            desc = '󰈆 Quit',
            group = 'DashboardTop5',
            action = 'qa',
            key = 'q',
          },
        },
        packages = { enable = true }, -- Show how many plugins Neovim loaded
        project = {
          enable = true,
          limit = 5,
          action = 'Telescope find_files cwd=',
        }, -- Project list
        mru = { limit = 10 }, -- Most recently used files
        footer = { '', 'Sharp tools make good work.' }, -- Footer message
      },
    }
  end,
}
