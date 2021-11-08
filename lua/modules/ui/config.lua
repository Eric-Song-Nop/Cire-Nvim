local config = {}
function config.edge()
    vim.cmd [[set background=dark]]
    vim.g.edge_enable_italic = 1
end

function config.lualine()
    local gps = require("nvim-gps")
    require('lualine').setup{
        options = {
            icons_enabled = true,
            -- theme = 'onedark',
            theme = 'nord',
            disabled_filetypes = {},
            component_separators = '|',
            section_separators = {left = '', right = ''}
        },

        sections = {
            lualine_a = {'mode'},
            lualine_b = {{'branch'}, {'diff'}},
            lualine_c = {
                {gps.get_location, condition = gps.is_available}, {'lsp_progress'}
            },
            lualine_x = {
                {
                    'diagnostics',
                    sources = {'nvim_lsp'},
                    color_error = "#BF616A",
                    color_warn = "#EBCB8B",
                    color_info = "#81A1AC",
                    color_hint = "#88C0D0",
                    symbols = {error = ' ', warn = ' ', info = ' '}
                },
            },
            lualine_y = {'filetype', 'encoding', 'fileformat'},
            lualine_z = {'progress', 'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
    }
end

function config.nvim_bufferline()
    require('bufferline').setup {
        options = {
            number = "none",
            modified_icon = '✥',
            buffer_close_icon = '',
            left_trunc_marker = "",
            right_trunc_marker = "",
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 20,
            show_buffer_close_icons = true,
            show_buffer_icons = true,
            show_tab_indicators = true,
            diagnostics = "nvim_lsp",
            always_show_bufferline = true,
            separator_style = "thin",
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    text_align = "center",
                    padding = 1
                }
            }
        }
    }
    vim.cmd [[
        nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
        nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
        nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
        nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
        nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
        nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
        nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
        nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
        nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
        nnoremap <silent><leader>0 <Cmd>BufferLineGoToBuffer 10<CR>
        nnoremap <silent> bp :BufferLinePick<CR>
    ]]
end
function config.zen()
require('zen-mode').setup {}
end
return config
