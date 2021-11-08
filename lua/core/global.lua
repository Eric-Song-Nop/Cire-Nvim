local global = {}

local os_name = vim.loop.os_uname().sysname

global.vim_path = vim.fn.stdpath('config')

local is_windows = os_name == 'Windows'

global.home = is_windows and os.getenv("USERPROFILE") or
                     os.getenv("HOME")

global.modules_dir = global.vim_path .. '/lua/' .. 'modules'

return global
