local plugin = {}
local conf = require('modules.ui.config')
plugin['sainnhe/edge'] = {opt = false, config = conf.edge}
plugin['nvim-lualine/lualine.nvim'] = {
    opt = false, 
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = conf.lualine
}

plugin['akinsho/nvim-bufferline.lua'] = {
    opt = true,
    event = 'BufRead',
    config = conf.nvim_bufferline
}
plugin['folke/zen-mode.nvim'] = {
    opt = true,
    cmd = 'ZenMode',
    config = conf.zen
}

return plugin
