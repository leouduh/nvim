-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- EXAMPLE
local servers = {
  "html",
  "cssls",
  "gopls",
  "jsonls",
  "pyright",
  "bashls",
  "clangd",
  "lua_ls",
  "ts_ls",
  "terraformls",
}

-- lsps with default config (capabilities/on_init/on_attach already wired up globally by defaults())
vim.lsp.enable(servers)

--configuring single server, example: typescript
vim.lsp.config("ts_ls", {
  on_attach = nvlsp.on_attach_disable_color,
})

vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"},
      }
    }
  },
})
