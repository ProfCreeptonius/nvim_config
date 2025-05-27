-- (method 1, For heavy lazyloaders)
dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')
require('base46').load_all_highlights()
-- require('luasnip.loaders.from_vscode').lazy_load { path = './lua/snippets/csharp/' }
require('base46').toggle_transparency()

local nvchad_colors = dofile(vim.g.base46_cache .. 'colors')

-- vim.cmd 'set guicursor=n-v-c-i:block'
vim.cmd.highlight { 'iCursor', 'guibg=' .. nvchad_colors.green }
vim.cmd.highlight { 'rCursor', 'guibg=' .. nvchad_colors.yellow }
vim.cmd.highlight { 'vCursor', 'guibg=' .. nvchad_colors.purple }
vim.cmd.highlight { 'cCursor', 'guibg=' .. nvchad_colors.red }
vim.cmd.highlight { 'Cursor', 'guibg=' .. nvchad_colors.blue }

vim.opt.guicursor = 'a:block-Cursor,i:block-iCursor,v:block-vCursor,c-ci-cr:block-cCursor,r:block-rCursor'
