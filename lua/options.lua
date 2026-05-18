require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

--Enable relative numbers
vim.wo.relativenumber = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
--Max line width ruler

vim.o.colorcolumn="120"
vim.opt.foldlevel = 20
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "expr"
-- vim.lsp.document_color.enable(false)

vim.api.nvim_create_autocmd("FileType", {
       pattern = "lua",
       callback = function()
         vim.bo.shiftwidth = 2
         vim.bo.tabstop = 2
         vim.bo.softtabstop = 2
       end,
})
