return {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        -- ensure true color is enabled
        vim.opt.termguicolors = true

        -- setup lualine with carbonfox theme
        require('lualine').setup({
            options = {
                theme = 'carbonfox',
                section_separators = '',
                component_separators = '',
                icons_enabled = true,
            },
        })
    end
}

