-- Set <space> leader. Must be loaded before plugins
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Initialize lazyvim and set the plugins folder to be loaded
require 'lazy_init'
require('lazy').setup 'plugins'

-- Other files to be loaded
require 'keymaps'
require 'opts'
require 'autocmds'

-- Make neovim work with system clipboard
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
  },
  cache_enabled = 0,
}

vim.cmd [[highlight ColorColumn ctermbg=0 guibg=SeaGreen]]
vim.g.latex_to_unicode_file_types = { 'julia', 'markdown' }
