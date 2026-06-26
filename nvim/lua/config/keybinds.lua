vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")

-- Cycle focus to next window
vim.keymap.set("n", "<leader>w", "<C-w>w")

-- Or specifically navigate left/right
vim.keymap.set("n", "<C-h>", "<C-w>h")  -- Move focus left
vim.keymap.set("n", "<C-l>", "<C-w>l")  -- Move focus right
