return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-mini/mini.nvim" },
	opts = {
		heading = {
			sign = false,
			icons = { "# ", "## ", "### ", "#### ", "##### ", "###### " },
			width = "full",
		},
		code = {
			sign = false,
			width = "full",
			left_pad = 2,
			right_pad = 2,
			highlight = "RenderMarkdownCode",
		},
	},
	config = function(_, opts)
		require("render-markdown").setup(opts)

		vim.api.nvim_create_autocmd("ColorScheme", {
			pattern = "*",
			callback = function()
				vim.api.nvim_set_hl(0, "RenderMarkdownH1", { fg = "#78a9ff", bold = true })
				vim.api.nvim_set_hl(0, "RenderMarkdownH2", { fg = "#33b1ff", bold = true })
				vim.api.nvim_set_hl(0, "RenderMarkdownH3", { fg = "#42be65", bold = true })
				vim.api.nvim_set_hl(0, "RenderMarkdownH4", { fg = "#be95ff", bold = true })
				vim.api.nvim_set_hl(0, "RenderMarkdownH5", { fg = "#ff7eb6", bold = true })
				vim.api.nvim_set_hl(0, "RenderMarkdownH6", { fg = "#3ddbd9", bold = true })
				vim.api.nvim_set_hl(0, "RenderMarkdownH1Bg", { bg = "#0f1c35" })
				vim.api.nvim_set_hl(0, "RenderMarkdownH2Bg", { bg = "#0a1e2e" })
				vim.api.nvim_set_hl(0, "RenderMarkdownH3Bg", { bg = "#0a1f12" })
				vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "#060b10" })
				vim.api.nvim_set_hl(0, "RenderMarkdownCodeInline", { fg = "#78a9ff", bg = "#0d1526" })
				vim.api.nvim_set_hl(0, "RenderMarkdownBullet", { fg = "#78a9ff" })
				vim.api.nvim_set_hl(0, "RenderMarkdownQuote", { fg = "#525252", italic = true })
			end,
		})

		-- Also apply immediately for current session
		vim.cmd("doautocmd ColorScheme")
	end,
}
