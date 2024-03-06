local cmp = require('cmp')
local lspkind = require('lspkind')
local tabnine = require('cmp_tabnine.config')

cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<C-y>"] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    },
    ["<c-space>"] = cmp.mapping.complete(),
    ["<C-n>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<C-p>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  },
  sources = {
    { name = "nvim_lsp", keyword_length = 2, max_item_count = 20 },
    -- { name = "cmp_tabnine", keyword_length = 2 },
    { name = "path" },
    { name = "buffer", keyword_length = 3 },
  },
  preselect = cmp.PreselectMode.None,
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        nvim_lsp = "[LSP]",
        cmp_tabnine = "[T9]",
        path = "[path]",
        buffer = "[buf]",
      }
    }
  },
  experimental = {
    native_menu = false,
    ghost_text = true,
  }
}

tabnine:setup({
  max_lines = 1000,
  max_num_results = 20,
  sort = true,
  run_on_every_keystroke = true,
  snippet_placeholder = '..',
  ignored_file_types = {},
  show_prediction_strength = true
})
