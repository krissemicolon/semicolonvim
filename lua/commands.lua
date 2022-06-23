vim.cmd([[
    command! Config execute ":cd ]] .. configpath .. [["

    command! Sync   execute ":PackerSync"

    command! Lsp    execute ":LspInstallInfo"
    command! Profile execute ":LuaCacheProfile"
    command! Repo   execute ":silent !brave `git config --get remote.origin.url`"
    command! Journal execute ":e ]] .. logseqpath .. [[/journals/]] .. os.date("%Y_%m_%d") .. [[.md"

    command! Light  execute ":set background=light | lua text_selection()"
    command! Dark   execute ":set background=dark  | lua text_selection()"

    command! Tab2   execute ":set tabstop=2 | set softtabstop=2 | set shiftwidth=2"
    command! Tab4   execute ":set tabstop=4 | set softtabstop=4 | set shiftwidth=4"
    command! Tab8   execute ":set tabstop=8 | set softtabstop=8 | set shiftwidth=8"
]])
