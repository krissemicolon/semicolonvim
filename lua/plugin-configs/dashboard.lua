vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
   a = { description = { "  Explorer                  " }, command = "NvimTreeToggle" },
   b = { description = { "  Search                    " }, command = "lua require('telescope.builtin').find_files()" },
   c = { description = { "  Source Control            " }, command = "Neogit" },
   d = { description = { "  Configuration             " }, command = "Config" },
   f = { description = { "  Colorscheme               " }, command = "lua require('telescope.builtin').colorscheme()" }
}
