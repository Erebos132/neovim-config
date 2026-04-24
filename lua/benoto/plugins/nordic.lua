return {
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    lazy = false,
    config = function()
        require("nordic").setup({
            telescope = { style = "flat" },
        })
        require('nordic').load()
    end,
}
