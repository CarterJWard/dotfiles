local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    lsp_zero.default_keymaps({ buffer = bufnr })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    handlers = {
        lsp_zero.default_setup,
    }
})
vim.keymap.set('n', 'F', function()
    vim.lsp.buf.format({ async = true })
end, { desc = 'Format Document' })
