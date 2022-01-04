local options = {
    foldlevel = 99,
    norelativenumber = true,
    clipboard = "unnamedplus",
    cursorline = true,
    wrap = true,
    showcmd = true,
    wildmenu = true,
    expandtab = true,
}

for key, value in ipairs(options) do
    vim.api.nvim_set_options(key, value)
end
