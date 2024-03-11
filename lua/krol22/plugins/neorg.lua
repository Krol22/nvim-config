return {
  {
    'nvim-neorg/neorg',
    cmd = "Neorg",
    ft = { 'norg' },
    opts = {
      load = {
          ["core.defaults"] = {},
          ["core.dirman"] = {
              config = {
                  workspaces = {
                      default = "~/Documents/notes",
                      blocks = "~/Work/Current/BlockGame/docs",
                      blog = "~/Work/Current/Blog/docs"
                  },
                  default_workspace = "default"
              }
          },
          ["core.concealer"] = { config = { icon_preset = "diamond" } },
	}
    }
  }
}
