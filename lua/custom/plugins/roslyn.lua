return {
  'seblyng/roslyn.nvim',
  ft = { 'cs', 'razor' },
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  opts = {
    filewatching = 'roslyn',
  },
  dependencies = {
    {
      -- By loading as a dependencies, we ensure that we are available to set
      -- the handlers for Roslyn.
      'tris203/rzls.nvim',
      config = true,
    },
  },
  config = function()
    local dap = require 'dap'

    dap.adapters.coreclr = {
      type = 'executable',
      command = 'netcoredbg',
      args = { '--interpreter=vscode' },
    }

    dap.configurations.cs = {
      {
        type = 'coreclr',
        name = 'launch - netcoredbg',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
        end,
      },
    }
  end,
}
