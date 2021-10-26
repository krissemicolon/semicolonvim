-- leader (Space)
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- no highlighting (L + h)
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- explorer (L + e)
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- window switching (ctrl + hjkl)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- indenting (default improved)
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- escape (jk || kj || jj)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- tab switch buffer (tab)
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { noremap = true, silent = true })

-- move selected line / block of text in visual mode ([visual] shift + (J || K))
vim.api.nvim_set_keymap('x', 'K', [[:move '<-2<CR>gv-gv']], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', [[:move '>+1<CR>gv-gv']], { noremap = true, silent = true })

-- completion ((s-)tab)
-- in module: nv-compe

-- fuzzy finder
vim.api.nvim_set_keymap('n', '<Leader>f', 'Telescope find_files', { noremap = true, silent = true})

