return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim", -- file browser extension
        "nvim-telescope/telescope-fzf-native.nvim",   -- optional for speed
    },
    lazy = false,
    priority = 900,
    config = function()
        local telescope = require("telescope")
     
        telescope.setup({
            defaults = {
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "bottom" },
                sorting_strategy = "ascending", 
                winblend = 0,
            },
        })

        telescope.load_extension("fzf")
        telescope.load_extension("file_browser")

    end,
}

