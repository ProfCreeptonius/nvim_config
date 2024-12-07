local _, nvchad_colors = pcall(dofile, vim.g.base46_cache .. 'colors')

return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    dependencies = 'nvchad/base46',
    opts = {},
    config = function()
      local highlight = {
        'RainbowYellow',
        'RainbowViolet',
        'RainbowBlue',
        'RainbowOrange',
        'RainbowGreen',
        'RainbowCyan',
      }
      local hooks = require 'ibl.hooks'
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = nvchad_colors.red })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = nvchad_colors.yellow })
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = nvchad_colors.blue })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = nvchad_colors.orange })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = nvchad_colors.green })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = nvchad_colors.purple })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = nvchad_colors.cyan })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }
      require('ibl').setup { scope = { highlight = highlight } }

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
