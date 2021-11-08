-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/eric/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/eric/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/eric/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/eric/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/eric/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\1\2°\1\0\0\2\0\a\0\r4\0\0\0%\1\1\0>\0\2\0027\0\2\0007\0\3\0003\1\4\0>\0\2\0014\0\0\0%\1\5\0>\0\2\0027\0\6\0>\0\1\1G\0\1\0\tload luasnip/loaders/from_vscode\1\0\2\fhistory\2\17updateevents\29TextChanged,TextChangedI\15set_config\vconfig\fluasnip\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    after = { "cmp-nvim-lua" },
    after_files = { "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "compe-tmux" },
    after_files = { "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after = { "cmp-spell" },
    after_files = { "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["compe-tmux"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    after_files = { "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-spell/after/plugin/cmp-spell.lua" },
    load_after = {
      ["cmp-path"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp-spell",
    url = "https://github.com/f3fora/cmp-spell"
  },
  cmp_luasnip = {
    after = { "cmp-buffer" },
    after_files = { "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["compe-tmux"] = {
    after = { "cmp-path" },
    after_files = { "/home/eric/.local/share/nvim/site/pack/packer/opt/compe-tmux/after/plugin/compe_tmux.vim" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/compe-tmux",
    url = "https://github.com/andersevenrud/compe-tmux"
  },
  ["copilot.vim"] = {
    commands = { "Copilot" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  edge = {
    config = { "\27LJ\1\2\\\0\0\2\0\5\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\3\0'\1\1\0:\1\4\0G\0\1\0\23edge_enable_italic\6g\24set background=dark\bcmd\bvim\0" },
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/edge",
    url = "https://github.com/sainnhe/edge"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["lsp_signature.nvim"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lspsaga.nvim"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neoformat = {
    commands = { "Neoformat" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nvim-autopairs"] = {
    config = { '\27LJ\1\2ñ\1\0\0\b\0\14\0\0254\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0002\2\0\0:\2\4\1>\0\2\0014\0\0\0%\1\5\0>\0\2\0024\1\0\0%\2\6\0>\1\2\0027\2\a\1\16\3\2\0007\2\b\2%\4\t\0007\5\n\0003\6\f\0003\a\v\0:\a\r\6>\5\2\0=\2\2\1G\0\1\0\rmap_char\1\0\0\1\0\1\btex\5\20on_confirm_done\17confirm_done\aon\nevent\bcmp"nvim-autopairs.completion.cmp\14fast_wrap\1\0\0\nsetup\19nvim-autopairs\frequire\0' },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\1\2±\t\0\0\5\0\v\0\0174\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\6\0003\2\3\0002\3\3\0003\4\4\0;\4\1\3:\3\5\2:\2\a\1>\0\2\0014\0\b\0007\0\t\0%\1\n\0>\0\2\1G\0\1\0Ù\5        nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>\n        nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>\n        nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>\n        nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>\n        nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>\n        nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>\n        nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>\n        nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>\n        nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>\n        nnoremap <silent><leader>0 <Cmd>BufferLineGoToBuffer 10<CR>\n        nnoremap <silent> bp :BufferLinePick<CR>\n    \bcmd\bvim\foptions\1\0\0\foffsets\1\0\4\ttext\18File Explorer\fpadding\3\1\15text_align\vcenter\rfiletype\rNvimTree\1\0\14\23right_trunc_marker\bï‚©\20max_name_length\3\14\22left_trunc_marker\bï‚¨\22show_buffer_icons\2\24show_tab_indicators\2\rtab_size\3\20\20separator_style\tthin\vnumber\tnone\28show_buffer_close_icons\2\22max_prefix_length\3\r\16diagnostics\rnvim_lsp\27always_show_bufferline\2\22buffer_close_icon\bï™•\18modified_icon\bâœ¥\nsetup\15bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "nvim-autopairs" },
    config = { "\27LJ\1\2F\0\1\6\0\3\0\b4\1\0\0007\1\1\0017\1\2\1\16\2\0\0)\3\2\0)\4\2\0)\5\2\0@\1\5\0\27nvim_replace_termcodes\bapi\bvimÐ\1\0\0\a\0\b\2!4\0\0\0004\1\1\0007\1\2\0017\1\3\1'\2\0\0>\1\2\0=\0\0\3\b\1\0\0T\2\20€4\2\1\0007\2\2\0027\2\4\2'\3\0\0\21\4\1\0\16\5\0\0)\6\2\0>\2\5\0028\2\1\2\16\3\2\0007\2\5\2\16\4\1\0\16\5\1\0>\2\4\2\16\3\2\0007\2\6\2%\4\a\0>\2\3\2\n\2\0\0T\2\2€)\2\1\0T\3\1€)\2\2\0H\2\2\0\a%s\nmatch\bsub\23nvim_buf_get_lines\24nvim_win_get_cursor\bapi\bvim\vunpack\0\2†\4\0\2\a\0\t\0\0153\2\0\0004\3\2\0007\3\3\3%\4\4\0007\5\1\0016\5\5\0027\6\1\1>\3\4\2:\3\1\0013\3\6\0007\4\a\0007\4\b\0046\3\4\3:\3\5\1H\1\2\0\tname\vsource\1\0\b\tpath\v[PATH]\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\n[BUF]\ttmux\v[TMUX]\fluasnip\v[SNIP]\nspell\f[SPELL]\forgmode\n[ORG]\tmenu\n%s %s\vformat\vstring\tkind\1\0\25\tText\bï¾\rFunction\bïž”\rOperator\bïš”\nColor\bï£—\nClass\bï´¯\vModule\bï’‡\rConstant\bï£¾\rProperty\bï° \vMethod\bïš¦\15EnumMember\bï…\tUnit\bï¥¬\14Interface\bïƒ¨\vStruct\bï­„\rVariable\bï”ª\fSnippet\bï‘\vFolder\bïŠ\nEvent\bïƒ§\nField\bï° \18TypeParameter\5\tFile\bïœ˜\nValue\bï¢Ÿ\16Constructor\bï£\tEnum\bï…\fKeyword\bï Š\14Reference\bïœ†}\0\1\2\2\3\0\20+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\n€+\1\1\0>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\2\1>\1\1\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\2À\1À\rcomplete\21select_next_item\fvisibleR\0\1\2\1\2\0\f+\1\0\0007\1\0\1>\1\1\2\15\0\1\0T\2\4€+\1\0\0007\1\1\1>\1\1\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\2À\21select_prev_item\fvisible›\1\0\1\4\1\b\0\0204\1\0\0%\2\1\0>\1\2\0027\1\2\1'\2ÿÿ>\1\2\2\15\0\1\0T\2\t€4\1\3\0007\1\4\0017\1\5\1+\2\0\0%\3\6\0>\2\2\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\0À\5\28<Plug>luasnip-jump-prev\rfeedkeys\afn\bvim\rjumpable\fluasnip\frequire¦\1\0\1\4\1\b\0\0194\1\0\0%\2\1\0>\1\2\0027\1\2\1>\1\1\2\15\0\1\0T\2\t€4\1\3\0007\1\4\0017\1\5\1+\2\0\0%\3\6\0>\2\2\2%\3\a\0>\1\3\1T\1\2€\16\1\0\0>\1\1\1G\0\1\0\0À\5!<Plug>luasnip-expand-or-jump\rfeedkeys\afn\bvim\23expand_or_jumpable\fluasnip\frequireC\0\1\3\0\4\0\a4\1\0\0%\2\1\0>\1\2\0027\1\2\0017\2\3\0>\1\2\1G\0\1\0\tbody\15lsp_expand\fluasnip\frequire§\5\1\0\t\0/\0O1\0\0\0001\1\1\0004\2\2\0%\3\3\0>\2\2\0027\3\4\0023\4\b\0003\5\6\0001\6\5\0:\6\a\5:\5\t\0043\5\r\0007\6\n\0027\6\v\0063\a\f\0>\6\2\2:\6\14\0057\6\n\0027\6\15\6>\6\1\2:\6\16\0057\6\n\0027\6\17\6>\6\1\2:\6\18\0057\6\n\0027\6\19\6'\aüÿ>\6\2\2:\6\20\0057\6\n\0027\6\19\6'\a\4\0>\6\2\2:\6\21\0057\6\n\0027\6\22\6>\6\1\2:\6\23\0057\6\n\0021\a\24\0003\b\25\0>\6\3\2:\6\26\0057\6\n\0021\a\27\0003\b\28\0>\6\3\2:\6\29\0051\6\30\0:\6\31\0051\6 \0:\6!\5:\5\n\0043\5#\0001\6\"\0:\6$\5:\5%\0042\5\t\0003\6&\0;\6\1\0053\6'\0;\6\2\0053\6(\0;\6\3\0053\6)\0;\6\4\0053\6*\0;\6\5\0053\6+\0;\6\6\0053\6,\0;\6\a\0053\6-\0;\6\b\5:\5.\4>\3\2\0010\0\0€G\0\1\0\fsources\1\0\1\tname\forgmode\1\0\1\tname\ttmux\1\0\1\tname\nspell\1\0\1\tname\tpath\1\0\1\tname\vbuffer\1\0\1\tname\fluasnip\1\0\1\tname\rnvim_lua\1\0\1\tname\rnvim_lsp\fsnippet\vexpand\1\0\0\0\n<C-l>\0\n<C-h>\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\n<C-e>\nclose\n<C-f>\n<C-d>\16scroll_docs\n<C-n>\21select_next_item\n<C-p>\21select_prev_item\t<CR>\1\0\0\1\0\1\vselect\2\fconfirm\fmapping\15formatting\1\0\0\vformat\1\0\0\0\nsetup\bcmp\frequire\0\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\1\2„\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\3\17line_mapping\15<leader>cl\21operator_mapping\15<leader>cr\18comment_empty\1\nsetup\17nvim_comment\frequire\0" },
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "https://github.com/terrortylor/nvim-comment"
  },
  ["nvim-lightbulb"] = {
    config = { "\27LJ\1\2s\0\0\2\0\3\0\0054\0\0\0007\0\1\0%\1\2\0>\0\2\1G\0\1\0Tautocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()\bcmd\bvim\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "lsp_signature.nvim", "nvim-lightbulb", "lspsaga.nvim", "nvim-lsp-installer" },
    loaded = true,
    only_config = true
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeOpen" },
    config = { "\27LJ\1\2ý\14\0\0\t\0T\0Ý\0014\0\0\0%\1\1\0>\0\2\0027\0\2\0004\1\0\0%\2\3\0>\1\2\0027\1\4\0013\2\5\0003\3\6\0:\3\a\0023\3\b\0:\3\t\0023\3\n\0002\4\0\0:\4\v\3:\3\f\0023\3\r\0003\4\14\0002\5!\0003\6\16\0003\a\15\0:\a\17\6\16\a\0\0%\b\18\0>\a\2\2:\a\19\6;\6\1\0053\6\21\0003\a\20\0:\a\17\6\16\a\0\0%\b\22\0>\a\2\2:\a\19\6;\6\2\0053\6\23\0\16\a\0\0%\b\24\0>\a\2\2:\a\19\6;\6\3\0053\6\25\0\16\a\0\0%\b\26\0>\a\2\2:\a\19\6;\6\4\0053\6\27\0\16\a\0\0%\b\18\0>\a\2\2:\a\19\6;\6\5\0053\6\28\0\16\a\0\0%\b\29\0>\a\2\2:\a\19\6;\6\6\0053\6\30\0\16\a\0\0%\b\31\0>\a\2\2:\a\19\6;\6\a\0053\6 \0\16\a\0\0%\b!\0>\a\2\2:\a\19\6;\6\b\0053\6\"\0\16\a\0\0%\b#\0>\a\2\2:\a\19\6;\6\t\0053\6$\0\16\a\0\0%\b#\0>\a\2\2:\a\19\6;\6\n\0053\6%\0\16\a\0\0%\b&\0>\a\2\2:\a\19\6;\6\v\0053\6'\0\16\a\0\0%\b(\0>\a\2\2:\a\19\6;\6\f\0053\6)\0\16\a\0\0%\b*\0>\a\2\2:\a\19\6;\6\r\0053\6+\0\16\a\0\0%\b,\0>\a\2\2:\a\19\6;\6\14\0053\6-\0\16\a\0\0%\b.\0>\a\2\2:\a\19\6;\6\15\0053\6/\0\16\a\0\0%\b0\0>\a\2\2:\a\19\6;\6\16\0053\0061\0\16\a\0\0%\b2\0>\a\2\2:\a\19\6;\6\17\0053\0063\0\16\a\0\0%\b4\0>\a\2\2:\a\19\6;\6\18\0053\0065\0\16\a\0\0%\b6\0>\a\2\2:\a\19\6;\6\19\0053\0067\0\16\a\0\0%\b8\0>\a\2\2:\a\19\6;\6\20\0053\0069\0\16\a\0\0%\b:\0>\a\2\2:\a\19\6;\6\21\0053\6;\0\16\a\0\0%\b<\0>\a\2\2:\a\19\6;\6\22\0053\6=\0\16\a\0\0%\b>\0>\a\2\2:\a\19\6;\6\23\0053\6?\0\16\a\0\0%\b@\0>\a\2\2:\a\19\6;\6\24\0053\6A\0\16\a\0\0%\bB\0>\a\2\2:\a\19\6;\6\25\0053\6C\0\16\a\0\0%\bD\0>\a\2\2:\a\19\6;\6\26\0053\6E\0\16\a\0\0%\bF\0>\a\2\2:\a\19\6;\6\27\0053\6G\0\16\a\0\0%\bH\0>\a\2\2:\a\19\6;\6\28\0053\6I\0\16\a\0\0%\bJ\0>\a\2\2:\a\19\6;\6\29\0053\6K\0\16\a\0\0%\bL\0>\a\2\2:\a\19\6;\6\30\0053\6M\0\16\a\0\0%\bN\0>\a\2\2:\a\19\6;\6\31\0053\6O\0\16\a\0\0%\bP\0>\a\2\2:\a\19\6;\6 \5:\5Q\4:\4R\3:\3S\2>\1\2\1G\0\1\0\tview\rmappings\tlist\16toggle_help\1\0\1\bkey\ag?\nclose\1\0\1\bkey\6q\16system_open\1\0\1\bkey\6s\vdir_up\1\0\1\bkey\6-\18next_git_item\1\0\1\bkey\a]c\18prev_git_item\1\0\1\bkey\a[c\23copy_absolute_path\1\0\1\bkey\agy\14copy_path\1\0\1\bkey\6Y\14copy_name\1\0\1\bkey\6y\npaste\1\0\1\bkey\6p\tcopy\1\0\1\bkey\6c\bcut\1\0\1\bkey\6x\16full_rename\1\0\1\bkey\n<C-r>\vrename\1\0\1\bkey\6r\vremove\1\0\1\bkey\6d\vcreate\1\0\1\bkey\6a\frefresh\1\0\1\bkey\6R\20toggle_dotfiles\1\0\1\bkey\6H\19toggle_ignored\1\0\1\bkey\6I\17last_sibling\1\0\1\bkey\6J\18first_sibling\1\0\1\bkey\6K\fpreview\1\0\1\bkey\n<Tab>\1\0\1\bkey\v<S-CR>\15close_node\1\0\1\bkey\t<BS>\16parent_node\1\0\1\bkey\6P\17next_sibling\1\0\1\bkey\6>\17prev_sibling\1\0\1\bkey\6<\1\0\1\bkey\n<C-t>\nsplit\1\0\1\bkey\n<C-s>\vvsplit\1\0\1\bkey\n<C-v>\acd\1\0\0\1\3\0\0\19<2-RightMouse>\n<C-]>\acb\vtabnew\bkey\1\0\0\1\4\0\0\t<CR>\6o\18<2-LeftMouse>\1\0\1\16custom_only\2\1\0\3\16auto_resize\1\tside\tleft\nwidth\3\30\24update_focused_file\16ignore_list\1\0\2\15update_cwd\2\venable\2\19auto_ignore_ft\1\3\0\0\rstartify\14dashboard\vignore\1\4\0\0\t.git\17node_modules\v.cache\1\0\a\15update_cwd\2\14gitignore\2\16open_on_tab\1\18disable_netrw\2\15auto_close\2\27highlight_opened_files\2\17hijack_netrw\2\nsetup\14nvim-tree\23nvim_tree_callback\21nvim-tree.config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\1\2·\1\0\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0003\3\5\0:\3\6\2:\2\a\1>\0\2\1G\0\1\0\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["orgmode.nvim"] = {
    config = { "\27LJ\1\2è\2\0\0\4\0\14\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0023\1\a\0003\2\4\0003\3\5\0:\3\6\2:\2\b\1:\1\3\0004\1\0\0%\2\t\0>\1\2\0027\1\n\0013\2\f\0003\3\v\0:\3\r\2>\1\2\1G\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\21~/org/refile.org\1\2\0\0\f~/org/*\nsetup\forgmode\17install_info\1\0\1\rfiletype\borg\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\rrevision\tmain\burl0https://github.com/milisims/tree-sitter-org\borg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0" },
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/orgmode.nvim",
    url = "https://github.com/kristijanhusak/orgmode.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline", "SymbolsOulineOpen" },
    config = { "\27LJ\1\2\v\0\0\1\0\0\0\1G\0\1\0\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/eric/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    commands = { "ZenMode" },
    config = { "\27LJ\1\2:\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/eric/.local/share/nvim/site/pack/packer/opt/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\1\2<\0\0\2\0\2\0\0044\0\0\0%\1\1\0>\0\2\1G\0\1\0!modules.completion.lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\1\0029\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\1\2;\0\0\2\0\3\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0002\1\0\0>\0\2\1G\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: edge
time([[Config for edge]], true)
try_loadstring("\27LJ\1\2\\\0\0\2\0\5\0\t4\0\0\0007\0\1\0%\1\2\0>\0\2\0014\0\0\0007\0\3\0'\1\1\0:\1\4\0G\0\1\0\23edge_enable_italic\6g\24set background=dark\bcmd\bvim\0", "config", "edge")
time([[Config for edge]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\1\2„\1\0\0\2\0\4\0\a4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0>\0\2\1G\0\1\0\1\0\3\17line_mapping\15<leader>cl\21operator_mapping\15<leader>cr\18comment_empty\1\nsetup\17nvim_comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\1\2·\1\0\0\4\0\b\0\v4\0\0\0%\1\1\0>\0\2\0027\0\2\0003\1\3\0003\2\4\0003\3\5\0:\3\6\2:\2\a\1>\0\2\1G\0\1\0\14highlight&additional_vim_regex_highlighting\1\2\0\0\borg\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: orgmode.nvim
time([[Config for orgmode.nvim]], true)
try_loadstring("\27LJ\1\2è\2\0\0\4\0\14\0\0204\0\0\0%\1\1\0>\0\2\0027\0\2\0>\0\1\0023\1\a\0003\2\4\0003\3\5\0:\3\6\2:\2\b\1:\1\3\0004\1\0\0%\2\t\0>\1\2\0027\1\n\0013\2\f\0003\3\v\0:\3\r\2>\1\2\1G\0\1\0\21org_agenda_files\1\0\1\27org_default_notes_file\21~/org/refile.org\1\2\0\0\f~/org/*\nsetup\forgmode\17install_info\1\0\1\rfiletype\borg\nfiles\1\3\0\0\17src/parser.c\19src/scanner.cc\1\0\2\rrevision\tmain\burl0https://github.com/milisims/tree-sitter-org\borg\23get_parser_configs\28nvim-treesitter.parsers\frequire\0", "config", "orgmode.nvim")
time([[Config for orgmode.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Neoformat lua require("packer.load")({'neoformat'}, { cmd = "Neoformat", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Copilot lua require("packer.load")({'copilot.vim'}, { cmd = "Copilot", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeOpen lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ZenMode lua require("packer.load")({'zen-mode.nvim'}, { cmd = "ZenMode", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOulineOpen lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOulineOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-bufferline.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
