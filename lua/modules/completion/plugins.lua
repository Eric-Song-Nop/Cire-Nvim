local completion = {}
local conf = require('modules.completion.config')

completion['neovim/nvim-lspconfig'] = {
    opt = false,
    config = conf.nvim_lsp
}
completion['williamboman/nvim-lsp-installer'] = {opt = true, after = 'nvim-lspconfig'}
completion['tami5/lspsaga.nvim'] = {opt = true, after = 'nvim-lspconfig'}
completion['kosayoda/nvim-lightbulb'] = {
    opt = true,
    after = 'nvim-lspconfig',
    config = conf.lightbulb
}
completion['ray-x/lsp_signature.nvim'] = {opt = true, after = 'nvim-lspconfig'}
completion['hrsh7th/nvim-cmp'] = {
    config = conf.cmp,
    event = 'InsertEnter',
    requires = {
        {'hrsh7th/cmp-nvim-lsp'},
        {'saadparwaiz1/cmp_luasnip', after = 'LuaSnip'},
        {'hrsh7th/cmp-buffer', after = 'cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lua', after = 'cmp-buffer'},
        -- {'andersevenrud/compe-tmux', branch = 'cmp', after = 'cmp-nvim-lua'},
        -- {'hrsh7th/cmp-path', after = 'compe-tmux'},
        {'hrsh7th/cmp-path', after = 'cmp-nvim-lua'},
        {'f3fora/cmp-spell', after = 'cmp-path'},
        {
            'tzachar/cmp-tabnine',
            run = './install.sh',
            after = 'cmp-spell',
            config = conf.tabnine
        },
    }
}
completion['L3MON4D3/LuaSnip'] = {
    after = 'nvim-cmp',
    config = conf.luasnip,
    requires = 'rafamadriz/friendly-snippets'
}
completion['windwp/nvim-autopairs'] = {
    after = 'nvim-cmp',
    config = conf.autopairs
}

completion['github/copilot.vim'] = {opt = true, cmd = "Copilot"}

return completion

