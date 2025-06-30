local M = {}

M.base_30 = {
  white = '#FFFFFF',
  darker_black = '#000000',
  black = '#080808', --  nvim bg
  black2 = '#0F0F0F',
  one_bg = '#181818', -- real bg of onedark
  one_bg2 = '#1F1F1F',
  one_bg3 = '#202020',
  grey = '#303030',
  grey_fg = '#404040',
  grey_fg2 = '#505050',
  light_grey = '#606060',
  red = '#FF0000',
  baby_pink = '#ffc0c0',
  pink = '#FF8080',
  line = '#808080', -- for lines like vertsplit
  green = '#00FF00',
  vibrant_green = '#80FF80',
  nord_blue = '#8080FF',
  blue = '#0000FF',
  yellow = '#FFFF00',
  sun = '#FFFF80',
  purple = '#FF00FF',
  dark_purple = '#FF80FF',
  teal = '#B8B8FF',
  orange = '#FF8000',
  cyan = '#00FFFF',
  statusline_bg = '#000000',
  lightbg = '#2f2e3e',
  pmenu_bg = '#ABE9B3',
  folder_bg = '#89B4FA',
  lavender = '#c7d1ff',
}

M.base_16 = {
  base00 = '#000000',
  base01 = '#202020',
  base02 = '#303030',
  base03 = '#404040',
  base04 = '#505050',
  base05 = '#B0B0B0',
  base06 = '#E0E0E0',
  base07 = '#FFFFFF',
  base08 = '#FF8080',
  base09 = '#FF8000',
  base0A = '#FFFF00',
  base0B = '#00FF00',
  base0C = '#00FFFF',
  base0D = '#0000FF',
  base0E = '#FF00FF',
  base0F = '#FF0000',
}

M.polish_hl = {
  treesitter = {
    ['@variable.builtin'] = { fg = M.base_30.red },
  },
}

M.type = 'dark'

M = require('base46').override_theme(M, 'simple')

return M
