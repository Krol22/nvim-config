local telescope = require('telescope')
local actions = require('telescope.actions')
local fb_actions = telescope.extensions.file_browser.actions

telescope.load_extension "file_browser"

vim.keymap.set("n", "<C-p>", ":Telescope find_files <CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<C-f>", ":Telescope live_grep <CR>", { desc = "Telescope find in files" })
vim.keymap.set("n", "<C-u>", ":Telescope commands <CR>", { desc = "Telescope show commands" })
