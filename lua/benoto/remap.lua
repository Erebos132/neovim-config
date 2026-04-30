-- Keybindings
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>w', ":w<CR>", { desc = 'Save File' })
vim.keymap.set('n', '<leader>x', ":wq<CR>", { desc = 'Save File and Quit' })
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>Q", ":qa<CR>", { desc = "Quit all" })

vim.keymap.set('n', '<leader>bb', ':BufferLinePick<CR>', { desc = "Picking Bufer by first letter" })
vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = "Delete Currently Selected Buffer" })
vim.keymap.set('n', '<leader>C', ':bd!<CR>', { desc = "Delete Currently Selected Buffer NO MATTER WHAT" })
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set("n", "<leader>n", ":enew<CR>")

-- Saving
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")

vim.keymap.set("n", "<leader>h", ":Alpha<CR>")


-- Lazy
vim.keymap.set("n", "<leader>l", ":Lazy<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")

-- Terminal
vim.keymap.set('n', '<leader>t', ':botright split | resize 12% | terminal<CR>')
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]])

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>I", ":Inspect<CR>")

-- Greates Keymap ever!
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Telescope
vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>')
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set('n', '<leader>fb', ":Telescope buffers<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', ":Telescope help_tags<CR>", { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>fr", ":Telescope oldfiles<CR>", { desc = "Search old Files with Telescope"})

-- Clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("t", "<leader>y", '"+y')
vim.keymap.set("t", "<leader>p", '"+p')
