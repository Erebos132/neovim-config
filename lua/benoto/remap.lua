-- Keybindings
vim.g.mapleader = " "
vim.keymap.set('n', '<leader>w', ":w<CR>", { desc = 'Save File' })
vim.keymap.set('n', '<leader>x', ":wq<CR>", { desc = 'Save File and Quit' })
vim.keymap.set('n', '<leader>bb', ':BufferLinePick<CR>', { desc = "Picking Bufer by first letter" })
vim.keymap.set('n', '<leader>c', ':bd<CR>', { desc = "Delete Currently Selected Buffer" })
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<leader>e', ':Telescope file_browser<CR>')

-- Greates Keymap ever!
vim.keymap.set("x", "<leader>p", "\"_dP")
