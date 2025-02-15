return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  opts = {
    user_default_options = {
      mode = 'virtualtext', -- Use virtual text to display colors
      virtualtext = '●', -- Character to display as virtual text
      virtualtext_mode = 'foreground', -- Highlight the virtual text with the foreground color
      -- Enable parsing of various color formats
      RGB = true, -- #RGB hex codes
      RRGGBB = true, -- #RRGGBB hex codes
      names = true, -- "Name" codes like Blue or blue
      rgb_fn = true, -- CSS rgb() and rgba() functions
      hsl_fn = true, -- CSS hsl() and hsla() functions
      css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
      css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      -- Additional options can be configured as needed
    },
    -- Specify filetypes or buftypes if necessary
    filetypes = { '*' }, -- Highlight all file types
    buftypes = {},
  },
}
