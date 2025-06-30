local M = {}

M.base_30 = {
  white = '#cdd6f4',
  darker_black = '#191828',
  black = '#181825', --  nvim bg
  black2 = '#1e1e2e',
  one_bg = '#313244', -- real bg of onedark
  one_bg2 = '#45475a',
  one_bg3 = '#585b70',
  grey = '#6c7086',
  grey_fg = '#7f849c',
  grey_fg2 = '#9399b2',
  light_grey = '#a6adc8',
  red = '#f38ba8',
  baby_pink = '#eba0ac',
  pink = '#f5c2e7',
  line = '#bac2de', -- for lines like vertsplit
  green = '#a6e3a1',
  vibrant_green = '#89dceb',
  nord_blue = '#74c7ec',
  blue = '#89b4fa',
  yellow = '#f9e2af',
  sun = '#f2cdcd',
  purple = '#cba6f7',
  dark_purple = '#b4befe',
  teal = '#94e2d5',
  orange = '#fab387',
  cyan = '#89dceb',
  statusline_bg = '#232232',
  lightbg = '#2f2e3e',
  pmenu_bg = '#ABE9B3',
  folder_bg = '#89B4FA',
  lavender = '#b4befe',
}

M.base_16 = {
  base00 = '#1e1e2e',
  base01 = '#313244',
  base02 = '#45475a',
  base03 = '#585b70',
  base04 = '#6c7086',
  base05 = '#cdd6f4',
  base06 = '#a6adc8',
  base07 = '#9399b2',
  base08 = '#f38ba8',
  base09 = '#fab387',
  base0A = '#f9e2af',
  base0B = '#a6e3a1',
  base0C = '#89dceb',
  base0D = '#89b4fa',
  base0E = '#cba6f7',
  base0F = '#b4befe',
}

M.polish_hl = {
  treesitter = {
    ['@variable'] = { fg = M.base_30.lavender },
    ['@property'] = { fg = M.base_30.teal },
    ['@variable.builtin'] = { fg = M.base_30.red },
  },
}

M.type = 'dark'

M = require('base46').override_theme(M, 'catppuccin_mocha')

return M
