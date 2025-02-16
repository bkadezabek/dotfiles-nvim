return {
  'xiyaowong/transparent.nvim',
  config = function()
    require('transparent').setup {
      extra_groups = { -- Add groups to the default groups
        'NormalFloat', -- For floating windows
        -- Add more groups as needed
      },
      exclude_groups = {}, -- Groups you don't want to clear
    }
  end,
}
