local nvchad_colors = dofile(vim.g.base46_cache .. 'colors')

local colors = {
  black = nvchad_colors.black,
  white = nvchad_colors.white,
  red = nvchad_colors.red,
  green = nvchad_colors.green,
  blue = nvchad_colors.blue,
  yellow = nvchad_colors.yellow,
  gray = nvchad_colors.grey,
  lightgray = nvchad_colors.one_bg,
  inactivegray = nvchad_colors.darker_black,
  purple = nvchad_colors.purple,
}

return {
  normal = {
    a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.blue },
    c = { bg = colors.inactivegray, fg = colors.white },
  },
  insert = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.green },
    c = { bg = colors.inactivegray, fg = colors.white },
  },
  visual = {
    a = { bg = colors.purple, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.purple },
    c = { bg = colors.inactivegray, fg = colors.white },
  },
  replace = {
    a = { bg = colors.yellow, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.yellow },
    c = { bg = colors.inactivegray, fg = colors.white },
  },
  command = {
    a = { bg = colors.red, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightgray, fg = colors.red },
    c = { bg = colors.inactivegray, fg = colors.white },
  },
  inactive = {
    a = { bg = colors.darker_black, fg = colors.gray, gui = 'bold' },
    b = { bg = colors.darker_black, fg = colors.gray },
    c = { bg = colors.darker_black, fg = colors.gray },
  },
}
