return {
    "goolord/alpha-nvim",
    -- dependencies = { 'nvim-mini/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        dashboard.section.header.val = {
                                     "                             **",
                                     "                         *********$",
                                     "                        ****    ****",
                                     "                       ***      $$***",
                                     "                       ***    $$$  ***",
                                     "                       **    $$    ***",
                                     "                    *****  $$$     ***",
                                     "                **********$$$      **",
                                     "               *****  **$$$       **",
                                     "              ****     $$$*********",
                                     "              ***     $$  *******",
                                     "              **    $$$   ***",
                                     "              ***  $$     . .",
                                     "              *** $        .",
                                     "               ****        ***",
                                     "               $$*** .     ***",
                                     "             $$$    . *******",
                                     "            $$$      ******",
                                     "          $$$",
                                     "          $$",
                                 }

        dashboard.section.buttons.val = {
          dashboard.button("e", "  New file", ":ene <BAR> startinsert<CR>"),
          dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
          dashboard.button("r", "  Recent", ":Telescope oldfiles<CR>"),
          dashboard.button("g", "  Grep", ":Telescope live_grep<CR>"),
          dashboard.button("q", "  Quit", ":qa<CR>"),
        }

        dashboard.config.layout = {
          { type = "padding", val = 4 },
          dashboard.section.header,
          { type = "padding", val = 2 },
          dashboard.section.buttons,
          { type = "padding", val = 2 },
          dashboard.section.footer,
        }

        -- dashboard.file_icons.provider = "devicons"
        alpha.setup(
            dashboard.config
        )
    end,
}
