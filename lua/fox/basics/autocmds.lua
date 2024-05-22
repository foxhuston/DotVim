local M = {}

function M.setup()
  vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
    pattern = {"*.md", "*.txt"},
    callback = function()
      vim.opt.wrap=true
    end
  });

  vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.m"},
    callback = function()
      vim.o.filetype="forth"
    end
  })

  vim.api.nvim_create_autocmd({"BufLeave", "BufWinLeave"}, {
    pattern = {"*.md", "*.txt"},
    callback = function()
      vim.opt.wrap=false
    end
  });
end

return M
