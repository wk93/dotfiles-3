local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'
local map = vim.api.nvim_set_keymap

map('n', '<leader>o', ":lua require('telescope.builtin').git_files()<Cr>", {})
map('n', '<leader>f', ":lua require('telescope.builtin').live_grep()<Cr>", {})

