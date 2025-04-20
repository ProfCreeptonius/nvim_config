vim.filetype.add {
  extension = {
    qrc = 'xml',
    ts = 'xml',
  },
}

vim.g.lazyvim_blink_main = true
vim.api.nvim_create_autocmd({ 'FIleType' }, { pattern = 'tex', group = optional_group, command = 'TSBufDisable highlight' })
