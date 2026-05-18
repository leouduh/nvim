return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
  			"html", "css", "python", "go"
  		},
  		auto_install = true,
  	},
  },

  {
    "kylechui/nvim-surround",
    version="*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({

      })
    end
  },

  {
    "tpope/vim-fugitive",
    lazy=false,
  },

  -- {
  --   "tribela/vim-transparent",
  --   lazy=false,
  -- },

  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
    {
    "sindrets/diffview.nvim",
    lazy = false,
  },
  -- {
  --   "monkoose/neocodeium",
  --   event = "VeryLazy",
  --   config = function()
  --     local neocodeium = require("neocodeium")
  --     neocodeium.setup()
  --     vim.keymap.set("i", "<A-f>", neocodeium.accept)
  --   end,
  -- },
  -- {
  --   "paradoxical-dev/neollama",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "nvim-lua/plenary.nvim",
  --   },
  --   config = function()
  --     require("neollama").setup({
  --          -- config goes here
  --     })
  --     -- Initialization keymaps will be set externally
  --     vim.api.nvim_set_keymap("n","<leader>ol",'<cmd>lua require("neollama").initialize()<CR>',{ noremap = true, silent = true })
  --     vim.api.nvim_set_keymap("v","<leader>ol",'<cmd>lua require("neollama").initialize()<CR>',{ noremap = true, silent = true })
  --
  --   end,
  -- }
 }


