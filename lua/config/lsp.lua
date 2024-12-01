-- Inside config/lsp.lua or wherever you configure your LSP clients

local lspconfig = require("lspconfig")

-- Setup TypeScript/JavaScript (React and TypeScript)
lspconfig.tsserver.setup({
    on_attach = function(client, bufnr)
        -- Disable TS formatting if using Prettier, or leave for built-in LSP formatting
        client.server_capabilities.documentFormattingProvider = false
    end,
    settings = {
        javascript = {
            format = {
                enable = true,
            },
        },
        typescript = {
            format = {
                enable = true,
            },
        },
    },
})
