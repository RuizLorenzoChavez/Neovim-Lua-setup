-- [[ LSP CONFIGURATIONS ]]
-- As of now we are using LSPConfig by Neovim
-- TODO: configure keymap to personal preferences

local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

require("lsp-format").setup()
local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[ augroup Format ]]
        vim.api.nvim_command [[ autocmd! * <buffer> ]]
        vim.api.nvim_command [[ autocmd! BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync() ]]
        vim.api.nvim_command [[ augroup END ]]
    end
end

-- Global configuration for LSPConfig
local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
  ),
  on_attach = function(client, bufnr)
    vim.api.nvim_exec_autocmds('User', {pattern = 'LspAttached'})
  end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
  'force',
  lspconfig.util.default_config,
  lsp_defaults
)

-- Autoformat extension
lspconfig.gopls.setup { on_attach = require("lsp-format").on_attach }

-- Keymaps for LSPConfig
vim.api.nvim_create_autocmd('User', {
  pattern = 'LspAttached',
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs)
      local opts = {buffer = true}
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Displays hover information about the symbol under the cursor
    bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Jumps to the definition of the type symbol
    bufmap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

    -- Lists all the references
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Displays a function's signature information
    bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

    -- Renames all references to the symbol under the cursor
    bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
    bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

    -- Show diagnostics in a floating window
    bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

    -- Move to the previous diagnostic
    bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

    -- Move to the next diagnostic
    bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
  end
})

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- LSP for Python: pyright
lspconfig.pyright.setup({
    on_attach = function(client, bufnr)
        print('This is pyright')
        lspconfig.util.default_config.on_attach(client, bufnr)
    end
})

-- LSP for HTML: html-lsp
lspconfig.html.setup({
    on_attach = function(client, bufnr)
        print('This is html')
        lspconfig.util.default_config.on_attach(client, bufnr)
    end,
    capabilities = capabilities
})

-- LSP for CSS: css-lsp
lspconfig.cssls.setup({
    on_attach = function(client, bufnr)
        print('This is html')
        lspconfig.util.default_config.on_attach(client, bufnr)
    end,
    capabilities = capabilities
})

-- LSP for Tailwind CSS: tailwindcss-language-server
lspconfig.tailwindcss.setup({
    on_attach = function(client, bufnr)
        print('This is html')
        lspconfig.util.default_config.on_attach(client, bufnr)
    end
})

-- LSP for JavaScript: eslint-lsp
lspconfig.eslint.setup({
    on_attach = function(client, bufnr)
        print('This is html')
        lspconfig.util.default_config.on_attach(client, bufnr)
    end
})

-- LSP for Lua: Sumneko Lua
