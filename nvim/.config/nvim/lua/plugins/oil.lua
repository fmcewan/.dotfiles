return {
    "stevearc/oil.nvim",
    keys = {
        { "-", "<cmd>Oil<cr>", desc = "Open oil" },
    },
    opts = {
        view_options = {
            show_hidden = true, -- show dotfiles
        },
        float = {
            padding = 2,
            max_width = 80,
            max_height = 30,
        },
    }
}
