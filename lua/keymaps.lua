--- Window navigation - Alt + hjkl
--- terminal mode
vim.keymap.set('t', '<A-h>', [[<C-\><C-N><C-w>h<C-w>=]])
vim.keymap.set('t', '<A-j>', [[<C-\><C-N><C-w>j<C-w>=]])
vim.keymap.set('t', '<A-k>', [[<C-\><C-N><C-w>k<C-w>=]])
vim.keymap.set('t', '<A-l>', [[<C-\><C-N><C-w>l<C-w>=]])
--- insert mode
vim.keymap.set('i', '<A-h>', [[<C-\><C-n><C-w>h<C-w>=]])
vim.keymap.set('i', '<A-j>', [[<C-\><C-n><C-w>j<C-w>=]])
vim.keymap.set('i', '<A-k>', [[<C-\><C-n><C-w>k<C-w>=]])
vim.keymap.set('i', '<A-l>', [[<C-\><C-n><C-w>l<C-w>=]])
--- normal mode
vim.keymap.set('n', '<A-h>', [[<C-w>h<C-w>=]])
vim.keymap.set('n', '<A-j>', [[<C-w>j<C-w>=]])
vim.keymap.set('n', '<A-k>', [[<C-w>k<C-w>=]])
vim.keymap.set('n', '<A-l>', [[<C-w>l<C-w>=]])

--- Use system clipboard with 'gy' and 'gp'
vim.keymap.set({ 'n', 'x' }, 'gy', '"+y')
vim.keymap.set({ 'n', 'x' }, 'gp', '"+p')

--- character delete do not go to register
vim.keymap.set({ 'n', 'x' }, 'x', '"_x')
vim.keymap.set({ 'n', 'x' }, 'X', '"_d')

--- <leader>t to open a terminal in a new window
vim.keymap.set('n', '<leader>t', '<cmd>split | terminal<CR>', { noremap = true, silent = true })
-- Enter normal mode in terminal with double <ESC>
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--- <leader>=/-/0 to balance window size
vim.keymap.set('n', '<leader>=', '<C-w>=', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>-', '<C-w>|', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>0', '<C-w>_', { noremap = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show [D]iagnostic error messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Open file explorer
vim.keymap.set('n', '<leader>e', '<cmd>Ex<CR>', { noremap = true, silent = true })

-- Buffers
vim.keymap.set('n', '<leader>b', '<cmd>bd!<CR>', { noremap = true, silent = true })

-- Keymaps for TODO comments
vim.keymap.set('n', ']t', function()
  require('todo-comments').jump_next()
end, { desc = 'Next todo comment' })
vim.keymap.set('n', '[t', function()
  require('todo-comments').jump_prev()
end, { desc = 'Previous todo comment' })
