-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

vim.opt.cc = '80' -- Column to the right
vim.opt.wrap = false -- No line wrap
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- Tabs are converted to spaces
vim.opt.softtabstop = 4
vim.opt.number = true -- Show line numbers
vim.opt.mouse = 'a' -- Enable mouse
vim.opt.showmode = false -- DOn't show mode
vim.opt.ignorecase = true -- case insensitive search
vim.opt.smartcase = true -- Unless there isuppercase in the search
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 200
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.path:append '**' -- :find searches recursively
vim.opt.scrolloff = 8 -- Keep n lines below cursor
vim.opt.hlsearch = true -- Highlight search
vim.opt.incsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Remove highlighting when going to normal mode

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
