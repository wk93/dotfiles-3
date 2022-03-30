local g = vim.g
local opt = vim.opt
local map = vim.api.nvim_set_keymap

-- space is my leader
map('n', '<space>', '<nop>', {})
map('v', '<space>', '<nop>', {})
g.mapleader = ' '
g.maplocalleader = '\\'

-- tab size
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2

-- line numbers
opt.number = true
opt.relativenumber = true

-- line wrapping
opt.wrap = false
opt.linebreak = true

-- hidden chars
opt.list = true
opt.listchars = {
  nbsp = '⦸', -- non-breaking space
  tab = '  ', -- change tab to space
  trail = '·', -- trailing spaces
  extends = '»', -- more text on right side
  precedes = '«', -- more text on left side
}

-- connect with system clipboard
opt.clipboard = {'unnamed', 'unnamedplus'}

