return {
  'olimorris/onedarkpro.nvim',
  priority = 1000, -- Ensure it loads first
  config = function()
    require('onedarkpro').setup {
      colors = {
        onedark_dark = { bg = '#14171f' },
      },
      options = {
        cursorline = true,
      },
    }
    vim.cmd.colorscheme 'onedark_dark'
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', { fg = '#EE3B45', bg = '#2F1F2B' })
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', { fg = '#E9AD5B', bg = '#2E2A2D' })
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', { fg = '#00BC9B', bg = '#142C33' })
  end,
}
