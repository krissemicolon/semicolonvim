local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

---[[
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
--]]

return require('packer').startup(function(use)
    config = {
        -- Move to lua dir so impatient.nvim can cache it
            compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
    }

    -- packer self management
    use 'wbthomason/packer.nvim'

    -- startup optimization (~47ms -> ~16ms)
    use 'lewis6991/impatient.nvim'

    -- misc
    use 'antoinemadec/FixCursorHold.nvim'   -- otimizes cursor hold bug
    use { -- view keymaps
        'AckslD/nvim-whichkey-setup.lua',
        requires = {'liuchengxu/vim-which-key'},
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
    use 'williamboman/nvim-lsp-installer'
    use 'jose-elias-alvarez/null-ls.nvim'

    -- formatter
    use 'sbdchd/neoformat'

    -- completion
    use 'hrsh7th/nvim-compe'

    -- fzf
    use 'nvim-telescope/telescope.nvim'
    use 'ahmedkhalf/project.nvim'

    -- snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

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
    use 'gregsexton/Atom'
    use 'wimstefan/Lightning'
    use 'haystackandroid/carbonized'
    use 'https://gitlab.com/yorickpeterse/happy_hacking.vim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
