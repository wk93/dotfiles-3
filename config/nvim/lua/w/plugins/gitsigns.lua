require('gitsigns').setup {
  signs = {
    add = { hl = 'GitSignsAdd', text = '│', numhl = 'GitSignsAddNr' },
    change = { hl = 'GitSignsChange', text = '│', numhl = 'GitSignsChangeNr' },
    delete = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr' },
    topdelete = { hl = 'GitSignsDelete', text = '‾', numhl = 'GitSignsDeleteNr' },
    changedelete = { hl = 'GitSignsChange', text = '│', numhl = 'GitSignsChangeNr' },
  },
  preview_config = {
    border = 'rounded',
  },
  on_attach = function(bufnr)
  end,
}
