return {
  'seblyng/roslyn.nvim',
  ft = 'cs',
  ---@module 'roslyn.config'
  ---@type RoslynNvimConfig
  opts = {
    filewatching = 'roslyn',
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
