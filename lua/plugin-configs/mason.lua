-- contains multiple configs all relating to mason:
-- * mason
-- * mason-lspconfig
-- * lspconfig

-- mason configuration
local mason = require("mason")
-- mason-lspconfig integration setup
local mason_lspconfig = require("mason-lspconfig")
-- lspconfig configuration
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup()

-- |
-- V taken from: https://github.com/ayamir/nvimdots/blob/main/lua/modules/completion/lsp.lua

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

local function custom_attach(client)
	require("lsp_signature").on_attach({
		bind = true,
		use_lspsaga = true,
		floating_window = true,
		fix_pos = true,
		hint_enable = true,
		hi_parameter = "Search",
		handler_opts = { "double" },
	})
end

for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
    lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = custom_attach,
    })
end
