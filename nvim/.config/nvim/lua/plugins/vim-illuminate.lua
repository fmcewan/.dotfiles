return {
    "RRethy/vim-illuminate",
    event = "BufReadPost",
    opts = {
        delay = 100,
        large_file_cutoff = 2000,
    },
    config = function(_, opts)
        require("illuminate").configure(opts)
    end,
}
