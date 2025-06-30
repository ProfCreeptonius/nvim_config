local M = {}

M.base_30 = {
  white = '#CFDDF8',
  darker_black = '#191828',
  black = '#1E1D2D', --  nvim bg
  black2 = '#252434',
  one_bg = '#2d2c3c', -- real bg of onedark
  one_bg2 = '#363545',
  one_bg3 = '#3e3d4d',
  grey = '#474656',
  grey_fg = '#4e4d5d',
  grey_fg2 = '#555464',
  light_grey = '#605f6f',
  red = '#FA84A5',
  baby_pink = '#FFA5C3',
  pink = '#FBBCEA',
  line = '#383747', -- for lines like vertsplit
  green = '#9EF6A9',
  vibrant_green = '#AFFBB9',
  nord_blue = '#82C3F9',
  blue = '#86B3FD',
  yellow = '#FDE4AD',
  sun = '#FFE9B6',
  purple = '#D599F5',
  dark_purple = '#cd8bf1',
  teal = '#A7F6E9',
  orange = '#FCBC92',
  cyan = '#7DE4F7',
  statusline_bg = '#232232',
  lightbg = '#2f2e3e',
  pmenu_bg = '#9EF6A9',
  folder_bg = '#86B3FD',
  lavender = '#c7d1ff',
}

M.base_16 = {
  base00 = '#1E1D2D',
  base01 = '#282737',
  base02 = '#2f2e3e',
  base03 = '#383747',
  base04 = '#414050',
  base05 = '#A5BDEE',
  base06 = '#BACDF3',
  base07 = '#CFDDF8',
  base08 = '#FA84A5',
  base09 = '#FCBC92',
  base0A = '#FDE4AD',
  base0B = '#9EF6A9',
  base0C = '#7DE4F7',
  base0D = '#86B3FD',
  base0E = '#CBA1FC',
  base0F = '#FA84A5',
}

M.polish_hl = {
  treesitter = {
    ['@variable'] = { fg = M.base_30.lavender },
    ['@property'] = { fg = M.base_30.teal },
    ['@variable.builtin'] = { fg = M.base_30.red },
  },
}

M.type = 'dark'

M = require('base46').override_theme(M, 'catppuccin_ligher')

return M
