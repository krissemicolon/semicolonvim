local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

---[[
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({ 'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path })
end
--]]

local status_ok, packer = pcall(require, 'packer')
if not status_ok then
    return
end

-- packer floating window
packer.init {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'rounded' }
        end,
    },
}

return require('packer').startup(function(use)
    config = {
        -- Move to lua dir so impatient.nvim can cache it
        compile_path = vim.fn.stdpath('config') .. '/lua/packer_compiled.lua'
    }

    -- packer self management
    use 'wbthomason/packer.nvim'

    -- startup optimization (~47ms -> ~16ms)
    use 'lewis6991/impatient.nvim'

    -- misc
    use 'antoinemadec/FixCursorHold.nvim' -- otimizes cursor hold bug
    use { -- view keymaps
        'AckslD/nvim-whichkey-setup.lua',
        requires = { 'liuchengxu/vim-which-key' },
    }
    use 'ap/vim-css-color'

    -- dashboard
    use 'glepnir/dashboard-nvim'

    -- discord rich presence
    use 'andweeb/presence.nvim'

    -- libraries
    use 'nvim-lua/plenary.nvim'

    -- file tree
    use 'kyazdani42/nvim-web-devicons'
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

    -- terminal
    use 'akinsho/toggleterm.nvim'

    -- autosave
    use 'Pocco81/AutoSave.nvim'

    -- tabs/buffers
    -- alternatives: ['romgrk/barbar.nvim']
    use 'akinsho/bufferline.nvim'

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'onsails/lspkind-nvim'
    use 'glepnir/lspsaga.nvim'
    use 'folke/trouble.nvim'
    use 'williamboman/mason.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

    -- formatter
    use 'sbdchd/neoformat'

    -- completion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-calc'
    use 'hrsh7th/cmp-latex-symbols'
    use {
        'saecki/crates.nvim',
        tag = 'v0.2.1',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    -- use 'hrsh7th/cmp-git'
    -- use 'hrsh7th/cmp-omni'
    -- use 'hrsh7th/cmp-emoji'

    -- fzf
    use 'nvim-telescope/telescope.nvim'
    use 'ahmedkhalf/project.nvim'

    -- snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

    -- commenting
    use 'terrortylor/nvim-comment'

    -- notifications / error messages
    use 'rcarriga/nvim-notify'

    -- git
    use 'lewis6991/gitsigns.nvim'
    use 'TimUntersberger/neogit'

    -- colorscheme
    use 'morhetz/gruvbox'
    use 'sainnhe/everforest'
    use 'wimstefan/Lightning'
    use 'tomasiser/vim-code-dark'
    use 'savq/melange'
    use { 'mcchrish/zenbones.nvim', requires = 'rktjmp/lush.nvim' }
    use 'rebelot/kanagawa.nvim'
    use 'AlphaTechnolog/pywal.nvim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
