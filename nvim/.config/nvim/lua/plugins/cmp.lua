-- plugins.lua or lazy.nvim setup
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",   -- buffer completions
      "hrsh7th/cmp-path",     -- filesystem paths
      "hrsh7th/cmp-nvim-lsp", -- LSP completions
      "hrsh7th/cmp-nvim-lua", -- Neovim Lua API completions
      "saadparwaiz1/cmp_luasnip", -- snippet completions
      "L3MON4D3/LuaSnip",     -- snippet engine
    },
    config = function()
      require("config.cmp")
    end
  }
}

