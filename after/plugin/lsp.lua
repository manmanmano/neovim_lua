-- LSP Configuration
local lspconfig = require('lspconfig')
local cmp_lsp = require('cmp_nvim_lsp')

-- Add capabilities for nvim-cmp
local capabilities = cmp_lsp.default_capabilities()

-- Keymaps on LSP attach
local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end

-- Mason setup
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    -- Default handler for all servers
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end,
  },
})
