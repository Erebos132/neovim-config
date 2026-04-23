vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.wrap = true

-- Keymappings
require("benoto.remap")

vim.opt.clipboard = "unnamedplus"

require("benoto.lazy_init")

