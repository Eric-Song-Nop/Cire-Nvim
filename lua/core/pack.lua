local fn = vim.fn
local envs = require('core.global')
local modules_dir = envs.modules_dir
vim.cmd [[packadd packer.nvim]]

local plugins = {}

function load_plugins()
    local list = {}
    local tmp = vim.split(fn.globpath(modules_dir, '*/plugins.lua'), '\n')
    for _, f in ipairs(tmp) do
        list[#list + 1] = f:sub(#modules_dir - 6, -1)
    end
    plugins_file = list
    for _, m in ipairs(plugins_file) do
        local repos = require(m:sub(0, #m - 4))
        for repo, conf in pairs(repos) do
            plugins[#plugins + 1] = vim.tbl_extend('force', {repo}, conf)
        end
    end
end

load_plugins()

return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    for u, v in ipairs(plugins) do
        use(v)
    end
end)
