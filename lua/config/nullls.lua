--[[ NULL-LS CONFIGURATIONS ]]
-- We are using Null-LS by jose-elias-alvarez
local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        require("null-ls").builtins.code_actions.refactoring,
        require("null-ls").builtins.diagnostics.flake8,
        --require("null-ls").builtins.diagnostics.luacheck,
        require("null-ls").builtins.formatting.autopep8,
        require("null-ls").builtins.formatting.black,
        --require("null-ls").builtins.formatting.stylua,
        --require("null-ls").builtins.formatting.prettierd,
    },
  on_attach = function(client, bufnr)
if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    vim.lsp.buf.formatting_sync()
                end,
            })
        end
  end,
})
