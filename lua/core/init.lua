local env = require('core.global')
require('core.event')

local function dashboard_config()
    vim.g.dashboard_default_executive = 'telescope'
    vim.g.dashboard_custom_section = {
        change_colorscheme = {
            descriptioc = {' Scheme change              leader s c '},
            command = 'DashboardChangeColorscheme'
        },
        find_frecency = {
            description = {' File frecency              leader f r '},
            command = 'Telescope frecency'
        },
        find_history = {
            description = {' File history               leader f e '},
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

function core_settings()
    require('core.pack')
    vim.cmd [[colorscheme nord]]
end

core_settings()
