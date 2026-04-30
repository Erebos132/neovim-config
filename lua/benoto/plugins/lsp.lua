return {{
    "neovim/nvim-lspconfig",
    vim.lsp.config("basedpyright", {
        settings = {
            basedpyright = {
                analysis = {
                    typeCheckingMode = "basic",
                },
            },
        },
    }),
},
{
    "williamboman/mason.nvim",
        config = function()
        require("mason").setup()
    end,
},
{
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = { "basedpyright", "rust_analyzer"},
        })
    end,
},
{
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
    },

    config = function() 
        local cmp = require("cmp")

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<Tab>"] = cmp.mapping.select_next_item(),
                ["<S-Tab>"] = cmp.mapping.select_prev_item(),
            }),
            sources = {
                { name = 'path' },
                { name = "nvim_lsp" },
            },
        })
    end,
},
}
