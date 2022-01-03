local plugin = {}
local conf = require('modules.debug.config')

plugin['mfussenegger/nvim-dap'] = {
    opt = false,
}
plugin['Pocco81/DAPInstall.nvim'] = {
    opt = false,
    config = conf.dap_install
}
return plugin
