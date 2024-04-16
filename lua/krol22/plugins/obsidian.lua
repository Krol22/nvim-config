return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "main",
        path = "/Users/krol22/Library/Mobile Documents/iCloud~md~obsidian/Documents/Vault"
      },
    },
    templates = {
      subdir = "[98]_templates",
    },
    disable_frontmatter = true
  },
}
