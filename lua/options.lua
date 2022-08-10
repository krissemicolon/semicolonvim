vim.opt.syntax          = "on"
vim.opt.tabstop         = 4
vim.opt.softtabstop     = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true
vim.opt.smartindent     = true
vim.opt.relativenumber  = true
vim.opt.number          = true
vim.opt.rnu             = true
vim.opt.wrap            = false
vim.opt.ignorecase      = true
vim.opt.swapfile        = false
vim.opt.backup          = true
vim.opt.undodir         = os.getenv("HOME") .. "/.cache/undo"
vim.opt.undofile        = true
vim.opt.incsearch       = true
vim.opt.encoding        = "utf-8"
vim.opt.fileencoding    = "utf-8"
vim.opt.history         = 500
vim.opt.backup          = false
vim.opt.wb              = false
vim.opt.autoread        = true
vim.opt.mouse           = 'a'
vim.opt.termguicolors   = true
vim.opt.errorbells      = false
vim.opt.iskeyword       :append('-')
vim.opt.completeopt     = "menuone,noselect"
vim.opt.pumheight       = 10
vim.opt.showmode        = true
vim.opt.smartindent     = true
vim.opt.splitbelow      = true
vim.opt.splitright      = true
vim.opt.title           = true
vim.opt.cursorline      = false
vim.opt.scrolloff       = 8
vim.opt.sidescrolloff   = 8

vim.diagnostic.config({
  virtual_text = false,
})