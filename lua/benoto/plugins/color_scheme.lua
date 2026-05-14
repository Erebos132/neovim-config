return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        flavour = "mocha",
        integrations = {
            treesitter = true,
            telescope = true,
            lsp_trouble = true,
            cmp = true,
            bufferline = true,
        },
        transparent_background = true,
        custom_highlights = {
            NormalFloat = { bg = "none" },
            FloatBorder = { bg = "none" },
            FloatTitle = { bg = "none" },

            TelescopeNormal = { bg = "none" },
            TelescopeBorder = { bg = "none" },
        },
    },
    config = function(_, opts) 
        require("catppuccin").setup(opts)
        vim.cmd.colorscheme("catppuccin")
    end
}
