local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map('i', 'jk', '<ESC>')
map('i', '<C-Enter>', '<ESC>o')
map('n', '<C-Enter>', 'o<ESC>')
map('n', 'citn', '<cmd>lua vim.lsp.buf.rename()<CR>', { desc = '[C]hange [I]nner [T]ag [N]ame' })
map('t', '<ESC><ESC>', '<C-\\><C-n>', { silent = true })
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true, desc = '[G]et [H]elp' })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- map({ 'n', 'v' }, '<leader>st', require('stay-centered').toggle, { desc = 'Toggle stay-centered.nvim' })
map('n', '<space>lh', function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = 'Toggle In[l]ay [H]ints' })
map('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>', { desc = 'Toggle [D]ap [B]reakpoint' })
map('n', '<leader>dr', '<cmd>DapContinue<CR>', { desc = '[D]ap [R]un' })
-- map('n', '<leader>tp', "<cmd>lua require('base46').toggle_transparency()<CR>", { desc = 'Toggle [T]rans[p]arency' })
map('t', '<C-z>', 'pwd | xclip -selection clipboard<CR><C-\\><C-n>:cd <C-r>+<CR>i')
map('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open file [E]xplorer' })

local builtin = require 'telescope.builtin'

-- telescope
vim.keymap.set('n', '<leader>fz', function()
  -- You can pass additional configuration to Telescope to change the theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_ivy {
    layout_config = {
      height = 10,
    },
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })
map('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { desc = 'telescope find buffers' })
map('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { desc = 'telescope help page' })
map('n', '<leader>ma', '<cmd>Telescope marks<CR>', { desc = 'telescope find marks' })
map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'telescope find files' })
-- map('n', '<leader>fz', '<cmd>Telescope current_buffer_fuzzy_find<CR>', { desc = 'telescope find in current buffer' })
map('n', '<leader>cm', '<cmd>Telescope git_commits<CR>', { desc = 'telescope git commits' })
map('n', '<leader>gt', '<cmd>Telescope git_status<CR>', { desc = 'telescope git status' })
map('n', '<leader>ft', '<cmd>Telescope terms<CR>', { desc = '[F]ind [T]erminals' })
map('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
map('n', '<leader>fss', builtin.builtin, { desc = '[F]ind [S]earche[s]' })
map('n', '<leader>fw', builtin.live_grep, { desc = '[F]ind [W]ord' })
map('n', '<leader>fds', builtin.diagnostics, { desc = '[F]ind [D]iagno[s]tics' })
map('n', '<leader>fts', builtin.treesitter, { desc = '[F]ind [T]ree[S]itter' })
map('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
map('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
map('n', 'gd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' })
map('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })
map('n', 'gI', require('telescope.builtin').lsp_implementations, { desc = '[G]oto [I]mplementation' })
-- map('n', 'gtd', require('telescope.builtin').lsp_type_definitions, { desc = '[G]oto [T]ype [D]efinition' })
map('n', '<leader>fdb', require('telescope.builtin').lsp_document_symbols, { desc = '[F]ind [D]ocument Sym[b]ols' })
map('n', '<leader>fsb', require('telescope.builtin').lsp_workspace_symbols, { desc = '[F]ind Workspace [S]ym[b]ols' })
map('n', '<leader>rd', require('telescope.builtin').resume, { desc = '[R]e[d]o search.' })
map('n', '<leader>fm', require('telescope.builtin').man_pages, { desc = '[F]ind [M]an pages.' })
-- map('n', '<leader>rn', vim.lsp.buf.rename(), { desc = '[R]e[n]ame' })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
map('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })

map('n', 's', '*Ncgn', { noremap = true, silent = true, desc = '[S]ubstitute current word and prepare to replace' })

-- Quickfix list
local function quickfixerrors()
  local diag_table = vim.diagnostic.get(nil)
  local quickfix_items = vim.diagnostic.toqflist(diag_table)
  vim.fn.setqflist(quickfix_items, 'a')
  vim.cmd 'Trouble qflist toggle'
end

map('n', '<leader>mk', '<cmd>make<CR>', { desc = 'Run [M]a[k]e' })
map('n', '<leader>q', quickfixerrors, { desc = 'Open diagnostic [Q]uickfix list' })

-- Small terminal

local function smallterm()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd 'J'
  vim.api.nvim_win_set_height(0, 5)
end

map('n', '<leader>st', smallterm, { desc = 'Open [S]mall [T]erminal' })
map('i', 'df', '<BS>')
map('n', '<leader>z', require('zen-mode').toggle, { desc = '[Z]en mode' })
-- map('i', '<F1>', vim.cmd 'vsplit')
map('i', '<C-w><C-s>', '<ESC><C-w><C-s>')
map('i', '<C-w><C-v>', '<ESC><C-w><C-s>')
map('i', '<C-w><C-h>', '<ESC><C-w><C-h>')
map('i', '<C-w><C-j>', '<ESC><C-w><C-j>')
map('i', '<C-w><C-k>', '<ESC><C-w><C-k>')
map('i', '<C-w><C-l>', '<ESC><C-w><C-l>')
map('n', '<C-1>', '1<C-w><C-w>')
map('n', '<C-2>', '2<C-w><C-w>')
map('n', '<C-3>', '3<C-w><C-w>')
map('n', '<C-4>', '4<C-w><C-w>')
map('n', '<C-5>', '5<C-w><C-w>')
map('n', '<C-6>', '6<C-w><C-w>')
map('n', '<C-7>', '7<C-w><C-w>')
map('n', '<C-8>', '8<C-w><C-w>')
map('n', '<C-9>', '9<C-w><C-w>')
map('n', '<C-0>', '10<C-w><C-w>')
map('n', '<C-/>', '<C-w><C-s>')
map('n', '<C-S-/>', '<C-w><C-v>')
map('n', '<C-c>', '<C-w><C-c>')
map('n', '<leader>to', function()
  Snacks.explorer.reveal()
end, { desc = 'Nvim [T]ree [O]pen' })
map('n', '<leader>tse', function()
  pcall(vim.treesitter.start)
end, { desc = '[T]ree[S]itter [E]nable' })

-- map('n', 'm/', vim.cmd 'MarksListBuf')

vim.keymap.set({ 'n', 'v' }, 'm/', ':MarksListBuf<CR>')
map('i', '<c-x><c-]>', function()
  require('blink.cmp')['show'] { providers = { 'lsp' } }
end, {})
map('i', '<c-x><c-a>', function()
  require('blink.cmp')['show'] { providers = { 'minuet' } }
end, {})
map('i', '<c-x><c-n>', function()
  require('blink.cmp')['show'] { providers = { 'buffer' } }
end, {})
map('i', '<c-x><c-f>', function()
  require('blink.cmp')['show'] { providers = { 'file' } }
end)

map('i', '<c-x>s', function()
  require('blink.cmp')['show'] { providers = { spell = { name = 'Spell', module = 'blink-cmp-spell' } } }
end)

map('i', '<c-x><c-t>', function()
  require('blink.cmp')['show'] { providers = { thesaurus = { name = 'blink-cmp-words', module = 'blink-cmp-words.thesaurus' } } }
end)

map('i', '<c-x><c-k>', function()
  require('blink.cmp')['show'] { providers = { thesaurus = { name = 'blink-cmp-words', module = 'blink-cmp-words.dictionary' } } }
end)

--

if vim.g.neovide then
  vim.keymap.set({ 'n', 'v' }, '<C-+>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>')
  vim.keymap.set({ 'n', 'v' }, '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>')
  vim.keymap.set({ 'n', 'v' }, '<C-0>', ':lua vim.g.neovide_scale_factor = 1<CR>')
end
