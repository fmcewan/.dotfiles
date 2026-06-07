return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		-- Diagnostic appearance
		vim.diagnostic.config({
			virtual_text = true,
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "󰅚",
					[vim.diagnostic.severity.WARN] = "󰀪",
					[vim.diagnostic.severity.HINT] = "󰌶",
					[vim.diagnostic.severity.INFO] = "",
				},
			},
			underline = true,
			update_in_insert = false,
		})

		-- Keymaps when LSP attaches to a buffer
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local buf = args.buf
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buf })
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buf })
				vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = buf })
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = buf })
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf })
			end,
		})

		-- Servers
		vim.lsp.enable({ "ts_ls", "marksman" })
	end,
}
