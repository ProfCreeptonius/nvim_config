return function(M)
  M.polish_hl = {
    treesitter = {
      ['@variable'] = { fg = M.base_30.white },
      ['@property'] = { fg = M.base_30.teal },
      ['@keyword.exception'] = { fg = M.base_30.purple },
      ['@keyword.repeat'] = { fg = M.base_30.purple },
      ['@keyword'] = { fg = M.base_30.purple },
      ['@variable.builtin'] = { fg = M.base_30.red },
      ['@lsp.mod.readonly'] = { fg = M.base_30.cyan },
      ['@lsp.type.modifier'] = { fg = M.base_30.purple },
      ['@lsp.type.concept.cpp'] = { fg = M.base_30.orange },
      ['@lsp.type.typeParameter.cpp'] = { fg = M.base_30.orange },
      ['@lsp.type.struct.cs'] = { fg = M.base_30.orange },
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
      IncSearch = {
        bg = M.base_30.orange,
        fg = M.base_30.darker_black,
      },
      Search = {
        bg = M.base_30.orange,
        fg = M.base_30.darker_black,
      },
      Substitute = {
        bg = M.base_30.orange,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineModeNormal = {
        bg = M.base_30.blue,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineModeInsert = {
        bg = M.base_30.green,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineModeVisual = {
        bg = M.base_30.purple,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineModeReplace = {
        bg = M.base_30.yellow,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineModeCommand = {
        bg = M.base_30.red,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineModeOther = {
        bg = M.base_30.orange,
        fg = M.base_30.darker_black,
      },
      MiniStatuslineFilename = {
        bg = M.base_30.black,
        fg = M.base_30.light_grey,
      },
    },
  }
  return M
end
