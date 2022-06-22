require'project_nvim'.setup{
  manual_mode = false,
  silent_chdir = false,
  detection_modes = { "lsp", "pattern" },
  patterns = { ">Projects" },   -- get all projects from ~/Projects and more
  exclude_dirs = {},
  datapath = vim.fn.stdpath("data"),
}
