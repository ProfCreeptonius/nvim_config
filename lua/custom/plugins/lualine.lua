local clients_lsp = function()
  local clients = vim.lsp.get_clients()
  if next(clients) == nil then
    return ''
  end

  local c = {}
  for _, client in pairs(clients) do
    table.insert(c, client.name)
  end
  return '\u{f085} ' .. table.concat(c, '|')
end

local base46theme = require 'custom.plugins.lualine_theme.theme'
local function is_active()
  local ok, hydra = pcall(require, 'hydra.statusline')
  return ok and hydra.is_active()
end

local function get_name()
  if is_active() then
    local ok, hydra = pcall(require, 'hydra.statusline')
    if ok then
      return hydra.get_name()
    end
  else
    return 'progress', 'searchcount'
  end
  return ''
end

local function inactive()
  return '[inactive]'
end

local function window_number()
  return '[' .. tostring(vim.api.nvim_win_get_number(0)) .. ']'
end

local function inactive_window_number()
  return '[' .. tostring(vim.api.nvim_win_get_number(0)) .. '] '
end

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons', 'base46', 'smoka7/multicursors.nvim' },
  -- event = 'VeryLazy',
  opts = {
    options = {
      icons_enabled = true,
      theme = base46theme,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      always_show_tabline = false,
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 20,
        tabline = 20,
        winbar = 20,
      },
    },
    sections = {
      lualine_a = { 'mode', { get_name, cond = is_active } },
      lualine_b = { 'progress' },

      lualine_c = { 'diagnostics' },
      lualine_x = { clients_lsp },
      lualine_y = { 'filetype' },
      lualine_z = { { 'filename', path = 1 } },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {
      lualine_a = { 'buffers' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'tabs' },
    },
    winbar = {
      lualine_a = { window_number },
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = { window_number },
    },
    inactive_winbar = {
      lualine_a = { inactive_window_number },
      lualine_b = {},
      lualine_c = { 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = { window_number },
    },
    extensions = { 'quickfix' },
  },
}
