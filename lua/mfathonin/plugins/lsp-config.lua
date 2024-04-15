-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

--
require('lspconfig').tsserver.setup({})
