require("jimi.remap")
require("jimi.lazy")
require("jimi.set")

--NVIM colorscheme:
vim.cmd[[colorscheme everforest]]

vim.cmd('autocmd BufEnter * set formatoptions-=cro')
vim.cmd('autocmd BufEnter * setlocal formatoptions-=cro')
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {pattern = "Jenkinsfile", command = "set filetype=groovy"})
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {pattern = "*.j2", command = "set filetype=yaml"})
