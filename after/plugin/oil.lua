require("oil").setup({
  keymaps = {
    ["<C-p>"] = false,
    ["<C-h>"] = false,
    ["<C-l>"] = false
  },
  view_options = {
    show_hidden = true,
  }
})

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
