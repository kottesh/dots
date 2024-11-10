return {
    { 
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
            }
        }
    },
    {
        "neovim/nvim-lspconfig",
    },
    { 
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    }
}
