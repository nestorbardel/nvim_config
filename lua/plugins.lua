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
        'hrsh7th/cmp-cmdline',
        "rafamadriz/friendly-snippets",
        "mattn/emmet-vim",
        "onsails/lspkind.nvim"
    }
  }
 use {
  'lewis6991/gitsigns.nvim',
  -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
 }
 use "EdenEast/nightfox.nvim"
 use "tpope/vim-fugitive"
 -- use 'preservim/nerdtree'
  use({
    "scrooloose/nerdtree",
  })
   use({
    "tpope/vim-surround",
    "tpope/vim-commentary",
    "alvan/vim-closetag",
  })
   use({
    "ryanoasis/vim-devicons",
    "folke/tokyonight.nvim",
    "nvim-lualine/lualine.nvim",
    'norcalli/nvim-colorizer.lua'
  })
    use({
    "maximbaz/lightline-ale",
    "itchyny/lightline.vim",
  })
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
    use {
      'rmagatti/auto-session',
      config = function()
        require("auto-session").setup {
          log_level = "error",
          auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
        }
      end
    }
    use({
      "gbprod/phpactor.nvim",
      requires = {
        "nvim-lua/plenary.nvim", -- required to update phpactor
        "neovim/nvim-lspconfig" -- required to automaticly register lsp serveur
      },
      config = function()
        require("phpactor").setup({
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        })
      end
    })
 --  use 'nvim-telescope/telescope-dap.nvim'
end
)
