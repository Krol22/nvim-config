vim.api.nvim_set_keymap("n", "gc", "<leader>c<space>", {})
vim.api.nvim_set_keymap("v", "gc", "<leader>c<space>", {})

vim.api.nvim_set_keymap("n", "gt", "oTODO: @krol22 <ESC>V<leader>c<space>A- ", { desc = "Add TODO comment line" })
vim.api.nvim_set_keymap("n", "gT", "OTODO: @krol22 <ESC>V<leader>c<space>A- ", { desc = "Add TODO comment line above" })

vim.g.NERDSpaceDelims = 1
