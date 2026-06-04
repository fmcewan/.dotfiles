-- Configuration options
require("config.options")
require("config.keymaps")
require("config.autocmds")

-- Package manager
require("config.lazy")

-- Color scheme
vim.cmd("colorscheme matugen")
vim.api.nvim_create_autocmd("Signal", {
    pattern = "SIGUSR1",
    command = "colorscheme matugen",
})

-- Plugins
require("plugins.telescope")
