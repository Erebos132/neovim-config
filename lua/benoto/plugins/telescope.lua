-- Telescope
return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },

        'nvim-telescope/telescope-file-browser.nvim',
    },
    config = function()
        local actions = require("telescope.actions")
        local telescope = require("telescope")
        telescope.setup({
            pickers = {
                find_files = {
                    hidden = true,
                },
            },
            defaults = {
                mappings = {
                    n = {
                        ["dd"] = actions.delete_buffer,
                        ["df"] = function(prompt_bufnr)
                            local entry = require("telescope.actions.state").get_selected_entry()
                            vim.cmd("bd! " .. entry.bufnr)
                            actions.delete_buffer(prompt_bufnr)
                        end,
                    },
                },
            },
        })
        -- load file browser
        telescope.load_extension("file_browser")
    end,
}
