-- changing defaults
vim.notify = require("notify")

-- importing modules
require('globals')
require('plugins')
require('plugin-configs')
require('keymaps')
require('settings')
require('colorscheme')
require('highlights')
require('commands')

require('plugin-configs.tree')
require('plugin-configs.compe')
require('plugin-configs.dashboard')
require('plugin-configs.bufferline')
require('plugin-configs.neogit')
require('plugin-configs.impatient')
require('plugin-configs.lspconfig')
require('plugin-configs.lspsaga')
require('plugin-configs.lsp-installer')
require('plugin-configs.presence')
require('plugin-configs.telescope')
require('plugin-configs.treesitter')
require('plugin-configs.gitsigns')
require('plugin-configs.cursorhold')
require('plugin-configs.trouble')
require('plugin-configs.project')
require('plugin-configs.comment')

-- TODO: list of plugins yet to configure
require('plugin-configs.toggleterm')
--require('plugin-configs.which-key')
