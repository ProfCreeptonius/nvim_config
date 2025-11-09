local function make_active_statusline()
  local mode_lower, mode_hl = MiniStatusline.section_mode { trunc_width = 120 }
  local mode = string.upper(mode_lower)
  local git = MiniStatusline.section_git { trunc_width = 40 }
  local diff = MiniStatusline.section_diff { trunc_width = 75 }
  local diagnostics = MiniStatusline.section_diagnostics { trunc_width = 75 }
  local lsp = MiniStatusline.section_lsp { trunc_width = 75 }
  local filename = MiniStatusline.section_filename { trunc_width = 140 }
  local fileinfo = MiniStatusline.section_fileinfo { trunc_width = 120 }
  local location = MiniStatusline.section_location { trunc_width = 75 }
  local search = MiniStatusline.section_searchcount { trunc_width = 75 }
  local function get_lsp_name_str()
    if vim.lsp.get_clients() == nil then
      return ''
    else
      local result = ''
      for _, client in ipairs(vim.lsp.get_clients { bufnr = 0 }) do
        result = result .. client.name .. ' '
      end
      return result
    end
  end

  return MiniStatusline.combine_groups {
    { hl = mode_hl, strings = { mode } },
    { hl = 'MiniStatuslineDevinfo', strings = { git, diff, diagnostics, lsp, get_lsp_name_str() } },
    '%<', -- Mark general truncate point
    { hl = 'MiniStatuslineFilename', strings = { filename } },
    '%=', -- End left alignment
    { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
    { hl = mode_hl, strings = { search, location } },
  }
end
return { -- Collection of various small independent plugins/modules
  'echasnovski/mini.nvim',
  config = function()
    require('mini.ai').setup { n_lines = 500 }
    -- local statusline = require 'mini.statusline'
    -- statusline.setup {}
    -- statusline.setup {
    --   use_icons = vim.g.have_nerd_font,
    --   content = {
    --     active = make_active_statusline,
    --   },
    -- }
    require('mini.move').setup {}
    require('mini.colors').setup {}
    local onedark_colorscheme = MiniColors.get_colorscheme 'onedark'
  end,
  opts = {},
}
