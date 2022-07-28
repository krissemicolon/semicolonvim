-- Cheatsheet
-- when changing Insert/Replace mode "InsertChange",
-- before inserting a char "InsertCharPre",
-- when entering Insert mode "InsertEnter",
-- just after leaving Insert mode "InsertLeave",
-- just before leaving Insert mode "InsertLeavePre",

--[[ These autocommands make lsplines not display lines in insert mode but is annoying
-- when entering Insert mode
-- - turn off virtual lines for lsp_lines
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    callback = function()
        vim.diagnostic.config({ virtual_lines = false })
    end,
})

-- when leaving Insert mode
-- - turn on virtual lines for lsp_lines
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
        vim.diagnostic.config({ virtual_lines = true })
    end,
})
--]]
