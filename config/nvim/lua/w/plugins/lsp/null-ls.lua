local null_ls = require('null-ls')

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.deno_fmt,
    null_ls.builtins.formatting.prettier.with {
      disabled_filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    }, -- use deno instead
  },
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd [[
            augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()
            augroup END
            ]]
    end
  end
}

