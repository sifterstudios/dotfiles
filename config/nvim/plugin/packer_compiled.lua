-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sifter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sifter/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sifter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sifter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sifter/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
  ["Comment.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["codi.vim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/codi.vim",
    url = "https://github.com/metakirby5/codi.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["fidget.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  ["noice.nvim"] = {
    config = { "\27LJ\2\2­\2\0\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\0015\2\b\0=\2\t\1B\0\2\1K\0\1\0\fpresets\1\0\5\20command_palette\2\15inc_rename\1\26long_message_to_split\2\19lsp_doc_border\1\18bottom_search\2\blsp\1\0\0\roverride\1\0\0\1\0\3\"vim.lsp.util.stylize_markdown\2 cmp.entry.get_documentation\0021vim.lsp.util.convert_input_to_markdown_lines\2\nsetup\nnoice\frequire\0" },
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    cond = { true },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14jump_next\18todo-comments\frequire?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14jump_prev\18todo-comments\frequireÞ\1\1\0\a\0\r\1\0256\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\3\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\a\0003\5\b\0005\6\t\0B\2\5\2>\2\1\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\n\0003\5\v\0005\6\f\0B\2\5\0?\2\0\0B\0\2\1K\0\1\0\1\0\1\tdesc\26Previous todo comment\0\a)t\1\0\1\tdesc\22Next todo comment\0\a(t\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\5€€À™\4\0" },
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\2¯\5\0\0\a\0\25\1=6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\a\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\a\0'\5\b\0005\6\t\0B\2\5\2>\2\1\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\n\0'\5\v\0005\6\f\0B\2\5\2>\2\2\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\r\0'\5\14\0005\6\15\0B\2\5\2>\2\3\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\16\0'\5\17\0005\6\18\0B\2\5\2>\2\4\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\19\0'\5\20\0005\6\21\0B\2\5\2>\2\5\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\22\0'\5\23\0005\6\24\0B\2\5\0?\2\0\0B\0\2\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2*<cmd>TroubleToggle lsp_references<cr>\agR\1\0\2\fnoremap\2\vsilent\2$<cmd>TroubleToggle quickfix<cr>\15<leader>xq\1\0\2\fnoremap\2\vsilent\2#<cmd>TroubleToggle loclist<cr>\15<leader>xl\1\0\2\fnoremap\2\vsilent\0020<cmd>TroubleToggle document_diagnostics<cr>\15<leader>xd\1\0\2\fnoremap\2\vsilent\0021<cmd>TroubleToggle workspace_diagnostics<cr>\15<leader>xw\1\0\2\fnoremap\2\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\nsetup\ftrouble\frequire\r€€À™\4\0" },
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/sifter/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\2¯\5\0\0\a\0\25\1=6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\a\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\a\0'\5\b\0005\6\t\0B\2\5\2>\2\1\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\n\0'\5\v\0005\6\f\0B\2\5\2>\2\2\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\r\0'\5\14\0005\6\15\0B\2\5\2>\2\3\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\16\0'\5\17\0005\6\18\0B\2\5\2>\2\4\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\19\0'\5\20\0005\6\21\0B\2\5\2>\2\5\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\22\0'\5\23\0005\6\24\0B\2\5\0?\2\0\0B\0\2\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2*<cmd>TroubleToggle lsp_references<cr>\agR\1\0\2\fnoremap\2\vsilent\2$<cmd>TroubleToggle quickfix<cr>\15<leader>xq\1\0\2\fnoremap\2\vsilent\2#<cmd>TroubleToggle loclist<cr>\15<leader>xl\1\0\2\fnoremap\2\vsilent\0020<cmd>TroubleToggle document_diagnostics<cr>\15<leader>xd\1\0\2\fnoremap\2\vsilent\0021<cmd>TroubleToggle workspace_diagnostics<cr>\15<leader>xw\1\0\2\fnoremap\2\vsilent\2\27<cmd>TroubleToggle<cr>\15<leader>xx\6n\bset\vkeymap\bvim\nsetup\ftrouble\frequire\r€€À™\4\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\2?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14jump_next\18todo-comments\frequire?\0\0\2\0\3\0\0066\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14jump_prev\18todo-comments\frequireÞ\1\1\0\a\0\r\1\0256\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\3\0006\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\a\0003\5\b\0005\6\t\0B\2\5\2>\2\1\0016\2\3\0009\2\4\0029\2\5\2'\3\6\0'\4\n\0003\5\v\0005\6\f\0B\2\5\0?\2\0\0B\0\2\1K\0\1\0\1\0\1\tdesc\26Previous todo comment\0\a)t\1\0\1\tdesc\22Next todo comment\0\a(t\6n\bset\vkeymap\bvim\nsetup\18todo-comments\frequire\5€€À™\4\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\2:\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: noice.nvim
time([[Config for noice.nvim]], true)
try_loadstring("\27LJ\2\2­\2\0\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\0015\2\b\0=\2\t\1B\0\2\1K\0\1\0\fpresets\1\0\5\20command_palette\2\15inc_rename\1\26long_message_to_split\2\19lsp_doc_border\1\18bottom_search\2\blsp\1\0\0\roverride\1\0\0\1\0\3\"vim.lsp.util.stylize_markdown\2 cmp.entry.get_documentation\0021vim.lsp.util.convert_input_to_markdown_lines\2\nsetup\nnoice\frequire\0", "config", "noice.nvim")
time([[Config for noice.nvim]], false)
-- Conditional loads
time([[Conditional loading of telescope-fzf-native.nvim]], true)
  require("packer.load")({"telescope-fzf-native.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of telescope-fzf-native.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
