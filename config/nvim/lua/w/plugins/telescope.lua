local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'
local map = vim.api.nvim_set_keymap

map('n', '<leader>f', ":lua require('telescope.builtin').find_files()<Cr>", {})

