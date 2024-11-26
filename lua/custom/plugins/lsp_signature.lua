-- vim.api.nvim_create_autocmd('LspAttach', {
--   callback = function(args)
--     local bufnr = args.buf
--     local client = vim.lsp.get_client_by_id(args.data.client_id)
--     if vim.tbl_contains({ 'null-ls' }, client.name) then -- blacklist lsp
--       return
--     end
--     require('lsp_signature').on_attach({
--       -- ... setup options here ...
--     }, bufnr)
--   end,
-- })

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
