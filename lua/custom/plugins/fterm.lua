-- ~/.config/nvim/lua/plugins/fterm.lua
return {
  'numToStr/FTerm.nvim',
  config = function()
    require('FTerm').setup {
      -- Optional configuration parameters
      border = 'double', -- Border style: 'single', 'double', etc.
      dimensions = {
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,
      },
    }
  end,
}
