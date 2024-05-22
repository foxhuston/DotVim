return {
  "dpwright/vim-tup",
  "mattn/emmet-vim",
  -- {
  --   "mrcjkb/rustaceanvim",
  --   config = function()
  --     vim.keymap.set("n", "<Leader>a", vim.cmd.RustLsp('codeAction'), { buffer = bufnr, silent = true })
  --   end
  -- },
  "nvim-treesitter/nvim-treesitter",
  "folke/neodev.nvim",
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lsp = require("lspconfig")
      lsp.clangd.setup {}
      lsp.verible.setup {
        cmd = {'verible-verilog-ls', '--rules_config_search'},
      }
    end,
  },
  {
    'mrcjkb/haskell-tools.nvim',
    version = '^3', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
}
