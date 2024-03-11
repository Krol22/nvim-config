return {
  {
    'williamboman/mason.nvim',
    dependencies = {
      'williamboman/mason-lspconfig.nvim',
    },
    cmd = "Mason",
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
    end
  },
  'onsails/lspkind-nvim',
  'neovim/nvim-lspconfig',
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    ft = { 'typescript', 'typescriptreact', 'typescript.tsx' }
  },
  {
    'simrat39/rust-tools.nvim',
    ft = { 'rust' },
  },
  {
    "nvimdev/lspsaga.nvim",
    dependencies = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    }
  },
}
