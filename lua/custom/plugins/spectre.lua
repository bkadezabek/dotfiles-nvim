-- Spectre Search & Replace plugin
return {
  'nvim-pack/nvim-spectre',
  config = function()
    require('spectre').setup()
  end,
  keys = {
    { '<leader>Ss', "<cmd>lua require('spectre').open()<CR>", desc = 'Open Spectre' },
    { '<leader>Sw', "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = 'Search Current Word' },
    { '<leader>Sb', "<cmd>lua require('spectre').open_file_search()<CR>", desc = 'Search in Current File' },
  },
}
