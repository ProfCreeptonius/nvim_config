local better_maker = require 'better_theme_maker.maker'
local theme = require 'themes.onedark'
local better_theme = better_maker(theme)
better_theme.polish_hl = {
  treesitter = {
    ['@property'] = { fg = better_theme.base_30.teal },
    ['@lsp.mod.readonly'] = { fg = better_theme.base_16.base0C },
    ['@variable'] = { fg = better_theme.base_16.base07 },
    ['@keyword.exception'] = { fg = better_theme.base_30.dark_purple },
    ['@keyword.repeat'] = { fg = better_theme.base_30.dark_purple },
    ['@keyword'] = { fg = better_theme.base_30.dark_purple },
    ['@punctuation.delimiter'] = { fg = better_theme.base_16.base05 },
  },
}
-- better_theme = require('base46').override_theme(better_theme, 'catppuccin')
return better_theme
