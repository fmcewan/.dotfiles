-- dap.lua
return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	keys = {
		{ "<leader>db", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle breakpoint" },
		{ "<leader>dc", "<cmd>DapContinue<cr>", desc = "Continue" },
		{ "<leader>di", "<cmd>DapStepInto<cr>", desc = "Step into" },
		{ "<leader>do", "<cmd>DapStepOver<cr>", desc = "Step over" },
		{ "<leader>dO", "<cmd>DapStepOut<cr>", desc = "Step out" },
		{
			"<leader>du",
			function()
				require("dapui").toggle()
			end,
			desc = "Toggle DAP UI",
		},
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		require("dapui").setup()
		require("nvim-dap-virtual-text").setup()

		-- Auto open/close UI
		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close()
		end
	end,
}
