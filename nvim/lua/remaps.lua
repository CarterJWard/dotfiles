vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format()<CR>', { desc = "Format", noremap = true, silent = true })
