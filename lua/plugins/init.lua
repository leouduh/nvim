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
}
