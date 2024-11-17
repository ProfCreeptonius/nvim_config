-- (method 1, For heavy lazyloaders)
dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')
require('base46').load_all_highlights()
