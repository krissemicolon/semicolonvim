local null_ls = require'null-ls'

null_ls.setup({
    sources = {
        -- fmt
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.rustfmt,

        -- diagnostics
        null_ls.builtins.diagnostics.eslint,

        -- completion
        null_ls.builtins.completion.spell,
    },
})
