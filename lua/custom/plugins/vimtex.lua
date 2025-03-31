-- ~/.config/nvim/lua/plugins/latex.lua
-- :VimtexCompile runs current .tex file we are in and renders it
-- w writes to the file and rerenders Skim preview of the pdf
-- Note that there are a lot of temp files when using Skim
return {
  {
    'lervag/vimtex',
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = 'skim' -- or "zathura"
      vim.g.vimtex_view_skim_sync = 1
      vim.g.vimtex_view_skim_activate = 1
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_compiler_latexmk = {
        build_dir = '',
        callback = 1,
        continuous = 1,
        executable = 'latexmk',
        options = {
          '-pdf',
          '-interaction=nonstopmode',
          '-synctex=1',
        },
      }
      vim.g.vimtex_view_forward_search_on_start = 1
    end,
  },
}
