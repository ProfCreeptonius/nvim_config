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
map('n', '<leader>tp', "<cmd>lua require('base46').toggle_transparency()<CR>", { desc = 'Toggle [T]rans[p]arency' })
map('t', '<C-z>', 'pwd | xclip -selection clipboard<CR><C-\\><C-n>:cd <C-r>+<CR>i')
map('n', '<C-e>', '<CMD>Oil<CR>', { desc = 'Open file [E]xplorer' })

local builtin = require 'telescope.builtin'

-- telescope
vim.keymap.set('n', '<leader>fz', function()
  -- You can pass additional configuration to Telescope to change the theme, layout, etc.
  builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
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
map('n', '<leader>f.', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
map('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })
map('n', 'gd', require('telescope.builtin').lsp_definitions, { desc = '[G]oto [D]efinition' })
map('n', 'gr', require('telescope.builtin').lsp_references, { desc = '[G]oto [R]eferences' })
map('n', 'gI', require('telescope.builtin').lsp_implementations, { desc = '[G]oto [I]mplementation' })
map('n', 'gtd', require('telescope.builtin').lsp_type_definitions, { desc = '[G]oto [T]ype [D]efinition' })
map('n', '<leader>fdb', require('telescope.builtin').lsp_document_symbols, { desc = '[F]ind [D]ocument Sym[b]ols' })
map('n', '<leader>fsb', require('telescope.builtin').lsp_dynamic_workspace_symbols, { desc = '[F]ind Workspace [S]ym[b]ols' })
map('n', '<leader>rd', require('telescope.builtin').resume, { desc = '[R]e[d]o search.' })
map('n', '<leader>fm', require('telescope.builtin').man_pages, { desc = '[F]ind [M]an pages.' })
-- map('n', '<leader>rn', vim.lsp.buf.rename(), { desc = '[R]e[n]ame' })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = '[C]ode [A]ction' })
map('n', 'gD', vim.lsp.buf.declaration, { desc = '[G]oto [D]eclaration' })

map('n', '<F2>', '[', { noremap = true, silent = true })
map('n', '<F3>', ']', { noremap = true, silent = true })
map('n', 's', '*Ncgn', { noremap = true, silent = true, desc = '[S]ubstitute current word and prepare to replace' })

local function quickfixerrors()
  local diag_table = vim.diagnostic.get(nil)
  local quickfix_items = vim.diagnostic.toqflist(diag_table)
  vim.fn.setqflist(quickfix_items, 'a')
  vim.cmd 'Trouble qflist toggle'
end

map('n', '<leader>mk', '<cmd>make<CR>', { desc = 'Run [M]a[k]e' })
map('n', '<leader>q', quickfixerrors, { desc = 'Open diagnostic [Q]uickfix list' })
