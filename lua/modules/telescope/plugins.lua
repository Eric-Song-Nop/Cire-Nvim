local plugins = {}
local conf = require('modules.telescope.config')

plugins['nvim-telescope/telescope.nvim'] = {
    opt = false,
    -- cmd = 'Telescope',
    config = conf.telescope,
    requires = {
        {'nvim-lua/popup.nvim', opt = true},
        {'nvim-lua/plenary.nvim', opt = true}
    }
}

plugins['nvim-telescope/telescope-project.nvim'] = {
    opt = true,
    after = 'telescope.nvim'
}

-- plugins['glepnir/dashboard-nvim'] = {
--     opt = true,
--     event = "BufWinEnter",
--     config = conf.dashboard
-- }

return plugins

