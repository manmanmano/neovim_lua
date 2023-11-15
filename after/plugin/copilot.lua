vim.g.copilot_filetypes = {
  markdown = true,
  python = true,
  lua = true,
  yaml = true,
  ansible = true,
}

vim.keymap.set('n', '<leader>gce', ":Copilot enable<CR>")
vim.keymap.set('n', '<leader>gcd', ":Copilot disable<CR>")
vim.keymap.set('n', '<leader>gcs', ":Copilot status<CR>")
