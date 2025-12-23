local lualine_theme = require 'catppuccin.utils.lualine' 'mocha'
local C = require 'catppuccin.palettes.mocha'

lualine_theme.command = {
  a = { bg = C.red, fg = C.base, gui = 'bold' },
  b = { bg = C.surface0, fg = C.red },
}

lualine_theme.replace = {
  a = { bg = C.peach, fg = C.base, gui = 'bold' },
  b = { bg = C.surface0, fg = C.peach },
}

local config = {
  options = {
    icons_enabled = true,
    -- theme = lualine_theme,
    theme = lualine_theme,
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = true,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'lsp_status' },
    lualine_x = { { 'filename', path = 2 } },
    lualine_y = { 'encoding', 'fileformat', 'filetype', 'selectioncount' },
    lualine_z = { 'progress', 'location', 'searchcount' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    require('lualine').setup(config)
  end,
}
