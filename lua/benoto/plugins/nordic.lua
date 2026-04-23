return {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    config = function()
        require("nordic").setup({
            telescope = { style = "classic" },
        })
        require('nordic').load()
    end,
}
