return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  opts = {},
  -- stylua: ignore
  keys = {
    { "<c-/>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<leader>sv", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    -- { "<leader>sž", mode = {"n", "x", "o"}, function() require("flash").remote() end, desc = "Remote Flash" },
    { "<leader>sV", mode = {"n", "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- Toggle Flash Search is within the command mode indicated by "c" mode. 
    -- Shows flash within the search / with the jump labels. needs to be toggled!
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
