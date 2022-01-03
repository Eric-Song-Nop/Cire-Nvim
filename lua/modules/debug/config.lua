local config = {}

function config.dap_install()
    require'dap-install'.setup {
        -- ensure_installed = {"norg", "norg_meta", "norg_table"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
        highlight = {
            enable = true,
            -- disable = { "org" },
            additional_vim_regex_highlighting = {'org'},
        },
    }
end

return config
