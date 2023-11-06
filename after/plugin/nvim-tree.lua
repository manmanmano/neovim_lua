-- empty setup using defaults
require("nvim-tree").setup()

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ef", ":NvimTreeFindFile")
