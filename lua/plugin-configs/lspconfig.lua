local s = require'lspconfig'

-- python
s.pyright.setup {}

-- rust
s.rust_analyzer.setup {
    settings = { 
        ["rust-analyzer"] = { 
            checkOnSave = {
                command = "clippy"
            }
        } 
    } 
}