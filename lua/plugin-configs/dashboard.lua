local home = os.getenv('HOME')
local dash = require'dashboard'

-- header
dash.custom_header = {
    '',
    '',
    [[                __                   ]],
    [[ __     __  __ /\_\    ___ ___       ]],
    [[/\_\   /\ \/\ \\/\ \ /' __` __`\     ]],
    [[\/_/_  \ \ \_/ |\ \ \/\ \/\ \/\ \    ]],
    [[  /\ \  \ \___/  \ \_\ \_\ \_\ \_\   ]],
    [[  \ \/   \/__/    \/_/\/_/\/_/\/_/   ]],
    [[   \/                                ]],
    '',
    '',
}

-- options
dash.hide_statusline = false
dash.hide_tabline = false

-- Menu
dash.custom_center = {
    { icon = '  ', desc = 'Explorer       ', action = 'NvimTreeToggle',         shortcut = '    e  '    },
    { icon = '  ', desc = 'Search         ', action = 'Telescope live_grep',    shortcut = '    s p'    },
    { icon = '  ', desc = 'Source Control ', action = 'Neogit',                 shortcut = '    g g'    },
    { icon = '  ', desc = 'Projects       ', action = 'Telescope projects',     shortcut = '    o p'    },
    { icon = '  ', desc = 'Plugins        ', action = 'PackerStatus',           shortcut = '       '    },
    { icon = '  ', desc = 'Configuration  ', action = 'Config',                 shortcut = '       '    },
    { icon = '  ', desc = 'Colorscheme    ', action = 'Telescope colorscheme',  shortcut = '       '    },
    { icon = '  ', desc = 'Quit           ', action = 'q',                      shortcut = '       '    },
}

-- footer
dash.custom_footer = { '◯  Do not disturb my circles' }
