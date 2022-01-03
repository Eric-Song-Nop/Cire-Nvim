local env = require('core.global')
require('core.event')

local function dashboard_config()
    vim.g.dashboard_default_executive = 'telescope'
    -- All headers from:
    -- https://ascii-generator.site
    vim.g.dashboard_custom_header = {
        [[ .------..------..------..------.]],
        [[ |C.--. ||I.--. ||R.--. ||E.--. |]],
        [[ | :/\: || (\/) || :(): || (\/) |]],
        [[ | :\/: || :\/: || ()() || :\/: |]],
        [[ | '--'C|| '--'I|| '--'R|| '--'E|]],
        [[ `------'`------'`------'`------']],
    }
    vim.g.dashboard_custom_header = {
[[       ___                        ___           ___      ]],
[[      /  /\           ___        /  /\         /  /\     ]],
[[     /  /::\         /__/\      /  /::\       /  /::\    ]],
[[    /  /:/\:\        \__\:\    /  /:/\:\     /  /:/\:\   ]],
[[   /  /:/  \:\       /  /::\  /  /::\ \:\   /  /::\ \:\  ]],
[[  /__/:/ \  \:\   __/  /:/\/ /__/:/\:\_\:\ /__/:/\:\ \:\ ]],
[[  \  \:\  \__\/  /__/\/:/    \__\/ |::\/:/ \  \:\ \:\_\/ ]],
[[   \  \:\        \  \::/        |  |:|::/   \  \:\ \:\   ]],
[[    \  \:\        \  \:\        |  |:|\/     \  \:\_\/   ]],
[[     \  \:\        \__\/        |__|:|        \  \:\     ]],
[[      \__\/                      \__\|         \__\/     ]],
    }
    vim.g.dashboard_custom_header = {
[[           _____                    _____                    _____                    _____           ]],
[[          /\    \                  /\    \                  /\    \                  /\    \          ]],
[[         /::\    \                /::\    \                /::\    \                /::\    \         ]],
[[        /::::\    \               \:::\    \              /::::\    \              /::::\    \        ]],
[[       /::::::\    \               \:::\    \            /::::::\    \            /::::::\    \       ]],
[[      /:::/\:::\    \               \:::\    \          /:::/\:::\    \          /:::/\:::\    \      ]],
[[     /:::/  \:::\    \               \:::\    \        /:::/__\:::\    \        /:::/__\:::\    \     ]],
[[    /:::/    \:::\    \              /::::\    \      /::::\   \:::\    \      /::::\   \:::\    \    ]],
[[   /:::/    / \:::\    \    ____    /::::::\    \    /::::::\   \:::\    \    /::::::\   \:::\    \   ]],
[[  /:::/    /   \:::\    \  /\   \  /:::/\:::\    \  /:::/\:::\   \:::\____\  /:::/\:::\   \:::\    \  ]],
[[ /:::/____/     \:::\____\/::\   \/:::/  \:::\____\/:::/  \:::\   \:::|    |/:::/__\:::\   \:::\____\ ]],
[[ \:::\    \      \::/    /\:::\  /:::/    \::/    /\::/   |::::\  /:::|____|\:::\   \:::\   \::/    / ]],
[[  \:::\    \      \/____/  \:::\/:::/    / \/____/  \/____|:::::\/:::/    /  \:::\   \:::\   \/____/  ]],
[[   \:::\    \               \::::::/    /                 |:::::::::/    /    \:::\   \:::\    \      ]],
[[    \:::\    \               \::::/____/                  |::|\::::/    /      \:::\   \:::\____\     ]],
[[     \:::\    \               \:::\    \                  |::| \::/____/        \:::\   \::/    /     ]],
[[      \:::\    \               \:::\    \                 |::|  ~|               \:::\   \/____/      ]],
[[       \:::\    \               \:::\    \                |::|   |                \:::\    \          ]],
[[        \:::\____\               \:::\____\               \::|   |                 \:::\____\         ]],
[[         \::/    /                \::/    /                \:|   |                  \::/    /         ]],
[[          \/____/                  \/____/                  \|___|                   \/____/          ]],
    }
    vim.g.dashboard_custom_section = {
        change_colorscheme = {
            description = {' Scheme change              leader s c '},
            command = 'DashboardChangeColorscheme'
        },
        -- find_frecency = {
        --     description = {' File frecency              leader f r '},
        --     command = 'Telescope frecency'
        -- },
        find_history = {
            description = {' File history               leader f H '},
            command = 'DashboardFindHistory'
        },
        find_project = {
            description = {' Project find               leader f p '},
            command = 'Telescope project'
        },
        find_file = {
            description = {' File find                  leader f f '},
            command = 'DashboardFindFile'
        },
        file_new = {
            description = {' File new                   leader f n '},
            command = 'DashboardNewFile'
        },
        find_word = {
            description = {' Word find                  leader f w '},
            command = 'DashboardFindWord'
        }
    }
end

local function core_settings()
    dashboard_config()
    require('core.pack')
    require('core.keymaps')
    vim.cmd [[set background=dark]]
    vim.cmd [[colorscheme edge]]
end

core_settings()
