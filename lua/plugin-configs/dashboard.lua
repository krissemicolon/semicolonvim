vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
   d = { description = { "  New File                  " }, command = "DashboardNewFile" },
   a = { description = { "  Find File                 " }, command = "Telescope find_files" },
   b = { description = { "  Recents                   " }, command = "Telescope oldfiles" },
   c = { description = { "  Find Word                 " }, command = "Telescope live_grep" },
   e = { description = { "  Bookmarks                 " }, command = "Telescope marks" },
   f = { description = { "  Load Last Session         " }, command = "SessionLoad" },
}
