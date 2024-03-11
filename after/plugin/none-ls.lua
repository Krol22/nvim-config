local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
  },
})

vim.keymap.set("n", "F", ":lua vim.lsp.buf.format({ async = false })<CR>", { desc = "Format file" })
