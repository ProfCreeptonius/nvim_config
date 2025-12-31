local the_model = 'deepseek-coder-v2:latest'
-- local the_model = 'gpt-oss:latest'

return {
  'milanglacier/minuet-ai.nvim',
  config = function()
    require('minuet').setup {
      context_window = 100000,
      context_ratio = 0.75,
      provider = 'openai_fim_compatible',
      provider_options = {
        openai_fim_compatible = {
          api_key = 'TERM',
          name = 'Ollama',
          end_point = 'http://localhost:11434/v1/completions',
          model = the_model,
        },
      },
      name = 'Ollama',
      end_point = 'http://localhost:11434/v1/completions',
      model = the_model,
      optional = {
        max_tokens = 5600,
        top_p = 0.9,
      },
    }
  end,
  dependencies = {
    {
      { 'nvim-lua/plenary.nvim' },
      -- optional, if you are using virtual-text frontend, blink is not required.
      { 'Saghen/blink.cmp' },
    },
  },
}
