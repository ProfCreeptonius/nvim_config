return {
  'ray-x/lsp_signature.nvim',
  event = 'VeryLazy',
  opts = {
    bind = true,
    handler_opts = {
      border = 'none',
    },
    hint_inline = function()
      return false
    end,
    padding = ' ',
    hint_prefix = '',
    -- floating_window_above_cur_line = false,
    -- floating_window = false,
  },
  config = function(_, opts)
    require('lsp_signature').setup(opts)
  end,
}
