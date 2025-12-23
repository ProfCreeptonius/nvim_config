return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = {
    'rafamadriz/friendly-snippets',
    'ribru17/blink-cmp-spell',
    -- 'milanglacier/minuet-ai.nvim',
    'ribru17/blink-cmp-spell',
    'archie-judd/blink-cmp-words',
  },

  -- use a release tag to download pre-built binaries
  version = '1.*',
  -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  -- build = 'cargo build --release',
  -- If you use nix, you can build from source using latest nightly rust with:
  -- build = 'nix run .#build-plugin',

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
    -- 'super-tab' for mappings similar to vscode (tab to accept)
    -- 'enter' for enter to accept
    -- 'none' for no mappings
    --
    -- All presets have the following mappings:
    -- C-space: Open menu or open docs if already open
    -- C-n/C-p or Up/Down: Select next/previous item
    -- C-e: Hide menu
    -- C-k: Toggle signature help (if signature.enabled = true)
    --
    -- See :h blink-cmp-config-keymap for defining your own keymap
    keymap = {
      preset = 'default',
      -- ['<A-y>'] = {
      --   function(cmp)
      --     cmp.show { providers = { 'minuet' } }
      --   end,
      -- },
      ['<C-l>'] = {
        function(cmp)
          cmp.snippet_forward()
        end,
      },
      ['<C-S-l>'] = {
        function(cmp)
          cmp.snippet_backward()
        end,
      },
      ['<F2>'] = { 'select_and_accept' },
      ['<F3>'] = { 'select_next' },
      ['<F4>'] = { 'select_prev' },
    },

    signature = {
      enabled = true,
    },

    appearance = {
      -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
      -- Adjusts spacing to ensure icons are aligned
      nerd_font_variant = 'mono',
      use_nvim_cmp_as_default = true,
    },

    -- (Default) Only show the documentation popup when manually triggered
    completion = {
      ghost_text = {
        enabled = true,
      },
      keyword = {
        range = 'prefix',
      },
      accept = {
        auto_brackets = {
          kind_resolution = {
            blocked_filetypes = { 'tex' },
          },
          semantic_token_resolution = {
            blocked_filetypes = { 'tex' },
          },
        },
      },
      menu = {
        border = 'none',
        auto_show = true,
        draw = {
          align_to = 'label', -- or 'none' to disable, or 'cursor' to align to the cursor
          padding = 1,
          gap = 1,
          -- Use treesitter to highlight the label text
          treesitter = { 'lsp' },
          -- Components to render, grouped by column
          columns = {
            { 'label', 'label_description', gap = 1 },
            { 'kind', gap = 1 },
          },
        },
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 0,
        treesitter_highlighting = true,
        window = {
          border = 'padded',
        },
      },
      -- documentation = { auto_show = true },
    },

    -- Default list of enabled providers defined so that you can extend it
    -- elsewhere in your config, without redefining it, due to `opts_extend`
    -- snippets = {
    --   preset = 'luasnip',
    -- },
    sources = {
      default = { 'lsp', 'snippets', 'buffer' },
      providers = {
        snippets = {
          name = 'snippets',
          async = true,
          score_offset = 4,
        },
        lsp = {
          name = 'lsp',
          async = true,
          score_offset = 5,
        },
        buffer = {
          name = 'buffer',
          async = true,
          score_offset = -1,
        },
        spell = {
          name = 'spell',
          module = 'blink-cmp-spell',
          opts = {},
          async = true,
          score_offset = -2,
        },
        -- minuet = {
        --   name = 'minuet',
        --   module = 'minuet.blink',
        --   score_offset = 5,
        --   opts = {},
        --   async = true,
        -- },
      },
    }, -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
    -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
    -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
    --
    -- See the fuzzy documentation for more information
    fuzzy = {

      implementation = 'prefer_rust_with_warning',
      sorts = {
        'score',
        function(a, b)
          local sort = require 'blink.cmp.fuzzy.sort'
          if a.source_id == 'spell' and b.source_id == 'spell' then
            return sort.label(a, b)
          end
        end,
        'sort_text',
      },
    },
  },
  opts_extend = { 'sources.default' },
}
