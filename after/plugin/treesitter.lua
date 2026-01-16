-- nvim-treesitter now uses a simpler API (as of 1.0)
-- Highlighting is enabled by default, no setup required

-- Ensure parsers are installed
local ensure_installed = { "c", "lua", "python", "yaml" }

-- Install parsers if not already installed
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    for _, lang in ipairs(ensure_installed) do
      local ok = pcall(vim.treesitter.language.add, lang)
      if not ok then
        vim.cmd("TSInstall " .. lang)
      end
    end
  end,
  once = true,
})
