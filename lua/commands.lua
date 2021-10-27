vim.cmd([[
    command! Config execute ":e ]] .. configpath .. [["
    command! Light  execute ":set background=light"
    command! Dark   execute ":set background=dark"
]])
