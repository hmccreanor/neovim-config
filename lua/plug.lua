-- [[ plug.lua ]]

return require('packer').startup(function(use) 
 -- [[ Plugins Go Here ]]
  use { "wbthomason/packer.nvim" }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- use {                                              -- filesystem navigation
  --   'kyazdani42/nvim-tree.lua',
  --   requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  -- }
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'},
                 {'nvim-tree/nvim-web-devicons'}
             }
  }
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }

  config = {
      package_root = vim.fn.stdpath('config') .. '/site/pack'
  }
end)
