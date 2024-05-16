local M = {}

function M.setup()
  require('fox.basics.autocmds').setup()

  vim.opt.termguicolors = true
  vim.g.mapleader = " "

  vim.opt.wrap=false
  vim.opt.linebreak=true
  vim.opt.tabstop=2     -- How many spaces is a tab character?
  vim.opt.softtabstop=0 -- Use tabstop
  vim.opt.shiftwidth=0  -- Use tabstop
  vim.opt.expandtab=true     -- Always use spaces anyways

  ----- NEOVIDE ----------------------------------------------------------------

  vim.g.neovide_scale_factor = 0.8
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_window_blurred = true
  vim.g.neovide_transparency = 1.00

  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  ------------------------------------------------------------------------------

end

return M
