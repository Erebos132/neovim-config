vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.wrap = true

vim.o.smartindent = true

vim.opt.swapfile = false

vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 8

vim.o.splitbelow = true

-- Keymappings
require("benoto.remap")

vim.opt.clipboard = "unnamedplus"

require("benoto.lazy_init")

