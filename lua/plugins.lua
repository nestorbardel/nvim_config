vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  } 
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use 'nvim-treesitter/playground'
  use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline'
    }
  }
 use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
 }
 use "EdenEast/nightfox.nvim"
 use "tpope/vim-fugitive"
 use 'preservim/nerdtree'
 -- need install
 use '/preservim/tagbar'
 use 'windwp/nvim-autopairs'
  use {
        "mfussenegger/nvim-dap",
        config = function()
          require("dap.nvim-dap")
        end

    }
      use {
        "theHamsta/nvim-dap-virtual-text",
        requires = {
            "mfussenegger/nvim-dap"
        },
        --config = function()
        --    require("dap.nvim-dap-virtual-text")
        --end
    }
    use {
        "rcarriga/nvim-dap-ui",
        requires = {
            "mfussenegger/nvim-dap"
        },
 --       config = function()
   --         require("dap.nvim-dap-ui")
     --   end
    }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
 --  use 'nvim-telescope/telescope-dap.nvim'
end
)
