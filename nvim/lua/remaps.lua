vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
function  eslint_fixall()
    vim.lsp.buf.execute_command({
        command = 'eslint.applyAllFixes',
        arguments = {vim.uri_from_bufnr(0)}
    })
end
vim.cmd("command! EslintFixAll lua eslint_fixall()")


vim.api.nvim_set_keymap('n', '<leader>cf', '<cmd>lua eslint_fixall()<CR>', { noremap = true, silent = true, desc = 'Eslint Format'})
print('remaps done')


