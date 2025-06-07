local _, nvchad_colors = pcall(dofile, vim.g.base46_cache .. 'colors')

local function clamp(component)
  return math.min(math.max(component, 0), 255)
end
function LightenDarkenColor(col, amt)
  local col_no_hash = col:sub(2)
  local num = tonumber(col_no_hash, 16)
  local r = math.floor(num / 0x10000) + amt
  local g = (math.floor(num / 0x100) % 0x100) + amt
  local b = (num % 0x100) + amt
  return '#' .. string.sub(string.upper(string.format('%#x', clamp(r) * 0x10000 + clamp(g) * 0x100 + clamp(b))), 3, -1)
end

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
        vim.api.nvim_set_hl(0, 'RainbowRed', { fg = LightenDarkenColor(nvchad_colors.red, -0) })
        vim.api.nvim_set_hl(0, 'RainbowYellow', { fg = LightenDarkenColor(nvchad_colors.yellow, -0) })
        vim.api.nvim_set_hl(0, 'RainbowBlue', { fg = LightenDarkenColor(nvchad_colors.blue, -0) })
        vim.api.nvim_set_hl(0, 'RainbowOrange', { fg = LightenDarkenColor(nvchad_colors.orange, -0) })
        vim.api.nvim_set_hl(0, 'RainbowGreen', { fg = LightenDarkenColor(nvchad_colors.green, -0) })
        vim.api.nvim_set_hl(0, 'RainbowViolet', { fg = LightenDarkenColor(nvchad_colors.purple, -0) })
        vim.api.nvim_set_hl(0, 'RainbowCyan', { fg = LightenDarkenColor(nvchad_colors.cyan, -0) })
      end)

      vim.g.rainbow_delimiters = { highlight = highlight }
      require('ibl').setup { scope = { highlight = highlight } }

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
  },
}
