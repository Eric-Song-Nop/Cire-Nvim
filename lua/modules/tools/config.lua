local config = {}

function config.sitter()
    require'nvim-treesitter.configs'.setup {
        -- ensure_installed = {"norg", "norg_meta", "norg_table"}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
        -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
        highlight = {
            enable = true,
            -- disable = { "org" },
            additional_vim_regex_highlighting = {'org'},
        },
    }
end

function config.which_key()
    require("which-key").setup {
    }
end

function config.lang_org()
    local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
    parser_config.org = {
      install_info = {
        url = 'https://github.com/milisims/tree-sitter-org',
        revision = 'main',
        files = {'src/parser.c', 'src/scanner.cc'},
      },
      filetype = 'org',
    }
    require('orgmode').setup({
        org_agenda_files = {'~/org/*'},
        org_default_notes_file = '~/org/refile.org',
    })
end

function config.norg()
    local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

    parser_configs.norg = {
        install_info = {
            url = "https://github.com/nvim-neorg/tree-sitter-norg",
            files = { "src/parser.c", "src/scanner.cc" },
            branch = "main"
        },
    }

    parser_configs.norg_meta = {
        install_info = {
            url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
            files = { "src/parser.c" },
            branch = "main"
        },
    }

    parser_configs.norg_table = {
        install_info = {
            url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
            files = { "src/parser.c" },
            branch = "main"
        },
    }
    require('neorg').setup {
            -- Tell Neorg what modules to load
            load = {
                ["core.defaults"] = {}, -- Load all the default modules
                ["core.norg.concealer"] = {}, -- Allows for use of icons
                ["core.keybinds"] = { -- Configure core.keybinds
                    config = {
                        default_keybinds = true, -- Generate the default keybinds
                        neorg_leader = "<Leader>o" -- This is the default if unspecified
                    }
                },
                ["core.norg.dirman"] = { -- Manage your directories with Neorg
                    config = {
                        workspaces = {
                            my_workspace = "~/neorg"
                        }
                    }
                }
            },
        }
end

function config.nvim_tree()
    local tree_cb = require'nvim-tree.config'.nvim_tree_callback
    require('nvim-tree').setup {
        gitignore = true,
        ignore = {'.git', 'node_modules', '.cache'},
        open_on_tab = false,
        disable_netrw = true,
        hijack_netrw = true,
        auto_close = true,
        update_cwd = true,
        highlight_opened_files = true,
        auto_ignore_ft = {'startify', 'dashboard'},
        update_focused_file = {
            enable = true,
            update_cwd = true,
            ignore_list = {}
        },
        view = {
            width = 30,
            side = 'left',
            auto_resize = true,
            mappings = {
                custom_only = false,
                list = {
                    -- {
                    --     key = {"<CR>", "o", "<2-LeftMouse>"},
                    --     cb = tree_cb("tabnew")
                    -- },
                    {key = {"<2-RightMouse>", "<C-]>"}, cb = tree_cb("cd")},
                    {key = "<C-v>", cb = tree_cb("vsplit")},
                    {key = "<C-s>", cb = tree_cb("split")},
                    {key = "<C-t>", cb = tree_cb("tabnew")},
                    {key = "<", cb = tree_cb("prev_sibling")},
                    {key = ">", cb = tree_cb("next_sibling")},
                    {key = "P", cb = tree_cb("parent_node")},
                    {key = "<BS>", cb = tree_cb("close_node")},
                    {key = "<S-CR>", cb = tree_cb("close_node")},
                    {key = "<Tab>", cb = tree_cb("preview")},
                    {key = "K", cb = tree_cb("first_sibling")},
                    {key = "J", cb = tree_cb("last_sibling")},
                    {key = "I", cb = tree_cb("toggle_ignored")},
                    {key = "H", cb = tree_cb("toggle_dotfiles")},
                    {key = "R", cb = tree_cb("refresh")},
                    {key = "a", cb = tree_cb("create")},
                    {key = "d", cb = tree_cb("remove")},
                    {key = "r", cb = tree_cb("rename")},
                    {key = "<C-r>", cb = tree_cb("full_rename")},
                    {key = "x", cb = tree_cb("cut")},
                    {key = "c", cb = tree_cb("copy")},
                    {key = "p", cb = tree_cb("paste")},
                    {key = "y", cb = tree_cb("copy_name")},
                    {key = "Y", cb = tree_cb("copy_path")},
                    {key = "gy", cb = tree_cb("copy_absolute_path")},
                    {key = "[c", cb = tree_cb("prev_git_item")},
                    {key = "]c", cb = tree_cb("next_git_item")},
                    {key = "-", cb = tree_cb("dir_up")},
                    {key = "s", cb = tree_cb("system_open")},
                    {key = "q", cb = tree_cb("close")},
                    {key = "g?", cb = tree_cb("toggle_help")}
                }
            }
        }
    }
end

function config.symbols_outline()

end

function config.comment()
require('nvim_comment').setup({
    comment_empty = false,
    line_mapping = "<leader>cl",
    operator_mapping = "<leader>cr",
})
end

function config.nvim_gps()
    require("nvim-gps").setup({
        icons = {
            ["class-name"] = ' ', -- Classes and class-like objects
            ["function-name"] = ' ', -- Functions
            ["method-name"] = ' ' -- Methods (functions inside class-like objects)
        },
        languages = { -- You can disable any language individually here
            ["c"] = true,
            ["cpp"] = true,
            ["go"] = true,
            ["java"] = true,
            ["javascript"] = true,
            ["lua"] = true,
            ["python"] = true,
            ["rust"] = true
        },
        separator = ' > '
    })
end

function config.trouble()
    require("trouble").setup {
        action_keys = {
            open_split = { "<c-x>" }, -- open buffer in new split
            open_vsplit = { "<c-v>" }, -- open buffer in new vsplit
            open_tab = { "<c-t>" }, -- open buffer in new tab
            previous = "i", -- preview item
            next = "k" -- next item
        }
    }
    vim.cmd [[
        nnoremap <leader>xx <cmd>TroubleToggle<cr>
        nnoremap <leader>xw <cmd>TroubleToggle lsp_workspace_diagnostics<cr>
        nnoremap <leader>xd <cmd>TroubleToggle lsp_document_diagnostics<cr>
        nnoremap <leader>xq <cmd>TroubleToggle quickfix<cr>
        nnoremap <leader>xl <cmd>TroubleToggle loclist<cr>
    ]]
end

return config
