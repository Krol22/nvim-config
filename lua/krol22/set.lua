local o = vim.o
local g = vim.g
local bo = vim.bo
local cmd = vim.cmd

o.updatetime = 50

-- use mouse
o.mouse = 'a'

-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

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
