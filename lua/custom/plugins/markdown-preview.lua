return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function(plugin)
    -- Prepend the plugin's runtime path
    vim.opt.rtp:prepend(plugin.dir)
    -- Call the install function
    vim.fn['mkdp#util#install']()
  end,
  config = function()
    -- Set a custom CSS file for MarkdownPreview styling
    -- vim.g.mkdp_highlight_css = vim.fn.expand '~/.config/nvim/lua/custom/themes/custom-markdown.css'
  end,
}
