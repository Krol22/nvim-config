local lsp = require "lspconfig"
local util = require "lspconfig/util"
local cmd = vim.cmd
local diagnostic = vim.diagnostic

-- general
diagnostic.config({
  virtual_text = true,
  signs = true,
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- lsp.tsserver.setup {
  -- capabilities = capabilities
-- }

lsp.eslint.setup{}
lsp.cssls.setup{}
require("lspsaga").setup({
  settings = {
    code_action = {
      extend_gitsigns = false
    },
  },
  ui = {
    code_action = '',
  }
})

require("typescript-tools").setup {
  settings = {
    tsserver_file_preferences = {
      quotePreference = "single"
    }
  }
}

-- golang

lsp.gopls.setup {
  cms = {"gopls", "serve"},
  filetypes = {"go", "gomod"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      analyses = {
        unusedparams = false,
      },
      staticcheck = true
    },
  },
}

function OrgImports(wait_ms)
  local params = vim.lsp.util.make_range_params()
  params.context = {only = {"source.organizeImports"}}
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end

vim.cmd [[autocmd BufWritePre *.go lua OrgImports(1000)]]

-- godot

lsp.gdscript.setup{capabilities = capabilities}

-- ruby

lsp.ruby_ls.setup{}

-- svelte

lsp.svelte.setup{}

-- mappings

vim.keymap.set("n", "gd", ":Lspsaga goto_definition<CR>", { desc = "LSP show definitions" })
vim.keymap.set("n", "gp", ":Lspsaga peek_definition<CR>", { desc = "LSP show definitions" })
vim.keymap.set("n", "<C-b>", ":Lspsaga code_action<CR>", { desc = "LSP show code actions" })
vim.keymap.set("n", "H", ":lua vim.lsp.buf.hover() <CR>", { desc = "LSP show definition" })
vim.keymap.set("n", "gr", ":Lspsaga rename<CR>", { desc = "LSP rename" })
vim.keymap.set("n", "<leader>df", ":lua vim.diagnostic.open_float() <CR>", { desc = "Show error" })
vim.keymap.set("n", "[d", ":lua vim.diagnostic.goto_prev() <CR> :Lspsaga code_action<CR>", { desc = "Goto prev error and show code actions" })
vim.keymap.set("n", "]d", ":lua vim.diagnostic.goto_next() <CR> :Lspsaga code_action<CR>", { desc = "Goto next error and show code actions" })
vim.keymap.set("n", "gk", ":lua vim.diagnostic.goto_prev() <CR>", { desc = "Goto prev error" })
vim.keymap.set("n", "gj", ":lua vim.diagnostic.goto_next() <CR>", { desc = "Goto next error" })
vim.keymap.set("n", "gl", ":Lspsaga lsp_finder<CR>", { desc = "Show loc list" })
vim.keymap.set("n", "<leader>f", ":lua vim.lsp.buf.format() <CR>", { desc = "Format current buffer" })
