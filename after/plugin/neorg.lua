require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    blocks = "~/Work/Current/BlockGame/docs"
                }
            }
        },
        ["core.concealer"] = { config = { icon_preset = "diamond" } },
	}
}
