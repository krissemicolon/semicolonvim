vim.cmd([[
    command! Config execute ":cd ]] .. configpath .. [["
    command! Sync   execute ":PackerSync"
    command! Light  execute ":set background=light"
    command! Dark   execute ":set background=dark"
]])
