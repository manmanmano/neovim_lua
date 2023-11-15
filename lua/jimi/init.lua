require("jimi.remap")
require("jimi.packer")
require("jimi.set")

--NVIM colorscheme:
vim.cmd[[colorscheme gruvbox]]

vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')
