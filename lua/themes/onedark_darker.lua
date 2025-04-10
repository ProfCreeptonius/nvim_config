-- Credits to original https://github.com/one-dark
-- This is modified version of it

local M = {}

M.base_30 = {
  white = '#abb2bf',
  darker_black = '#101010',
  black = '#181818', --  nvim bg
  black2 = '#1d1d1d',
  one_bg = '#1f1f1f', -- real bg of onedark
  one_bg2 = '#252525',
  one_bg3 = '#292929',
  grey = '#42464e',
  grey_fg = '#565c64',
  grey_fg2 = '#6f737b',
  light_grey = '#6f737b',
  red = '#e06c75',
  baby_pink = '#DE8C92',
  pink = '#ff75a0',
  line = '#31353d', -- for lines like vertsplit
  green = '#98c379',
  vibrant_green = '#7eca9c',
  nord_blue = '#81A1C1',
  blue = '#61afef',
  yellow = '#e7c787',
  sun = '#EBCB8B',
  purple = '#de98fd',
  dark_purple = '#c882e7',
  teal = '#519ABA',
  orange = '#fca2aa',
  cyan = '#a3b8ef',
  statusline_bg = '#22262e',
  lightbg = '#2d3139',
  pmenu_bg = '#61afef',
  folder_bg = '#61afef',
}

M.base_16 = {
  base00 = '#181818',
  base01 = '#252522',
  base02 = '#303030',
  base03 = '#545862',
  base04 = '#565c64',
  base05 = '#abb2bf',
  base06 = '#b6bdca',
  base07 = '#c8ccd4',
  base08 = '#e06c75',
  base09 = '#d19a66',
  base0A = '#e5c07b',
  base0B = '#98c379',
  base0C = '#56b6c2',
  base0D = '#61afef',
  base0E = '#c678dd',
  base0F = '#be5046',
}

M.type = 'dark'

M = require('base46').override_theme(M, 'onedark')

return M
