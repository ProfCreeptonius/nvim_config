local better_maker = require 'better_theme_maker.maker'
local theme = require 'base_themes.vscode_dark'
local better_theme = better_maker(theme)
better_theme.polish_hl = {
  treesitter = {
    ['@variable'] = { fg = better_theme.base_30.cyan },
    ['@variable.builtin'] = { fg = better_theme.base_30.blue },
    ['@property'] = { fg = better_theme.base_30.green },
    ['Directory'] = { fg = better_theme.base_30.cyan },
    ['Boolean'] = { fg = better_theme.base_30.blue },
    ['Include'] = { fg = better_theme.base_16.base0E },
    ['@lsp.type.class.cpp'] = { fg = better_theme.base_30.green1 },
    ['Type'] = { fg = better_theme.base_30.green1 },
    ['@variable.parameter'] = { fg = better_theme.base_30.nord_blue },
    ['@keyword'] = { fg = better_theme.base_30.base0E },
    ['@variable.member.key'] = { fg = better_theme.base_30.vibrant_green },
    ['@keyword.return'] = { fg = better_theme.base_16.base0E },
    ['@keyword.repeat'] = { fg = better_theme.base_16.base0E },
    ['@keyword.exception'] = { fg = better_theme.base_16.base0E },
    ['@type.builtin'] = { fg = better_theme.base_30.teal },
    ['@module'] = { fg = better_theme.base_30.green1 },
    ['RainbowRed'] = { fg = better_theme.base_30.yellow },
    ['RainbowYellow'] = { fg = better_theme.base_30.dark_purple },
    ['RainbowBlue'] = { fg = better_theme.base_30.blue },
    ['RainbowOrange'] = { fg = better_theme.base_30.orange },
    ['RainbowGreen'] = { fg = better_theme.base_30.green },
    ['RainbowViolet'] = { fg = better_theme.base_30.pink },
    ['RainbowCyan'] = { fg = better_theme.base_30.cyan },
  },
}
-- better_theme = require('base46').override_theme(better_theme, 'onedark')
return better_theme
