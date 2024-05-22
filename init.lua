-- Many, many props to https://github.com/loctvl842/nvim
local Logos = require("beastvim.tweaks.logos")
require("fox.basics").setup()

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "fox.colors" },
  { import = "fox.editor" },
  { import = "fox.ui" },
  { import = "fox.languages" },
})
