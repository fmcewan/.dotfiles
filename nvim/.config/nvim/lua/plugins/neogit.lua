return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",
	},
	opts = {
		integrations = {
			diffview = true,
		},
		graph_style = "unicode", -- nicer branch graph
		kind = "floating", -- open in a floating window
		commit_editor = {
			kind = "floating",
		},
		popup = {
			kind = "floating",
		},
		signs = {
			hunk = { "", "" },
			item = { "▸", "▾" },
			section = { "▸", "▾" },
		},
	},
	keys = {
		{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" },
	},
}
