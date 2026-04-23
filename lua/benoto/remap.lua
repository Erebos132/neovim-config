-- Keybindings
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>w', ":w<CR>", { desc = 'Save File' })
vim.keymap.set('n', '<leader>x', ":wq<CR>", { desc = 'Save File and Quit' })
vim.keymap.set('n', '<leader>bb', ':BufferLinePick<CR>', { desc = "Picking Bufer by first letter" })
vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = "Delete Currently Selected Buffer" })
vim.keymap.set('n', '<leader>C', ':bd!<CR>', { desc = "Delete Currently Selected Buffer NO MATTER WHAT" })
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>')
vim.keymap.set("n", "<leader>n", ":enew<CR>")

vim.keymap.set("n", "<leader>q", ":q<CR>")

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

-- Greates Keymap ever!
vim.keymap.set("x", "<leader>p", "\"_dP")
