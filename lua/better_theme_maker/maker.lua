return function(M)
  M.polish_hl = {
    treesitter = {
      ['@variable'] = { fg = M.base_30.lavender },
      ['@property'] = { fg = M.base_30.teal },
      ['@keyword.exception'] = { fg = M.base_30.dark_purple },
      ['@keyword.repeat'] = { fg = M.base_30.dark_purple },
      ['@keyword'] = { fg = M.base_30.dark_purple },
      ['@variable.builtin'] = { fg = M.base_30.red },
      ['@lsp.mod.readonly'] = { fg = M.base_30.cyan },
      ['@lsp.type.modifier'] = { fg = M.base_30.dark_purple },
      ['@variable.parameter'] = { fg = M.base_30.red },
      ['@punctuation.delimiter'] = { fg = M.base_30.lavender },
    },
    defaults = {

      MultiCursor = {
        fg = M.base_30.black,
        bg = M.base_30.grey_fg,
      },
      MultiCursorMain = {
        fg = M.base_30.black,
        bg = M.base_30.yellow,
      },
      BlinkCmpGhostText = {
        fg = M.base_30.light_grey,
      },
      StatusLineNC = {
        bg = M.base_30.black,
        fg = M.base_30.grey_fg,
      },
    },
  }
  return M
end
