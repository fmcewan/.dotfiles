-- Leader keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<CR>", opts)

-- Neo-tree keymaps
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", opts)
vim.keymap.set("n", "<leader>r", ":Neotree reveal<CR>", opts)


