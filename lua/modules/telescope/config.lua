local config = {}
function config.telescope()
    local home = os.getenv("HOME")

    if not packer_plugins['plenary.nvim'].loaded then
        vim.cmd [[packadd plenary.nvim]]
    end

    if not packer_plugins['popup.nvim'].loaded then
        vim.cmd [[packadd popup.nvim]]
    end

    if not packer_plugins['telescope-project.nvim'].loaded then
        vim.cmd [[packadd telescope-project.nvim]]
    end

    require('telescope').load_extension('project')
    local actions = require "telescope.actions"
    require('telescope').setup {
        defaults = {
            -- Default configuration for telescope goes here:
            -- config_key = value,
            mappings = {
                i = {
                    -- map actions.which_key to <C-h> (default: <C-/>)
                    -- actions.which_key shows the mappings for your picker,
                    -- e.g. git_{create, delete, ...}_branch for the git_branches picker
                    ["<C-h>"] = "which_key"
                },
                n = {
                    ["k"] = actions.move_selection_next,
                    ["i"] = actions.move_selection_previous,
                }
            }
        },
    }
    vim.cmd [[
        nnoremap <silent> <leader>fp :Telescope project<cr>
        nnoremap <leader>fg <cmd>Telescope live_grep<cr>
        nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
        nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
        nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
        nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
        nnoremap <leader>fc <cmd>lua require('telescope.builtin').colorscheme()<cr>
        nnoremap <leader>fk <cmd>lua require('telescope.builtin').keymaps()<cr>
        nnoremap <leader>fz <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
        nnoremap <leader>ft <cmd>lua require('telescope.builtin').treesitter()<cr>
        nnoremap <leader>fs <cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>
        nnoremap <leader>fS <cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>
        nnoremap <leader>fr <cmd>lua require('telescope.builtin').lsp_references()<cr>
        nnoremap <leader>fa <cmd>lua require('telescope.builtin').lsp_code_actions()<cr>
        nnoremap <leader>fi <cmd>lua require('telescope.builtin').lsp_implementations()<cr>
        nnoremap <leader>fd <cmd>lua require('telescope.builtin').lsp_definitions()<cr>
        nnoremap <leader>fe <cmd>lua require('telescope.builtin').lsp_document_diagnostics()<cr>
        nnoremap <leader>sc <cmd>lua require('telescope.builtin').colorscheme()<cr>
    ]]
end

function config.dashboard()
    vim.g.dashboard_default_executive = 'telescope'
end

return config

