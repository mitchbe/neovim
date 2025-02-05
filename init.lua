vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "themes.oledtheme"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "cpp",
--   callback = function()
--     vim.opt_local.cinoptions = { g = 1, w = 1}
--   end
-- })
--
vim.cmd("autocmd filetype cpp,hpp setlocal nowrap cindent cinoptions=g2,w1 tabstop=2 shiftwidth=2 expandtab formatoptions-=cro");
-- vim.cmd("autocmd filetype cpp,hpp setlocal nowrap cindent cinoptions=g2,w1 tabstop=2 shiftwidth=2 expandtab");
