vim.g.mapleader = " " vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>yy", "\"+yy")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+yy")

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.keymap.set("n", "|", "<C-w>v")
vim.keymap.set("n", "\\", "<C-w>s")
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>l", "<C-w>l")
vim.keymap.set("n", "<leader>q", "<C-w>q")
vim.keymap.set("n", "<C-j>", ":resize +3<CR>")
vim.keymap.set("n", "<C-k>", ":resize -3<CR>")
vim.keymap.set("n", "<C-h>", ":vertical resize +3<CR>")
vim.keymap.set("n", "<C-l>", ":vertical resize -3<CR>")
vim.keymap.set("n", "<leader>ls", ":ls<CR>:b<Space>")
vim.keymap.set("n", "<leader>bn", ":bn<CR>")
vim.keymap.set("n", "<leader>bp", ":bp<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>")
