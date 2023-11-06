-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or, branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- colorschemes
  use 'shaunsingh/nord.nvim'
  use 'sainnhe/everforest'
  use { "ellisonleao/gruvbox.nvim" }

  -- treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- harpoon
  use 'theprimeagen/harpoon'

  -- undotree
  use 'mbbill/undotree'

  -- undotree
  use 'tpope/vim-fugitive'

  -- LSP
  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }}

  -- mason-lspconfig
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  }

  -- cmp
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-path'
  
  -- vim-gitgutter
  use 'airblade/vim-gitgutter'

  -- lazygit
  use({
      "kdheepak/lazygit.nvim",
      -- optional for floating window border decoration
      requires = {
          "nvim-lua/plenary.nvim",
      },

  -- autopairs
  
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  } })

   -- lualine
  use {
    'nvim-lualine/lualine.nvim',
     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- nvim-tree
  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- devicons
  use 'ryanoasis/vim-devicons'

  -- copilot
  use 'github/copilot.vim'

  -- toggleterm
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

end)
