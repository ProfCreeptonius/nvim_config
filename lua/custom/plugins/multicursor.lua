return {
  'smoka7/multicursors.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvimtools/hydra.nvim',
  },
  opts = {},
  cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
  keys = {
    {
      mode = { 'v', 'n' },
      '<Leader>ms',
      '<cmd>MCstart<cr>',
      desc = 'Start [M]ulticursor with [S]election',
    },
    {
      mode = { 'v', 'n' },
      '<Leader>mc',
      '<cmd>MCunderCursor<cr>',
      desc = 'Start [M]ulti[C]ursor',
    },
  },
}
