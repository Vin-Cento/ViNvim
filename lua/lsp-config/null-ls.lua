local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting

local sources = {
    formatting.prettier,
    formatting.black.with({ extra_args = { "--fast" }, filetypes = { "python" } }),
    formatting.eslint.with({ filetypes = { "vue", "javascript" } }),
    formatting.stylua,
    formatting.clang_format,
    -- formatting.latexindent,
}

null_ls.setup({
    sources = sources,

    on_attach = function(client)
        if client.server_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
        end
    end,
})
