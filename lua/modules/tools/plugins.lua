local plugin = {}
local conf = require('modules.tools.config')

plugin['nvim-treesitter/nvim-treesitter'] = {
    opt = false,
    run = 'TSUpdate',
    config = conf.sitter
}

plugin['folke/which-key.nvim'] = {
    opt = false,
    config = conf.which_key
}

plugin['kristijanhusak/orgmode.nvim'] = {
    opt = false,
    config = conf.lang_org
}

plugin['kyazdani42/nvim-tree.lua'] = {
    opt = true,
    cmd = {'NvimTreeToggle', 'NvimTreeOpen'},
    config = conf.nvim_tree
}

plugin['sbdchd/neoformat'] = {
    opt = true,
    cmd = 'Neoformat'
}

plugin['terrortylor/nvim-comment'] = {
    opt = false,
    config = conf.comment
}

plugin['simrat39/symbols-outline.nvim'] = {
    opt = true,
    cmd = {'SymbolsOutline', 'SymbolsOulineOpen'},
    config = conf.symbols_outline
}

plugin['folke/trouble.nvim'] = {
    opt = false,
    config = conf.trouble
}

plugin['wakatime/vim-wakatime'] = {
    opt = false
}

plugin['SmiteshP/nvim-gps'] = {
    opt = false,
    config = conf.nvim_gps
}
return plugin
