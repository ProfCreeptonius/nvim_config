-- require 'colors.catppuccin'

if vim.g.neovide then
  require 'colors.catppuccin'
else
  require 'colors.catppuccin_black'
end

vim.cmd 'set laststatus=3'

-- local lspconfig = require 'lspconfig'
vim.lsp.config['sourcekit'] = {
  filetypes = { 'swift' },
  capabilities = {
    workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
      },
    },
  },
}
vim.lsp.enable 'sourcekit'

vim.diagnostic.config { virtual_text = true }
