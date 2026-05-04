vim.o.number = true
vim.o.relativenumber = true

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.wrap = true

vim.o.smartindent = true

vim.opt.swapfile = false
vim.o.undofile = true
vim.opt.undolevels = 2000      -- default is often 1000
vim.opt.undoreload = 20000     -- max lines to save for undo when reopening
vim.o.backup = false
vim.o.writebackup = false

vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Folding
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Disable Continous Comments
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})


-- Always keep x lines buffer to edge of screen
vim.o.scrolloff = 15

vim.opt.timeoutlen = 300

vim.o.splitbelow = true
vim.o.splitright = true

-- Disable Weird Symbls and texts to the left of code -> Just irritating
vim.o.signcolumn = "no"
vim.diagnostic.config({
    signs = false,
    float = { border = "rounded" }
})

-- Keymappings
require("benoto.remap")

vim.opt.clipboard = ""

require("benoto.lazy_init")

-- Automation: When opening cmd go to insert mode
vim.api.nvim_create_autocmd("TermOpen", {
  callback = function()
    vim.cmd("startinsert")
  end,
})
