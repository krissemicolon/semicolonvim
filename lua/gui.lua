-- README:
-- this file contains configuration for mainly neovide
-- neovide is configured by semicolonvim but not needed for it to run

vim.cmd([[
if exists("g:neovide")
    let $NEOVIDE_MULTIGRID = "true"

    " neovide settings
    let g:neovide_refresh_rate = 140
    let g:neovide_refresh_rate_idle = 5

    let g:neovide_remember_window_size = v:true

    let g:neovide_floating_blur_amount_x = 2.0
    let g:neovide_floating_blur_amount_y = 2.0
    let g:neovide_cursor_animation_length = 0.06
    " cursor move effect
    " let g:neovide_cursor_vfx_mode = "railgun"

    " for pasting in neovide (middle click)
    :set guioptions+=a
    :set guifont=DaddyTimeMono\ Nerd\ Font
endif
]])
