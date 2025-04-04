return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {},
  config = function()
    require('noice').setup {
      cmdline = {
        enabled = true,
      },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
      },
      redirect = {
        enabled = true,
      },
      commands = {
        enabled = true,
      },
      notify = {
        enabled = true,
      },
      lsp = {
        progress = { enabled = true },
        hover = { enabled = true },
        signature = { enabled = true },
        message = { enabled = true },
        documentation = { enabled = true },
      },
      markdown = {
        hover = { enabled = true },
        highlights = { enabled = true },
      },
      health = {
        enabled = true,
      },
      presets = {
        bottom_search = false,
        command_palette = false,
        long_message_to_split = true,
        inc_rename = false,
        lsp_doc_border = false,
      },
      throttle = 100,
      routes = {
        {
          view = 'notify',
          filter = { event = 'msg_showmode' },
        },
      },
      status = {},
      format = {},
      debug = false,
      log = { enabled = false, max_size = 1000 },
      log_max_size = 1000,
      views = {
        cmdline_popup = {
          position = {
            row = '90%',
            col = '50%',
          },
          size = {
            width = 60,
            height = 'auto',
          },
        },
        popupmenu = {
          relative = 'editor',
          position = {
            row = '85%',
            col = '50%',
          },
          size = {
            width = 55,
            height = 10,
          },
          border = {
            style = 'rounded',
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = { Normal = 'Normal', FloatBorder = 'DiagnosticInfo' },
          },
        },
      },
    }
  end,
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    'MunifTanjim/nui.nvim',
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    -- 'rcarriga/nvim-notify',
  },
}
