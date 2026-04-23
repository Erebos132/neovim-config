-- Telescope

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

        'nvim-telescope/telescope-file-browser.nvim',
    },
    config = function() 
        local telescope = require("telescope")
        telescope.setup({
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
        })
        
        -- load file browser
        telescope.load_extension("file_browser")
    end,
}
