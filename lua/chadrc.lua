local M = {}

M.base46 = {
  theme = 'onedark_improved',
  hl_override = {
    CursorLine = {
      bg = 'darker_black',
    },
  },
}

M.ui = {
  tabufline = {
    enabled = false,
  },
  statusline = {
    enabled = false,
  },
}

--  Get outta here nvchad, this is too much bloat.
M.lsp = {
  signature = false,
}

return M
