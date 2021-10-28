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

    -- dashboard
    use 'glepnir/dashboard-nvim'

    -- discord rich presence
    use 'andweeb/presence.nvim'

    -- libraries
    use 'nvim-lua/plenary.nvim'

    -- file tree
    use 'kyazdani42/nvim-web-devicons'
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', config = function() require'nvim-tree'.setup {} end }

    -- tabs
    -- alternatives: ['romgrk/barbar.nvim']
    use 'akinsho/bufferline.nvim'

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'onsails/lspkind-nvim'
    use 'glepnir/lspsaga.nvim'

    -- completion
    use 'hrsh7th/nvim-compe'

    -- fzf
    use 'nvim-telescope/telescope.nvim'
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }


    -- snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    -- git
    use 'lewis6991/gitsigns.nvim'
    use 'TimUntersberger/neogit'

    -- colorscheme
    use 'morhetz/gruvbox'
    --use 'folke/tokyonight.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
