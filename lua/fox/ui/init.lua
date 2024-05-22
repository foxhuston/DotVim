return {
  { import = "fox.ui.completions" },
  "rcarriga/nvim-notify",
  {
    'echasnovski/mini.align',
    version = '*',
    config = function()
      require('mini.align').setup()
    end
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader> ', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "folke/zen-mode.nvim",
    -- dependencies = {
    --   'folke/twilight'
    -- },
    config = function()
      require('zen-mode').setup {
        window = {
          width = 80,
        },
        plugins = {
          twilight = { enable = true },
        },
      }

      vim.keymap.set('n', '<leader>z', function()
        require('zen-mode').toggle()
      end)
    end,
  },
  "folke/twilight.nvim",
  {
    -- Neovim plugin to improve the default vim.ui interfaces
    'stevearc/dressing.nvim',
    opts = {},
    config = function() require('dressing').setup() end
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          separator_style = "slant"
        }
      }
    end,
  },
  -- Automatically resizes focused window!
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim"
    },
    config = function()
      vim.o.winwidth = 10
      vim.o.winminwidth = 10
      vim.o.equalalways = false
      require('windows').setup()
    end
  },
  -- {
  --   'nvimdev/dashboard-nvim',
  --   event = 'VimEnter',
  --   config = function()
  --     require('dashboard').setup {
  --       config = {
  --         header = Logos.get('night_fury')
  --       },
  --     }
  --   end,
  --   dependencies = { {'nvim-tree/nvim-web-devicons'}}
  -- },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    config = function()
      require('which-key').setup {}
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = { theme = "horizon" }
      }
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "mrbjarksen/neo-tree-diagnostics.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require('neo-tree').setup {
        close_if_last_window = true,
        sources = {
          "filesystem",
          "buffers",
          "git_status",
          "diagnostics",
          -- "document_symbols",
        },
        source_selector = {
          winbar = true, -- toggle to show selector on winbar
          content_layout = "center",
          tabs_layout = "equal",
          show_separator_on_edge = true,
          sources = {
            { source = "filesystem", display_name = "󰉓" },
            { source = "buffers", display_name = "󰈙" },
            { source = "git_status", display_name = "" },
            -- { source = "document_symbols", display_name = "o" },
            { source = "diagnostics", display_name = "󰒡" },
          },
        },
      }

      local cmds = require('neo-tree.command')
      vim.keymap.set('n', '<leader>pp', function() cmds.execute({action="show"}) end, {})

      -- vim.api.nvim_create_autocmd({"VimEnter"}, {
      --   callback = function()
      --     require('neo-tree.command').execute({
      --       action = "show"
      --     })
      --   end
      -- });
    end,
  },

}
