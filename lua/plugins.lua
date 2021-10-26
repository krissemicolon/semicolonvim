local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

---[[
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
--]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- libraries
    use 'nvim-lua/plenary.nvim'

    -- file tree
    use 'kyazdani42/nvim-web-devicons'
    use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons', config = function() require'nvim-tree'.setup {} end }

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'onsails/lspkind-nvim'

    -- completion
    use 'hrsh7th/nvim-compe'

    -- fzf
    use 'nvim-telescope/telescope.nvim'

    -- snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'

    -- colorscheme
    use 'morhetz/gruvbox'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
