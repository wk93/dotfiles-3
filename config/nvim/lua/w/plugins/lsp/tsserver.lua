local keymap = vim.api.nvim_buf_set_keymap

require('lspconfig').tsserver.setup({
  on_attach = function(client, bufnr)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formtting = false

    local ts_utils = require('nvim-lsp-ts-utils')
    ts_utils.setup({})
    ts_utils.setup_client(client)

    keymap(bufnr, 'n', 'gs', ':TSLspOrganize<CR>', {silent = true })
    keymap(bufnr, 'n', 'gi', ':TSLspRenameFile<CR>', {silent = true})
    keymap(bufnr, 'n', 'go', ':TSLspImportAll<CR>', {silent = true})

  end,
})
