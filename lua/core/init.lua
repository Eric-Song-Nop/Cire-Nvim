local env = require('core.global')
require('core.event')

function core_settings()
    require('core.pack')
    vim.cmd [[colorscheme edge]]
end

core_settings()
