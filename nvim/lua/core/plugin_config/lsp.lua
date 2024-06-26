require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {"jdtls", "pyright", "lua_ls"}
})

local code_completion_capabilites = require("cmp_nvim_lsp").default_capabilities()

local on_attach = function(_, _)

    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references(), {})

    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})
end

require("lspconfig").jdtls.setup {
    on_attach = on_attach,
    capabilities = code_completion_capabilites

}

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    capabilities = code_completion_capabilites
}


require("lspconfig").pyright.setup{
    on_attach = on_attach,
    capabilities = code_completion_capabilites

}
