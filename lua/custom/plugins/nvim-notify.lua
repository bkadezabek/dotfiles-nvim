return {
  'rcarriga/nvim-notify',
  config = function()
    -- Set nvim-notify as the default notification handler
    vim.notify = require 'notify'

    -- Configure nvim-notify
    require('notify').setup {
      stages = 'fade', -- Animation stages: fade, slide, or static
      timeout = 2000, -- Duration in ms before notification disappears
      level = vim.log.levels.INFO, -- Minimum log level for notifications
      background_colour = '#000000', -- Background color
      fps = 60, -- Frames per second for animations
      render = 'compact', -- Render style: "default", "minimal", etc.
      minimum_width = 40, -- Minimum width of notification windows
      max_width = 80, -- Maximum width of the notification window
      max_height = 10, -- Maximum height of the notification window
      top_down = true, -- Render notifications from top down
      on_open = function() end, -- Empty function for `on_open`
      on_close = function() end, -- Empty function for `on_close`
      icons = {
        ERROR = '',
        WARN = '',
        INFO = '',
        DEBUG = '',
        TRACE = '✎',
      },
      time_formats = { -- Custom time format settings
        '%H:%M:%S', -- Default time format
      },
    }
    require('notify').history()
  end,
}
