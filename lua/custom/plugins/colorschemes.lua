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
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000, opts = { transparent_background = true } },
  { 'Mofiqul/vscode.nvim' },
  { 'projekt0n/github-nvim-theme', name = 'github-theme' },
  { 'shaunsingh/nord.nvim' },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
  {
    'vague2k/vague.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
  },
  { 'blazkowolf/gruber-darker.nvim' },
}
