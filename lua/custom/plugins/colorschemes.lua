return {
  {
    'navarasu/onedark.nvim',
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('onedark').setup {
        style = 'warmer',
      }
      -- Enable theme
      -- require('onedark').load()
    end,
  },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { 'Mofiqul/vscode.nvim' },
  { 'projekt0n/github-nvim-theme', name = 'github-theme' },
}
