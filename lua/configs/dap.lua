dap = require 'dap'
dap.adapters.gdb = {
  id = 'gdb',
  type = 'executable',
  command = 'gdb',
  args = { '--quiet', '--interpreter=dap' },
}
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-dap', -- adjust as needed, must be absolute path
  name = 'lldb',
}

dap.configurations.c = {
  {
    name = 'Run executable (LLDB)',
    type = 'lldb',
    request = 'launch',
    -- This requires special handling of 'run_last', see
    -- https://github.com/mfussenegger/nvim-dap/issues/1025#issuecomment-1695852355
    program = function()
      local path = vim.fn.input {
        prompt = 'Path to executable: ',
        default = vim.fn.getcwd() .. '/',
        completion = 'file',
      }

      return (path and path ~= '') and path or dap.ABORT
    end,
  },
  {
    name = 'Run executable with arguments (LLDB)',
    type = 'lldb',
    request = 'launch',
    -- This requires special handling of 'run_last', see
    -- https://github.com/mfussenegger/nvim-dap/issues/1025#issuecomment-1695852355
    program = function()
      local path = vim.fn.input {
        prompt = 'Path to executable: ',
        default = vim.fn.getcwd() .. '/',
        completion = 'file',
      }

      return (path and path ~= '') and path or dap.ABORT
    end,
    args = function()
      local args_str = vim.fn.input {
        prompt = 'Arguments: ',
      }
      return vim.split(args_str, ' +')
    end,
  },
}

dap.configurations.cpp = dap.configurations.c

if require('lspconfig').clangd ~= nil then
  require('lspconfig').clangd.setup {
    cmd = { 'clangd', '--completion-style=detailed' },
  }
end
