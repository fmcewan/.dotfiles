-- In your init.lua or a separate highlights file
vim.api.nvim_set_hl(0, "RenderMarkdownH1", { fg = "#78a9ff", bold = true })
vim.api.nvim_set_hl(0, "RenderMarkdownH2", { fg = "#78a9ff", bold = true })
-- etc.

vim.api.nvim_set_hl(0, "RenderMarkdownH1Bg", { bg = "#1a2030" }) -- heading background bar
vim.api.nvim_set_hl(0, "RenderMarkdownCode", { bg = "#0d1117" }) -- code block background
vim.api.nvim_set_hl(0, "RenderMarkdownBullet", { fg = "#78a9ff" })
vim.api.nvim_set_hl(0, "RenderMarkdownQuote", { fg = "#6e6a86" })
