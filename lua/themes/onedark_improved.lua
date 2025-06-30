local better_maker = require 'better_theme_maker.maker'
local theme = require 'themes.onedark_darker'
local better_theme = better_maker(theme)
better_theme.base_30.orange = '#d19a66'

better_theme.polish_hl = {
  treesitter = {
    -- ['@property'] = { fg = better_theme.base_30.teal },
    -- ['@lsp.mod.readonly'] = { fg = better_theme.base_16.base0C },
    ['@variable'] = { fg = better_theme.base_16.base07 },
    ['@keyword.exception'] = { fg = better_theme.base_16.base0E },
    ['@keyword.repeat'] = { fg = better_theme.base_16.base0E },
    ['@keyword'] = { fg = better_theme.base_16.base0E },
    ['@punctuation.delimiter'] = { fg = better_theme.base_16.base05 },
    ['@punctuation.bracket'] = { fg = better_theme.base_16.base05 },
    -- ['RainbowRed'] = { fg = better_theme.base_16.base08 },
    -- ['RainbowYellow'] = { fg = better_theme.base_16.base0A },
    -- ['RainbowBlue'] = { fg = better_theme.base_16.base0D },
    -- ['RainbowOrange'] = { fg = better_theme.base_16.base09 },
    -- ['RainbowGreen'] = { fg = better_theme.base_16.base0B },
    -- ['RainbowViolet'] = { fg = better_theme.base_16.base0E },
    -- ['RainbowCyan'] = { fg = better_theme.base_16.base0C },
  },
}
-- better_theme = require('base46').override_theme(better_theme, 'catppuccin')
better_theme = require('base46').override_theme(better_theme, 'onedark_improved')
return better_theme
