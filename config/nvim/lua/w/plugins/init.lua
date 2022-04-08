local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorschema
  use {
    'JoosepAlviste/palenightfall.nvim',
    config = function()
      require 'w.plugins.palenightfall'
      end,
  }

  -- Treesitter - better highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require 'w.plugins.treesitter'
    end,
  }
  -- Navigation
  use {
    -- Fuzzy finder
    'nvim-telescope/telescope.nvim',
      config = function()
      require 'w.plugins.telescope'
    end,
    requires = {
      'nvim-lua/plenary.nvim', -- Useful Lua utilities
      'nvim-lua/popup.nvim',

      -- FZF sorter for Telescope
      {
        'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
        'nvim-telescope/telescope-ui-select.nvim',
      },
    }

  -- git
  use {
    'lewis6991/gitsigns.nvim', -- git status signs in the gutter
    config = function()
      require 'w.plugins.gitsigns'
    end,
  }

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require 'w.plugins.lsp.tsserver'
      require 'w.plugins.lsp.sumenko_lua'
    end,
    requires = {
      {
        'jose-elias-alvarez/null-ls.nvim',
        config = function()
          require 'w.plugins.lsp.null-ls'
        end,
      },
      'jose-elias-alvarez/nvim-lsp-ts-utils',
      {
        'hrsh7th/nvim-cmp',
        requires = {
          'hrsh7th/cmp-nvim-lsp',
          'hrsh7th/cmp-buffer',
          'hrsh7th/cmp-path',
          'hrsh7th/cmp-vsnip',
          'petertriho/cmp-git',
        },
        config = function()
          require 'w.plugins.cmp'
        end,
      },
      {
        'tami5/lspsaga.nvim',
        config = function()
          require 'w.plugins.lsp.saga'
        end,
      }
    }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

