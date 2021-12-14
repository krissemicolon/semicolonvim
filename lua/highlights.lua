function text_selection()
    if vim.opt.background:get() == "light" then
        vim.cmd("highlight Visual gui=None guifg=None guibg=LightBlue3")
    else
        vim.cmd("highlight Visual gui=None guifg=None guibg=LightBlue4")
    end
end

text_selection()

-- for future additions
--vim.cmd([[ ]])
