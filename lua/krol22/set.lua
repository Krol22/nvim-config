local o = vim.o
local g = vim.g
local wo = vim.wo
local bo = vim.bo
local cmd = vim.cmd

o.updatetime = 50

vim.notify = require("notify")

-- use mouse
o.mouse = 'a'

-- line numbers
wo.number = true
wo.relativenumber = true

-- indent
bo.tabstop = 2
bo.expandtab = true
bo.shiftwidth = 2

-- encoding
o.encoding = "utf8"

-- search
o.incsearch = true
o.ignorecase = true

o.scrolloff = 8

-- swp files save dir
o.swapfile = true
o.dir = "/Users/krol22/.tmp"

-- persistend undo
o.undofile = true
o.undodir = '/Users/krol22/.tmp'

-- indent line
g.indentLine_char = '|'

-- remove comments in new line
cmd('augroup global')
cmd('autocmd!')
cmd('autocmd BufWinEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('autocmd BufRead * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('autocmd BufNewFile * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
cmd('augroup END')

cmd('autocmd FileType gdscript setlocal shiftwidth=4 expandtab')
cmd('autocmd FileType typescript setlocal shiftwidth=2 expandtab')
cmd('autocmd FileType typescript.tsx setlocal shiftwidth=2 expandtab')
cmd('autocmd FileType javascript setlocal shiftwidth=2 expandtab')
cmd('autocmd FileType javascript.jsx setlocal shiftwidth=2 expandtab')
cmd('autocmd FileType css setlocal shiftwidth=2 expandtab')
cmd('autocmd FileType html setlocal shiftwidth=2 expandtab')

vim.o.termguicolors = true
vim.cmd("set background=dark")
-- vim.cmd("colorscheme iceberg")
-- vim.cmd("colorscheme paper")
-- vim.cmd("colorscheme catppuccin-mocha")
-- vim.cmd("colorscheme fahrenheit")
-- vim.cmd("colorscheme habamax")
-- vim.cmd("colorscheme eva01")
vim.cmd("colorscheme nordic")
-- vim.cmd("colorscheme biscuit")

g.airline_theme = 'atomic'

g.rainbow_active = 1
g.vim_json_syntax_conceal = 0
g.vim_json_conceal = 0

-- godot
g.godot_executable = '/Applications/Godot.app'

-- vim-notes directory
g.notes_directories = {"~/Documents/vimnotes"}

g['airline#extensions#codeium#enabled'] = 1

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json", "jsonc", "markdown" },
	callback = function()
		vim.opt.conceallevel = 0
	end,
})
