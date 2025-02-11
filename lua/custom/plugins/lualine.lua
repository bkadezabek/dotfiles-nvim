return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Optional for icons
  config = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        globalstatus = true,
        disabled_filetypes = {
          winbar = {},
          statusline = {},
        },
      },
      sections = {
        lualine_a = { 'mode' }, -- Show the current mode (e.g., NORMAL, INSERT)
        lualine_b = { 'branch', 'diff' }, -- Show the current git branch
        lualine_c = {
          'filename',
          {
            function()
              -- Get the filename
              local filename = vim.fn.expand '%:t'
              if filename == '' then
                filename = '[No Name]'
              end

              -- Collect diagnostics for the current buffer
              local diagnostics = vim.diagnostic.get(0) -- Buffer 0 (current buffer)
              local counts = { errors = 0, warnings = 0, hints = 0, info = 0 }
              for _, diagnostic in ipairs(diagnostics) do
                if diagnostic.severity == vim.diagnostic.severity.ERROR then
                  counts.errors = counts.errors + 1
                elseif diagnostic.severity == vim.diagnostic.severity.WARN then
                  counts.warnings = counts.warnings + 1
                elseif diagnostic.severity == vim.diagnostic.severity.HINT then
                  counts.hints = counts.hints + 1
                elseif diagnostic.severity == vim.diagnostic.severity.INFO then
                  counts.info = counts.info + 1
                end
              end
              local error_icon = '' -- NF icon for error
              local warning_icon = '' -- NF icon for warning
              -- local hint_icon = '' -- NF icon for hint
              local info_icon = '' -- NF icon for info
              -- Format the filename with diagnostics
              return string.format('%s %d %s %d %s %d', error_icon, counts.errors, warning_icon, counts.warnings, info_icon, counts.info)
            end,
          },
        },
        lualine_x = {
          {
            function()
              -- Get the names of active LSP clients
              local clients = vim.lsp.get_clients { bufnr = vim.api.nvim_get_current_buf() }
              if next(clients) == nil then
                return 'LSP: Inactive'
              end
              -- Concatenate client names into a single string
              local names = {}
              for _, client in pairs(clients) do
                table.insert(names, client.name)
              end
              return table.concat(names, ', ')
            end,
          },
          'filetype', -- Show the file type
        },
        lualine_y = { 'progress' }, -- Show progress in the file (e.g., 45%)
        lualine_z = { 'location' }, -- Show cursor position (line:column)
      },
    }
  end,
}
