vim.o.number = true
vim.o.relativenumber = true

-- Startup when doing nvim /path/to/dir/
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function (data)
        local directory = vim.fn.isdirectory(data.file) == 1

        if directory then
            vim.cmd.cd(data.file)


            -- Optional: clear the unnamed buffer
            vim.cmd("Alpha")
        end
    end
})

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
vim.o.foldcolumn = "0"
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
vim.o.signcolumn = "yes"
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
