vim.g.mapleader = ","

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

vim.keymap.set("n", "<C-s>", ":w <CR>", { desc = "Save current buffer" })

vim.keymap.set("n", "n", "nzz", { desc = "Goto next search centered" })
vim.keymap.set("n", "N", "Nzz", { desc = "Goto prev search centered" })

vim.keymap.set("n", "m", "q", { desc = "Start macro" })
vim.keymap.set("n", "q", "<Nop>", { desc = "Clear previous macro keymap entry" })

vim.g.fzf_action = {
  ["ctrl-s"] = "split",
  ["ctrl-v"] = "vsplit",
}

vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy to clipboard" })
