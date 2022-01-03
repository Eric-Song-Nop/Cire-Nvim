-- Define which key keymaps here
-- Only a group name maybe
local wk = require("which-key")
wk.register({
    ["<space>f"] = {
        name = "+fuzzy"
    },
    ["<space>x"] = {
        name = "+trouble"
    }
})

