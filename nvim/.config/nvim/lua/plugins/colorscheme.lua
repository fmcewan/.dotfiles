-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
    "EdenEast/nightfox.nvim",
    lazy = false,
    config = function()
        require("nightfox").setup({
            options = {
                transparent = false,
                dim_inactive = true,
                styles = {
                    comments = "italic",
                    keywords = "bold",
                    functions = "italic,bold",
                },
            }
        })
        vim.cmd("colorscheme carbonfox")
    end,
}

