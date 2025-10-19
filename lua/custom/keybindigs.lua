-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('n', '<leader>|', '<cmd>:vsplit<CR>')
vim.keymap.set('n', '<leader>-', '<cmd>:split<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<leader>.', '<C-i>', { desc = 'Move Forward in History' })
vim.keymap.set('n', '<leader>,', '<C-o>', { desc = 'Move Backward in History' })
vim.keymap.set('n', '<leader>e', '<cmd>:lua MiniFiles.open()<CR>', { desc = 'Open File [E]xplorer' })

-- NOTE: LSP Definitions
--

vim.keymap.set('n', 'grd', '<cmd>:lua Snacks.picker.lsp_definitions()<CR>', { desc = '[G]oto [D]efinition' })
vim.keymap.set('n', 'grD', '<cmd>:lua Snacks.picker.lsp_declarations()<CR>', { desc = '[G]oto [D]eclaration' })
vim.keymap.set('n', 'grr', '<cmd>:lua Snacks.picker.lsp_references()<CR>', { nowait = true, desc = '[R]eferences' })
vim.keymap.set('n', 'grI', '<cmd>:lua Snacks.picker.lsp_implementations()<CR>', { desc = '[G]oto [I]mplementation' })
vim.keymap.set('n', 'gry', '<cmd>:lua Snacks.picker.lsp_type_definitions()<CR>', { desc = '[G]oto T[y]pe Definition' })
vim.keymap.set('n', '<leader>ss', '<cmd>:lua Snacks.picker.lsp_symbols()<CR>', { desc = 'LSP Symbols' })
vim.keymap.set('n', '<leader>sS', '<cmd>:lua Snacks.picker.lsp_workspace_symbols()<CR>', { desc = 'LSP Workspace Symbols' })

-- Find things
vim.keymap.set('n', '<leader>fb', '<cmd>:lua Snacks.picker.buffers() <CR>', { desc = '[B]uffers' })
vim.keymap.set('n', '<leader>ff', '<cmd>:lua Snacks.picker.files() <CR>', { desc = '[F]ind [F]iles' })
vim.keymap.set('n', '<leader>fg', '<cmd>:lua Snacks.picker.git_files() <CR>', { desc = '[F]ind [G]it Files' })
vim.keymap.set('n', '<leader>fr', '<cmd>:lua Snacks.picker.recent() <CR>', { desc = '[R]ecent' })
vim.keymap.set('n', '<leader>fs', '<cmd>:lua Snacks.picker.smart() <CR>', { desc = '[S]mart Find Files' })

-- search
vim.keymap.set('n', '<leader>sg', '<cmd>:lua Snacks.picker.grep() <CR>', { desc = 'Grep' })
vim.keymap.set('n', '<leader>sb', '<cmd>:lua Snacks.picker.grep_buffers() <CR>', { desc = 'Grep Open Buffers' })
vim.keymap.set('n', '<leader>sR', '<cmd>:lua Snacks.picker.resume() <CR>', { desc = 'Resume' })
vim.keymap.set('n', '<leader>su', '<cmd>:lua Snacks.picker.undo() <CR>', { desc = 'Undo History' })
vim.keymap.set('n', '<leader>sd', '<cmd>:lua Snacks.picker.diagnostics() <CR>', { desc = 'Diagnostics' })
vim.keymap.set('n', '<leader>sH', '<cmd>:lua Snacks.picker.search_history() <CR>', { desc = 'Search History' })
vim.keymap.set('n', '<leader>sr', '<cmd>:lua Snacks.picker.registers() <CR>', { desc = 'Registers' })

--terminal

--git

vim.keymap.set('n', '<leader>gtl', '<cmd>:lua Snacks.picker.git_log_line() <CR>', { desc = 'Git Log Line' })
vim.keymap.set('n', '<leader>gtb', '<cmd>:lua Snacks.git.blame_line() <CR>', { desc = 'Git Blame Line' })
vim.keymap.set('n', '<leader>gtt', '<cmd>:lua Snacks.lazygit() <CR>', { desc = 'Open Lazy Git' })
