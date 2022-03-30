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
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
        'nvim-telescope/telescope-ui-select.nvim',
      },
    }

    -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

