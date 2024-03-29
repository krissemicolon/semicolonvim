-- leader (Space)
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '

-- README: L stands for the Leader Key not shift + l

-- close current buffer (L + c)
vim.api.nvim_set_keymap('n', '<Leader>c', ':bd<CR>', { noremap = true, silent = true })

-- close all buffers (ctrl + escape)
vim.api.nvim_set_keymap('n', '<C-_>', ':%bd|e#|bd#<CR>', { noremap = true, silent = true })

-- write changes (L + w)
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })

-- quit focused (L + q)
vim.api.nvim_set_keymap('n', '<Leader>q', ':q<CR>', { noremap = true, silent = true })

-- no highlighting/marking (L + m)
vim.api.nvim_set_keymap('n', '<Leader>m', ':set hlsearch!<CR>', { noremap = true, silent = true })

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

-- escape visual (L)
vim.api.nvim_set_keymap('v', '<Leader>', '<ESC>', { noremap = true, silent = true })

-- lsp
--
-- - code actions (L + .)
vim.api.nvim_set_keymap('n', '<Leader>.', ':Lspsaga code_action<CR>', { noremap = true, silent = true })
-- - jump to definition (L + lj)
vim.api.nvim_set_keymap('n', '<Leader>lj', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
-- - formatting (L + lf)
vim.api.nvim_set_keymap('n', '<Leader>lf', ':lua vim.lsp.buf.formatting()<CR>', { noremap = true, silent = true })
-- help/hover doc (L + h)
vim.api.nvim_set_keymap('n', '<Leader>h', ':Lspsaga hover_doc<CR>', { noremap = true, silent = true })
-- toggle diagnostic virtual text (L + ld)
vim.keymap.set( "n", "<Leader>ld", require"lsp_lines".toggle, { noremap = true, silent = true })

-- tab switch buffer (tab/s-tab)
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })

-- move tab in bar (alt + tab/s-tab)
vim.api.nvim_set_keymap('n', '<C-TAB>', ':BufferLineMoveNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-TAB>', ':BufferLineMovePrev<CR>', { noremap = true, silent = true })

-- move selected line / block of text in visual mode ([visual] shift + (J || K))
vim.api.nvim_set_keymap('x', 'K', [[:move '<-2<CR>gv-gv']], { noremap = true, silent = true })
vim.api.nvim_set_keymap('x', 'J', [[:move '>+1<CR>gv-gv']], { noremap = true, silent = true })

-- fuzzy finder (L + ff & L + sp & + fb & L + man & L + lo & L + qf)
vim.api.nvim_set_keymap('n', '<C-Space>', ':Telescope find_files<CR>', { noremap = true, silent = true }) -- list & search files
vim.api.nvim_set_keymap('n', '<C-o>', ':Telescope projects<CR>', { noremap = true, silent = true }) -- open project

vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true }) -- list & search files
vim.api.nvim_set_keymap('n', '<Leader>sp', ':Telescope live_grep<CR>', { noremap = true, silent = true }) -- search through project
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', { noremap = true, silent = true }) -- list & search buffers
vim.api.nvim_set_keymap('n', '<Leader>man', ':Telescope help_tags<CR>', { noremap = true, silent = true }) -- search through nvim manual
vim.api.nvim_set_keymap('n', '<Leader>lo', ':Telescope grep_string<CR>', { noremap = true, silent = true }) -- list occurances of string under cursor
vim.api.nvim_set_keymap('n', '<Leader>op', ':Telescope projects<CR>', { noremap = true, silent = true }) -- open project

-- dashboard (L + d)
vim.api.nvim_set_keymap('n', '<Leader>d', ':Dashboard<CR>', { noremap = true, silent = true })

-- neogit (L + gg)
vim.api.nvim_set_keymap('n', '<Leader>gg', ':Neogit<CR>', { noremap = true, silent = true }) -- git overview
vim.api.nvim_set_keymap('n', '<C-g>', ':Neogit<CR>', { noremap = true, silent = true }) -- git overview
