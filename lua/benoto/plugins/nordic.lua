return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    config = function()
        require("nordic").setup({
            telescope = { style = "flat" },
        })
        require('nordic').load()
    end,
}
