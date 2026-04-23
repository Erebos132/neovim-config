vim.opt.termguicolors = true

return {{
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
        options = {
            mode = "buffers", 
            seperator_style = "thin",
            show_buffer_icons = true,
            show_close_icon = false,
            diagnostics = "nvim_lsp",
            indicator = {
                style = "underline",
            },
        },
    },
},
}

