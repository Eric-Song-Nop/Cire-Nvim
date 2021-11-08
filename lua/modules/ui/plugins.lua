local plugin = {}
local conf = require('modules.ui.config')

plugin['kyazdani42/nvim-web-devicons'] = {opt = false}
-- schemes recommend: https://github.com/rockerBOO/awesome-neovim#tree-sitter-supported-colorscheme
plugin['sainnhe/edge'] = {opt = false, config = conf.edge}
plugin['sainnhe/gruvbox-material'] = {opt = false, config = conf.edge}
plugin['shaunsingh/nord.nvim'] = {opt = false, config = conf.edge}

plugin['hoob3rt/lualine.nvim'] = {
    opt = false,
    config = conf.lualine
}
plugin['arkav/lualine-lsp-progress'] = {
    opt = false,
    after = 'nvim-gps',
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
