-- setup notify plugin needs to be done first
-- README: Comment this out when opening for first time
vim.notify = require"notify"

-- importing modules
require('globals')
require('plugins')
require('plugin-configs')
require('keymaps')
require('settings')
require('colorscheme')
require('highlights')
require('commands')
require('autocommands')

require('plugin-configs.tree')
require('plugin-configs.cmp')
require('plugin-configs.dashboard')
require('plugin-configs.bufferline')
require('plugin-configs.neogit')
require('plugin-configs.impatient')
require('plugin-configs.lspconfig')
require('plugin-configs.lspsaga')
require('plugin-configs.lspkind')
require('plugin-configs.presence')
require('plugin-configs.telescope')
require('plugin-configs.treesitter')
require('plugin-configs.gitsigns')
require('plugin-configs.cursorhold')
require('plugin-configs.trouble')
require('plugin-configs.project')
require('plugin-configs.comment')
require('plugin-configs.toggleterm')
require('plugin-configs.autosave')
require('plugin-configs.lsp-lines')
require('plugin-configs.crates')
require('plugin-configs.mason')

-- Disabled
-- null ls is disabled because of mason.nvim's extensive formatter support 
--require('plugin-configs.null-ls')
